.class Landroid/server/BluetoothAdapterStateMachine$WarmUp;
.super Lcom/android/internal/util/State;
.source "BluetoothAdapterStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothAdapterStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WarmUp"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothAdapterStateMachine;


# direct methods
.method private constructor <init>(Landroid/server/BluetoothAdapterStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Landroid/server/BluetoothAdapterStateMachine$WarmUp;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/BluetoothAdapterStateMachine;Landroid/server/BluetoothAdapterStateMachine$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 295
    invoke-direct {p0, p1}, Landroid/server/BluetoothAdapterStateMachine$WarmUp;-><init>(Landroid/server/BluetoothAdapterStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 1

    .prologue
    .line 300
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 6
    .parameter "message"

    .prologue
    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WarmUp process message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$600(Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x1

    .line 307
    .local v0, retValue:Z
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_74

    .line 331
    const/4 v0, 0x0

    .line 333
    .end local v0           #retValue:Z
    :goto_1f
    return v0

    .line 309
    .restart local v0       #retValue:Z
    :sswitch_20
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$WarmUp;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0x68

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$2600(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 310
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$WarmUp;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$WarmUp;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$2700(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$HotOff;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$2800(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1f

    .line 313
    :sswitch_33
    const-string v1, "BluetoothAdapterStateMachine"

    const-string v2, "Bluetooth adapter SDP failed to load"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$WarmUp;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2900(Landroid/server/BluetoothAdapterStateMachine;)V

    .line 315
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$WarmUp;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$WarmUp;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1200(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$PowerOff;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$3000(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 316
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$WarmUp;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Landroid/server/BluetoothAdapterStateMachine;I)V

    goto :goto_1f

    .line 325
    :sswitch_52
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$WarmUp;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1, p1}, Landroid/server/BluetoothAdapterStateMachine;->access$3100(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto :goto_1f

    .line 328
    :sswitch_58
    const-string v1, "BluetoothAdapterStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WarmUp received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 307
    nop

    :sswitch_data_74
    .sparse-switch
        0x1 -> :sswitch_52
        0x2 -> :sswitch_58
        0x3 -> :sswitch_52
        0x4 -> :sswitch_52
        0x33 -> :sswitch_20
        0x37 -> :sswitch_52
        0x38 -> :sswitch_52
        0x65 -> :sswitch_52
        0x68 -> :sswitch_33
    .end sparse-switch
.end method
