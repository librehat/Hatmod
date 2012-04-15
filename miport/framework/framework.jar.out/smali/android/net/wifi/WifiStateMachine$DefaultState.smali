.class Landroid/net/wifi/WifiStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 1814
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 7
    .parameter "message"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1818
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_c0

    .line 1912
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error! unhandled message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 1915
    :goto_1f
    :sswitch_1f
    return v1

    .line 1820
    :sswitch_20
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_31

    .line 1821
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v2, 0x11001

    invoke-virtual {v0, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_1f

    .line 1823
    :cond_31
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiP2pService connection failure, error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_1f

    .line 1827
    :sswitch_4c
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiP2pService channel lost, message.arg1 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_1f

    .line 1832
    :sswitch_67
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_6e

    move v0, v1

    :cond_6e
    invoke-static {v2, v0}, Landroid/net/wifi/WifiStateMachine;->access$402(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_1f

    .line 1842
    :sswitch_72
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto :goto_1f

    .line 1845
    :sswitch_7f
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_86

    move v0, v1

    :cond_86
    invoke-static {v2, v0}, Landroid/net/wifi/WifiStateMachine;->access$602(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_1f

    .line 1848
    :sswitch_8a
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_91

    move v0, v1

    :cond_91
    invoke-static {v2, v0}, Landroid/net/wifi/WifiStateMachine;->access$702(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_1f

    .line 1898
    :sswitch_95
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    .line 1899
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    goto :goto_1f

    .line 1903
    :sswitch_a0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const/16 v2, 0xb

    new-instance v3, Landroid/net/wifi/WpsResult;

    sget-object v4, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct {v3, v4}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1f

    .line 1908
    :sswitch_b4
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    .line 1909
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1f

    .line 1818
    :sswitch_data_c0
    .sparse-switch
        0x11000 -> :sswitch_20
        0x11004 -> :sswitch_4c
        0x20001 -> :sswitch_1f
        0x20002 -> :sswitch_1f
        0x2000b -> :sswitch_1f
        0x2000c -> :sswitch_1f
        0x2000d -> :sswitch_1f
        0x2000e -> :sswitch_1f
        0x20011 -> :sswitch_1f
        0x20012 -> :sswitch_1f
        0x20015 -> :sswitch_1f
        0x20016 -> :sswitch_1f
        0x20017 -> :sswitch_1f
        0x20018 -> :sswitch_1f
        0x20019 -> :sswitch_1f
        0x2001a -> :sswitch_1f
        0x2001b -> :sswitch_1f
        0x2001c -> :sswitch_1f
        0x2001d -> :sswitch_1f
        0x2001e -> :sswitch_1f
        0x2001f -> :sswitch_67
        0x20033 -> :sswitch_72
        0x20034 -> :sswitch_72
        0x20035 -> :sswitch_72
        0x20036 -> :sswitch_72
        0x20037 -> :sswitch_1f
        0x20038 -> :sswitch_72
        0x20039 -> :sswitch_1f
        0x2003a -> :sswitch_1f
        0x2003b -> :sswitch_72
        0x20047 -> :sswitch_1f
        0x20048 -> :sswitch_1f
        0x20049 -> :sswitch_1f
        0x2004a -> :sswitch_1f
        0x2004b -> :sswitch_1f
        0x2004c -> :sswitch_1f
        0x2004d -> :sswitch_1f
        0x20050 -> :sswitch_1f
        0x20052 -> :sswitch_7f
        0x20053 -> :sswitch_1f
        0x20056 -> :sswitch_1f
        0x20057 -> :sswitch_1f
        0x20058 -> :sswitch_1f
        0x20059 -> :sswitch_a0
        0x2005a -> :sswitch_1f
        0x2005b -> :sswitch_8a
        0x23001 -> :sswitch_b4
        0x24001 -> :sswitch_1f
        0x24002 -> :sswitch_1f
        0x24003 -> :sswitch_1f
        0x24004 -> :sswitch_1f
        0x24005 -> :sswitch_1f
        0x24006 -> :sswitch_1f
        0x24007 -> :sswitch_1f
        0x24008 -> :sswitch_1f
        0x24009 -> :sswitch_95
        0x30004 -> :sswitch_1f
        0x30005 -> :sswitch_1f
    .end sparse-switch
.end method
