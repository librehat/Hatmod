.class Landroid/widget/CalendarView$ScrollStateRunnable;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollStateRunnable"
.end annotation


# instance fields
.field private mNewState:I

.field private mView:Landroid/widget/AbsListView;

.field final synthetic this$0:Landroid/widget/CalendarView;


# direct methods
.method private constructor <init>(Landroid/widget/CalendarView;)V
    .registers 2
    .parameter

    .prologue
    .line 971
    iput-object p1, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/CalendarView;Landroid/widget/CalendarView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 971
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$ScrollStateRunnable;-><init>(Landroid/widget/CalendarView;)V

    return-void
.end method


# virtual methods
.method public doScrollStateChange(Landroid/widget/AbsListView;I)V
    .registers 6
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 984
    iput-object p1, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    .line 985
    iput p2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mNewState:I

    .line 986
    iget-object v0, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    invoke-virtual {v0, p0}, Landroid/widget/CalendarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 987
    iget-object v0, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    const-wide/16 v1, 0x28

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/CalendarView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 988
    return-void
.end method

.method public run()V
    .registers 6

    .prologue
    const/16 v4, 0x1f4

    .line 991
    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    iget v3, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mNewState:I

    invoke-static {v2, v3}, Landroid/widget/CalendarView;->access$702(Landroid/widget/CalendarView;I)I

    .line 993
    iget v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mNewState:I

    if-nez v2, :cond_46

    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    invoke-static {v2}, Landroid/widget/CalendarView;->access$800(Landroid/widget/CalendarView;)I

    move-result v2

    if-eqz v2, :cond_46

    .line 995
    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 996
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1f

    .line 1010
    .end local v0           #child:Landroid/view/View;
    :goto_1e
    return-void

    .line 1000
    .restart local v0       #child:Landroid/view/View;
    :cond_1f
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    invoke-static {v3}, Landroid/widget/CalendarView;->access$900(Landroid/widget/CalendarView;)I

    move-result v3

    sub-int v1, v2, v3

    .line 1001
    .local v1, dist:I
    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    invoke-static {v2}, Landroid/widget/CalendarView;->access$900(Landroid/widget/CalendarView;)I

    move-result v2

    if-le v1, v2, :cond_46

    .line 1002
    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    invoke-static {v2}, Landroid/widget/CalendarView;->access$1000(Landroid/widget/CalendarView;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 1003
    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1009
    .end local v0           #child:Landroid/view/View;
    .end local v1           #dist:I
    :cond_46
    :goto_46
    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    iget v3, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mNewState:I

    invoke-static {v2, v3}, Landroid/widget/CalendarView;->access$802(Landroid/widget/CalendarView;I)I

    goto :goto_1e

    .line 1005
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #dist:I
    :cond_4e
    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1, v4}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_46
.end method
