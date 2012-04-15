.class Lcom/android/server/sip/SipService$IntervalMeasurementProcess;
.super Ljava/lang/Object;
.source "SipService.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntervalMeasurementProcess"
.end annotation


# static fields
.field private static final MAX_RETRY_COUNT:I = 0x5

.field private static final MIN_INTERVAL:I = 0x5

.field private static final NAT_MEASUREMENT_RETRY_INTERVAL:I = 0x78

.field private static final PASS_THRESHOLD:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SipKeepAliveInterval"


# instance fields
.field private mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

.field private mInterval:I

.field private mLocalProfile:Landroid/net/sip/SipProfile;

.field private mMaxInterval:I

.field private mMinInterval:I

.field private mPassCount:I

.field private mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field final synthetic this$0:Lcom/android/server/sip/SipService;


# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;II)V
    .registers 5
    .parameter
    .parameter "localProfile"
    .parameter "minInterval"
    .parameter "maxInterval"

    .prologue
    .line 645
    iput-object p1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 646
    iput p4, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mMaxInterval:I

    .line 647
    iput p3, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mMinInterval:I

    .line 648
    iput-object p2, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mLocalProfile:Landroid/net/sip/SipProfile;

    .line 649
    return-void
.end method

.method private checkTermination()Z
    .registers 3

    .prologue
    .line 715
    iget v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mMaxInterval:I

    iget v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mMinInterval:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private restart()V
    .registers 6

    .prologue
    .line 699
    iget-object v2, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v2

    .line 701
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v1, :cond_9

    monitor-exit v2

    .line 712
    :goto_8
    return-void

    .line 703
    :cond_9
    const-string v1, "SipKeepAliveInterval"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restart measurement w interval="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_35

    .line 705
    :try_start_24
    iget-object v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    .line 706
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mPassCount:I

    .line 707
    iget-object v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget v3, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    invoke-virtual {v1, v3, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_35
    .catch Ljavax/sip/SipException; {:try_start_24 .. :try_end_33} :catch_38

    .line 711
    :goto_33
    :try_start_33
    monitor-exit v2

    goto :goto_8

    :catchall_35
    move-exception v1

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_35

    throw v1

    .line 708
    :catch_38
    move-exception v0

    .line 709
    .local v0, e:Ljavax/sip/SipException;
    :try_start_39
    const-string v1, "SipKeepAliveInterval"

    const-string/jumbo v3, "restart()"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_35

    goto :goto_33
.end method

.method private restartLater()V
    .registers 5

    .prologue
    .line 778
    iget-object v2, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v2

    .line 779
    const/16 v0, 0x78

    .line 780
    .local v0, interval:I
    :try_start_5
    iget-object v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 781
    iget-object v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v1

    const v3, 0x1d4c0

    invoke-virtual {v1, v3, p0}, Lcom/android/server/sip/SipWakeupTimer;->set(ILjava/lang/Runnable;)V

    .line 782
    monitor-exit v2

    .line 783
    return-void

    .line 782
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw v1
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 6
    .parameter "errorCode"
    .parameter "description"

    .prologue
    .line 766
    const-string v0, "SipKeepAliveInterval"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interval measurement error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    invoke-direct {p0}, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->restartLater()V

    .line 768
    return-void
.end method

.method public onResponse(Z)V
    .registers 5
    .parameter "portChanged"

    .prologue
    .line 721
    iget-object v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v1

    .line 722
    if-nez p1, :cond_47

    .line 723
    :try_start_5
    iget v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mPassCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mPassCount:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_11

    monitor-exit v1

    .line 761
    :goto_10
    return-void

    .line 726
    :cond_11
    iget-object v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$1000(Lcom/android/server/sip/SipService;)I

    move-result v0

    if-lez v0, :cond_24

    .line 727
    iget-object v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    iget-object v2, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v2}, Lcom/android/server/sip/SipService;->access$1000(Lcom/android/server/sip/SipService;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/sip/SipService;->access$1102(Lcom/android/server/sip/SipService;I)I

    .line 729
    :cond_24
    iget-object v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    iget v2, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    iput v2, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mMinInterval:I

    invoke-static {v0, v2}, Lcom/android/server/sip/SipService;->access$1002(Lcom/android/server/sip/SipService;I)I

    .line 734
    iget-object v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$1200(Lcom/android/server/sip/SipService;)V

    .line 739
    :goto_32
    invoke-direct {p0}, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->checkTermination()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 741
    invoke-virtual {p0}, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->stop()V

    .line 746
    iget-object v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    iget v2, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mMinInterval:I

    invoke-static {v0, v2}, Lcom/android/server/sip/SipService;->access$1002(Lcom/android/server/sip/SipService;I)I

    .line 760
    :goto_42
    monitor-exit v1

    goto :goto_10

    :catchall_44
    move-exception v0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_44

    throw v0

    .line 737
    :cond_47
    :try_start_47
    iget v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    iput v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mMaxInterval:I

    goto :goto_32

    .line 753
    :cond_4c
    iget v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mMaxInterval:I

    iget v2, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mMinInterval:I

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    .line 758
    invoke-direct {p0}, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->restart()V
    :try_end_58
    .catchall {:try_start_47 .. :try_end_58} :catchall_44

    goto :goto_42
.end method

.method public run()V
    .registers 2

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 774
    invoke-direct {p0}, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->restart()V

    .line 775
    return-void
.end method

.method public start()V
    .registers 8

    .prologue
    .line 652
    iget-object v2, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v2

    .line 653
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v1, :cond_9

    .line 654
    monitor-exit v2

    .line 682
    :goto_8
    return-void

    .line 657
    :cond_9
    iget v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mMaxInterval:I

    iget v3, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mMinInterval:I

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    .line 658
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mPassCount:I

    .line 661
    iget v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    const/16 v3, 0xa

    if-lt v1, v3, :cond_21

    invoke-direct {p0}, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->checkTermination()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 662
    :cond_21
    const-string v1, "SipKeepAliveInterval"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "measurement aborted; interval=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mMinInterval:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mMaxInterval:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    monitor-exit v2

    goto :goto_8

    .line 681
    :catchall_50
    move-exception v1

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw v1

    .line 668
    :cond_53
    :try_start_53
    const-string v1, "SipKeepAliveInterval"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start measurement w interval="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    new-instance v1, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    iget-object v3, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    iget-object v4, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mLocalProfile:Landroid/net/sip/SipProfile;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/server/sip/SipService$SipSessionGroupExt;-><init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)V

    iput-object v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 673
    iget-object v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    new-instance v3, Lcom/android/server/sip/SipWakeupTimer;

    iget-object v4, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v4}, Lcom/android/server/sip/SipService;->access$800(Lcom/android/server/sip/SipService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v5}, Lcom/android/server/sip/SipService;->access$900(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$MyExecutor;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/server/sip/SipWakeupTimer;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v1, v3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->setWakeupTimer(Lcom/android/server/sip/SipWakeupTimer;)V

    .line 675
    iget-object v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iput-object v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 677
    iget-object v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget v3, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    invoke-virtual {v1, v3, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    :try_end_a3
    .catchall {:try_start_53 .. :try_end_a3} :catchall_50
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_a3} :catch_a6

    .line 681
    :goto_a3
    :try_start_a3
    monitor-exit v2

    goto/16 :goto_8

    .line 678
    :catch_a6
    move-exception v0

    .line 679
    .local v0, t:Ljava/lang/Throwable;
    const/4 v1, -0x4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->onError(ILjava/lang/String;)V
    :try_end_af
    .catchall {:try_start_a3 .. :try_end_af} :catchall_50

    goto :goto_a3
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 685
    iget-object v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v1

    .line 686
    :try_start_3
    iget-object v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v0, :cond_f

    .line 687
    iget-object v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    .line 688
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 690
    :cond_f
    iget-object v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    if-eqz v0, :cond_1b

    .line 691
    iget-object v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->close()V

    .line 692
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 694
    :cond_1b
    iget-object v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 695
    monitor-exit v1

    .line 696
    return-void

    .line 695
    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0
.end method
