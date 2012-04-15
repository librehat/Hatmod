.class public Lcom/android/server/location/LocationProviderProxy;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LocationProviderProxy$1;,
        Lcom/android/server/location/LocationProviderProxy$Connection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationProviderProxy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mIntent:Landroid/content/Intent;

.field private mLocationTracking:Z

.field private mMinTime:J

.field private mMinTimeSource:Landroid/os/WorkSource;

.field private final mMutex:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNetworkState:I

.field private mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 9
    .parameter "context"
    .parameter "name"
    .parameter "serviceName"
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    .line 50
    new-instance v0, Lcom/android/server/location/LocationProviderProxy$Connection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/LocationProviderProxy$Connection;-><init>(Lcom/android/server/location/LocationProviderProxy;Lcom/android/server/location/LocationProviderProxy$1;)V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    .line 53
    iput-boolean v2, p0, Lcom/android/server/location/LocationProviderProxy;->mLocationTracking:Z

    .line 54
    iput-boolean v2, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    .line 55
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTime:J

    .line 56
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTimeSource:Landroid/os/WorkSource;

    .line 63
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;

    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mIntent:Landroid/content/Intent;

    .line 66
    iput-object p4, p0, Lcom/android/server/location/LocationProviderProxy;->mHandler:Landroid/os/Handler;

    .line 67
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 70
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/location/LocationProviderProxy$Connection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/LocationProviderProxy;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/location/LocationProviderProxy;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLocationTracking:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/location/LocationProviderProxy;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/WorkSource;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTimeSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/location/LocationProviderProxy;)Landroid/net/NetworkInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/location/LocationProviderProxy;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/server/location/LocationProviderProxy;->mNetworkState:I

    return v0
.end method

.method private getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;
    .registers 3

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_3
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v0}, Lcom/android/server/location/LocationProviderProxy$Connection;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 172
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method


# virtual methods
.method public addListener(I)V
    .registers 5
    .parameter "uid"

    .prologue
    .line 450
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 451
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_10

    move-result-object v0

    .line 452
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_e

    .line 454
    :try_start_b
    invoke-interface {v0, p1}, Landroid/location/ILocationProvider;->addListener(I)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_13

    .line 458
    :cond_e
    :goto_e
    :try_start_e
    monitor-exit v2

    .line 459
    return-void

    .line 458
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_10
    move-exception v1

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_10

    throw v1

    .line 455
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_13
    move-exception v1

    goto :goto_e
.end method

.method public disable()V
    .registers 4

    .prologue
    .line 302
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 303
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    .line 304
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_13

    move-result-object v0

    .line 305
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_11

    .line 307
    :try_start_e
    invoke-interface {v0}, Landroid/location/ILocationProvider;->disable()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_16

    .line 311
    :cond_11
    :goto_11
    :try_start_11
    monitor-exit v2

    .line 312
    return-void

    .line 311
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v1

    .line 308
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_16
    move-exception v1

    goto :goto_11
.end method

.method public enable()V
    .registers 4

    .prologue
    .line 289
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 290
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    .line 291
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_13

    move-result-object v0

    .line 292
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_11

    .line 294
    :try_start_e
    invoke-interface {v0}, Landroid/location/ILocationProvider;->enable()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_16

    .line 298
    :cond_11
    :goto_11
    :try_start_11
    monitor-exit v2

    .line 299
    return-void

    .line 298
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v1

    .line 295
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_16
    move-exception v1

    goto :goto_11
.end method

.method public enableLocationTracking(Z)V
    .registers 7
    .parameter "enable"

    .prologue
    .line 370
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 371
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/location/LocationProviderProxy;->mLocationTracking:Z

    .line 372
    if-nez p1, :cond_10

    .line 373
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTime:J

    .line 374
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTimeSource:Landroid/os/WorkSource;

    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    .line 376
    :cond_10
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1d

    move-result-object v0

    .line 377
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_1b

    .line 379
    :try_start_18
    invoke-interface {v0, p1}, Landroid/location/ILocationProvider;->enableLocationTracking(Z)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_20

    .line 383
    :cond_1b
    :goto_1b
    :try_start_1b
    monitor-exit v2

    .line 384
    return-void

    .line 383
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1d

    throw v1

    .line 380
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_20
    move-exception v1

    goto :goto_1b
.end method

