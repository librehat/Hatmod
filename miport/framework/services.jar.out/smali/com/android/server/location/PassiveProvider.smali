.class public Lcom/android/server/location/PassiveProvider;
.super Ljava/lang/Object;
.source "PassiveProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "PassiveProvider"


# instance fields
.field private final mLocationManager:Landroid/location/ILocationManager;

.field private mTracking:Z


# direct methods
.method public constructor <init>(Landroid/location/ILocationManager;)V
    .registers 2
    .parameter "locationManager"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/location/PassiveProvider;->mLocationManager:Landroid/location/ILocationManager;

    .line 46
    return-void
.end method


# virtual methods
.method public addListener(I)V
    .registers 2
    .parameter "uid"

    .prologue
    .line 149
    return-void
.end method

.method public disable()V
    .registers 1

    .prologue
    .line 101
    return-void
.end method

.method public enable()V
    .registers 1

    .prologue
    .line 98
    return-void
.end method

.method public enableLocationTracking(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/server/location/PassiveProvider;->mTracking:Z

    .line 121
    return-void
.end method

.method public getAccuracy()I
    .registers 2

    .prologue
    .line 90
    const/4 v0, -0x1

    return v0
.end method

.method public getInternalState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    const-string v0, "passive"

    return-object v0
.end method

.method public getPowerRequirement()I
    .registers 2

    .prologue
    .line 81
    const/4 v0, -0x1

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 3
    .parameter "extras"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/server/location/PassiveProvider;->mTracking:Z

    if-eqz v0, :cond_6

    .line 105
    const/4 v0, 0x2

    .line 107
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public getStatusUpdateTime()J
    .registers 3

    .prologue
    .line 112
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public hasMonetaryCost()Z
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .registers 3
    .parameter "criteria"

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public removeListener(I)V
    .registers 2
    .parameter "uid"

    .prologue
    .line 152
    return-void
.end method

.method public requestSingleShotFix()Z
    .registers 2

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public requiresCell()Z
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public requiresNetwork()Z
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public requiresSatellite()Z
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public setMinTime(JLandroid/os/WorkSource;)V
    .registers 4
    .parameter "minTime"
    .parameter "ws"

    .prologue
    .line 128
    return-void
.end method

.method public supportsAltitude()Z
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public supportsBearing()Z
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSpeed()Z
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public updateLocation(Landroid/location/Location;)V
    .registers 5
    .parameter "location"

    .prologue
    .line 134
    iget-boolean v1, p0, Lcom/android/server/location/PassiveProvider;->mTracking:Z

    if-eqz v1, :cond_a

    .line 137
    :try_start_4
    iget-object v1, p0, Lcom/android/server/location/PassiveProvider;->mLocationManager:Landroid/location/ILocationManager;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    .line 142
    :cond_a
    :goto_a
    return-void

    .line 138
    :catch_b
    move-exception v0

    .line 139
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PassiveProvider"

    const-string v2, "RemoteException calling reportLocation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .registers 3
    .parameter "state"
    .parameter "info"

    .prologue
    .line 131
    return-void
.end method
