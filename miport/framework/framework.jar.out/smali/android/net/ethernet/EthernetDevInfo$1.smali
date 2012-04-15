.class final Landroid/net/ethernet/EthernetDevInfo$1;
.super Ljava/lang/Object;
.source "EthernetDevInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ethernet/EthernetDevInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/ethernet/EthernetDevInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/ethernet/EthernetDevInfo;
    .registers 4
    .parameter "in"

    .prologue
    .line 96
    new-instance v0, Landroid/net/ethernet/EthernetDevInfo;

    invoke-direct {v0}, Landroid/net/ethernet/EthernetDevInfo;-><init>()V

    .line 97
    .local v0, info:Landroid/net/ethernet/EthernetDevInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ethernet/EthernetDevInfo;->setIfName(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ethernet/EthernetDevInfo;->setIpAddress(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ethernet/EthernetDevInfo;->setNetMask(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ethernet/EthernetDevInfo;->setRouteAddr(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ethernet/EthernetDevInfo;->setDnsAddr(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ethernet/EthernetDevInfo;->setConnectMode(Ljava/lang/String;)Z

    .line 103
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Landroid/net/ethernet/EthernetDevInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/ethernet/EthernetDevInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/ethernet/EthernetDevInfo;
    .registers 3
    .parameter "size"

    .prologue
    .line 107
    new-array v0, p1, [Landroid/net/ethernet/EthernetDevInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Landroid/net/ethernet/EthernetDevInfo$1;->newArray(I)[Landroid/net/ethernet/EthernetDevInfo;

    move-result-object v0

    return-object v0
.end method
