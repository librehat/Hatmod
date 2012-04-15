.class Landroid/widget/StackView2$StackFrame;
.super Landroid/widget/FrameLayout;
.source "StackView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/StackView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StackFrame"
.end annotation


# instance fields
.field sliderAnimator:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field transformAnimator:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 704
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 705
    return-void
.end method


# virtual methods
.method cancelSliderAnimator()Z
    .registers 3

    .prologue
    .line 727
    iget-object v1, p0, Landroid/widget/StackView2$StackFrame;->sliderAnimator:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_13

    .line 728
    iget-object v1, p0, Landroid/widget/StackView2$StackFrame;->sliderAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 729
    .local v0, oa:Landroid/animation/ObjectAnimator;
    if-eqz v0, :cond_13

    .line 730
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 731
    const/4 v1, 0x1

    .line 734
    .end local v0           #oa:Landroid/animation/ObjectAnimator;
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method cancelTransformAnimator()Z
    .registers 3

    .prologue
    .line 716
    iget-object v1, p0, Landroid/widget/StackView2$StackFrame;->transformAnimator:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_13

    .line 717
    iget-object v1, p0, Landroid/widget/StackView2$StackFrame;->transformAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 718
    .local v0, oa:Landroid/animation/ObjectAnimator;
    if-eqz v0, :cond_13

    .line 719
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 720
    const/4 v1, 0x1

    .line 723
    .end local v0           #oa:Landroid/animation/ObjectAnimator;
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method setSliderAnimator(Landroid/animation/ObjectAnimator;)V
    .registers 3
    .parameter "oa"

    .prologue
    .line 712
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/StackView2$StackFrame;->sliderAnimator:Ljava/lang/ref/WeakReference;

    .line 713
    return-void
.end method

.method setTransformAnimator(Landroid/animation/ObjectAnimator;)V
    .registers 3
    .parameter "oa"

    .prologue
    .line 708
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/StackView2$StackFrame;->transformAnimator:Ljava/lang/ref/WeakReference;

    .line 709
    return-void
.end method
