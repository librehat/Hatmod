.class public Landroid/net/ethernet/EthernetDevInfo;
.super Ljava/lang/Object;
.source "EthernetDevInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/ethernet/EthernetDevInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final ETH_CONN_MODE_DHCP:Ljava/lang/String; = "dhcp"

.field public static final ETH_CONN_MODE_MANUAL:Ljava/lang/String; = "manual"


# instance fields
.field private dev_name:Ljava/lang/String;

.field private dns:Ljava/lang/String;

.field private ipaddr:Ljava/lang/String;

.field private mode:Ljava/lang/String;

.field private netmask:Ljava/lang/String;

.field private route:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    new-instance v0, Landroid/net/ethernet/EthernetDevInfo$1;

    invoke-direct {v0}, Landroid/net/ethernet/EthernetDevInfo$1;-><init>()V

    sput-object v0, Landroid/net/ethernet/EthernetDevInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->dev_name:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->ipaddr:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->dns:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->route:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->netmask:Ljava/lang/String;

    .line 25
    const-string v0, "dhcp"

    iput-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->mode:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectMode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getDnsAddr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->dns:Ljava/lang/String;

    return-object v0
.end method

.method public getIfName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->dev_name:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->ipaddr:Ljava/lang/String;

    return-object v0
.end method

.method public getNetMask()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->netmask:Ljava/lang/String;

    return-object v0
.end method

.method public getRouteAddr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->route:Ljava/lang/String;

    return-object v0
.end method

.method public setConnectMode(Ljava/lang/String;)Z
    .registers 3
    .parameter "mode"

    .prologue
    .line 68
    const-string v0, "dhcp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "manual"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 69
    :cond_11
    iput-object p1, p0, Landroid/net/ethernet/EthernetDevInfo;->mode:Ljava/lang/String;

    .line 70
    const/4 v0, 0x1

    .line 72
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public setDnsAddr(Ljava/lang/String;)V
    .registers 2
    .parameter "dns"

    .prologue
    .line 60
    iput-object p1, p0, Landroid/net/ethernet/EthernetDevInfo;->dns:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setIfName(Ljava/lang/String;)V
    .registers 2
    .parameter "ifname"

    .prologue
    .line 29
    iput-object p1, p0, Landroid/net/ethernet/EthernetDevInfo;->dev_name:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .registers 2
    .parameter "ip"

    .prologue
    .line 37
    iput-object p1, p0, Landroid/net/ethernet/EthernetDevInfo;->ipaddr:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setNetMask(Ljava/lang/String;)V
    .registers 2
    .parameter "ip"

    .prologue
    .line 44
    iput-object p1, p0, Landroid/net/ethernet/EthernetDevInfo;->netmask:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setRouteAddr(Ljava/lang/String;)V
    .registers 2
    .parameter "route"

    .prologue
    .line 52
    iput-object p1, p0, Landroid/net/ethernet/EthernetDevInfo;->route:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 85
    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->dev_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->ipaddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->netmask:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->route:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->dns:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Landroid/net/ethernet/EthernetDevInfo;->mode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return-void
.end method
