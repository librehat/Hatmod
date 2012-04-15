.class public Lcom/android/server/EthernetService;
.super Landroid/net/ethernet/IEthernetManager$Stub;
.source "EthernetService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<syncronized:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/net/ethernet/IEthernetManager$Stub;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EthernetService"


# instance fields
.field private DevName:[Ljava/lang/String;

.field private isEthEnabled:I

.field private mContext:Landroid/content/Context;

.field private mDelayedHandler:Landroid/os/Handler;

.field private mEthState:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mResetInterface:Ljava/lang/Runnable;

.field private mTracker:Landroid/net/ethernet/EthernetStateTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/ethernet/EthernetStateTracker;)V
    .registers 6
    .parameter "context"
    .parameter "Tracker"

    .prologue
    .line 51
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    invoke-direct {p0}, Landroid/net/ethernet/IEthernetManager$Stub;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/EthernetService;->mEthState:I

    .line 171
    new-instance v0, Lcom/android/server/EthernetService$1;

    invoke-direct {v0, p0}, Lcom/android/server/EthernetService$1;-><init>(Lcom/android/server/EthernetService;)V

    iput-object v0, p0, Lcom/android/server/EthernetService;->mResetInterface:Ljava/lang/Runnable;

    .line 182
    new-instance v0, Lcom/android/server/EthernetService$2;

    invoke-direct {v0, p0}, Lcom/android/server/EthernetService$2;-><init>(Lcom/android/server/EthernetService;)V

    iput-object v0, p0, Lcom/android/server/EthernetService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    iput-object p2, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    .line 53
    iput-object p1, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcom/android/server/EthernetService;->getPersistedState()I

    move-result v0

    iput v0, p0, Lcom/android/server/EthernetService;->isEthEnabled:I

    .line 56
    const-string v0, "EthernetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ethernet dev enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/EthernetService;->isEthEnabled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0}, Lcom/android/server/EthernetService;->getDeviceNameList()[Ljava/lang/String;

    .line 58
    iget v0, p0, Lcom/android/server/EthernetService;->isEthEnabled:I

    invoke-virtual {p0, v0}, Lcom/android/server/EthernetService;->setEthState(I)V

    .line 59
    invoke-direct {p0}, Lcom/android/server/EthernetService;->registerForBroadcasts()V

    .line 60
    const-string v0, "EthernetService"

    const-string v1, "Trigger the ethernet monitor"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    invoke-virtual {v0}, Landroid/net/ethernet/EthernetStateTracker;->StartPolling()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/EthernetService;->mDelayedHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/EthernetService;)Landroid/net/ethernet/EthernetStateTracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/EthernetService;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/EthernetService;->mResetInterface:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/EthernetService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/EthernetService;->mDelayedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getPersistedState()I
    .registers 4

    .prologue
    .line 156
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    iget-object v2, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 158
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_6
    const-string v2, "eth_on"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v2

    .line 161
    :goto_c
    return v2

    .line 159
    :catch_d
    move-exception v1

    .line 161
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v2, 0x1

    goto :goto_c
.end method

.method private declared-synchronized persistEthEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 166
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 167
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "eth_on"

    if-eqz p1, :cond_11

    const/4 v1, 0x2

    :goto_c
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_13

    .line 169
    monitor-exit p0

    return-void

    .line 167
    :cond_11
    const/4 v1, 0x1

    goto :goto_c

    .line 166
    .end local v0           #cr:Landroid/content/ContentResolver;
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private registerForBroadcasts()V
    .registers 4

    .prologue
    .line 120
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/EthernetService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    return-void
.end method

.method private scanEthDevice()I
    .registers 6

    .prologue
    .line 132
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    const/4 v0, 0x0

    .line 133
    .local v0, i:I
    invoke-static {}, Landroid/net/ethernet/EthernetNative;->getInterfaceCnt()I

    move-result v0

    if-eqz v0, :cond_43

    .line 134
    const-string v2, "EthernetService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " net devices"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v2, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    array-length v2, v2

    if-eq v2, v0, :cond_32

    .line 136
    :cond_2e
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    .line 141
    :cond_32
    const/4 v1, 0x0

    .local v1, j:I
    :goto_33
    if-ge v1, v0, :cond_43

    .line 142
    iget-object v2, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    invoke-static {v1}, Landroid/net/ethernet/EthernetNative;->getInterfaceName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 143
    iget-object v2, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_44

    .line 148
    .end local v1           #j:I
    :cond_43
    return v0

    .line 145
    .restart local v1       #j:I
    :cond_44
    const-string v2, "EthernetService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_33
.end method


