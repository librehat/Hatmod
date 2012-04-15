.class Landroid/widget/StackView2$1;
.super Ljava/lang/Object;
.source "StackView2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/StackView2;->transformViewForTransition(IILandroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/StackView2;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/widget/StackView2;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Landroid/widget/StackView2$1;->this$0:Landroid/widget/StackView2;

    iput-object p2, p0, Landroid/widget/StackView2$1;->val$view:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 460
    iget-object v0, p0, Landroid/widget/StackView2$1;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 461
    return-void
.end method
