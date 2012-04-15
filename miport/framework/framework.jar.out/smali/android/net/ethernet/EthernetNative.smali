.class public Landroid/net/ethernet/EthernetNative;
.super Ljava/lang/Object;
.source "EthernetNative.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getInterfaceCnt()I
.end method

.method public static native getInterfaceName(I)Ljava/lang/String;
.end method

.method public static native initEthernetNative()I
.end method

.method public static native isInterfaceAdded(Ljava/lang/String;)I
.end method

.method public static native waitForEvent()Ljava/lang/String;
.end method