# virtual methods
.method public declared-synchronized UpdateEthDevInfo(Landroid/net/ethernet/EthernetDevInfo;)V
    .registers 6
    .parameter "info"

    .prologue
    .line 101
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 102
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "eth_conf"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 103
    const-string v2, "eth_ifname"

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 104
    const-string v2, "eth_ip"

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 105
    const-string v2, "eth_mode"

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getConnectMode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 106
    const-string v2, "eth_dns"

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getDnsAddr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 107
    const-string v2, "eth_route"

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getRouteAddr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 108
    const-string v2, "eth_mask"

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getNetMask()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 109
    iget v2, p0, Lcom/android/server/EthernetService;->mEthState:I
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_5f

    const/4 v3, 0x2

    if-ne v2, v3, :cond_54

    .line 111
    :try_start_48
    iget-object v2, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    invoke-virtual {v2}, Landroid/net/ethernet/EthernetStateTracker;->resetInterface()Z

    .line 112
    const-string v2, "EthernetService"

    const-string v3, "$$UpdateEthDevInfo() call resetInterface()"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_48 .. :try_end_54} :catchall_5f
    .catch Ljava/net/UnknownHostException; {:try_start_48 .. :try_end_54} :catch_56

    .line 117
    :cond_54
    :goto_54
    monitor-exit p0

    return-void

    .line 113
    :catch_56
    move-exception v1

    .line 114
    .local v1, e:Ljava/net/UnknownHostException;
    :try_start_57
    const-string v2, "EthernetService"

    const-string v3, "Wrong ethernet configuration"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_5f

    goto :goto_54

    .line 101
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #e:Ljava/net/UnknownHostException;
    :catchall_5f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getDeviceNameList()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    invoke-direct {p0}, Lcom/android/server/EthernetService;->scanEthDevice()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 2

    .prologue
    .line 288
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    iget-object v0, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    invoke-virtual {v0}, Landroid/net/ethernet/EthernetStateTracker;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getEthState()I
    .registers 2

    .prologue
    .line 239
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    iget v0, p0, Lcom/android/server/EthernetService;->mEthState:I

    return v0
.end method

.method public declared-synchronized getSavedEthConfig()Landroid/net/ethernet/EthernetDevInfo;
    .registers 4

    .prologue
    .line 75
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/EthernetService;->isEthConfigured()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 76
    iget-object v2, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 77
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/net/ethernet/EthernetDevInfo;

    invoke-direct {v1}, Landroid/net/ethernet/EthernetDevInfo;-><init>()V

    .line 78
    .local v1, info:Landroid/net/ethernet/EthernetDevInfo;
    const-string v2, "eth_mode"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetDevInfo;->setConnectMode(Ljava/lang/String;)Z

    .line 79
    const-string v2, "eth_ifname"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetDevInfo;->setIfName(Ljava/lang/String;)V

    .line 80
    const-string v2, "eth_ip"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetDevInfo;->setIpAddress(Ljava/lang/String;)V

    .line 81
    const-string v2, "eth_dns"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetDevInfo;->setDnsAddr(Ljava/lang/String;)V

    .line 82
    const-string v2, "eth_mask"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetDevInfo;->setNetMask(Ljava/lang/String;)V

    .line 83
    const-string v2, "eth_route"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetDevInfo;->setRouteAddr(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_4c

    .line 87
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #info:Landroid/net/ethernet/EthernetDevInfo;
    :goto_48
    monitor-exit p0

    return-object v1

    :cond_4a
    const/4 v1, 0x0

    goto :goto_48

    .line 75
    :catchall_4c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getTotalInterface()I
    .registers 2

    .prologue
    .line 127
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    invoke-static {}, Landroid/net/ethernet/EthernetNative;->getInterfaceCnt()I

    move-result v0

    return v0
.end method

.method public isEthConfigured()Z
    .registers 6

    .prologue
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 66
    iget-object v4, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 67
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "eth_conf"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 69
    .local v1, x:I
    if-ne v1, v2, :cond_11

    .line 71
    :goto_10
    return v2

    :cond_11
    move v2, v3

    goto :goto_10
.end method

.method public isEthDeviceAdded()Z
    .registers 7

    .prologue
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 269
    iget-object v1, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    aget-object v1, v1, v3

    if-nez v1, :cond_16

    .line 270
    :cond_c
    const-string v1, "EthernetService"

    const-string v4, "isEthDeviceAdded: trigger scanEthDevice"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-direct {p0}, Lcom/android/server/EthernetService;->scanEthDevice()I

    .line 274
    :cond_16
    iget-object v1, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    aget-object v1, v1, v3

    if-nez v1, :cond_28

    .line 275
    :cond_20
    const-string v1, "EthernetService"

    const-string v2, "EthernetNative.isEthDeviceAdded: No Device Found"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_27
    :goto_27
    return v3

    .line 279
    :cond_28
    iget-object v1, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v1}, Landroid/net/ethernet/EthernetNative;->isInterfaceAdded(Ljava/lang/String;)I

    move-result v0

    .line 280
    .local v0, retval:I
    const-string v4, "EthernetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EthernetNative.isEthDeviceAdded("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ") return "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_5d

    move v1, v2

    :goto_4e
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    if-nez v0, :cond_27

    move v3, v2

    .line 282
    goto :goto_27

    :cond_5d
    move v1, v3

    .line 280
    goto :goto_4e
