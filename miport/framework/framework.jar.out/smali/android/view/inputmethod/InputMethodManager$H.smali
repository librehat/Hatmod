.class Landroid/view/inputmethod/InputMethodManager$H;
.super Landroid/os/Handler;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 301
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 302
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 303
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 307
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_106

    .line 384
    :goto_7
    return-void

    .line 309
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 311
    .local v1, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    :try_start_c
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/io/FileDescriptor;

    iget-object v6, v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/io/PrintWriter;

    iget-object v7, v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v8, v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_1f} :catch_2e

    .line 316
    :goto_1f
    iget-object v6, v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg4:Ljava/lang/Object;

    monitor-enter v6

    .line 317
    :try_start_22
    iget-object v5, v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 318
    monitor-exit v6

    goto :goto_7

    :catchall_2b
    move-exception v5

    monitor-exit v6
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2b

    throw v5

    .line 313
    :catch_2e
    move-exception v2

    .line 314
    .local v2, e:Ljava/lang/RuntimeException;
    iget-object v5, v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1f

    .line 322
    .end local v1           #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    .end local v2           #e:Ljava/lang/RuntimeException;
    :pswitch_4a
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/InputBindResult;

    .line 323
    .local v3, res:Lcom/android/internal/view/InputBindResult;
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v5, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v6

    .line 324
    :try_start_53
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v5, v5, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-ltz v5, :cond_61

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v5, v5, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    iget v7, v3, Lcom/android/internal/view/InputBindResult;->sequence:I

    if-eq v5, v7, :cond_8f

    .line 325
    :cond_61
    const-string v5, "InputMethodManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring onBind: cur seq="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v8, v8, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", given seq="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/view/InputBindResult;->sequence:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    monitor-exit v6

    goto/16 :goto_7

    .line 333
    :catchall_8c
    move-exception v5

    monitor-exit v6
    :try_end_8e
    .catchall {:try_start_53 .. :try_end_8e} :catchall_8c

    throw v5

    .line 330
    :cond_8f
    :try_start_8f
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v3, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    iput-object v7, v5, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 331
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v3, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    iput-object v7, v5, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 332
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v7, v3, Lcom/android/internal/view/InputBindResult;->sequence:I

    iput v7, v5, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 333
    monitor-exit v6
    :try_end_a2
    .catchall {:try_start_8f .. :try_end_a2} :catchall_8c

    .line 334
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->startInputInner()V

    goto/16 :goto_7

    .line 338
    .end local v3           #res:Lcom/android/internal/view/InputBindResult;
    :pswitch_a9
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 339
    .local v4, sequence:I
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v5, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v6

    .line 340
    :try_start_b0
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v5, v5, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-ne v5, v4, :cond_d0

    .line 351
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->clearBindingLocked()V

    .line 355
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v5, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v5, :cond_d0

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v5, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 356
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 359
    :cond_d0
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->startInputInner()V

    .line 360
    monitor-exit v6

    goto/16 :goto_7

    :catchall_d8
    move-exception v5

    monitor-exit v6
    :try_end_da
    .catchall {:try_start_b0 .. :try_end_da} :catchall_d8

    throw v5

    .line 364
    .end local v4           #sequence:I
    :pswitch_db
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_101

    .line 365
    .local v0, active:Z
    :goto_df
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v5, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v6

    .line 366
    :try_start_e4
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v0, v5, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    .line 367
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v7, 0x0

    iput-boolean v7, v5, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    .line 368
    if-nez v0, :cond_fb

    .line 372
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z
    :try_end_f4
    .catchall {:try_start_e4 .. :try_end_f4} :catchall_fe

    .line 376
    :try_start_f4
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v5, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v5}, Lcom/android/internal/view/IInputContext;->finishComposingText()V
    :try_end_fb
    .catchall {:try_start_f4 .. :try_end_fb} :catchall_fe
    .catch Landroid/os/RemoteException; {:try_start_f4 .. :try_end_fb} :catch_103

    .line 380
    :cond_fb
    :goto_fb
    :try_start_fb
    monitor-exit v6

    goto/16 :goto_7

    :catchall_fe
    move-exception v5

    monitor-exit v6
    :try_end_100
    .catchall {:try_start_fb .. :try_end_100} :catchall_fe

    throw v5

    .end local v0           #active:Z
    :cond_101
    move v0, v5

    .line 364
    goto :goto_df

    .line 377
    .restart local v0       #active:Z
    :catch_103
    move-exception v5

    goto :goto_fb

    .line 307
    nop

    :pswitch_data_106
    .packed-switch 0x1
        :pswitch_8
        :pswitch_4a
        :pswitch_a9
        :pswitch_db
    .end packed-switch
.end method
