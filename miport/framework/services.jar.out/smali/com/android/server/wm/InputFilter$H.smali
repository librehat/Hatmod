.class final Lcom/android/server/wm/InputFilter$H;
.super Landroid/os/Handler;
.source "InputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/InputFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/InputFilter;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/server/wm/InputFilter$H;->this$0:Lcom/android/server/wm/InputFilter;

    .line 212
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 213
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 217
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_70

    .line 250
    :goto_6
    return-void

    .line 219
    :pswitch_7
    iget-object v2, p0, Lcom/android/server/wm/InputFilter$H;->this$0:Lcom/android/server/wm/InputFilter;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/InputFilter$Host;

    invoke-static {v2, v1}, Lcom/android/server/wm/InputFilter;->access$002(Lcom/android/server/wm/InputFilter;Lcom/android/server/wm/InputFilter$Host;)Lcom/android/server/wm/InputFilter$Host;

    .line 220
    iget-object v1, p0, Lcom/android/server/wm/InputFilter$H;->this$0:Lcom/android/server/wm/InputFilter;

    invoke-static {v1}, Lcom/android/server/wm/InputFilter;->access$100(Lcom/android/server/wm/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 221
    iget-object v1, p0, Lcom/android/server/wm/InputFilter$H;->this$0:Lcom/android/server/wm/InputFilter;

    invoke-static {v1}, Lcom/android/server/wm/InputFilter;->access$100(Lcom/android/server/wm/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputEventConsistencyVerifier;->reset()V

    .line 223
    :cond_21
    iget-object v1, p0, Lcom/android/server/wm/InputFilter$H;->this$0:Lcom/android/server/wm/InputFilter;

    invoke-static {v1}, Lcom/android/server/wm/InputFilter;->access$200(Lcom/android/server/wm/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 224
    iget-object v1, p0, Lcom/android/server/wm/InputFilter$H;->this$0:Lcom/android/server/wm/InputFilter;

    invoke-static {v1}, Lcom/android/server/wm/InputFilter;->access$200(Lcom/android/server/wm/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputEventConsistencyVerifier;->reset()V

    .line 226
    :cond_32
    iget-object v1, p0, Lcom/android/server/wm/InputFilter$H;->this$0:Lcom/android/server/wm/InputFilter;

    invoke-virtual {v1}, Lcom/android/server/wm/InputFilter;->onInstalled()V

    goto :goto_6

    .line 231
    :pswitch_38
    :try_start_38
    iget-object v1, p0, Lcom/android/server/wm/InputFilter$H;->this$0:Lcom/android/server/wm/InputFilter;

    invoke-virtual {v1}, Lcom/android/server/wm/InputFilter;->onUninstalled()V
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_43

    .line 233
    iget-object v1, p0, Lcom/android/server/wm/InputFilter$H;->this$0:Lcom/android/server/wm/InputFilter;

    invoke-static {v1, v3}, Lcom/android/server/wm/InputFilter;->access$002(Lcom/android/server/wm/InputFilter;Lcom/android/server/wm/InputFilter$Host;)Lcom/android/server/wm/InputFilter$Host;

    goto :goto_6

    :catchall_43
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/InputFilter$H;->this$0:Lcom/android/server/wm/InputFilter;

    invoke-static {v2, v3}, Lcom/android/server/wm/InputFilter;->access$002(Lcom/android/server/wm/InputFilter;Lcom/android/server/wm/InputFilter$Host;)Lcom/android/server/wm/InputFilter$Host;

    throw v1

    .line 238
    :pswitch_4a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/InputEvent;

    .line 240
    .local v0, event:Landroid/view/InputEvent;
    :try_start_4e
    iget-object v1, p0, Lcom/android/server/wm/InputFilter$H;->this$0:Lcom/android/server/wm/InputFilter;

    invoke-static {v1}, Lcom/android/server/wm/InputFilter;->access$100(Lcom/android/server/wm/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    if-eqz v1, :cond_60

    .line 241
    iget-object v1, p0, Lcom/android/server/wm/InputFilter$H;->this$0:Lcom/android/server/wm/InputFilter;

    invoke-static {v1}, Lcom/android/server/wm/InputFilter;->access$100(Lcom/android/server/wm/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 243
    :cond_60
    iget-object v1, p0, Lcom/android/server/wm/InputFilter$H;->this$0:Lcom/android/server/wm/InputFilter;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V
    :try_end_67
    .catchall {:try_start_4e .. :try_end_67} :catchall_6b

    .line 245
    invoke-virtual {v0}, Landroid/view/InputEvent;->recycle()V

    goto :goto_6

    :catchall_6b
    move-exception v1

    invoke-virtual {v0}, Landroid/view/InputEvent;->recycle()V

    throw v1

    .line 217
    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_7
        :pswitch_38
        :pswitch_4a
    .end packed-switch
.end method
