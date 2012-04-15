.class Landroid/server/BluetoothAdapterStateMachine$Switching;
.super Lcom/android/internal/util/State;
.source "BluetoothAdapterStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothAdapterStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Switching"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothAdapterStateMachine;


# direct methods
.method private constructor <init>(Landroid/server/BluetoothAdapterStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/BluetoothAdapterStateMachine;Landroid/server/BluetoothAdapterStateMachine$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 408
    invoke-direct {p0, p1}, Landroid/server/BluetoothAdapterStateMachine$Switching;-><init>(Landroid/server/BluetoothAdapterStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 1

    .prologue
    .line 413
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 10
    .parameter "message"

    .prologue
    const/16 v7, 0xb

    const/4 v6, 0x5

    const/4 v1, 0x0

    const v5, 0x1110022

    const/16 v4, 0x66

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switching process message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$600(Ljava/lang/String;)V

    .line 418
    const/4 v0, 0x1

    .line 419
    .local v0, retValue:Z
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_180

    move v0, v1

    .line 498
    .end local v0           #retValue:Z
    :cond_28
    :goto_28
    return v0

    .line 421
    .restart local v0       #retValue:Z
    :sswitch_29
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0xbb8

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$4000(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 423
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$4100(Landroid/server/BluetoothAdapterStateMachine;)I

    move-result v1

    if-ne v1, v7, :cond_28

    .line 425
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/BluetoothService;->setPairable()V

    .line 426
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/BluetoothService;->initBluetoothAfterTurningOn()V

    .line 427
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$4200(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$4300(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 428
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0xc

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 431
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/BluetoothService;->runBluetooth()V

    goto :goto_28

    .line 435
    :sswitch_66
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0xbb8

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$4400(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 436
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_ae

    .line 437
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$4100(Landroid/server/BluetoothAdapterStateMachine;)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_28

    .line 438
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$2700(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$HotOff;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$4500(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 439
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$4600(Landroid/server/BluetoothAdapterStateMachine;)V

    .line 440
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2000(Landroid/server/BluetoothAdapterStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_28

    .line 442
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v2, v4}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$4700(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto/16 :goto_28

    .line 446
    :cond_ae
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$4100(Landroid/server/BluetoothAdapterStateMachine;)I

    move-result v1

    if-eq v1, v7, :cond_28

    .line 447
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2000(Landroid/server/BluetoothAdapterStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 449
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v2, 0x0

    invoke-static {v1, v6, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$3900(Landroid/server/BluetoothAdapterStateMachine;ILjava/lang/Object;)V

    goto/16 :goto_28

    .line 451
    :cond_ce
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v2, 0x0

    invoke-static {v1, v4, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$3900(Landroid/server/BluetoothAdapterStateMachine;ILjava/lang/Object;)V

    goto/16 :goto_28

    .line 457
    :sswitch_d6
    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v3, 0x67

    invoke-static {v2, v3}, Landroid/server/BluetoothAdapterStateMachine;->access$4800(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 458
    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/server/BluetoothService;->switchConnectable(Z)V

    .line 459
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0x69

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_28

    .line 462
    :sswitch_f1
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0x34

    invoke-virtual {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    .line 464
    const-string v1, "BluetoothAdapterStateMachine"

    const-string v2, "Devices failed to disconnect, reseting..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v2, v4}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$4900(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    .line 466
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2000(Landroid/server/BluetoothAdapterStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 468
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v2, v6}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$5000(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto/16 :goto_28

    .line 472
    :sswitch_127
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$2700(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$HotOff;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$5100(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 473
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$4600(Landroid/server/BluetoothAdapterStateMachine;)V

    .line 475
    const-string v1, "BluetoothAdapterStateMachine"

    const-string v2, "Devices failed to power down, reseting..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v2, v4}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$5200(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    .line 477
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2000(Landroid/server/BluetoothAdapterStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 479
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v2, v6}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$5300(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto/16 :goto_28

    .line 483
    :sswitch_166
    const-string v2, "BluetoothAdapterStateMachine"

    const-string v3, "Devices failed to power on, reseting..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/server/BluetoothAdapterStateMachine;->access$3900(Landroid/server/BluetoothAdapterStateMachine;ILjava/lang/Object;)V

    goto/16 :goto_28

    .line 492
    :sswitch_179
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1, p1}, Landroid/server/BluetoothAdapterStateMachine;->access$5400(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto/16 :goto_28

    .line 419
    :sswitch_data_180
    .sparse-switch
        0x1 -> :sswitch_179
        0x2 -> :sswitch_179
        0x3 -> :sswitch_179
        0x4 -> :sswitch_179
        0x34 -> :sswitch_d6
        0x35 -> :sswitch_29
        0x36 -> :sswitch_66
        0x37 -> :sswitch_179
        0x38 -> :sswitch_179
        0x67 -> :sswitch_f1
        0x69 -> :sswitch_127
        0x6a -> :sswitch_166
    .end sparse-switch
.end method
