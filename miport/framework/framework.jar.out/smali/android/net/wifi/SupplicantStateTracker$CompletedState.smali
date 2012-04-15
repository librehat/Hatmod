.class Landroid/net/wifi/SupplicantStateTracker$CompletedState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompletedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Landroid/net/wifi/SupplicantStateTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 286
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->access$002(Landroid/net/wifi/SupplicantStateTracker;I)I

    .line 287
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {v0}, Landroid/net/wifi/SupplicantStateTracker;->access$600(Landroid/net/wifi/SupplicantStateTracker;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 288
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 289
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->access$602(Landroid/net/wifi/SupplicantStateTracker;Z)Z

    .line 291
    :cond_16
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 7
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 295
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_3a

    .line 316
    :goto_6
    return v2

    .line 297
    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/StateChangeResult;

    .line 298
    .local v1, stateChangeResult:Landroid/net/wifi/StateChangeResult;
    iget-object v0, v1, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 299
    .local v0, state:Landroid/net/wifi/SupplicantState;
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {v3}, Landroid/net/wifi/SupplicantStateTracker;->access$100(Landroid/net/wifi/SupplicantStateTracker;)Z

    move-result v3

    invoke-static {v2, v0, v3}, Landroid/net/wifi/SupplicantStateTracker;->access$200(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V

    .line 304
    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 316
    .end local v0           #state:Landroid/net/wifi/SupplicantState;
    .end local v1           #stateChangeResult:Landroid/net/wifi/StateChangeResult;
    :goto_1e
    const/4 v2, 0x1

    goto :goto_6

    .line 307
    .restart local v0       #state:Landroid/net/wifi/SupplicantState;
    .restart local v1       #stateChangeResult:Landroid/net/wifi/StateChangeResult;
    :cond_20
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {v2, v1}, Landroid/net/wifi/SupplicantStateTracker;->access$300(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/StateChangeResult;)V

    goto :goto_1e

    .line 310
    .end local v0           #state:Landroid/net/wifi/SupplicantState;
    .end local v1           #stateChangeResult:Landroid/net/wifi/StateChangeResult;
    :sswitch_26
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    sget-object v4, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    invoke-static {v3, v4, v2}, Landroid/net/wifi/SupplicantStateTracker;->access$200(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V

    .line 311
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {v3}, Landroid/net/wifi/SupplicantStateTracker;->access$400(Landroid/net/wifi/SupplicantStateTracker;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/wifi/SupplicantStateTracker;->access$900(Landroid/net/wifi/SupplicantStateTracker;Lcom/android/internal/util/IState;)V

    goto :goto_1e

    .line 295
    nop

    :sswitch_data_3a
    .sparse-switch
        0x2006f -> :sswitch_26
        0x24006 -> :sswitch_7
    .end sparse-switch
.end method
