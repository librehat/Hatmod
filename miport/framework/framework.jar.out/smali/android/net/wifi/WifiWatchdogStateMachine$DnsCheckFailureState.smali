.class Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DnsCheckFailureState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 992
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    .prologue
    .line 996
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4908(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    .line 997
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v1, 0x21065

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 998
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 1002
    iget v2, p1, Landroid/os/Message;->what:I

    const v3, 0x21065

    if-eq v2, v3, :cond_a

    .line 1003
    const/4 v1, 0x0

    .line 1045
    :cond_9
    :goto_9
    return v1

    .line 1006
    :cond_a
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 1013
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-boolean v2, v2, Landroid/net/wifi/WifiWatchdogStateMachine;->mDisableAPNextFailure:Z

    if-nez v2, :cond_3a

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-ge v2, v3, :cond_3a

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5100(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    if-lt v2, v3, :cond_f8

    .line 1015
    :cond_3a
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5200()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 1016
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v3, "Would disable bad network, but device has no mobile data!  Going idle..."

    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1019
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_9

    .line 1024
    :cond_53
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabling current SSID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1400(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "numCheckFailures "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", numAPs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1027
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 1028
    .local v0, networkId:I
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-boolean v2, v2, Landroid/net/wifi/WifiWatchdogStateMachine;->mHasConnectedWifiManager:Z

    if-nez v2, :cond_c9

    .line 1029
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->asyncConnect(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1030
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iput-boolean v1, v2, Landroid/net/wifi/WifiWatchdogStateMachine;->mHasConnectedWifiManager:Z

    .line 1032
    :cond_c9
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(II)V

    .line 1033
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_eb

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->isExplicitConnect()Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 1034
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v2, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1100(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    .line 1036
    :cond_eb
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5700(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_9

    .line 1038
    .end local v0           #networkId:I
    :cond_f8
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blacklisting current BSSID.  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1400(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "numCheckFailures "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", numAPs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1041
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->addToBlacklist(Ljava/lang/String;)Z

    .line 1042
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->reassociate()Z

    .line 1043
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BlacklistedApState;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_9
.end method
