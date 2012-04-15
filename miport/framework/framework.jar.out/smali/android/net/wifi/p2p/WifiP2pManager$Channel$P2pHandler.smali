.class Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;
.super Landroid/os/Handler;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pManager$Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P2pHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 363
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 364
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 365
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "message"

    .prologue
    .line 369
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->getListener(I)Ljava/lang/Object;

    move-result-object v1

    .line 370
    .local v1, listener:Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_74

    .line 416
    const-string v4, "WifiP2pManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignored "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .end local v1           #listener:Ljava/lang/Object;
    :cond_25
    :goto_25
    return-void

    .line 372
    .restart local v1       #listener:Ljava/lang/Object;
    :sswitch_26
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$000(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object v4

    if-eqz v4, :cond_25

    .line 373
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$000(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object v4

    invoke-interface {v4}, Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;->onChannelDisconnected()V

    .line 374
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$002(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    goto :goto_25

    .line 383
    :sswitch_3e
    if-eqz v1, :cond_25

    .line 384
    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .end local v1           #listener:Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v4}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    goto :goto_25

    .line 393
    .restart local v1       #listener:Ljava/lang/Object;
    :sswitch_48
    if-eqz v1, :cond_25

    .line 394
    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .end local v1           #listener:Ljava/lang/Object;
    invoke-interface {v1}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    goto :goto_25

    .line 398
    .restart local v1       #listener:Ljava/lang/Object;
    :sswitch_50
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 399
    .local v2, peers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    if-eqz v1, :cond_25

    .line 400
    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    .end local v1           #listener:Ljava/lang/Object;
    invoke-interface {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;->onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    goto :goto_25

    .line 404
    .end local v2           #peers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .restart local v1       #listener:Ljava/lang/Object;
    :sswitch_5c
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 405
    .local v3, wifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    if-eqz v1, :cond_25

    .line 406
    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    .end local v1           #listener:Ljava/lang/Object;
    invoke-interface {v1, v3}, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;->onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    goto :goto_25

    .line 410
    .end local v3           #wifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    .restart local v1       #listener:Ljava/lang/Object;
    :sswitch_68
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 411
    .local v0, group:Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v1, :cond_25

    .line 412
    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    .end local v1           #listener:Ljava/lang/Object;
    invoke-interface {v1, v0}, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;->onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    goto :goto_25

    .line 370
    :sswitch_data_74
    .sparse-switch
        0x11004 -> :sswitch_26
        0x22008 -> :sswitch_3e
        0x22009 -> :sswitch_48
        0x2200b -> :sswitch_3e
        0x2200c -> :sswitch_48
        0x2200e -> :sswitch_3e
        0x2200f -> :sswitch_48
        0x22011 -> :sswitch_3e
        0x22012 -> :sswitch_48
        0x22014 -> :sswitch_3e
        0x22015 -> :sswitch_48
        0x22017 -> :sswitch_50
        0x22019 -> :sswitch_5c
        0x2201b -> :sswitch_68
    .end sparse-switch
.end method
