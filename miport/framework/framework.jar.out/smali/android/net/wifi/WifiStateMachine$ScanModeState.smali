.class Landroid/net/wifi/WifiStateMachine$ScanModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanModeState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 2751
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 2755
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ScanModeState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2756
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 6
    .parameter "message"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2760
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_30

    move v0, v1

    .line 2784
    :cond_8
    :goto_8
    return v0

    .line 2762
    :sswitch_9
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    .line 2766
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z

    .line 2767
    invoke-static {}, Landroid/net/wifi/WifiNative;->reconnectCommand()Z

    .line 2768
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2, v1}, Landroid/net/wifi/WifiStateMachine;->access$4902(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 2769
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$7500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$9000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 2783
    :sswitch_26
    const v1, 0xc366

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    goto :goto_8

    .line 2760
    nop

    :sswitch_data_30
    .sparse-switch
        0x20048 -> :sswitch_9
        0x2004a -> :sswitch_26
        0x2004b -> :sswitch_26
        0x2004c -> :sswitch_26
        0x24003 -> :sswitch_26
        0x24004 -> :sswitch_26
        0x24006 -> :sswitch_26
    .end sparse-switch
.end method
