.class Landroid/server/BluetoothAdapterStateMachine$PowerOff;
.super Lcom/android/internal/util/State;
.source "BluetoothAdapterStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothAdapterStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerOff"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothAdapterStateMachine;


# direct methods
.method private constructor <init>(Landroid/server/BluetoothAdapterStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/BluetoothAdapterStateMachine;Landroid/server/BluetoothAdapterStateMachine$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    invoke-direct {p0, p1}, Landroid/server/BluetoothAdapterStateMachine$PowerOff;-><init>(Landroid/server/BluetoothAdapterStateMachine;)V

    return-void
.end method

.method private prepareBluetooth()Z
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 248
    iget-object v7, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v7

    invoke-virtual {v7}, Landroid/server/BluetoothService;->enableNative()I

    move-result v7

    if-eqz v7, :cond_e

    .line 287
    :goto_d
    return v6

    .line 253
    :cond_e
    const/4 v4, 0x2

    .line 254
    .local v4, retryCount:I
    const/4 v1, 0x0

    .local v1, eventLoopStarted:Z
    move v5, v4

    .line 255
    .end local v4           #retryCount:I
    .local v5, retryCount:I
    :goto_11
    add-int/lit8 v4, v5, -0x1

    .end local v5           #retryCount:I
    .restart local v4       #retryCount:I
    if-lez v5, :cond_57

    if-nez v1, :cond_57

    .line 256
    iget-object v7, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothEventLoop;

    move-result-object v7

    invoke-virtual {v7}, Landroid/server/BluetoothEventLoop;->start()V

    .line 259
    const/4 v2, 0x5

    .local v2, pollCount:I
    move v3, v2

    .line 260
    .end local v2           #pollCount:I
    .local v3, pollCount:I
    :goto_22
    add-int/lit8 v2, v3, -0x1

    .end local v3           #pollCount:I
    .restart local v2       #pollCount:I
    if-lez v3, :cond_35

    if-nez v1, :cond_35

    .line 261
    iget-object v7, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothEventLoop;

    move-result-object v7

    invoke-virtual {v7}, Landroid/server/BluetoothEventLoop;->isEventLoopRunning()Z

    move-result v7

    if-eqz v7, :cond_37

    .line 262
    const/4 v1, 0x1

    :cond_35
    :goto_35
    move v5, v4

    .line 272
    .end local v4           #retryCount:I
    .restart local v5       #retryCount:I
    goto :goto_11

    .line 266
    .end local v5           #retryCount:I
    .restart local v4       #retryCount:I
    :cond_37
    const-wide/16 v7, 0x64

    :try_start_39
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_3c} :catch_3e

    move v3, v2

    .line 270
    .end local v2           #pollCount:I
    .restart local v3       #pollCount:I
    goto :goto_22

    .line 267
    .end local v3           #pollCount:I
    .restart local v2       #pollCount:I
    :catch_3e
    move-exception v0

    .line 268
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "prepareBluetooth sleep interrupted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$600(Ljava/lang/String;)V

    goto :goto_35

    .line 274
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v2           #pollCount:I
    :cond_57
    if-nez v1, :cond_63

    .line 275
    iget-object v7, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v7

    invoke-virtual {v7}, Landroid/server/BluetoothService;->disableNative()I

    goto :goto_d

    .line 280
    :cond_63
    iget-object v7, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v7

    invoke-virtual {v7}, Landroid/server/BluetoothService;->prepareBluetooth()Z

    move-result v7

    if-nez v7, :cond_82

    .line 281
    iget-object v7, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothEventLoop;

    move-result-object v7

    invoke-virtual {v7}, Landroid/server/BluetoothEventLoop;->stop()V

    .line 282
    iget-object v7, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v7

    invoke-virtual {v7}, Landroid/server/BluetoothService;->disableNative()I

    goto :goto_d

    .line 286
    :cond_82
    iget-object v6, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v7, 0x68

    const-wide/16 v8, 0x2710

    invoke-virtual {v6, v7, v8, v9}, Landroid/server/BluetoothAdapterStateMachine;->sendMessageDelayed(IJ)V

    .line 287
    const/4 v6, 0x1

    goto :goto_d
.end method


# virtual methods
.method public enter()V
    .registers 1

    .prologue
    .line 173
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 9
    .parameter "message"

    .prologue
    const/16 v6, 0x65

    const/16 v5, 0xb

    const/16 v4, 0xa

    const/4 v2, 0x0

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PowerOff process message: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$600(Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x1

    .line 179
    .local v0, retValue:Z
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_134

    move v0, v2

    .line 237
    .end local v0           #retValue:Z
    :cond_26
    :goto_26
    :sswitch_26
    return v0

    .line 182
    .restart local v0       #retValue:Z
    :sswitch_27
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 183
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$WarmUp;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$900(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 184
    invoke-direct {p0}, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->prepareBluetooth()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 186
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 187
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1000(Landroid/server/BluetoothAdapterStateMachine;Z)V

    .line 190
    :cond_4d
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v2, v6}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1100(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto :goto_26

    .line 192
    :cond_59
    const-string v1, "BluetoothAdapterStateMachine"

    const-string v2, "failed to prepare bluetooth, abort turning on"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1200(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$PowerOff;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1300(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 194
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Landroid/server/BluetoothAdapterStateMachine;I)V

    goto :goto_26

    .line 198
    :sswitch_71
    invoke-direct {p0}, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->prepareBluetooth()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 199
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$WarmUp;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1400(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_26

    .line 203
    :sswitch_83
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$1500(Landroid/server/BluetoothAdapterStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 205
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 206
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$WarmUp;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1600(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 207
    invoke-direct {p0}, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->prepareBluetooth()Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 209
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v2, v6}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1700(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    .line 210
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$WarmUp;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1800(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_26

    .line 212
    :cond_b9
    const-string v1, "BluetoothAdapterStateMachine"

    const-string v2, "failed to prepare bluetooth, abort turning on"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1200(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$PowerOff;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1900(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 214
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Landroid/server/BluetoothAdapterStateMachine;I)V

    goto/16 :goto_26

    .line 216
    :cond_d2
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2000(Landroid/server/BluetoothAdapterStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 218
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto/16 :goto_26

    .line 222
    :sswitch_ed
    invoke-direct {p0}, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->prepareBluetooth()Z

    move-result v1

    if-eqz v1, :cond_fe

    .line 223
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$WarmUp;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$2100(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 225
    :cond_fe
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$2200(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto/16 :goto_26

    .line 228
    :sswitch_10c
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-static {v3, v2, v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2300(Landroid/server/BluetoothAdapterStateMachine;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    goto/16 :goto_26

    .line 231
    :sswitch_117
    const-string v1, "BluetoothAdapterStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PowerOff received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 179
    nop

    :sswitch_data_134
    .sparse-switch
        0x1 -> :sswitch_27
        0x2 -> :sswitch_117
        0x3 -> :sswitch_ed
        0x4 -> :sswitch_10c
        0x5 -> :sswitch_71
        0x37 -> :sswitch_26
        0x38 -> :sswitch_83
    .end sparse-switch
.end method
