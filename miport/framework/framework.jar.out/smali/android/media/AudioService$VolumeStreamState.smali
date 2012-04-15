.class public Landroid/media/AudioService$VolumeStreamState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeStreamState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    }
.end annotation


# instance fields
.field private mDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mIndexMax:I

.field private mLastAudibleIndex:I

.field private mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

.field private final mStreamType:I

.field private mVolumeIndexSettingName:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;Ljava/lang/String;I)V
    .registers 7
    .parameter
    .parameter "settingName"
    .parameter "streamType"

    .prologue
    .line 1872
    iput-object p1, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1874
    invoke-virtual {p0, p2}, Landroid/media/AudioService$VolumeStreamState;->setVolumeIndexSettingName(Ljava/lang/String;)V

    .line 1876
    iput p3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    .line 1878
    invoke-static {p1}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 1879
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)[I

    move-result-object v1

    aget v1, v1, p3

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    .line 1880
    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v2, v2, p3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    .line 1883
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    if-lez v1, :cond_5d

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    :goto_2a
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    .line 1886
    const/4 v1, 0x0

    iget v2, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-static {p3, v1, v2}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 1887
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    .line 1888
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    mul-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    .line 1889
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    mul-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    .line 1890
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    invoke-static {p1, p3, v1}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;II)V

    .line 1891
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    .line 1892
    return-void

    .line 1883
    :cond_5d
    sget-object v1, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v1, v1, p3

    goto :goto_2a
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1862
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1700(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1862
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/media/AudioService$VolumeStreamState;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1862
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method static synthetic access$3900(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1862
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1862
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/media/AudioService$VolumeStreamState;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1862
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method static synthetic access$600(Landroid/media/AudioService$VolumeStreamState;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1862
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    return v0
.end method

.method static synthetic access$602(Landroid/media/AudioService$VolumeStreamState;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1862
    iput p1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    return p1
.end method

.method static synthetic access$700(Landroid/media/AudioService$VolumeStreamState;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1862
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/media/AudioService$VolumeStreamState;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1862
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    return v0
.end method

.method static synthetic access$802(Landroid/media/AudioService$VolumeStreamState;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1862
    iput p1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    return p1
.end method

.method static synthetic access$900(Landroid/media/AudioService$VolumeStreamState;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1862
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->muteCount()I

    move-result v0

    return v0
.end method

.method private getDeathHandler(Landroid/os/IBinder;Z)Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .registers 10
    .parameter "cb"
    .parameter "state"

    .prologue
    .line 2038
    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v5

    .line 2040
    :try_start_3
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2041
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v3, :cond_20

    .line 2042
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    .line 2043
    .local v0, handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$3700(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)Landroid/os/IBinder;

    move-result-object v4

    if-ne p1, v4, :cond_1d

    .line 2044
    monitor-exit v5

    move-object v1, v0

    .line 2055
    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .local v1, handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :goto_1c
    return-object v1

    .line 2041
    .end local v1           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .restart local v0       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2049
    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_20
    if-eqz p2, :cond_2a

    .line 2050
    new-instance v0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;-><init>(Landroid/media/AudioService$VolumeStreamState;Landroid/os/IBinder;)V

    .line 2055
    .restart local v0       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :goto_27
    monitor-exit v5

    move-object v1, v0

    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .restart local v1       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    goto :goto_1c

    .line 2052
    .end local v1           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_2a
    const-string v4, "AudioService"

    const-string/jumbo v6, "stream was not muted by this client"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    const/4 v0, 0x0

    .restart local v0       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    goto :goto_27

    .line 2056
    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .end local v2           #i:I
    .end local v3           #size:I
    :catchall_34
    move-exception v4

    monitor-exit v5
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v4
.end method

.method private getValidIndex(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 1946
    if-gez p1, :cond_4

    .line 1947
    const/4 p1, 0x0

    .line 1952
    .end local p1
    :cond_3
    :goto_3
    return p1

    .line 1948
    .restart local p1
    :cond_4
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    if-le p1, v0, :cond_3

    .line 1949
    iget p1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    goto :goto_3
.end method

.method private muteCount()I
    .registers 5

    .prologue
    .line 2029
    const/4 v0, 0x0

    .line 2030
    .local v0, count:I
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2031
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v2, :cond_1a

    .line 2032
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$1800(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)I

    move-result v3

    add-int/2addr v0, v3

    .line 2031
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2034
    :cond_1a
    return v0
.end method


# virtual methods
.method public adjustIndex(I)Z
    .registers 4
    .parameter "deltaIndex"

    .prologue
    .line 1900
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    mul-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    move-result v0

    return v0
.end method

.method public adjustLastAudibleIndex(I)V
    .registers 4
    .parameter "deltaIndex"

    .prologue
    .line 1929
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    mul-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(I)V

    .line 1930
    return-void
.end method

.method public getMaxIndex()I
    .registers 2

    .prologue
    .line 1933
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method public mute(Landroid/os/IBinder;Z)V
    .registers 7
    .parameter "cb"
    .parameter "state"

    .prologue
    .line 1937
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getDeathHandler(Landroid/os/IBinder;Z)Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    move-result-object v0

    .line 1938
    .local v0, handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    if-nez v0, :cond_21

    .line 1939
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get client death handler for stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    :goto_20
    return-void

    .line 1942
    :cond_21
    invoke-virtual {v0, p2}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(Z)V

    goto :goto_20
.end method

.method public setIndex(IZ)Z
    .registers 10
    .parameter "index"
    .parameter "lastAudible"

    .prologue
    .line 1904
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    .line 1905
    .local v1, oldIndex:I
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v3

    iput v3, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    .line 1907
    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    if-eq v1, v3, :cond_44

    .line 1908
    if-eqz p2, :cond_12

    .line 1909
    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    iput v3, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    .line 1912
    :cond_12
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1913
    .local v0, numStreamTypes:I
    add-int/lit8 v2, v0, -0x1

    .local v2, streamType:I
    :goto_18
    if-ltz v2, :cond_42

    .line 1914
    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v2, v3, :cond_3f

    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    invoke-static {v3}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)[I

    move-result-object v3

    aget v3, v3, v2

    iget v4, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v3, v4, :cond_3f

    .line 1915
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    invoke-static {v3}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v3

    aget-object v3, v3, v2

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    iget v6, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v4, v5, v6, v2}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;III)I

    move-result v4

    invoke-virtual {v3, v4, p2}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    .line 1913
    :cond_3f
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 1918
    :cond_42
    const/4 v3, 0x1

    .line 1920
    .end local v0           #numStreamTypes:I
    .end local v2           #streamType:I
    :goto_43
    return v3

    :cond_44
    const/4 v3, 0x0

    goto :goto_43
.end method

.method public setLastAudibleIndex(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 1925
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    .line 1926
    return-void
.end method

.method public setVolumeIndexSettingName(Ljava/lang/String;)V
    .registers 4
    .parameter "settingName"

    .prologue
    .line 1895
    iput-object p1, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 1896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_last_audible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

    .line 1897
    return-void
.end method
