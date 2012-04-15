.class Lcom/android/server/location/LocationProviderProxy$Connection;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field private mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

.field private mProvider:Landroid/location/ILocationProvider;

.field final synthetic this$0:Lcom/android/server/location/LocationProviderProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/location/LocationProviderProxy;)V
    .registers 2
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LocationProviderProxy;Lcom/android/server/location/LocationProviderProxy$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationProviderProxy$Connection;-><init>(Lcom/android/server/location/LocationProviderProxy;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;
    .registers 2

    .prologue
    .line 113
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProvider()Landroid/location/ILocationProvider;
    .registers 2

    .prologue
    .line 109
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mProvider:Landroid/location/ILocationProvider;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "className"
    .parameter "service"

    .prologue
    .line 94
    monitor-enter p0

    .line 95
    :try_start_1
    invoke-static {p2}, Landroid/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mProvider:Landroid/location/ILocationProvider;

    .line 96
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mProvider:Landroid/location/ILocationProvider;

    if-eqz v0, :cond_14

    .line 97
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v0}, Lcom/android/server/location/LocationProviderProxy;->access$100(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    :cond_14
    monitor-exit p0

    .line 100
    return-void

    .line 99
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "className"

    .prologue
    .line 103
    monitor-enter p0

    .line 104
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mProvider:Landroid/location/ILocationProvider;

    .line 105
    monitor-exit p0

    .line 106
    return-void

    .line 105
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public run()V
    .registers 9

    .prologue
    .line 117
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$200(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 118
    :try_start_7
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$300(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/location/LocationProviderProxy$Connection;

    move-result-object v2

    if-eq v2, p0, :cond_11

    .line 120
    monitor-exit v3

    .line 162
    :goto_10
    return-void

    .line 122
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;

    move-result-object v1

    .line 123
    .local v1, provider:Landroid/location/ILocationProvider;
    if-nez v1, :cond_1c

    .line 124
    monitor-exit v3

    goto :goto_10

    .line 161
    .end local v1           #provider:Landroid/location/ILocationProvider;
    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v2

    .line 129
    .restart local v1       #provider:Landroid/location/ILocationProvider;
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$400(Lcom/android/server/location/LocationProviderProxy;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 130
    invoke-interface {v1}, Landroid/location/ILocationProvider;->enable()V

    .line 132
    :cond_27
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$500(Lcom/android/server/location/LocationProviderProxy;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 133
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/location/ILocationProvider;->enableLocationTracking(Z)V

    .line 135
    :cond_33
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$600(Lcom/android/server/location/LocationProviderProxy;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-ltz v2, :cond_4e

    .line 136
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$600(Lcom/android/server/location/LocationProviderProxy;)J

    move-result-wide v4

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$700(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/WorkSource;

    move-result-object v2

    invoke-interface {v1, v4, v5, v2}, Landroid/location/ILocationProvider;->setMinTime(JLandroid/os/WorkSource;)V

    .line 138
    :cond_4e
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$800(Lcom/android/server/location/LocationProviderProxy;)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 139
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$900(Lcom/android/server/location/LocationProviderProxy;)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v4}, Lcom/android/server/location/LocationProviderProxy;->access$800(Lcom/android/server/location/LocationProviderProxy;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Landroid/location/ILocationProvider;->updateNetworkState(ILandroid/net/NetworkInfo;)V
    :try_end_65
    .catchall {:try_start_1c .. :try_end_65} :catchall_19
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_65} :catch_d0

    .line 145
    :cond_65
    :goto_65
    :try_start_65
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    :try_end_67
    .catchall {:try_start_65 .. :try_end_67} :catchall_19

    if-nez v2, :cond_c8

    .line 147
    :try_start_69
    new-instance v2, Lcom/android/internal/location/DummyLocationProvider;

    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v4}, Lcom/android/server/location/LocationProviderProxy;->access$1000(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/internal/location/DummyLocationProvider;-><init>(Ljava/lang/String;Landroid/location/ILocationManager;)V

    iput-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    .line 148
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->requiresNetwork()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/location/DummyLocationProvider;->setRequiresNetwork(Z)V

    .line 149
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->requiresSatellite()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/location/DummyLocationProvider;->setRequiresSatellite(Z)V

    .line 150
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->requiresCell()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/location/DummyLocationProvider;->setRequiresCell(Z)V

    .line 151
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->hasMonetaryCost()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/location/DummyLocationProvider;->setHasMonetaryCost(Z)V

    .line 152
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->supportsAltitude()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/location/DummyLocationProvider;->setSupportsAltitude(Z)V

    .line 153
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->supportsSpeed()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/location/DummyLocationProvider;->setSupportsSpeed(Z)V

    .line 154
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->supportsBearing()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/location/DummyLocationProvider;->setSupportsBearing(Z)V

    .line 155
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->getPowerRequirement()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/location/DummyLocationProvider;->setPowerRequirement(I)V

    .line 156
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->getAccuracy()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/location/DummyLocationProvider;->setAccuracy(I)V
    :try_end_c8
    .catchall {:try_start_69 .. :try_end_c8} :catchall_19
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_c8} :catch_cb

    .line 161
    :cond_c8
    :goto_c8
    :try_start_c8
    monitor-exit v3

    goto/16 :goto_10

    .line 157
    :catch_cb
    move-exception v0

    .line 158
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    :try_end_cf
    .catchall {:try_start_c8 .. :try_end_cf} :catchall_19

    goto :goto_c8

    .line 141
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_d0
    move-exception v2

    goto :goto_65
.end method
