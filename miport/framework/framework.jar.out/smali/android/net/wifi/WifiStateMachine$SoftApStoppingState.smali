.class Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftApStoppingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 3564
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 6

    .prologue
    .line 3568
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3571
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x2001e

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$15304(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 3574
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 6
    .parameter "message"

    .prologue
    .line 3578
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_7e

    .line 3622
    const/4 v2, 0x0

    .line 3625
    :goto_6
    return v2

    .line 3580
    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiStateMachine$TetherStateChange;

    .line 3583
    .local v1, stateChange:Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, v1, Landroid/net/wifi/WifiStateMachine$TetherStateChange;->active:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$15400(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 3624
    .end local v1           #stateChange:Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    :cond_15
    :goto_15
    const v2, 0xc366

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 3625
    const/4 v2, 0x1

    goto :goto_6

    .line 3586
    .restart local v1       #stateChange:Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    :cond_1f
    :try_start_1f
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2e} :catch_3a

    .line 3590
    :goto_2e
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$16100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_15

    .line 3587
    :catch_3a
    move-exception v0

    .line 3588
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v3, "Exception in stopAccessPoint()"

    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_2e

    .line 3593
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #stateChange:Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    :sswitch_43
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$15300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    if-ne v2, v3, :cond_15

    .line 3594
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v3, "Failed to get tether update, force stop access point"

    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3596
    :try_start_54
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_63} :catch_6f

    .line 3600
    :goto_63
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$16200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_15

    .line 3597
    :catch_6f
    move-exception v0

    .line 3598
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v3, "Exception in stopAccessPoint()"

    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_63

    .line 3619
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_78
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2, p1}, Landroid/net/wifi/WifiStateMachine;->access$16300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_15

    .line 3578
    :sswitch_data_7e
    .sparse-switch
        0x20001 -> :sswitch_78
        0x20002 -> :sswitch_78
        0x2000b -> :sswitch_78
        0x2000c -> :sswitch_78
        0x2000d -> :sswitch_78
        0x2000e -> :sswitch_78
        0x20015 -> :sswitch_78
        0x20018 -> :sswitch_78
        0x2001d -> :sswitch_7
        0x2001e -> :sswitch_43
        0x20048 -> :sswitch_78
        0x20049 -> :sswitch_78
        0x2004d -> :sswitch_78
        0x20050 -> :sswitch_78
        0x20054 -> :sswitch_78
        0x20055 -> :sswitch_78
        0x2005a -> :sswitch_78
        0x23001 -> :sswitch_78
    .end sparse-switch
.end method
