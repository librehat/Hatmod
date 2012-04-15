.class Lcom/android/server/sip/SipService$SipSessionGroupExt;
.super Landroid/net/sip/SipSessionAdapter;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipSessionGroupExt"
.end annotation


# instance fields
.field private mAutoRegistration:Lcom/android/server/sip/SipService$AutoRegistrationProcess;

.field private mIncomingCallPendingIntent:Landroid/app/PendingIntent;

.field private mOpenedToReceiveCalls:Z

.field private mSipGroup:Lcom/android/server/sip/SipSessionGroup;

.field final synthetic this$0:Lcom/android/server/sip/SipService;


# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)V
    .registers 10
    .parameter
    .parameter "localProfile"
    .parameter "incomingCallPendingIntent"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct {p0}, Landroid/net/sip/SipSessionAdapter;-><init>()V

    .line 458
    new-instance v2, Lcom/android/server/sip/SipService$AutoRegistrationProcess;

    iget-object v3, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/android/server/sip/SipService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;-><init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$1;)V

    iput-object v2, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/android/server/sip/SipService$AutoRegistrationProcess;

    .line 464
    invoke-virtual {p2}, Landroid/net/sip/SipProfile;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, password:Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->duplicate(Landroid/net/sip/SipProfile;)Landroid/net/sip/SipProfile;

    move-result-object v0

    .line 466
    .local v0, p:Landroid/net/sip/SipProfile;
    invoke-static {p1}, Lcom/android/server/sip/SipService;->access$200(Lcom/android/server/sip/SipService;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->createSipSessionGroup(Ljava/lang/String;Landroid/net/sip/SipProfile;Ljava/lang/String;)Lcom/android/server/sip/SipSessionGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    .line 467
    iput-object p3, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mIncomingCallPendingIntent:Landroid/app/PendingIntent;

    .line 468
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/android/server/sip/SipService$AutoRegistrationProcess;

    invoke-virtual {v2, p4}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 469
    return-void
.end method

.method private createSipSessionGroup(Ljava/lang/String;Landroid/net/sip/SipProfile;Ljava/lang/String;)Lcom/android/server/sip/SipSessionGroup;
    .registers 11
    .parameter "localIp"
    .parameter "localProfile"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 495
    :try_start_0
    new-instance v0, Lcom/android/server/sip/SipSessionGroup;

    iget-object v1, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/sip/SipSessionGroup;-><init>(Ljava/lang/String;Landroid/net/sip/SipProfile;Ljava/lang/String;Lcom/android/server/sip/SipWakeupTimer;Lcom/android/server/sip/SipWakeLock;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    .line 501
    :goto_14
    return-object v0

    .line 497
    :catch_15
    move-exception v6

    .line 499
    .local v6, e:Ljava/io/IOException;
    const-string v0, "SipService"

    const-string v1, "createSipSessionGroup(): network disconnected?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    if-eqz p1, :cond_25

    .line 501
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->createSipSessionGroup(Ljava/lang/String;Landroid/net/sip/SipProfile;Ljava/lang/String;)Lcom/android/server/sip/SipSessionGroup;

    move-result-object v0

    goto :goto_14

    .line 504
    :cond_25
    const-string v0, "SipService"

    const-string v1, "impossible! recursive!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "createSipSessionGroup"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private duplicate(Landroid/net/sip/SipProfile;)Landroid/net/sip/SipProfile;
    .registers 5
    .parameter "p"

    .prologue
    .line 512
    :try_start_0
    new-instance v1, Landroid/net/sip/SipProfile$Builder;

    invoke-direct {v1, p1}, Landroid/net/sip/SipProfile$Builder;-><init>(Landroid/net/sip/SipProfile;)V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Landroid/net/sip/SipProfile$Builder;->setPassword(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v1

    return-object v1

    .line 513
    :catch_10
    move-exception v0

    .line 514
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SipService"

    const-string v2, "duplicate()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "duplicate profile"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup;->getLocalProfileUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private resetGroup(Ljava/lang/String;)V
    .registers 5
    .parameter "localIp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 554
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipSessionGroup;->reset(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 566
    :goto_5
    return-void

    .line 555
    :catch_6
    move-exception v0

    .line 557
    .local v0, e:Ljava/io/IOException;
    const-string v1, "SipService"

    const-string/jumbo v2, "resetGroup(): network disconnected?"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    if-eqz p1, :cond_16

    .line 559
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->resetGroup(Ljava/lang/String;)V

    goto :goto_5

    .line 562
    :cond_16
    const-string v1, "SipService"

    const-string v2, "impossible!"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "resetGroup"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mOpenedToReceiveCalls:Z

    .line 570
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup;->close()V

    .line 571
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/android/server/sip/SipService$AutoRegistrationProcess;

    invoke-virtual {v0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->stop()V

    .line 574
    return-void
.end method

.method public containsSession(Ljava/lang/String;)Z
    .registers 3
    .parameter "callId"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->containsSession(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;
    .registers 3
    .parameter "listener"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;

    move-result-object v0

    return-object v0
.end method

.method public getLocalProfile()Landroid/net/sip/SipProfile;
    .registers 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method public isOpenedToReceiveCalls()Z
    .registers 2

    .prologue
    .line 617
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mOpenedToReceiveCalls:Z

    return v0
.end method

.method public isRegistered()Z
    .registers 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/android/server/sip/SipService$AutoRegistrationProcess;

    invoke-virtual {v0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->isRegistered()Z

    move-result v0

    return v0
.end method

.method public onConnectivityChanged(Z)V
    .registers 3
    .parameter "connected"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup;->onConnectivityChanged()V

    .line 540
    if-eqz p1, :cond_18

    .line 541
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$200(Lcom/android/server/sip/SipService;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->resetGroup(Ljava/lang/String;)V

    .line 542
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mOpenedToReceiveCalls:Z

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->openToReceiveCalls()V

    .line 550
    :cond_17
    :goto_17
    return-void

    .line 547
    :cond_18
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup;->close()V

    .line 548
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/android/server/sip/SipService$AutoRegistrationProcess;

    invoke-virtual {v0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->stop()V

    goto :goto_17
.end method

.method public onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .registers 4
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 614
    return-void
.end method

.method public onKeepAliveIntervalChanged()V
    .registers 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/android/server/sip/SipService$AutoRegistrationProcess;

    invoke-virtual {v0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->onKeepAliveIntervalChanged()V

    .line 481
    return-void
.end method

.method public onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .registers 11
    .parameter "s"
    .parameter "caller"
    .parameter "sessionDescription"

    .prologue
    .line 584
    move-object v2, p1

    check-cast v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 586
    .local v2, session:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    iget-object v4, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v4

    .line 588
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v3, p0, v2}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$SipSessionGroupExt;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 589
    :cond_14
    invoke-virtual {v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCall()V
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_35
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_6 .. :try_end_17} :catch_38

    .line 590
    :try_start_17
    monitor-exit v4
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_35

    .line 607
    :goto_18
    return-void

    .line 594
    :cond_19
    :try_start_19
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v3, v2}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;Landroid/net/sip/ISipSession;)V

    .line 595
    invoke-virtual {v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Landroid/net/sip/SipManager;->createIncomingCallBroadcast(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 600
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mIncomingCallPendingIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v5}, Lcom/android/server/sip/SipService;->access$800(Lcom/android/server/sip/SipService;)Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x65

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_33
    .catchall {:try_start_19 .. :try_end_33} :catchall_35
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_19 .. :try_end_33} :catch_38

    .line 606
    .end local v1           #intent:Landroid/content/Intent;
    :goto_33
    :try_start_33
    monitor-exit v4

    goto :goto_18

    :catchall_35
    move-exception v3

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_35

    throw v3

    .line 602
    :catch_38
    move-exception v0

    .line 603
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    :try_start_39
    const-string v3, "SipService"

    const-string/jumbo v5, "pendingIntent is canceled, drop incoming call"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-virtual {v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCall()V
    :try_end_44
    .catchall {:try_start_39 .. :try_end_44} :catchall_35

    goto :goto_33
.end method

.method public openToReceiveCalls()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mOpenedToReceiveCalls:Z

    .line 529
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$500(Lcom/android/server/sip/SipService;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 530
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionGroup;->openToReceiveCalls(Landroid/net/sip/ISipSessionListener;)V

    .line 531
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/android/server/sip/SipService$AutoRegistrationProcess;

    iget-object v1, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->start(Lcom/android/server/sip/SipSessionGroup;)V

    .line 535
    :cond_17
    return-void
.end method

.method public setIncomingCallPendingIntent(Landroid/app/PendingIntent;)V
    .registers 2
    .parameter "pIntent"

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mIncomingCallPendingIntent:Landroid/app/PendingIntent;

    .line 525
    return-void
.end method

.method public setListener(Landroid/net/sip/ISipSessionListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/android/server/sip/SipService$AutoRegistrationProcess;

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 521
    return-void
.end method

.method setWakeupTimer(Lcom/android/server/sip/SipWakeupTimer;)V
    .registers 3
    .parameter "timer"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->setWakeupTimer(Lcom/android/server/sip/SipWakeupTimer;)V

    .line 487
    return-void
.end method
