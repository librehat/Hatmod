#!/bin/sh

cd initramfs
find . -print0 | cpio --null -ov --format=newc > ../initramfs.new
cd ..

echo "GZip Compressing..."
gzip -9 initramfs.new

oldsize=`ls -l initramfs.cpio | awk '{ print $5 }'`
newsize=`ls -l initramfs.new.gz | awk '{ print $5 }'`

if [ $newsize -gt $oldsize ]; then
	echo "New initramfs is too big ($newsize vs $oldsize)"
	exit 1
else
	freesize=$((oldsize - $newsize))
	echo "New initramfs is $newsize bytes ($freesize bytes spare)"
	
fi

start=`grep -a -b -m 1 --only-matching '070701' Image-ext | head -1 | cut -f 1 -d :`
end=$((`grep -a -b -m 1 --only-matching 'TRAILER!!!' Image-ext | head -1 | cut -f 1 -d :` + 14))
count=$((end - start))

echo "Adding padding to end of initramfs.new.gz"
cp initramfs.new.gz initramfs.new.gz.pad
dd if=/dev/zero bs=1 count=$freesize >> initramfs.new.gz.pad

echo "Adding initramfs.new.gz to kernel (start = $start, end = $end)"
dd if=Image-ext bs=1 count=$start > Image-ext.new
cat initramfs.new.gz.pad >> Image-ext.new
dd if=Image-ext bs=1 skip=$((end)) >> Image-ext.new

echo "Compressing kernel to LZMA"
lzma < Image-ext.new > Image.new

echo "Making uImage"
mkimage -A arm -O linux -T kernel -C lzma -a 80008000 -e 80008000 -d Image.new -n HatModkernel boot.img.new