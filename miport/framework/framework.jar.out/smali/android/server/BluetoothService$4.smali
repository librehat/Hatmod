.class Landroid/server/BluetoothService$4;
.super Ljava/lang/Object;
.source "BluetoothService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .registers 2
    .parameter

    .prologue
    .line 2002
    iput-object p1, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 4
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 2004
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 2005
    iget-object v0, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    invoke-static {v0, p2}, Landroid/server/BluetoothService;->access$1102(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 2011
    :cond_a
    :goto_a
    return-void

    .line 2006
    .restart local p2
    :cond_b
    const/4 v0, 0x4

    if-ne p1, v0, :cond_16

    .line 2007
    iget-object v0, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    check-cast p2, Landroid/bluetooth/BluetoothInputDevice;

    .end local p2
    invoke-static {v0, p2}, Landroid/server/BluetoothService;->access$1202(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;

    goto :goto_a

    .line 2008
    .restart local p2
    :cond_16
    const/4 v0, 0x5

    if-ne p1, v0, :cond_a

    .line 2009
    iget-object v0, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2
    invoke-static {v0, p2}, Landroid/server/BluetoothService;->access$1302(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    goto :goto_a
.end method

.method public onServiceDisconnected(I)V
    .registers 4
    .parameter "profile"

    .prologue
    const/4 v1, 0x0

    .line 2013
    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 2014
    iget-object v0, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    invoke-static {v0, v1}, Landroid/server/BluetoothService;->access$1102(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 2020
    :cond_9
    :goto_9
    return-void

    .line 2015
    :cond_a
    const/4 v0, 0x4

    if-ne p1, v0, :cond_13

    .line 2016
    iget-object v0, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    invoke-static {v0, v1}, Landroid/server/BluetoothService;->access$1202(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;

    goto :goto_9

    .line 2017
    :cond_13
    const/4 v0, 0x5

    if-ne p1, v0, :cond_9

    .line 2018
    iget-object v0, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    invoke-static {v0, v1}, Landroid/server/BluetoothService;->access$1302(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    goto :goto_9
.end method
