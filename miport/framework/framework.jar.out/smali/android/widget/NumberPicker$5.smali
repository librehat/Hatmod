.class Landroid/widget/NumberPicker$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .registers 3
    .parameter

    .prologue
    .line 673
    iput-object p1, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 674
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NumberPicker$5;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .parameter "animation"

    .prologue
    .line 687
    iget-object v0, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$500(Landroid/widget/NumberPicker;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 688
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/NumberPicker$5;->mCanceled:Z

    .line 690
    :cond_f
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 678
    iget-boolean v0, p0, Landroid/widget/NumberPicker$5;->mCanceled:Z

    if-nez v0, :cond_a

    .line 680
    iget-object v0, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->access$400(Landroid/widget/NumberPicker;I)V

    .line 682
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NumberPicker$5;->mCanceled:Z

    .line 683
    return-void
.end method
