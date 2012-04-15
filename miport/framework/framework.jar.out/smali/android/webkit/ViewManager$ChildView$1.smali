.class Landroid/webkit/ViewManager$ChildView$1;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/ViewManager$ChildView;->attachView(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/ViewManager$ChildView;


# direct methods
.method constructor <init>(Landroid/webkit/ViewManager$ChildView;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Landroid/webkit/ViewManager$ChildView$1;->this$1:Landroid/webkit/ViewManager$ChildView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView$1;->this$1:Landroid/webkit/ViewManager$ChildView;

    iget-object v0, v0, Landroid/webkit/ViewManager$ChildView;->this$0:Landroid/webkit/ViewManager;

    iget-object v1, p0, Landroid/webkit/ViewManager$ChildView$1;->this$1:Landroid/webkit/ViewManager$ChildView;

    invoke-static {v0, v1}, Landroid/webkit/ViewManager;->access$000(Landroid/webkit/ViewManager;Landroid/webkit/ViewManager$ChildView;)V

    .line 69
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView$1;->this$1:Landroid/webkit/ViewManager$ChildView;

    iget-object v0, v0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_18

    .line 70
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView$1;->this$1:Landroid/webkit/ViewManager$ChildView;

    invoke-static {v0}, Landroid/webkit/ViewManager$ChildView;->access$100(Landroid/webkit/ViewManager$ChildView;)V

    .line 72
    :cond_18
    return-void
.end method
