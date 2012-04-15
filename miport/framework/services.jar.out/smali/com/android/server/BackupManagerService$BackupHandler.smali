.class Lcom/android/server/BackupManagerService$BackupHandler;
.super Landroid/os/Handler;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BackupManagerService;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    .line 426
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 427
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 31
    .parameter "msg"

    .prologue
    .line 431
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_410

    .line 652
    :goto_7
    :pswitch_7
    return-void

    .line 434
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/BackupManagerService;->mLastBackupPass:J

    .line 435
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-wide v6, v6, Lcom/android/server/BackupManagerService;->mLastBackupPass:J

    const-wide/32 v8, 0x36ee80

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/server/BackupManagerService;->mNextBackupPass:J

    .line 437
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/BackupManagerService;->access$000(Lcom/android/server/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v28

    .line 438
    .local v28, transport:Lcom/android/internal/backup/IBackupTransport;
    if-nez v28, :cond_55

    .line 439
    const-string v5, "BackupManagerService"

    const-string v6, "Backup requested but no transport available"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v6, v5, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6

    .line 441
    :try_start_40
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    .line 442
    monitor-exit v6
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_52

    .line 443
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_7

    .line 442
    :catchall_52
    move-exception v5

    :try_start_53
    monitor-exit v6
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v5

    .line 448
    :cond_55
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v23, queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/BackupManagerService$BackupRequest;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v5, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    move-object/from16 v19, v0

    .line 450
    .local v19, oldJournal:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v6, v5, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6

    .line 454
    :try_start_69
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_b1

    .line 455
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_83
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/BackupManagerService$BackupRequest;

    .line 456
    .local v16, b:Lcom/android/server/BackupManagerService$BackupRequest;
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 465
    .end local v16           #b:Lcom/android/server/BackupManagerService$BackupRequest;
    .end local v18           #i$:Ljava/util/Iterator;
    :catchall_97
    move-exception v5

    monitor-exit v6
    :try_end_99
    .catchall {:try_start_69 .. :try_end_99} :catchall_97

    throw v5

    .line 458
    .restart local v18       #i$:Ljava/util/Iterator;
    :cond_9a
    :try_start_9a
    const-string v5, "BackupManagerService"

    const-string v7, "clearing pending backups"

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 462
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    .line 465
    .end local v18           #i$:Ljava/util/Iterator;
    :cond_b1
    monitor-exit v6
    :try_end_b2
    .catchall {:try_start_9a .. :try_end_b2} :catchall_97

    .line 472
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_dc

    .line 474
    new-instance v21, Lcom/android/server/BackupManagerService$PerformBackupTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v23

    move-object/from16 v3, v19

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/BackupManagerService$PerformBackupTask;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/util/ArrayList;Ljava/io/File;)V

    .line 475
    .local v21, pbt:Lcom/android/server/BackupManagerService$PerformBackupTask;
    const/16 v5, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    .line 476
    .local v22, pbtMessage:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_7

    .line 478
    .end local v21           #pbt:Lcom/android/server/BackupManagerService$PerformBackupTask;
    .end local v22           #pbtMessage:Landroid/os/Message;
    :cond_dc
    const-string v5, "BackupManagerService"

    const-string v6, "Backup requested but nothing pending"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v6, v5, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6

    .line 480
    :try_start_ea
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    .line 481
    monitor-exit v6
    :try_end_f2
    .catchall {:try_start_ea .. :try_end_f2} :catchall_fd

    .line 482
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    .line 481
    :catchall_fd
    move-exception v5

    :try_start_fe
    monitor-exit v6
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_fd

    throw v5

    .line 490
    .end local v19           #oldJournal:Ljava/io/File;
    .end local v23           #queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/BackupManagerService$BackupRequest;>;"
    .end local v28           #transport:Lcom/android/internal/backup/IBackupTransport;
    :pswitch_100
    :try_start_100
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/BackupManagerService$BackupRestoreTask;

    .line 492
    .local v4, task:Lcom/android/server/BackupManagerService$BackupRestoreTask;
    invoke-interface {v4}, Lcom/android/server/BackupManagerService$BackupRestoreTask;->execute()V
    :try_end_109
    .catch Ljava/lang/ClassCastException; {:try_start_100 .. :try_end_109} :catch_10b

    goto/16 :goto_7

    .line 493
    .end local v4           #task:Lcom/android/server/BackupManagerService$BackupRestoreTask;
    :catch_10b
    move-exception v17

    .line 494
    .local v17, e:Ljava/lang/ClassCastException;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid backup task in flight, obj="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 502
    .end local v17           #e:Ljava/lang/ClassCastException;
    :pswitch_12a
    :try_start_12a
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/BackupManagerService$BackupRestoreTask;

    .line 503
    .restart local v4       #task:Lcom/android/server/BackupManagerService$BackupRestoreTask;
    invoke-interface {v4}, Lcom/android/server/BackupManagerService$BackupRestoreTask;->operationComplete()V
    :try_end_133
    .catch Ljava/lang/ClassCastException; {:try_start_12a .. :try_end_133} :catch_135

    goto/16 :goto_7

    .line 504
    .end local v4           #task:Lcom/android/server/BackupManagerService$BackupRestoreTask;
    :catch_135
    move-exception v17

    .line 505
    .restart local v17       #e:Ljava/lang/ClassCastException;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid completion in flight, obj="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 514
    .end local v17           #e:Ljava/lang/ClassCastException;
    :pswitch_154
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/server/BackupManagerService$FullBackupParams;

    .line 515
    .local v20, params:Lcom/android/server/BackupManagerService$FullBackupParams;
    new-instance v4, Lcom/android/server/BackupManagerService$PerformFullBackupTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/server/BackupManagerService$FullParams;->fd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/server/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    move-object/from16 v0, v20

    iget-boolean v8, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->includeApks:Z

    move-object/from16 v0, v20

    iget-boolean v9, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->includeShared:Z

    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/android/server/BackupManagerService$FullParams;->curPassword:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v11, v0, Lcom/android/server/BackupManagerService$FullParams;->encryptPassword:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-boolean v12, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->allApps:Z

    move-object/from16 v0, v20

    iget-boolean v13, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->includeSystem:Z

    move-object/from16 v0, v20

    iget-object v14, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->packages:[Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v15, v0, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct/range {v4 .. v15}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;-><init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZLjava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 519
    .local v4, task:Lcom/android/server/BackupManagerService$PerformFullBackupTask;
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    .line 525
    .end local v4           #task:Lcom/android/server/BackupManagerService$PerformFullBackupTask;
    .end local v20           #params:Lcom/android/server/BackupManagerService$FullBackupParams;
    :pswitch_197
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/server/BackupManagerService$RestoreParams;

    .line 526
    .local v20, params:Lcom/android/server/BackupManagerService$RestoreParams;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_RUN_RESTORE observer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/server/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    new-instance v4, Lcom/android/server/BackupManagerService$PerformRestoreTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/server/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/server/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/android/server/BackupManagerService$RestoreParams;->token:J

    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/android/server/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v20

    iget v11, v0, Lcom/android/server/BackupManagerService$RestoreParams;->pmToken:I

    move-object/from16 v0, v20

    iget-boolean v12, v0, Lcom/android/server/BackupManagerService$RestoreParams;->needFullBackup:Z

    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/android/server/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    invoke-direct/range {v4 .. v13}, Lcom/android/server/BackupManagerService$PerformRestoreTask;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;)V

    .line 531
    .local v4, task:Lcom/android/server/BackupManagerService$PerformRestoreTask;
    const/16 v5, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v26

    .line 532
    .local v26, restoreMsg:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_7

    .line 540
    .end local v4           #task:Lcom/android/server/BackupManagerService$PerformRestoreTask;
    .end local v20           #params:Lcom/android/server/BackupManagerService$RestoreParams;
    .end local v26           #restoreMsg:Landroid/os/Message;
    :pswitch_1f1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/server/BackupManagerService$FullRestoreParams;

    .line 541
    .local v20, params:Lcom/android/server/BackupManagerService$FullRestoreParams;
    new-instance v4, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/server/BackupManagerService$FullParams;->fd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/server/BackupManagerService$FullParams;->curPassword:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/server/BackupManagerService$FullParams;->encryptPassword:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/server/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct/range {v4 .. v10}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;-><init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 544
    .local v4, task:Lcom/android/server/BackupManagerService$PerformFullRestoreTask;
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    .line 550
    .end local v4           #task:Lcom/android/server/BackupManagerService$PerformFullRestoreTask;
    .end local v20           #params:Lcom/android/server/BackupManagerService$FullRestoreParams;
    :pswitch_220
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/server/BackupManagerService$ClearParams;

    .line 551
    .local v20, params:Lcom/android/server/BackupManagerService$ClearParams;
    new-instance v5, Lcom/android/server/BackupManagerService$PerformClearTask;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/server/BackupManagerService$ClearParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/server/BackupManagerService$ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/BackupManagerService$PerformClearTask;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v5}, Lcom/android/server/BackupManagerService$PerformClearTask;->run()V

    goto/16 :goto_7

    .line 560
    .end local v20           #params:Lcom/android/server/BackupManagerService$ClearParams;
    :pswitch_23e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v6, v5, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6

    .line 561
    :try_start_245
    new-instance v24, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v0, v24

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 562
    .local v24, queue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 563
    monitor-exit v6
    :try_end_25c
    .catchall {:try_start_245 .. :try_end_25c} :catchall_26c

    .line 565
    new-instance v5, Lcom/android/server/BackupManagerService$PerformInitializeTask;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v24

    invoke-direct {v5, v6, v0}, Lcom/android/server/BackupManagerService$PerformInitializeTask;-><init>(Lcom/android/server/BackupManagerService;Ljava/util/HashSet;)V

    invoke-virtual {v5}, Lcom/android/server/BackupManagerService$PerformInitializeTask;->run()V

    goto/16 :goto_7

    .line 563
    .end local v24           #queue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_26c
    move-exception v5

    :try_start_26d
    monitor-exit v6
    :try_end_26e
    .catchall {:try_start_26d .. :try_end_26e} :catchall_26c

    throw v5

    .line 572
    :pswitch_26f
    const/16 v27, 0x0

    .line 573
    .local v27, sets:[Landroid/app/backup/RestoreSet;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;

    .line 575
    .local v20, params:Lcom/android/server/BackupManagerService$RestoreGetSetsParams;
    :try_start_279
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v27

    .line 577
    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    monitor-enter v6
    :try_end_286
    .catchall {:try_start_279 .. :try_end_286} :catchall_322
    .catch Ljava/lang/Exception; {:try_start_279 .. :try_end_286} :catch_2c7

    .line 578
    :try_start_286
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    move-object/from16 v0, v27

    iput-object v0, v5, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    .line 579
    monitor-exit v6
    :try_end_28f
    .catchall {:try_start_286 .. :try_end_28f} :catchall_2c4

    .line 580
    if-nez v27, :cond_299

    const/16 v5, 0xb0f

    const/4 v6, 0x0

    :try_start_294
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_299
    .catchall {:try_start_294 .. :try_end_299} :catchall_322
    .catch Ljava/lang/Exception; {:try_start_294 .. :try_end_299} :catch_2c7

    .line 584
    :cond_299
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v5, :cond_2a8

    .line 586
    :try_start_29f
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v27

    invoke-interface {v5, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_2a8
    .catch Landroid/os/RemoteException; {:try_start_29f .. :try_end_2a8} :catch_2fa
    .catch Ljava/lang/Exception; {:try_start_29f .. :try_end_2a8} :catch_303

    .line 595
    :cond_2a8
    :goto_2a8
    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 596
    const/16 v5, 0x8

    const-wide/32 v6, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 598
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    .line 579
    :catchall_2c4
    move-exception v5

    :try_start_2c5
    monitor-exit v6
    :try_end_2c6
    .catchall {:try_start_2c5 .. :try_end_2c6} :catchall_2c4

    :try_start_2c6
    throw v5
    :try_end_2c7
    .catchall {:try_start_2c6 .. :try_end_2c7} :catchall_322
    .catch Ljava/lang/Exception; {:try_start_2c6 .. :try_end_2c7} :catch_2c7

    .line 581
    :catch_2c7
    move-exception v17

    .line 582
    .local v17, e:Ljava/lang/Exception;
    :try_start_2c8
    const-string v5, "BackupManagerService"

    const-string v6, "Error from transport getting set list"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2cf
    .catchall {:try_start_2c8 .. :try_end_2cf} :catchall_322

    .line 584
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v5, :cond_2de

    .line 586
    :try_start_2d5
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v27

    invoke-interface {v5, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_2de
    .catch Landroid/os/RemoteException; {:try_start_2d5 .. :try_end_2de} :catch_30e
    .catch Ljava/lang/Exception; {:try_start_2d5 .. :try_end_2de} :catch_317

    .line 595
    :cond_2de
    :goto_2de
    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 596
    const/16 v5, 0x8

    const-wide/32 v6, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 598
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    .line 587
    .end local v17           #e:Ljava/lang/Exception;
    :catch_2fa
    move-exception v25

    .line 588
    .local v25, re:Landroid/os/RemoteException;
    const-string v5, "BackupManagerService"

    const-string v6, "Unable to report listing to observer"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a8

    .line 589
    .end local v25           #re:Landroid/os/RemoteException;
    :catch_303
    move-exception v17

    .line 590
    .restart local v17       #e:Ljava/lang/Exception;
    const-string v5, "BackupManagerService"

    const-string v6, "Restore observer threw"

    move-object/from16 v0, v17

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a8

    .line 587
    :catch_30e
    move-exception v25

    .line 588
    .restart local v25       #re:Landroid/os/RemoteException;
    const-string v5, "BackupManagerService"

    const-string v6, "Unable to report listing to observer"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2de

    .line 589
    .end local v25           #re:Landroid/os/RemoteException;
    :catch_317
    move-exception v17

    .line 590
    const-string v5, "BackupManagerService"

    const-string v6, "Restore observer threw"

    move-object/from16 v0, v17

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2de

    .line 584
    .end local v17           #e:Ljava/lang/Exception;
    :catchall_322
    move-exception v5

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v6, :cond_332

    .line 586
    :try_start_329
    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v27

    invoke-interface {v6, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_332
    .catch Landroid/os/RemoteException; {:try_start_329 .. :try_end_332} :catch_34d
    .catch Ljava/lang/Exception; {:try_start_329 .. :try_end_332} :catch_356

    .line 595
    :cond_332
    :goto_332
    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 596
    const/16 v6, 0x8

    const-wide/32 v7, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 598
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v5

    .line 587
    :catch_34d
    move-exception v25

    .line 588
    .restart local v25       #re:Landroid/os/RemoteException;
    const-string v6, "BackupManagerService"

    const-string v7, "Unable to report listing to observer"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_332

    .line 589
    .end local v25           #re:Landroid/os/RemoteException;
    :catch_356
    move-exception v17

    .line 590
    .restart local v17       #e:Ljava/lang/Exception;
    const-string v6, "BackupManagerService"

    const-string v7, "Restore observer threw"

    move-object/from16 v0, v17

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_332

    .line 605
    .end local v17           #e:Ljava/lang/Exception;
    .end local v20           #params:Lcom/android/server/BackupManagerService$RestoreGetSetsParams;
    .end local v27           #sets:[Landroid/app/backup/RestoreSet;
    :pswitch_361
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/BackupManagerService;->handleTimeout(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 611
    :pswitch_372
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    monitor-enter v6

    .line 612
    :try_start_377
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    if-eqz v5, :cond_3a3

    .line 617
    const-string v5, "BackupManagerService"

    const-string v7, "Restore session timed out; aborting"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    new-instance v5, Lcom/android/server/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v7, v7, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, v9, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    invoke-direct {v5, v7, v8, v9}, Lcom/android/server/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/BackupManagerService$ActiveRestoreSession;Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$ActiveRestoreSession;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 621
    :cond_3a3
    monitor-exit v6
    :try_end_3a4
    .catchall {:try_start_377 .. :try_end_3a4} :catchall_3ed

    .line 626
    :pswitch_3a4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v6, v5, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v6

    .line 627
    :try_start_3ab
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/BackupManagerService$FullParams;

    .line 628
    .local v20, params:Lcom/android/server/BackupManagerService$FullParams;
    if-eqz v20, :cond_3f0

    .line 629
    const-string v5, "BackupManagerService"

    const-string v7, "Full backup/restore timed out waiting for user confirmation"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/server/BackupManagerService;->signalFullBackupRestoreCompletion(Lcom/android/server/BackupManagerService$FullParams;)V

    .line 635
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->delete(I)V

    .line 638
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/server/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_3de
    .catchall {:try_start_3ab .. :try_end_3de} :catchall_3ea

    if-eqz v5, :cond_3e7

    .line 640
    :try_start_3e0
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/server/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v5}, Landroid/app/backup/IFullBackupRestoreObserver;->onTimeout()V
    :try_end_3e7
    .catchall {:try_start_3e0 .. :try_end_3e7} :catchall_3ea
    .catch Landroid/os/RemoteException; {:try_start_3e0 .. :try_end_3e7} :catch_40d

    .line 648
    :cond_3e7
    :goto_3e7
    :try_start_3e7
    monitor-exit v6

    goto/16 :goto_7

    .end local v20           #params:Lcom/android/server/BackupManagerService$FullParams;
    :catchall_3ea
    move-exception v5

    monitor-exit v6
    :try_end_3ec
    .catchall {:try_start_3e7 .. :try_end_3ec} :catchall_3ea

    throw v5

    .line 621
    :catchall_3ed
    move-exception v5

    :try_start_3ee
    monitor-exit v6
    :try_end_3ef
    .catchall {:try_start_3ee .. :try_end_3ef} :catchall_3ed

    throw v5

    .line 646
    .restart local v20       #params:Lcom/android/server/BackupManagerService$FullParams;
    :cond_3f0
    :try_start_3f0
    const-string v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t find params for token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40c
    .catchall {:try_start_3f0 .. :try_end_40c} :catchall_3ea

    goto :goto_3e7

    .line 641
    :catch_40d
    move-exception v5

    goto :goto_3e7

    .line 431
    nop

    :pswitch_data_410
    .packed-switch 0x1
        :pswitch_8
        :pswitch_154
        :pswitch_197
        :pswitch_220
        :pswitch_23e
        :pswitch_26f
        :pswitch_361
        :pswitch_372
        :pswitch_3a4
        :pswitch_1f1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_100
        :pswitch_12a
    .end packed-switch
.end method
