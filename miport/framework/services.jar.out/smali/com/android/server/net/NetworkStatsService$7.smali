.class Lcom/android/server/net/NetworkStatsService$7;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .registers 2
    .parameter

    .prologue
    .line 695
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .registers 9
    .parameter "state"
    .parameter "networkType"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 698
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v4}, Lcom/android/server/net/NetworkStatsService;->access$900(Lcom/android/server/net/NetworkStatsService;)I

    move-result v4

    if-eq p1, v4, :cond_39

    move v1, v2

    .line 699
    .local v1, stateChanged:Z
    :goto_b
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v4}, Lcom/android/server/net/NetworkStatsService;->access$1000(Lcom/android/server/net/NetworkStatsService;)I

    move-result v4

    if-eq p2, v4, :cond_3b

    move v0, v2

    .line 701
    .local v0, networkTypeChanged:Z
    :goto_14
    if-eqz v0, :cond_2e

    if-nez v1, :cond_2e

    .line 708
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v2}, Lcom/android/server/net/NetworkStatsService;->access$800(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v3}, Lcom/android/server/net/NetworkStatsService;->access$800(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 712
    :cond_2e
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v2, p1}, Lcom/android/server/net/NetworkStatsService;->access$902(Lcom/android/server/net/NetworkStatsService;I)I

    .line 713
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v2, p2}, Lcom/android/server/net/NetworkStatsService;->access$1002(Lcom/android/server/net/NetworkStatsService;I)I

    .line 714
    return-void

    .end local v0           #networkTypeChanged:Z
    .end local v1           #stateChanged:Z
    :cond_39
    move v1, v3

    .line 698
    goto :goto_b

    .restart local v1       #stateChanged:Z
    :cond_3b
    move v0, v3

    .line 699
    goto :goto_14
.end method