.method public getAccuracy()I
    .registers 3

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 249
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_b

    .line 250
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->getAccuracy()I

    move-result v1

    .line 252
    :goto_a
    return v1

    :cond_b
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getInternalState()Ljava/lang/String;
    .registers 5

    .prologue
    .line 350
    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 351
    :try_start_3
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v2}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;

    move-result-object v1

    .line 352
    .local v1, provider:Landroid/location/ILocationProvider;
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_11

    .line 353
    if-eqz v1, :cond_1c

    .line 355
    :try_start_c
    invoke-interface {v1}, Landroid/location/ILocationProvider;->getInternalState()Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_14

    move-result-object v2

    .line 360
    :goto_10
    return-object v2

    .line 352
    .end local v1           #provider:Landroid/location/ILocationProvider;
    :catchall_11
    move-exception v2

    :try_start_12
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v2

    .line 356
    .restart local v1       #provider:Landroid/location/ILocationProvider;
    :catch_14
    move-exception v0

    .line 357
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LocationProviderProxy"

    const-string v3, "getInternalState failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1c
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public getMinTime()J
    .registers 5

    .prologue
    .line 391
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 392
    :try_start_3
    iget-wide v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTime:J

    monitor-exit v1

    return-wide v2

    .line 393
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerRequirement()I
    .registers 3

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 240
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_b

    .line 241
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->getPowerRequirement()I

    move-result v1

    .line 243
    :goto_a
    return v1

    :cond_b
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 5
    .parameter "extras"

    .prologue
    .line 322
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 323
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;

    move-result-object v0

    .line 324
    .local v0, provider:Landroid/location/ILocationProvider;
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_11

    .line 325
    if-eqz v0, :cond_15

    .line 327
    :try_start_c
    invoke-interface {v0, p1}, Landroid/location/ILocationProvider;->getStatus(Landroid/os/Bundle;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_14

    move-result v1

    .line 331
    :goto_10
    return v1

    .line 324
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1

    .line 328
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_14
    move-exception v1

    .line 331
    :cond_15
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getStatusUpdateTime()J
    .registers 4

    .prologue
    .line 336
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 337
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;

    move-result-object v0

    .line 338
    .local v0, provider:Landroid/location/ILocationProvider;
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_11

    .line 339
    if-eqz v0, :cond_15

    .line 341
    :try_start_c
    invoke-interface {v0}, Landroid/location/ILocationProvider;->getStatusUpdateTime()J
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_14

    move-result-wide v1

    .line 345
    :goto_10
    return-wide v1

    .line 338
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1

    .line 342
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_14
    move-exception v1

    .line 345
    :cond_15
    const-wide/16 v1, 0x0

    goto :goto_10
.end method

.method public hasMonetaryCost()Z
    .registers 3

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 204
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_b

    .line 205
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->hasMonetaryCost()Z

    move-result v1

    .line 207
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isEnabled()Z
    .registers 3

    .prologue
    .line 315
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 316
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    monitor-exit v1

    return v0

    .line 317
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isLocationTracking()Z
    .registers 3

    .prologue
    .line 364
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 365
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLocationTracking:Z

    monitor-exit v1

    return v0

    .line 366
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .registers 7
    .parameter "criteria"

    .prologue
    const/4 v2, 0x0

    .line 257
    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 258
    :try_start_4
    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v4}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_56

    move-result-object v1

    .line 259
    .local v1, provider:Landroid/location/ILocationProvider;
    if-eqz v1, :cond_13

    .line 261
    :try_start_c
    invoke-interface {v1, p1}, Landroid/location/ILocationProvider;->meetsCriteria(Landroid/location/Criteria;)Z
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_56
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_12

    move-result v2

    :try_start_10
    monitor-exit v3

    .line 285
    :cond_11
    :goto_11
    return v2

    .line 262
    :catch_12
    move-exception v4

    .line 265
    :cond_13
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_56

    .line 267
    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/location/LocationProviderProxy;->getAccuracy()I

    move-result v4

    if-lt v3, v4, :cond_11

    .line 271
    :cond_24
    invoke-virtual {p1}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v0

    .line 272
    .local v0, criteriaPower:I
    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/android/server/location/LocationProviderProxy;->getPowerRequirement()I

    move-result v3

    if-lt v0, v3, :cond_11

    .line 276
    :cond_30
    invoke-virtual {p1}, Landroid/location/Criteria;->isAltitudeRequired()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {p0}, Lcom/android/server/location/LocationProviderProxy;->supportsAltitude()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 279
    :cond_3c
    invoke-virtual {p1}, Landroid/location/Criteria;->isSpeedRequired()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-virtual {p0}, Lcom/android/server/location/LocationProviderProxy;->supportsSpeed()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 282
    :cond_48
    invoke-virtual {p1}, Landroid/location/Criteria;->isBearingRequired()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-virtual {p0}, Lcom/android/server/location/LocationProviderProxy;->supportsBearing()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 285
    :cond_54
    const/4 v2, 0x1

    goto :goto_11

    .line 265
    .end local v0           #criteriaPower:I
    .end local v1           #provider:Landroid/location/ILocationProvider;
    :catchall_56
    move-exception v2

    :try_start_57
    monitor-exit v3
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v2
.end method