.end method

.method public isEthDeviceUp()Z
    .registers 10

    .prologue
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    const/4 v5, 0x0

    .line 244
    const/4 v3, 0x0

    .line 245
    .local v3, retval:Z
    :try_start_2
    new-instance v2, Ljava/io/FileReader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/sys/class/net/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/operstate"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 246
    .local v2, fr:Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v6, 0x20

    invoke-direct {v0, v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 247
    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, status:Ljava/lang/String;
    if-eqz v4, :cond_5a

    const-string v6, "up"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 249
    const-string v6, "EthernetService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EthDevice status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v3, 0x1

    .line 259
    :goto_53
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 260
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 264
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #fr:Ljava/io/FileReader;
    .end local v3           #retval:Z
    .end local v4           #status:Ljava/lang/String;
    :goto_59
    return v3

    .line 252
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v3       #retval:Z
    .restart local v4       #status:Ljava/lang/String;
    :cond_5a
    if-eqz v4, :cond_7e

    const-string v6, "down"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 253
    const-string v6, "EthernetService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EthDevice status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7c} :catch_80

    .line 254
    const/4 v3, 0x0

    goto :goto_53

    .line 257
    :cond_7e
    const/4 v3, 0x0

    goto :goto_53

    .line 262
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #fr:Ljava/io/FileReader;
    .end local v4           #status:Ljava/lang/String;
    :catch_80
    move-exception v1

    .line 263
    .local v1, e:Ljava/io/IOException;
    const-string v6, "EthernetService"

    const-string v7, "get EthDevice status error"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 264
    goto :goto_59
.end method

.method public declared-synchronized setEthMode(Ljava/lang/String;)V
    .registers 6
    .parameter "mode"

    .prologue
    .line 91
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 92
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "EthernetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set ethernet mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    if-eqz v1, :cond_44

    .line 94
    const-string v1, "eth_ifname"

    iget-object v2, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    const-string v1, "eth_conf"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    const-string v1, "eth_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_46

    .line 98
    :cond_44
    monitor-exit p0

    return-void

    .line 91
    .end local v0           #cr:Landroid/content/ContentResolver;
    :catchall_46
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setEthState(I)V
    .registers 6
    .parameter "state"

    .prologue
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    const/4 v3, 0x1

    .line 200
    monitor-enter p0

    :try_start_2
    const-string v0, "EthernetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEthState from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/EthernetService;->mEthState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget v0, p0, Lcom/android/server/EthernetService;->mEthState:I

    if-eq v0, p1, :cond_3c

    .line 203
    iput p1, p0, Lcom/android/server/EthernetService;->mEthState:I

    .line 204
    if-ne p1, v3, :cond_3e

    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/EthernetService;->persistEthEnabled(Z)V

    .line 207
    new-instance v0, Lcom/android/server/EthernetService$3;

    const-string v1, "stopInterface"

    invoke-direct {v0, p0, v1}, Lcom/android/server/EthernetService$3;-><init>(Lcom/android/server/EthernetService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/EthernetService$3;->start()V
    :try_end_3c
    .catchall {:try_start_2 .. :try_end_3c} :catchall_55

    .line 236
    :cond_3c
    :goto_3c
    monitor-exit p0

    return-void

    .line 214
    :cond_3e
    const/4 v0, 0x1

    :try_start_3f
    invoke-direct {p0, v0}, Lcom/android/server/EthernetService;->persistEthEnabled(Z)V

    .line 215
    invoke-virtual {p0}, Lcom/android/server/EthernetService;->isEthConfigured()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 218
    const-string v0, "dhcp"

    invoke-virtual {p0, v0}, Lcom/android/server/EthernetService;->setEthMode(Ljava/lang/String;)V

    .line 220
    :cond_4d
    const-string v0, "EthernetService"

    const-string v1, "$$ Disable setEthState call resetInterface()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_3f .. :try_end_54} :catchall_55

    goto :goto_3c

    .line 200
    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0
.end method
