.class Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DelayWalledGardenState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 833
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    .prologue
    .line 836
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v1, 0x21068

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(IJ)V

    .line 837
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .parameter "msg"

    .prologue
    .line 841
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4a

    .line 857
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 843
    :pswitch_7
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3802(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/Long;)Ljava/lang/Long;

    .line 844
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 846
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4100(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenState;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4200(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 855
    :goto_27
    const/4 v0, 0x1

    goto :goto_6

    .line 849
    :cond_29
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 850
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_27

    .line 852
    :cond_3d
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_27

    .line 841
    nop

    :pswitch_data_4a
    .packed-switch 0x21068
        :pswitch_7
    .end packed-switch
.end method
