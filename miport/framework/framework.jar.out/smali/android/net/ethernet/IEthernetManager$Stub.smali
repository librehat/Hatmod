.class public abstract Landroid/net/ethernet/IEthernetManager$Stub;
.super Landroid/os/Binder;
.source "IEthernetManager.java"

# interfaces
.implements Landroid/net/ethernet/IEthernetManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ethernet/IEthernetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ethernet/IEthernetManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.ethernet.IEthernetManager"

.field static final TRANSACTION_UpdateEthDevInfo:I = 0x4

.field static final TRANSACTION_getDeviceNameList:I = 0x1

.field static final TRANSACTION_getDhcpInfo:I = 0xb

.field static final TRANSACTION_getEthState:I = 0x3

.field static final TRANSACTION_getSavedEthConfig:I = 0x6

.field static final TRANSACTION_getTotalInterface:I = 0x7

.field static final TRANSACTION_isEthConfigured:I = 0x5

.field static final TRANSACTION_isEthDeviceAdded:I = 0xa

.field static final TRANSACTION_isEthDeviceUp:I = 0x9

.field static final TRANSACTION_setEthMode:I = 0x8

.field static final TRANSACTION_setEthState:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.net.ethernet.IEthernetManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/ethernet/IEthernetManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/ethernet/IEthernetManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "android.net.ethernet.IEthernetManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/ethernet/IEthernetManager;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Landroid/net/ethernet/IEthernetManager;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Landroid/net/ethernet/IEthernetManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/ethernet/IEthernetManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_ee

    .line 154
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 42
    :sswitch_a
    const-string v2, "android.net.ethernet.IEthernetManager"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v2, "android.net.ethernet.IEthernetManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroid/net/ethernet/IEthernetManager$Stub;->getDeviceNameList()[Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_9

    .line 55
    .end local v1           #_result:[Ljava/lang/String;
    :sswitch_20
    const-string v2, "android.net.ethernet.IEthernetManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 58
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/ethernet/IEthernetManager$Stub;->setEthState(I)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 64
    .end local v0           #_arg0:I
    :sswitch_30
    const-string v2, "android.net.ethernet.IEthernetManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Landroid/net/ethernet/IEthernetManager$Stub;->getEthState()I

    move-result v1

    .line 66
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 72
    .end local v1           #_result:I
    :sswitch_40
    const-string v2, "android.net.ethernet.IEthernetManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5a

    .line 75
    sget-object v2, Landroid/net/ethernet/EthernetDevInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ethernet/EthernetDevInfo;

    .line 80
    .local v0, _arg0:Landroid/net/ethernet/EthernetDevInfo;
    :goto_53
    invoke-virtual {p0, v0}, Landroid/net/ethernet/IEthernetManager$Stub;->UpdateEthDevInfo(Landroid/net/ethernet/EthernetDevInfo;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 78
    .end local v0           #_arg0:Landroid/net/ethernet/EthernetDevInfo;
    :cond_5a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/ethernet/EthernetDevInfo;
    goto :goto_53

    .line 86
    .end local v0           #_arg0:Landroid/net/ethernet/EthernetDevInfo;
    :sswitch_5c
    const-string v4, "android.net.ethernet.IEthernetManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/net/ethernet/IEthernetManager$Stub;->isEthConfigured()Z

    move-result v1

    .line 88
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v1, :cond_6b

    move v2, v3

    :cond_6b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 94
    .end local v1           #_result:Z
    :sswitch_6f
    const-string v4, "android.net.ethernet.IEthernetManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/net/ethernet/IEthernetManager$Stub;->getSavedEthConfig()Landroid/net/ethernet/EthernetDevInfo;

    move-result-object v1

    .line 96
    .local v1, _result:Landroid/net/ethernet/EthernetDevInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v1, :cond_84

    .line 98
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    invoke-virtual {v1, p3, v3}, Landroid/net/ethernet/EthernetDevInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 102
    :cond_84
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 108
    .end local v1           #_result:Landroid/net/ethernet/EthernetDevInfo;
    :sswitch_88
    const-string v2, "android.net.ethernet.IEthernetManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Landroid/net/ethernet/IEthernetManager$Stub;->getTotalInterface()I

    move-result v1

    .line 110
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 116
    .end local v1           #_result:I
    :sswitch_99
    const-string v2, "android.net.ethernet.IEthernetManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/ethernet/IEthernetManager$Stub;->setEthMode(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 125
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_aa
    const-string v4, "android.net.ethernet.IEthernetManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Landroid/net/ethernet/IEthernetManager$Stub;->isEthDeviceUp()Z

    move-result v1

    .line 127
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v1, :cond_b9

    move v2, v3

    :cond_b9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 133
    .end local v1           #_result:Z
    :sswitch_be
    const-string v4, "android.net.ethernet.IEthernetManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/net/ethernet/IEthernetManager$Stub;->isEthDeviceAdded()Z

    move-result v1

    .line 135
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v1, :cond_cd

    move v2, v3

    :cond_cd
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 141
    .end local v1           #_result:Z
    :sswitch_d2
    const-string v4, "android.net.ethernet.IEthernetManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Landroid/net/ethernet/IEthernetManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    .line 143
    .local v1, _result:Landroid/net/DhcpInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v1, :cond_e8

    .line 145
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    invoke-virtual {v1, p3, v3}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 149
    :cond_e8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 38
    nop

    :sswitch_data_ee
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_30
        0x4 -> :sswitch_40
        0x5 -> :sswitch_5c
        0x6 -> :sswitch_6f
        0x7 -> :sswitch_88
        0x8 -> :sswitch_99
        0x9 -> :sswitch_aa
        0xa -> :sswitch_be
        0xb -> :sswitch_d2
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
