.class Lcom/android/server/wm/WindowManagerService$3;
.super Lcom/android/internal/view/BaseInputHandler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 583
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/android/internal/view/BaseInputHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMotion(Landroid/view/MotionEvent;Landroid/view/InputQueue$FinishedCallback;)V
    .registers 10
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 586
    const/4 v2, 0x0

    .line 588
    .local v2, handled:Z
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2f

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v5, :cond_2f

    .line 590
    const/4 v1, 0x0

    .line 591
    .local v1, endDrag:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 592
    .local v3, newX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 594
    .local v4, newY:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_6c

    .line 622
    :goto_1f
    :pswitch_1f
    if-eqz v1, :cond_2e

    .line 625
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_62
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_44

    .line 626
    :try_start_26
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v5}, Lcom/android/server/wm/DragState;->endDragLw()V

    .line 627
    monitor-exit v6
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_69

    .line 630
    :cond_2e
    const/4 v2, 0x1

    .line 635
    .end local v1           #endDrag:Z
    .end local v3           #newX:F
    .end local v4           #newY:F
    :cond_2f
    invoke-virtual {p2, v2}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    .line 637
    :goto_32
    return-void

    .line 602
    .restart local v1       #endDrag:Z
    .restart local v3       #newX:F
    .restart local v4       #newY:F
    :pswitch_33
    :try_start_33
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_62
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_44

    .line 604
    :try_start_38
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/wm/DragState;->notifyMoveLw(FF)V

    .line 605
    monitor-exit v6

    goto :goto_1f

    :catchall_41
    move-exception v5

    monitor-exit v6
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_41

    :try_start_43
    throw v5
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_62
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_44} :catch_44

    .line 632
    .end local v1           #endDrag:Z
    .end local v3           #newX:F
    .end local v4           #newY:F
    :catch_44
    move-exception v0

    .line 633
    .local v0, e:Ljava/lang/Exception;
    :try_start_45
    const-string v5, "WindowManager"

    const-string v6, "Exception caught by drag handleMotion"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_62

    .line 635
    invoke-virtual {p2, v2}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    goto :goto_32

    .line 611
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #endDrag:Z
    .restart local v3       #newX:F
    .restart local v4       #newY:F
    :pswitch_50
    :try_start_50
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_62
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_55} :catch_44

    .line 612
    :try_start_55
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/wm/DragState;->notifyDropLw(FF)Z

    move-result v1

    .line 613
    monitor-exit v6

    goto :goto_1f

    :catchall_5f
    move-exception v5

    monitor-exit v6
    :try_end_61
    .catchall {:try_start_55 .. :try_end_61} :catchall_5f

    :try_start_61
    throw v5
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_62
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_62} :catch_44

    .line 635
    .end local v1           #endDrag:Z
    .end local v3           #newX:F
    .end local v4           #newY:F
    :catchall_62
    move-exception v5

    invoke-virtual {p2, v2}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    throw v5

    .line 618
    .restart local v1       #endDrag:Z
    .restart local v3       #newX:F
    .restart local v4       #newY:F
    :pswitch_67
    const/4 v1, 0x1

    goto :goto_1f

    .line 627
    :catchall_69
    move-exception v5

    :try_start_6a
    monitor-exit v6
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    :try_start_6b
    throw v5
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_62
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6c} :catch_44

    .line 594
    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_50
        :pswitch_33
        :pswitch_67
    .end packed-switch
.end method
