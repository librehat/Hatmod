.class Landroid/net/wifi/WifiStateMachine$DriverLoadingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverLoadingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 1958
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .prologue
    .line 1962
    const v1, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1964
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1965
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$1500(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 1969
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;

    invoke-direct {v2, p0, v0}, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;-><init>(Landroid/net/wifi/WifiStateMachine$DriverLoadingState;Landroid/os/Message;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2000
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .parameter "message"

    .prologue
    .line 2005
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_2e

    .line 2030
    const/4 v0, 0x0

    .line 2033
    :goto_6
    return v0

    .line 2007
    :sswitch_7
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 2032
    :goto_12
    const v0, 0xc366

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2033
    const/4 v0, 0x1

    goto :goto_6

    .line 2010
    :sswitch_1c
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_12

    .line 2027
    :sswitch_28
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$2200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_12

    .line 2005
    :sswitch_data_2e
    .sparse-switch
        0x20001 -> :sswitch_28
        0x20002 -> :sswitch_28
        0x20003 -> :sswitch_7
        0x20004 -> :sswitch_1c
        0x2000b -> :sswitch_28
        0x2000c -> :sswitch_28
        0x2000d -> :sswitch_28
        0x2000e -> :sswitch_28
        0x20015 -> :sswitch_28
        0x20018 -> :sswitch_28
        0x20048 -> :sswitch_28
        0x20049 -> :sswitch_28
        0x2004d -> :sswitch_28
        0x20050 -> :sswitch_28
        0x20054 -> :sswitch_28
        0x20055 -> :sswitch_28
        0x2005a -> :sswitch_28
    .end sparse-switch
.end method
