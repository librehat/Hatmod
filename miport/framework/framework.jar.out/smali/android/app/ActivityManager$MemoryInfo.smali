.class public Landroid/app/ActivityManager$MemoryInfo;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoryInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$MemoryInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public availMem:J

.field public foregroundAppThreshold:J

.field public hiddenAppThreshold:J

.field public lowMemory:Z

.field public secondaryServerThreshold:J

.field public threshold:J

.field public visibleAppThreshold:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 950
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 923
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 924
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "source"

    .prologue
    .line 960
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 961
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$MemoryInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 962
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 892
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$MemoryInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 927
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "source"

    .prologue
    .line 941
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 942
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    .line 943
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    :goto_13
    iput-boolean v0, p0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 944
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    .line 945
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    .line 946
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->visibleAppThreshold:J

    .line 947
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->foregroundAppThreshold:J

    .line 948
    return-void

    .line 943
    :cond_2e
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 931
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 932
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 933
    iget-boolean v0, p0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 934
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 935
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 936
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->visibleAppThreshold:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 937
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->foregroundAppThreshold:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 938
    return-void

    .line 933
    :cond_27
    const/4 v0, 0x0

    goto :goto_f
.end method
