.class Landroid/widget/StackView2$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "StackView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/StackView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LayoutParams"
.end annotation


# instance fields
.field private final globalInvalidateRect:Landroid/graphics/Rect;

.field horizontalOffset:I

.field private final invalidateRect:Landroid/graphics/Rect;

.field private final invalidateRectf:Landroid/graphics/RectF;

.field mView:Landroid/view/View;

.field private final parentRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/StackView2;

.field verticalOffset:I


# direct methods
.method constructor <init>(Landroid/widget/StackView2;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 1673
    iput-object p1, p0, Landroid/widget/StackView2$LayoutParams;->this$0:Landroid/widget/StackView2;

    .line 1674
    invoke-direct {p0, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1659
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView2$LayoutParams;->parentRect:Landroid/graphics/Rect;

    .line 1660
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView2$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    .line 1661
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView2$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    .line 1662
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView2$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    .line 1675
    iput v1, p0, Landroid/widget/StackView2$LayoutParams;->horizontalOffset:I

    .line 1676
    iput v1, p0, Landroid/widget/StackView2$LayoutParams;->verticalOffset:I

    .line 1677
    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1678
    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1679
    return-void
.end method

.method constructor <init>(Landroid/widget/StackView2;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 1664
    iput-object p1, p0, Landroid/widget/StackView2$LayoutParams;->this$0:Landroid/widget/StackView2;

    .line 1665
    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1659
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView2$LayoutParams;->parentRect:Landroid/graphics/Rect;

    .line 1660
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView2$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    .line 1661
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView2$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    .line 1662
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView2$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    .line 1666
    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1667
    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1668
    iput v1, p0, Landroid/widget/StackView2$LayoutParams;->horizontalOffset:I

    .line 1669
    iput v1, p0, Landroid/widget/StackView2$LayoutParams;->verticalOffset:I

    .line 1670
    iput-object p2, p0, Landroid/widget/StackView2$LayoutParams;->mView:Landroid/view/View;

    .line 1671
    return-void
.end method


# virtual methods
.method getInvalidateRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 1709
    iget-object v0, p0, Landroid/widget/StackView2$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 11
    .parameter "v"
    .parameter "r"

    .prologue
    const/4 v5, 0x0

    .line 1683
    iget-object v2, p0, Landroid/widget/StackView2$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1684
    iget-object v2, p0, Landroid/widget/StackView2$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/StackView2$LayoutParams;->this$0:Landroid/widget/StackView2;

    invoke-virtual {v3}, Landroid/widget/StackView2;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/StackView2$LayoutParams;->this$0:Landroid/widget/StackView2;

    invoke-virtual {v4}, Landroid/widget/StackView2;->getHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 1685
    move-object v1, p1

    .line 1686
    .local v1, p:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-nez v2, :cond_27

    .line 1706
    :cond_26
    :goto_26
    return-void

    .line 1688
    :cond_27
    const/4 v0, 0x1

    .line 1689
    .local v0, firstPass:Z
    iget-object v2, p0, Landroid/widget/StackView2$LayoutParams;->parentRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1691
    :goto_2d
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_98

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_98

    iget-object v2, p0, Landroid/widget/StackView2$LayoutParams;->parentRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/StackView2$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_98

    .line 1692
    if-nez v0, :cond_5e

    .line 1693
    iget-object v2, p0, Landroid/widget/StackView2$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1696
    :cond_5e
    const/4 v0, 0x0

    .line 1697
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1           #p:Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 1698
    .restart local v1       #p:Landroid/view/View;
    iget-object v2, p0, Landroid/widget/StackView2$LayoutParams;->parentRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1700
    iget-object v2, p0, Landroid/widget/StackView2$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/StackView2$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/widget/StackView2$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/widget/StackView2$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_2d

    .line 1704
    :cond_98
    iget-object v2, p0, Landroid/widget/StackView2$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/StackView2$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/widget/StackView2$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/widget/StackView2$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_26
.end method

.method resetInvalidateRect()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1713
    iget-object v0, p0, Landroid/widget/StackView2$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1714
    return-void
.end method

.method public setHorizontalOffset(I)V
    .registers 3
    .parameter "newHorizontalOffset"

    .prologue
    .line 1722
    iget v0, p0, Landroid/widget/StackView2$LayoutParams;->verticalOffset:I

    invoke-virtual {p0, p1, v0}, Landroid/widget/StackView2$LayoutParams;->setOffsets(II)V

    .line 1723
    return-void
.end method

.method public setOffsets(II)V
    .registers 18
    .parameter "newHorizontalOffset"
    .parameter "newVerticalOffset"

    .prologue
    .line 1726
    iget v9, p0, Landroid/widget/StackView2$LayoutParams;->horizontalOffset:I

    sub-int v2, p1, v9

    .line 1727
    .local v2, horizontalOffsetDelta:I
    move/from16 v0, p1

    iput v0, p0, Landroid/widget/StackView2$LayoutParams;->horizontalOffset:I

    .line 1728
    iget v9, p0, Landroid/widget/StackView2$LayoutParams;->verticalOffset:I

    sub-int v6, p2, v9

    .line 1729
    .local v6, verticalOffsetDelta:I
    move/from16 v0, p2

    iput v0, p0, Landroid/widget/StackView2$LayoutParams;->verticalOffset:I

    .line 1731
    iget-object v9, p0, Landroid/widget/StackView2$LayoutParams;->mView:Landroid/view/View;

    if-eqz v9, :cond_bb

    .line 1732
    iget-object v9, p0, Landroid/widget/StackView2$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->requestLayout()V

    .line 1733
    iget-object v9, p0, Landroid/widget/StackView2$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    add-int/2addr v9, v2

    iget-object v10, p0, Landroid/widget/StackView2$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1734
    .local v3, left:I
    iget-object v9, p0, Landroid/widget/StackView2$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    add-int/2addr v9, v2

    iget-object v10, p0, Landroid/widget/StackView2$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1735
    .local v4, right:I
    iget-object v9, p0, Landroid/widget/StackView2$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v10, p0, Landroid/widget/StackView2$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1736
    .local v5, top:I
    iget-object v9, p0, Landroid/widget/StackView2$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v10, p0, Landroid/widget/StackView2$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1738
    .local v1, bottom:I
    iget-object v9, p0, Landroid/widget/StackView2$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    int-to-float v10, v3

    int-to-float v11, v5

    int-to-float v12, v4

    int-to-float v13, v1

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1740
    iget-object v9, p0, Landroid/widget/StackView2$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    neg-float v7, v9

    .line 1741
    .local v7, xoffset:F
    iget-object v9, p0, Landroid/widget/StackView2$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    neg-float v8, v9

    .line 1742
    .local v8, yoffset:F
    iget-object v9, p0, Landroid/widget/StackView2$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 1743
    iget-object v9, p0, Landroid/widget/StackView2$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/StackView2$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1744
    iget-object v9, p0, Landroid/widget/StackView2$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    neg-float v10, v7

    neg-float v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/graphics/RectF;->offset(FF)V

    .line 1746
    iget-object v9, p0, Landroid/widget/StackView2$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    iget-object v10, p0, Landroid/widget/StackView2$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    iget-object v11, p0, Landroid/widget/StackView2$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v11, v11

    iget-object v12, p0, Landroid/widget/StackView2$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    iget-object v13, p0, Landroid/widget/StackView2$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v13, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 1751
    iget-object v9, p0, Landroid/widget/StackView2$LayoutParams;->mView:Landroid/view/View;

    iget-object v10, p0, Landroid/widget/StackView2$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v9, v10}, Landroid/widget/StackView2$LayoutParams;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1753
    .end local v1           #bottom:I
    .end local v3           #left:I
    .end local v4           #right:I
    .end local v5           #top:I
    .end local v7           #xoffset:F
    .end local v8           #yoffset:F
    :cond_bb
    return-void
.end method

.method public setVerticalOffset(I)V
    .registers 3
    .parameter "newVerticalOffset"

    .prologue
    .line 1718
    iget v0, p0, Landroid/widget/StackView2$LayoutParams;->horizontalOffset:I

    invoke-virtual {p0, v0, p1}, Landroid/widget/StackView2$LayoutParams;->setOffsets(II)V

    .line 1719
    return-void
.end method