.method public reconnect()V
    .registers 6

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_3
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 79
    new-instance v0, Lcom/android/server/location/LocationProviderProxy$Connection;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/location/LocationProviderProxy$Connection;-><init>(Lcom/android/server/location/LocationProviderProxy;Lcom/android/server/location/LocationProviderProxy$1;)V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    .line 80
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    const/16 v4, 0x15

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 83
    monitor-exit v1

    .line 84
    return-void

    .line 83
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public removeListener(I)V
    .registers 5
    .parameter "uid"

    .prologue
    .line 462
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 463
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_10

    move-result-object v0

    .line 464
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_e

    .line 466
    :try_start_b
    invoke-interface {v0, p1}, Landroid/location/ILocationProvider;->removeListener(I)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_13

    .line 470
    :cond_e
    :goto_e
    :try_start_e
    monitor-exit v2

    .line 471
    return-void

    .line 470
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_10
    move-exception v1

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_10

    throw v1

    .line 467
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_13
    move-exception v1

    goto :goto_e
.end method

.method public requestSingleShotFix()Z
    .registers 2

    .prologue
    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public requiresCell()Z
    .registers 3

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 195
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_b

    .line 196
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->requiresCell()Z

    move-result v1

    .line 198
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public requiresNetwork()Z
    .registers 3

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 177
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_b

    .line 178
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->requiresNetwork()Z

    move-result v1

    .line 180
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public requiresSatellite()Z
    .registers 3

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 186
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_b

    .line 187
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->requiresSatellite()Z

    move-result v1

    .line 189
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 6
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 437
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 438
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    move-result-object v0

    .line 439
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_12

    .line 441
    :try_start_b
    invoke-interface {v0, p1, p2}, Landroid/location/ILocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_11

    move-result v1

    :try_start_f
    monitor-exit v2

    .line 446
    :goto_10
    return v1

    .line 442
    :catch_11
    move-exception v1

    .line 445
    :cond_12
    monitor-exit v2

    .line 446
    const/4 v1, 0x0

    goto :goto_10

    .line 445
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_15
    move-exception v1

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_15

    throw v1
.end method

.method public setMinTime(JLandroid/os/WorkSource;)V
    .registers 7
    .parameter "minTime"
    .parameter "ws"

    .prologue
    .line 397
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 398
    :try_start_3
    iput-wide p1, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTime:J

    .line 399
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTimeSource:Landroid/os/WorkSource;

    invoke-virtual {v1, p3}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 400
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_17

    move-result-object v0

    .line 401
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_15

    .line 403
    :try_start_12
    invoke-interface {v0, p1, p2, p3}, Landroid/location/ILocationProvider;->setMinTime(JLandroid/os/WorkSource;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_1a

    .line 407
    :cond_15
    :goto_15
    :try_start_15
    monitor-exit v2

    .line 408
    return-void

    .line 407
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_17
    move-exception v1

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_17

    throw v1

    .line 404
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_1a
    move-exception v1

    goto :goto_15
.end method

.method public supportsAltitude()Z
    .registers 3

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 213
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_b

    .line 214
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->supportsAltitude()Z

    move-result v1

    .line 216
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public supportsBearing()Z
    .registers 3

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 231
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_b

    .line 232
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->supportsBearing()Z

    move-result v1

    .line 234
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public supportsSpeed()Z
    .registers 3

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 222
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_b

    .line 223
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->supportsSpeed()Z

    move-result v1

    .line 225
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public updateLocation(Landroid/location/Location;)V
    .registers 5
    .parameter "location"

    .prologue
    .line 425
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 426
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_10

    move-result-object v0

    .line 427
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_e

    .line 429
    :try_start_b
    invoke-interface {v0, p1}, Landroid/location/ILocationProvider;->updateLocation(Landroid/location/Location;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_13

    .line 433
    :cond_e
    :goto_e
    :try_start_e
    monitor-exit v2

    .line 434
    return-void

    .line 433
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_10
    move-exception v1

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_10

    throw v1

    .line 430
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_13
    move-exception v1

    goto :goto_e
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .registers 6
    .parameter "state"
    .parameter "info"

    .prologue
    .line 411
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 412
    :try_start_3
    iput p1, p0, Lcom/android/server/location/LocationProviderProxy;->mNetworkState:I

    .line 413
    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 414
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_14

    move-result-object v0

    .line 415
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_12

    .line 417
    :try_start_f
    invoke-interface {v0, p1, p2}, Landroid/location/ILocationProvider;->updateNetworkState(ILandroid/net/NetworkInfo;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_17

    .line 421
    :cond_12
    :goto_12
    :try_start_12
    monitor-exit v2

    .line 422
    return-void

    .line 421
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_14

    throw v1

    .line 418
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_17
    move-exception v1

    goto :goto_12
.end method
