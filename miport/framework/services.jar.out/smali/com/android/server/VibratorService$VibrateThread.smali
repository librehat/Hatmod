.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field mDone:Z

.field final mVibration:Lcom/android/server/VibratorService$Vibration;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .registers 5
    .parameter
    .parameter "vib"

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 303
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    .line 304
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$800(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    .line 305
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$900(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/VibratorService;->access$800(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 306
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$900(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 307
    return-void
.end method

.method private delay(J)V
    .registers 9
    .parameter "duration"

    .prologue
    const-wide/16 v4, 0x0

    .line 310
    cmp-long v2, p1, v4

    if-lez v2, :cond_11

    .line 311
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 314
    .local v0, bedtime:J
    :cond_a
    :try_start_a
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_1f

    .line 318
    :goto_d
    iget-boolean v2, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v2, :cond_12

    .line 325
    .end local v0           #bedtime:J
    :cond_11
    :goto_11
    return-void

    .line 321
    .restart local v0       #bedtime:J
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, p1, v2

    sub-long p1, v2, v0

    .line 323
    cmp-long v2, p1, v4

    if-gtz v2, :cond_a

    goto :goto_11

    .line 316
    :catch_1f
    move-exception v2

    goto :goto_d
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 328
    const/4 v7, -0x8

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 329
    monitor-enter p0

    .line 330
    const/4 v2, 0x0

    .line 331
    .local v2, index:I
    :try_start_6
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v7}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v5

    .line 332
    .local v5, pattern:[J
    array-length v4, v5

    .line 333
    .local v4, len:I
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v7}, Lcom/android/server/VibratorService$Vibration;->access$1000(Lcom/android/server/VibratorService$Vibration;)I
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_7f

    move-result v6

    .line 334
    .local v6, repeat:I
    const-wide/16 v0, 0x0

    .local v0, duration:J
    move v3, v2

    .line 336
    .end local v2           #index:I
    .local v3, index:I
    :goto_16
    :try_start_16
    iget-boolean v7, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_85

    if-nez v7, :cond_8a

    .line 338
    if-ge v3, v4, :cond_22

    .line 339
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    :try_start_1e
    aget-wide v7, v5, v3
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_7f

    add-long/2addr v0, v7

    move v3, v2

    .line 343
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_22
    :try_start_22
    invoke-direct {p0, v0, v1}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    .line 344
    iget-boolean v7, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_85

    if-eqz v7, :cond_63

    move v2, v3

    .line 364
    .end local v3           #index:I
    .restart local v2       #index:I
    :goto_2a
    :try_start_2a
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v7}, Lcom/android/server/VibratorService;->access$900(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 365
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_7f

    .line 366
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v7}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v8

    monitor-enter v8

    .line 367
    :try_start_3b
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v7, v7, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-ne v7, p0, :cond_46

    .line 368
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    const/4 v9, 0x0

    iput-object v9, v7, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 370
    :cond_46
    iget-boolean v7, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v7, :cond_61

    .line 373
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v7}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v7, v9}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 374
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v7, v9}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    .line 375
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v7}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    .line 377
    :cond_61
    monitor-exit v8
    :try_end_62
    .catchall {:try_start_3b .. :try_end_62} :catchall_82

    .line 378
    return-void

    .line 348
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_63
    if-ge v3, v4, :cond_76

    .line 351
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    :try_start_67
    aget-wide v0, v5, v3

    .line 352
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-lez v7, :cond_88

    .line 353
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_16

    .line 356
    :cond_76
    if-gez v6, :cond_7a

    move v2, v3

    .line 357
    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_2a

    .line 359
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_7a
    move v2, v6

    .line 360
    .end local v3           #index:I
    .restart local v2       #index:I
    const-wide/16 v0, 0x0

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_16

    .line 365
    .end local v0           #duration:J
    .end local v3           #index:I
    .end local v4           #len:I
    .end local v5           #pattern:[J
    .end local v6           #repeat:I
    .restart local v2       #index:I
    :catchall_7f
    move-exception v7

    :goto_80
    monitor-exit p0
    :try_end_81
    .catchall {:try_start_67 .. :try_end_81} :catchall_7f

    throw v7

    .line 377
    .restart local v0       #duration:J
    .restart local v4       #len:I
    .restart local v5       #pattern:[J
    .restart local v6       #repeat:I
    :catchall_82
    move-exception v7

    :try_start_83
    monitor-exit v8
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw v7

    .line 365
    .end local v2           #index:I
    .restart local v3       #index:I
    :catchall_85
    move-exception v7

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_80

    :cond_88
    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_16

    :cond_8a
    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_2a
.end method
