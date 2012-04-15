.class Landroid/net/wifi/WifiStateMachine$DriverStoppingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverStoppingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 2679
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 2683
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2684
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .parameter "message"

    .prologue
    .line 2688
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_2c

    .line 2711
    const/4 v1, 0x0

    .line 2714
    :goto_6
    return v1

    .line 2690
    :sswitch_7
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 2691
    .local v0, state:Landroid/net/wifi/SupplicantState;
    sget-object v1, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_1c

    .line 2692
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$8400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$8500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 2713
    .end local v0           #state:Landroid/net/wifi/SupplicantState;
    :cond_1c
    :goto_1c
    const v1, 0xc366

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2714
    const/4 v1, 0x1

    goto :goto_6

    .line 2708
    :sswitch_26
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$8600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1c

    .line 2688
    :sswitch_data_2c
    .sparse-switch
        0x2000d -> :sswitch_26
        0x2000e -> :sswitch_26
        0x20047 -> :sswitch_26
        0x20049 -> :sswitch_26
        0x2004a -> :sswitch_26
        0x2004b -> :sswitch_26
        0x2004c -> :sswitch_26
        0x2004d -> :sswitch_26
        0x20050 -> :sswitch_26
        0x20054 -> :sswitch_26
        0x20055 -> :sswitch_26
        0x2005a -> :sswitch_26
        0x24006 -> :sswitch_7
    .end sparse-switch
.end method
