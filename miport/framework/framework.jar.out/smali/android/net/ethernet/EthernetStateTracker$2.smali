.class Landroid/net/ethernet/EthernetStateTracker$2;
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
    .line 495
    iput-object p1, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 7
    .parameter "msg"

    .prologue
    .line 500
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_b2

    .line 523
    :goto_5
    const/4 v1, 0x1

    return v1

    .line 502
    :pswitch_7
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v1}, Landroid/net/ethernet/EthernetStateTracker;->access$700(Landroid/net/ethernet/EthernetStateTracker;)Landroid/os/Handler;

    move-result-object v2

    monitor-enter v2

    .line 503
    :try_start_e
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v1}, Landroid/net/ethernet/EthernetStateTracker;->access$800(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v1

    if-nez v1, :cond_ab

    .line 504
    const-string v1, "EthernetStateTracker"

    const-string v3, "DhcpHandler: DHCP request started"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v3, v4}, Landroid/net/ethernet/EthernetStateTracker;->access$300(Landroid/net/ethernet/EthernetStateTracker;ZI)V

    .line 506
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v1}, Landroid/net/ethernet/EthernetStateTracker;->access$900(Landroid/net/ethernet/EthernetStateTracker;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v3}, Landroid/net/ethernet/EthernetStateTracker;->access$1000(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/DhcpInfoInternal;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 507
    const/4 v0, 0x1

    .line 508
    .local v0, event:I
    const-string v1, "EthernetStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DhcpHandler: DHCP request succeeded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$1000(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/DhcpInfoInternal;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/DhcpInfoInternal;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v3}, Landroid/net/ethernet/EthernetStateTracker;->access$1000(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/DhcpInfoInternal;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/ethernet/EthernetStateTracker;->access$1102(Landroid/net/ethernet/EthernetStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 510
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v1}, Landroid/net/ethernet/EthernetStateTracker;->access$1100(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/LinkProperties;

    move-result-object v1

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v3}, Landroid/net/ethernet/EthernetStateTracker;->access$900(Landroid/net/ethernet/EthernetStateTracker;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 515
    :goto_78
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-static {v1}, Landroid/net/ethernet/EthernetStateTracker;->access$1200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 519
    .end local v0           #event:I
    :goto_81
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/net/ethernet/EthernetStateTracker;->access$502(Landroid/net/ethernet/EthernetStateTracker;Z)Z

    .line 520
    monitor-exit v2

    goto/16 :goto_5

    :catchall_8a
    move-exception v1

    monitor-exit v2
    :try_end_8c
    .catchall {:try_start_e .. :try_end_8c} :catchall_8a

    throw v1

    .line 512
    :cond_8d
    const/4 v0, 0x2

    .line 513
    .restart local v0       #event:I
    :try_start_8e
    const-string v1, "EthernetStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DhcpHandler: DHCP request failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 517
    .end local v0           #event:I
    :cond_ab
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/net/ethernet/EthernetStateTracker;->access$802(Landroid/net/ethernet/EthernetStateTracker;Z)Z
    :try_end_b1
    .catchall {:try_start_8e .. :try_end_b1} :catchall_8a

    goto :goto_81

    .line 500
    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method
