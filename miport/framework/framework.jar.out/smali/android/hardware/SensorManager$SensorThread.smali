.class Landroid/hardware/SensorManager$SensorThread;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensorThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
    }
.end annotation


# instance fields
.field mSensorsReady:Z

.field mThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 451
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 452
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .prologue
    .line 456
    return-void
.end method

.method startLocked()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 461
    :try_start_1
    iget-object v3, p0, Landroid/hardware/SensorManager$SensorThread;->mThread:Ljava/lang/Thread;

    if-nez v3, :cond_28

    .line 462
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/hardware/SensorManager$SensorThread;->mSensorsReady:Z

    .line 463
    new-instance v0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;

    invoke-direct {v0, p0}, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;-><init>(Landroid/hardware/SensorManager$SensorThread;)V

    .line 464
    .local v0, runnable:Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
    new-instance v1, Ljava/lang/Thread;

    const-class v3, Landroid/hardware/SensorManager$SensorThread;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 465
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 466
    monitor-enter v0
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1c} :catch_27

    .line 467
    :goto_1c
    :try_start_1c
    iget-boolean v3, p0, Landroid/hardware/SensorManager$SensorThread;->mSensorsReady:Z

    if-nez v3, :cond_2d

    .line 468
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_1c

    .line 470
    :catchall_24
    move-exception v3

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_24

    :try_start_26
    throw v3
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_27} :catch_27

    .line 473
    .end local v0           #runnable:Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
    .end local v1           #thread:Ljava/lang/Thread;
    :catch_27
    move-exception v3

    .line 475
    :cond_28
    :goto_28
    iget-object v3, p0, Landroid/hardware/SensorManager$SensorThread;->mThread:Ljava/lang/Thread;

    if-nez v3, :cond_31

    :goto_2c
    return v2

    .line 470
    .restart local v0       #runnable:Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
    .restart local v1       #thread:Ljava/lang/Thread;
    :cond_2d
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_24

    .line 471
    :try_start_2e
    iput-object v1, p0, Landroid/hardware/SensorManager$SensorThread;->mThread:Ljava/lang/Thread;
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_30} :catch_27

    goto :goto_28

    .line 475
    .end local v0           #runnable:Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_31
    const/4 v2, 0x1

    goto :goto_2c
.end method
