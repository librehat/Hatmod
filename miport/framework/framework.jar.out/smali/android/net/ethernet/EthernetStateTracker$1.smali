.class Landroid/net/ethernet/EthernetStateTracker$1;
.super Ljava/lang/Object;
.source "EthernetStateTracker.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ethernet/EthernetStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ethernet/EthernetStateTracker;


# direct methods
.method constructor <init>(Landroid/net/ethernet/EthernetStateTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    .line 413
    monitor-enter p0

    .line 415
    const/4 v3, 0x0

    .line 416
    .local v3, newNetworkstate:Z
    :try_start_3
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_2fc

    .line 490
    :cond_8
    :goto_8
    monitor-exit p0

    .line 491
    return v8

    .line 418
    :pswitch_a
    const-string v5, "EthernetStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Old status stackConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$000(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HWConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$100(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string v5, "EthernetStateTracker"

    const-string v6, "[EVENT_INTERFACE_CONFIGURATION_SUCCEEDED]"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$002(Landroid/net/ethernet/EthernetStateTracker;Z)Z

    .line 421
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$102(Landroid/net/ethernet/EthernetStateTracker;Z)Z

    .line 422
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v5}, Landroid/net/ethernet/EthernetStateTracker;->access$200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ethernet/EthernetManager;->isEthDeviceAdded()Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 423
    const-string v5, "EthernetStateTracker"

    const-string v6, "Ether is added"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v3, 0x1

    .line 426
    :cond_5f
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-static {v5, v3, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$300(Landroid/net/ethernet/EthernetStateTracker;ZI)V

    .line 427
    const-string v5, "EthernetStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New status, stackConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$000(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HWConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$100(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 490
    :catchall_96
    move-exception v5

    monitor-exit p0
    :try_end_98
    .catchall {:try_start_3 .. :try_end_98} :catchall_96

    throw v5

    .line 430
    :pswitch_99
    :try_start_99
    const-string v5, "EthernetStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Old status stackConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$000(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HWConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$100(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-string v5, "EthernetStateTracker"

    const-string v6, "[EVENT_INTERFACE_CONFIGURATION_FAILED]"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$002(Landroid/net/ethernet/EthernetStateTracker;Z)Z

    .line 433
    const-string v5, "EthernetStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New status, stackConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$000(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HWConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$100(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-static {v5, v3, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$300(Landroid/net/ethernet/EthernetStateTracker;ZI)V

    goto/16 :goto_8

    .line 438
    :pswitch_10b
    const-string v5, "EthernetStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Old status stackConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$000(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HWConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$100(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v5, "EthernetStateTracker"

    const-string v6, "[EVENT: IP is configured]"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$102(Landroid/net/ethernet/EthernetStateTracker;Z)Z

    .line 441
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v5}, Landroid/net/ethernet/EthernetStateTracker;->access$200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ethernet/EthernetManager;->isEthDeviceAdded()Z

    move-result v5

    if-eqz v5, :cond_15a

    .line 442
    const-string v5, "EthernetStateTracker"

    const-string v6, "Ether is added"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v3, 0x1

    .line 447
    :cond_15a
    const-string v5, "EthernetStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New status, stackConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$000(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HWConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$100(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 450
    :pswitch_18a
    const-string v5, "EthernetStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Old status stackConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$000(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HWConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$100(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string v5, "EthernetStateTracker"

    const-string v6, "[EVENT: ether is removed]"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$102(Landroid/net/ethernet/EthernetStateTracker;Z)Z

    .line 453
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v6, 0x0

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v5, v6, v7}, Landroid/net/ethernet/EthernetStateTracker;->access$300(Landroid/net/ethernet/EthernetStateTracker;ZI)V

    .line 454
    const-string v5, "EthernetStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New status, stackConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$000(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HWConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$100(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 457
    :pswitch_1fd
    const-string v5, "EthernetStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Old status stackConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$000(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HWConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$100(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string v5, "EthernetStateTracker"

    const-string v6, "[EVENT: Ether is up]"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$102(Landroid/net/ethernet/EthernetStateTracker;Z)Z

    .line 460
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v5}, Landroid/net/ethernet/EthernetStateTracker;->access$400(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    .line 461
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v5}, Landroid/net/ethernet/EthernetStateTracker;->access$200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ethernet/EthernetManager;->getSavedEthConfig()Landroid/net/ethernet/EthernetDevInfo;

    move-result-object v2

    .line 462
    .local v2, info:Landroid/net/ethernet/EthernetDevInfo;
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v5}, Landroid/net/ethernet/EthernetStateTracker;->access$200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ethernet/EthernetManager;->isEthDeviceAdded()Z

    move-result v5

    if-eqz v5, :cond_274

    invoke-virtual {v2}, Landroid/net/ethernet/EthernetDevInfo;->getConnectMode()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "manual"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_274

    .line 463
    const/4 v3, 0x1

    .line 464
    const-string v5, "EthernetStateTracker"

    const-string v6, "Ether is added"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const-string v5, "EthernetStateTracker"

    const-string v6, "Static IP configured, make network connected"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_274
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v6, 0x5

    invoke-static {v5, v3, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$300(Landroid/net/ethernet/EthernetStateTracker;ZI)V

    .line 469
    const-string v5, "EthernetStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New status, stackConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$000(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HWConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$100(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v5}, Landroid/net/ethernet/EthernetStateTracker;->access$500(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 471
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v5}, Landroid/net/ethernet/EthernetStateTracker;->access$200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ethernet/EthernetManager;->getEthState()I

    move-result v4

    .line 472
    .local v4, state:I
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v5}, Landroid/net/ethernet/EthernetStateTracker;->access$200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    if-eq v4, v8, :cond_8

    .line 473
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v5}, Landroid/net/ethernet/EthernetStateTracker;->access$200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ethernet/EthernetManager;->getSavedEthConfig()Landroid/net/ethernet/EthernetDevInfo;

    move-result-object v2

    .line 474
    if-eqz v2, :cond_2d9

    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v5}, Landroid/net/ethernet/EthernetStateTracker;->access$200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ethernet/EthernetManager;->ethConfigured()Z

    move-result v5

    if-nez v5, :cond_2ee

    .line 476
    :cond_2d9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 477
    .local v1, ifname:Ljava/lang/String;
    new-instance v2, Landroid/net/ethernet/EthernetDevInfo;

    .end local v2           #info:Landroid/net/ethernet/EthernetDevInfo;
    invoke-direct {v2}, Landroid/net/ethernet/EthernetDevInfo;-><init>()V

    .line 478
    .restart local v2       #info:Landroid/net/ethernet/EthernetDevInfo;
    invoke-virtual {v2, v1}, Landroid/net/ethernet/EthernetDevInfo;->setIfName(Ljava/lang/String;)V

    .line 479
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v5}, Landroid/net/ethernet/EthernetStateTracker;->access$200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/net/ethernet/EthernetManager;->updateEthDevInfo(Landroid/net/ethernet/EthernetDevInfo;)V
    :try_end_2ee
    .catchall {:try_start_99 .. :try_end_2ee} :catchall_96

    .line 482
    .end local v1           #ifname:Ljava/lang/String;
    :cond_2ee
    :try_start_2ee
    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$1;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v5, v2}, Landroid/net/ethernet/EthernetStateTracker;->access$600(Landroid/net/ethernet/EthernetStateTracker;Landroid/net/ethernet/EthernetDevInfo;)Z
    :try_end_2f3
    .catchall {:try_start_2ee .. :try_end_2f3} :catchall_96
    .catch Ljava/net/UnknownHostException; {:try_start_2ee .. :try_end_2f3} :catch_2f5

    goto/16 :goto_8

    .line 483
    :catch_2f5
    move-exception v0

    .line 484
    .local v0, e:Ljava/net/UnknownHostException;
    :try_start_2f6
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_2f9
    .catchall {:try_start_2f6 .. :try_end_2f9} :catchall_96

    goto/16 :goto_8

    .line 416
    nop

    :pswitch_data_2fc
    .packed-switch 0x1
        :pswitch_a
        :pswitch_99
        :pswitch_10b
        :pswitch_18a
        :pswitch_1fd
    .end packed-switch
.end method
