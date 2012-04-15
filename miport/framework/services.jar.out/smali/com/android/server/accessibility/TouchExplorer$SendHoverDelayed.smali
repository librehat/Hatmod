.class final Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SendHoverDelayed"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SendHoverEnterOrExitDelayed"


# instance fields
.field private mAction:I

.field private mEvent:Landroid/view/MotionEvent;

.field private mPointerIdBits:I

.field private mPolicyFlags:I

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .registers 2
    .parameter

    .prologue
    .line 1404
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1404
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    return-void
.end method

.method private clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1432
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->isPenidng()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1440
    :goto_7
    return-void

    .line 1435
    :cond_8
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mEvent:Landroid/view/MotionEvent;

    .line 1437
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mAction:I

    .line 1438
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mPointerIdBits:I

    .line 1439
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mPolicyFlags:I

    goto :goto_7
.end method

.method private isPenidng()Z
    .registers 2

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public forceSendAndRemove()V
    .registers 2

    .prologue
    .line 1443
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->isPenidng()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1444
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->run()V

    .line 1445
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    .line 1447
    :cond_c
    return-void
.end method

.method public post(Landroid/view/MotionEvent;IIIJ)V
    .registers 8
    .parameter "prototype"
    .parameter "action"
    .parameter "pointerIdBits"
    .parameter "policyFlags"
    .parameter "delay"

    .prologue
    .line 1414
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    .line 1415
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mEvent:Landroid/view/MotionEvent;

    .line 1416
    iput p2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mAction:I

    .line 1417
    iput p3, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mPointerIdBits:I

    .line 1418
    iput p4, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mPolicyFlags:I

    .line 1419
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$400(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p5, p6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1420
    return-void
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$400(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1424
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->clear()V

    .line 1425
    return-void
.end method

.method public run()V
    .registers 6

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mEvent:Landroid/view/MotionEvent;

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mAction:I

    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mPointerIdBits:I

    iget v4, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mPolicyFlags:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/TouchExplorer;->access$1200(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V

    .line 1461
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->clear()V

    .line 1462
    return-void
.end method
