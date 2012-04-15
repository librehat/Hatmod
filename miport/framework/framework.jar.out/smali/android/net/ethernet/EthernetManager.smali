.class public Landroid/net/ethernet/EthernetManager;
.super Ljava/lang/Object;
.source "EthernetManager.java"


# static fields
.field public static final ETH_DEVICE_SCAN_RESULT_READY:I = 0x0

.field public static final ETH_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.ethernet.ETH_STATE_CHANGED"

.field public static final ETH_STATE_DISABLED:I = 0x1

.field public static final ETH_STATE_ENABLED:I = 0x2

.field public static final ETH_STATE_UNKNOWN:I = 0x0

.field public static final EXTRA_ETH_STATE:Ljava/lang/String; = "eth_state"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_PREVIOUS_ETH_STATE:Ljava/lang/String; = "previous_eth_state"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.ethernet.STATE_CHANGE"

.field public static final TAG:Ljava/lang/String; = "EthernetManager"


# instance fields
.field mHandler:Landroid/os/Handler;

.field mService:Landroid/net/ethernet/IEthernetManager;


# direct methods
.method public constructor <init>(Landroid/net/ethernet/IEthernetManager;Landroid/os/Handler;)V
    .registers 5
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "EthernetManager"

    const-string v1, "Init Ethernet Manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iput-object p1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    .line 35
    iput-object p2, p0, Landroid/net/ethernet/EthernetManager;->mHandler:Landroid/os/Handler;

    .line 36
    return-void
.end method


# virtual methods
.method public ethConfigured()Z
    .registers 3

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->isEthConfigured()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 92
    :goto_6
    return v1

    .line 91
    :catch_7
    move-exception v0

    .line 92
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public ethSetDefaultConf()V
    .registers 3

    .prologue
    .line 114
    :try_start_0
    iget-object v0, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    const-string v1, "dhcp"

    invoke-interface {v0, v1}, Landroid/net/ethernet/IEthernetManager;->setEthMode(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 117
    :goto_7
    return-void

    .line 115
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public getDeviceNameList()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 66
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->getDeviceNameList()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 68
    :goto_6
    return-object v1

    .line 67
    :catch_7
    move-exception v0

    .line 68
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 3

    .prologue
    .line 98
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->getDhcpInfo()Landroid/net/DhcpInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 100
    :goto_6
    return-object v1

    .line 99
    :catch_7
    move-exception v0

    .line 100
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getEthState()I
    .registers 3

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->getEthState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 84
    :goto_6
    return v1

    .line 83
    :catch_7
    move-exception v0

    .line 84
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getSavedEthConfig()Landroid/net/ethernet/EthernetDevInfo;
    .registers 4

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->getSavedEthConfig()Landroid/net/ethernet/EthernetDevInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 53
    :goto_6
    return-object v1

    .line 50
    :catch_7
    move-exception v0

    .line 51
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not get eth config"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getTotalInterface()I
    .registers 3

    .prologue
    .line 106
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->getTotalInterface()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 108
    :goto_6
    return v1

    .line 107
    :catch_7
    move-exception v0

    .line 108
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isEthConfigured()Z
    .registers 4

    .prologue
    .line 40
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->isEthConfigured()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 44
    :goto_6
    return v1

    .line 41
    :catch_7
    move-exception v0

    .line 42
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not check eth config state"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isEthDeviceAdded()Z
    .registers 3

    .prologue
    .line 129
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->isEthDeviceAdded()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 131
    :goto_6
    return v1

    .line 130
    :catch_7
    move-exception v0

    .line 131
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isEthDeviceUp()Z
    .registers 3

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->isEthDeviceUp()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 123
    :goto_6
    return v1

    .line 122
    :catch_7
    move-exception v0

    .line 123
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setEthEnabled(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 74
    :try_start_0
    iget-object v2, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    if-eqz p1, :cond_9

    const/4 v1, 0x2

    :goto_5
    invoke-interface {v2, v1}, Landroid/net/ethernet/IEthernetManager;->setEthState(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_b

    .line 78
    :goto_8
    return-void

    .line 74
    :cond_9
    const/4 v1, 0x1

    goto :goto_5

    .line 75
    :catch_b
    move-exception v0

    .line 76
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not set new state"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public updateEthDevInfo(Landroid/net/ethernet/EthernetDevInfo;)V
    .registers 5
    .parameter "info"

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1, p1}, Landroid/net/ethernet/IEthernetManager;->UpdateEthDevInfo(Landroid/net/ethernet/EthernetDevInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 62
    :goto_5
    return-void

    .line 59
    :catch_6
    move-exception v0

    .line 60
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not update ethernet device info"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method
