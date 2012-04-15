.class public abstract Lcom/android/server/net/NetworkAlertObserver;
.super Landroid/net/INetworkManagementEventObserver$Stub;
.source "NetworkAlertObserver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceAdded(Ljava/lang/String;)V
    .registers 2
    .parameter "iface"

    .prologue
    .line 43
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 3
    .parameter "iface"
    .parameter "up"

    .prologue
    .line 38
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 2
    .parameter "iface"

    .prologue
    .line 33
    return-void
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 3
    .parameter "iface"
    .parameter "up"

    .prologue
    .line 28
    return-void
.end method
