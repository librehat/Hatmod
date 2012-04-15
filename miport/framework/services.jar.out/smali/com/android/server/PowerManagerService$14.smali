.class Lcom/android/server/PowerManagerService$14;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 3108
    iput-object p1, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 3149
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 16
    .parameter "event"

    .prologue
    .line 3110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3111
    .local v3, milliseconds:J
    iget-object v8, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$600(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v9

    monitor-enter v9

    .line 3112
    :try_start_b
    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x0

    aget v1, v8, v10

    .line 3113
    .local v1, distance:F
    iget-object v8, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$5900(Lcom/android/server/PowerManagerService;)J

    move-result-wide v10

    sub-long v6, v3, v10

    .line 3114
    .local v6, timeSinceLastEvent:J
    iget-object v8, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v8, v3, v4}, Lcom/android/server/PowerManagerService;->access$5902(Lcom/android/server/PowerManagerService;J)J

    .line 3115
    iget-object v8, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$4100(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$6000(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3116
    const/4 v5, 0x0

    .line 3119
    .local v5, proximityTaskQueued:Z
    float-to-double v10, v1

    const-wide/16 v12, 0x0

    cmpl-double v8, v10, v12

    if-ltz v8, :cond_83

    const/high16 v8, 0x40a0

    cmpg-float v8, v1, v8

    if-gez v8, :cond_83

    iget-object v8, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Landroid/hardware/Sensor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v8

    cmpg-float v8, v1, v8

    if-gez v8, :cond_83

    const/4 v0, 0x1

    .line 3125
    .local v0, active:Z
    :goto_49
    const-wide/16 v10, 0x3e8

    cmp-long v8, v6, v10

    if-gez v8, :cond_87

    .line 3127
    iget-object v10, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    if-eqz v0, :cond_85

    const/4 v8, 0x1

    :goto_54
    invoke-static {v10, v8}, Lcom/android/server/PowerManagerService;->access$5002(Lcom/android/server/PowerManagerService;I)I

    .line 3128
    iget-object v8, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$4100(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$6000(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v10

    const-wide/16 v11, 0x3e8

    sub-long/2addr v11, v6

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3129
    const/4 v5, 0x1

    .line 3137
    :goto_6a
    iget-object v8, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$5200(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->isHeld()Z

    move-result v2

    .line 3138
    .local v2, held:Z
    if-nez v2, :cond_96

    if-eqz v5, :cond_96

    .line 3140
    iget-object v8, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$5200(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 3144
    :cond_81
    :goto_81
    monitor-exit v9

    .line 3145
    return-void

    .line 3119
    .end local v0           #active:Z
    .end local v2           #held:Z
    :cond_83
    const/4 v0, 0x0

    goto :goto_49

    .line 3127
    .restart local v0       #active:Z
    :cond_85
    const/4 v8, 0x0

    goto :goto_54

    .line 3132
    :cond_87
    iget-object v8, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v10, -0x1

    invoke-static {v8, v10}, Lcom/android/server/PowerManagerService;->access$5002(Lcom/android/server/PowerManagerService;I)I

    .line 3133
    iget-object v8, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v8, v0}, Lcom/android/server/PowerManagerService;->access$5100(Lcom/android/server/PowerManagerService;Z)V

    goto :goto_6a

    .line 3144
    .end local v0           #active:Z
    .end local v1           #distance:F
    .end local v5           #proximityTaskQueued:Z
    .end local v6           #timeSinceLastEvent:J
    :catchall_93
    move-exception v8

    monitor-exit v9
    :try_end_95
    .catchall {:try_start_b .. :try_end_95} :catchall_93

    throw v8

    .line 3141
    .restart local v0       #active:Z
    .restart local v1       #distance:F
    .restart local v2       #held:Z
    .restart local v5       #proximityTaskQueued:Z
    .restart local v6       #timeSinceLastEvent:J
    :cond_96
    if-eqz v2, :cond_81

    if-nez v5, :cond_81

    .line 3142
    :try_start_9a
    iget-object v8, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$5200(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V
    :try_end_a3
    .catchall {:try_start_9a .. :try_end_a3} :catchall_93

    goto :goto_81
.end method
