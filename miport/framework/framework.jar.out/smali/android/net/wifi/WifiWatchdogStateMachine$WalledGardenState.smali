.class Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WalledGardenState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 1049
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    .prologue
    .line 1052
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v1, 0x21064

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1053
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 1057
    iget v1, p1, Landroid/os/Message;->what:I

    const v2, 0x21064

    if-eq v1, v2, :cond_a

    .line 1058
    const/4 v0, 0x0

    .line 1073
    :cond_9
    :goto_9
    return v0

    .line 1061
    :cond_a
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    if-ne v1, v2, :cond_9

    .line 1067
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v1, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1200(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    .line 1068
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1069
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6000(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_9

    .line 1071
    :cond_2d
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6100(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_9
.end method
