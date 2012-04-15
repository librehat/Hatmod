.class public final Landroid/speech/srec/MicrophoneInputStream;
.super Ljava/io/InputStream;
.source "MicrophoneInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MicrophoneInputStream"


# instance fields
.field private mAudioRecord:I

.field private mOneByte:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-string/jumbo v0, "srec_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(II)V
    .registers 7
    .parameter "sampleRate"
    .parameter "fifoDepth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 37
    const/4 v1, 0x0

    iput v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    .line 38
    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mOneByte:[B

    .line 47
    invoke-static {p1, p2}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordNew(II)I

    move-result v1

    iput v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    .line 48
    iget v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    if-nez v1, :cond_1d

    new-instance v1, Ljava/io/IOException;

    const-string v2, "AudioRecord constructor failed - busy?"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_1d
    iget v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    invoke-static {v1}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordStart(I)I

    move-result v0

    .line 50
    .local v0, status:I
    if-eqz v0, :cond_41

    .line 51
    invoke-virtual {p0}, Landroid/speech/srec/MicrophoneInputStream;->close()V

    .line 52
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioRecord start failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_41
    return-void
.end method

.method private static native AudioRecordDelete(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native AudioRecordNew(II)I
.end method

.method private static native AudioRecordRead(I[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native AudioRecordStart(I)I
.end method

.method private static native AudioRecordStop(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 81
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    if-eqz v0, :cond_11

    .line 83
    :try_start_5
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    invoke-static {v0}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordStop(I)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_16

    .line 86
    :try_start_a
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    invoke-static {v0}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordDelete(I)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_12

    .line 88
    iput v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    .line 92
    :cond_11
    return-void

    .line 88
    :catchall_12
    move-exception v0

    iput v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    throw v0

    .line 85
    :catchall_16
    move-exception v0

    .line 86
    :try_start_17
    iget v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    invoke-static {v1}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordDelete(I)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1f

    .line 88
    iput v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    throw v0

    :catchall_1f
    move-exception v0

    iput v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    throw v0
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 96
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    if-eqz v0, :cond_10

    .line 97
    invoke-virtual {p0}, Landroid/speech/srec/MicrophoneInputStream;->close()V

    .line 98
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "someone forgot to close MicrophoneInputStream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_10
    return-void
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    iget v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    if-nez v1, :cond_f

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "not open"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_f
    iget v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    iget-object v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mOneByte:[B

    invoke-static {v1, v2, v3, v4}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordRead(I[BII)I

    move-result v0

    .line 60
    .local v0, rtn:I
    if-ne v0, v4, :cond_20

    iget-object v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mOneByte:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    :goto_1f
    return v1

    :cond_20
    const/4 v1, -0x1

    goto :goto_1f
.end method

.method public read([B)I
    .registers 5
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_d
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {v0, p1, v1, v2}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordRead(I[BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 6
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_d
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    invoke-static {v0, p1, p2, p3}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordRead(I[BII)I

    move-result v0

    return v0
.end method
