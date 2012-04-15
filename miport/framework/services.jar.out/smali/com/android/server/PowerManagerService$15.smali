.class Lcom/android/server/PowerManagerService$15;
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
    .line 3152
    iput-object p1, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 3194
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 13
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3154
    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$600(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v6

    monitor-enter v6

    .line 3156
    :try_start_9
    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6200(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 3157
    monitor-exit v6

    .line 3190
    :goto_12
    return-void

    .line 3160
    :cond_13
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x0

    aget v5, v5, v7

    float-to-int v2, v5

    .line 3161
    .local v2, value:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3165
    .local v0, milliseconds:J
    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;)F

    move-result v5

    const/high16 v7, -0x4080

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_3b

    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6400(Lcom/android/server/PowerManagerService;)J

    move-result-wide v7

    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6500(Lcom/android/server/PowerManagerService;)I

    move-result v5

    int-to-long v9, v5

    add-long/2addr v7, v9

    cmp-long v5, v0, v7

    if-gez v5, :cond_60

    .line 3168
    :cond_3b
    iget-object v3, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$4100(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$6600(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3169
    iget-object v3, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$5302(Lcom/android/server/PowerManagerService;Z)Z

    .line 3170
    iget-object v3, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$5402(Lcom/android/server/PowerManagerService;Z)Z

    .line 3171
    iget-object v3, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v3, v2}, Lcom/android/server/PowerManagerService;->access$5600(Lcom/android/server/PowerManagerService;I)V

    .line 3189
    :cond_5b
    :goto_5b
    monitor-exit v6

    goto :goto_12

    .end local v0           #milliseconds:J
    .end local v2           #value:I
    :catchall_5d
    move-exception v3

    monitor-exit v6
    :try_end_5f
    .catchall {:try_start_9 .. :try_end_5f} :catchall_5d

    throw v3

    .line 3173
    .restart local v0       #milliseconds:J
    .restart local v2       #value:I
    :cond_60
    int-to-float v5, v2

    :try_start_61
    iget-object v7, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;)F

    move-result v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_73

    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$5300(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    if-nez v5, :cond_a1

    :cond_73
    int-to-float v5, v2

    iget-object v7, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;)F

    move-result v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_86

    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$5400(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    if-nez v5, :cond_a1

    :cond_86
    int-to-float v5, v2

    iget-object v7, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;)F

    move-result v7

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_a1

    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$5300(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    if-nez v5, :cond_fe

    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$5400(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    if-nez v5, :cond_fe

    .line 3178
    :cond_a1
    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$4100(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$6600(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3179
    iget-object v7, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v5, v2

    iget-object v8, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;)F

    move-result v8

    cmpg-float v5, v5, v8

    if-gez v5, :cond_fa

    move v5, v3

    :goto_be
    invoke-static {v7, v5}, Lcom/android/server/PowerManagerService;->access$5302(Lcom/android/server/PowerManagerService;Z)Z

    .line 3180
    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v7, v2

    iget-object v8, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_fc

    :goto_ce
    invoke-static {v5, v3}, Lcom/android/server/PowerManagerService;->access$5402(Lcom/android/server/PowerManagerService;Z)Z

    .line 3181
    iget-object v3, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$5300(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-nez v3, :cond_e1

    iget-object v3, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$5400(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 3182
    :cond_e1
    iget-object v3, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v4, v2

    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$5502(Lcom/android/server/PowerManagerService;F)F

    .line 3183
    iget-object v3, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$4100(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$6600(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v7, 0x7d0

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5b

    :cond_fa
    move v5, v4

    .line 3179
    goto :goto_be

    :cond_fc
    move v3, v4

    .line 3180
    goto :goto_ce

    .line 3186
    :cond_fe
    iget-object v3, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v4, v2

    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$5502(Lcom/android/server/PowerManagerService;F)F
    :try_end_104
    .catchall {:try_start_61 .. :try_end_104} :catchall_5d

    goto/16 :goto_5b
.end method
