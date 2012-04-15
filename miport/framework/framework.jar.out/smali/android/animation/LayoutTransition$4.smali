.class Landroid/animation/LayoutTransition$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LayoutTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/LayoutTransition;->setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/LayoutTransition;

.field final synthetic val$changeReason:I

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$listener:Landroid/view/View$OnLayoutChangeListener;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;ILandroid/view/View$OnLayoutChangeListener;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 761
    iput-object p1, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    iput-object p2, p0, Landroid/animation/LayoutTransition$4;->val$parent:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/animation/LayoutTransition$4;->val$child:Landroid/view/View;

    iput p4, p0, Landroid/animation/LayoutTransition$4;->val$changeReason:I

    iput-object p5, p0, Landroid/animation/LayoutTransition$4;->val$listener:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animator"

    .prologue
    .line 776
    iget-object v0, p0, Landroid/animation/LayoutTransition$4;->val$child:Landroid/view/View;

    iget-object v1, p0, Landroid/animation/LayoutTransition$4;->val$listener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 777
    iget-object v0, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v0}, Landroid/animation/LayoutTransition;->access$000(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/LayoutTransition$4;->val$child:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 9
    .parameter "animator"

    .prologue
    .line 782
    iget-object v2, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v2}, Landroid/animation/LayoutTransition;->access$700(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;

    move-result-object v2

    iget-object v3, p0, Landroid/animation/LayoutTransition$4;->val$child:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    iget-object v2, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v2}, Landroid/animation/LayoutTransition;->access$800(Landroid/animation/LayoutTransition;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 784
    iget-object v2, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v2}, Landroid/animation/LayoutTransition;->access$800(Landroid/animation/LayoutTransition;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/LayoutTransition$TransitionListener;

    .line 785
    .local v1, listener:Landroid/animation/LayoutTransition$TransitionListener;
    iget-object v3, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    iget-object v4, p0, Landroid/animation/LayoutTransition$4;->val$parent:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/animation/LayoutTransition$4;->val$child:Landroid/view/View;

    iget v2, p0, Landroid/animation/LayoutTransition$4;->val$changeReason:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_39

    const/4 v2, 0x0

    :goto_35
    invoke-interface {v1, v3, v4, v5, v2}, Landroid/animation/LayoutTransition$TransitionListener;->endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_1d

    :cond_39
    const/4 v2, 0x1

    goto :goto_35

    .line 790
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Landroid/animation/LayoutTransition$TransitionListener;
    :cond_3b
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 9
    .parameter "animator"

    .prologue
    .line 765
    iget-object v2, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v2}, Landroid/animation/LayoutTransition;->access$800(Landroid/animation/LayoutTransition;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 766
    iget-object v2, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v2}, Landroid/animation/LayoutTransition;->access$800(Landroid/animation/LayoutTransition;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/LayoutTransition$TransitionListener;

    .line 767
    .local v1, listener:Landroid/animation/LayoutTransition$TransitionListener;
    iget-object v3, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    iget-object v4, p0, Landroid/animation/LayoutTransition$4;->val$parent:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/animation/LayoutTransition$4;->val$child:Landroid/view/View;

    iget v2, p0, Landroid/animation/LayoutTransition$4;->val$changeReason:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_2e

    const/4 v2, 0x0

    :goto_2a
    invoke-interface {v1, v3, v4, v5, v2}, Landroid/animation/LayoutTransition$TransitionListener;->startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_12

    :cond_2e
    const/4 v2, 0x1

    goto :goto_2a

    .line 772
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Landroid/animation/LayoutTransition$TransitionListener;
    :cond_30
    return-void
.end method
