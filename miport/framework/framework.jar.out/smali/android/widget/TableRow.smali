.class public Landroid/widget/TableRow;
.super Landroid/widget/LinearLayout;
.source "TableRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TableRow$1;,
        Landroid/widget/TableRow$ChildrenTracker;,
        Landroid/widget/TableRow$LayoutParams;
    }
.end annotation


# instance fields
.field private mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

.field private mColumnToChildIndex:Landroid/util/SparseIntArray;

.field private mColumnWidths:[I

.field private mConstrainedColumnWidths:[I

.field private mNumColumns:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TableRow;->mNumColumns:I

    .line 60
    invoke-direct {p0}, Landroid/widget/TableRow;->initTableRow()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TableRow;->mNumColumns:I

    .line 72
    invoke-direct {p0}, Landroid/widget/TableRow;->initTableRow()V

    .line 73
    return-void
.end method

.method static synthetic access$302(Landroid/widget/TableRow;Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    return-object p1
.end method

.method private initTableRow()V
    .registers 4

    .prologue
    .line 76
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 77
    .local v0, oldListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    new-instance v1, Landroid/widget/TableRow$ChildrenTracker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/TableRow$ChildrenTracker;-><init>(Landroid/widget/TableRow;Landroid/widget/TableRow$1;)V

    iput-object v1, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    .line 78
    if-eqz v0, :cond_11

    .line 79
    iget-object v1, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    invoke-static {v1, v0}, Landroid/widget/TableRow$ChildrenTracker;->access$100(Landroid/widget/TableRow$ChildrenTracker;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 81
    :cond_11
    iget-object v1, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 82
    return-void
.end method

.method private mapIndexAndColumns()V
    .registers 10

    .prologue
    .line 153
    iget-object v8, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    if-nez v8, :cond_38

    .line 154
    const/4 v6, 0x0

    .line 155
    .local v6, virtualCount:I
    invoke-virtual {p0}, Landroid/widget/TableRow;->getChildCount()I

    move-result v2

    .line 157
    .local v2, count:I
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v8, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    .line 158
    iget-object v1, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    .line 160
    .local v1, columnToChild:Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_13
    if-ge v3, v2, :cond_36

    .line 161
    invoke-virtual {p0, v3}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/TableRow$LayoutParams;

    .line 164
    .local v5, layoutParams:Landroid/widget/TableRow$LayoutParams;
    iget v8, v5, Landroid/widget/TableRow$LayoutParams;->column:I

    if-lt v8, v6, :cond_25

    .line 165
    iget v6, v5, Landroid/widget/TableRow$LayoutParams;->column:I

    .line 168
    :cond_25
    const/4 v4, 0x0

    .local v4, j:I
    :goto_26
    iget v8, v5, Landroid/widget/TableRow$LayoutParams;->span:I

    if-ge v4, v8, :cond_33

    .line 169
    add-int/lit8 v7, v6, 0x1

    .end local v6           #virtualCount:I
    .local v7, virtualCount:I
    invoke-virtual {v1, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 168
    add-int/lit8 v4, v4, 0x1

    move v6, v7

    .end local v7           #virtualCount:I
    .restart local v6       #virtualCount:I
    goto :goto_26

    .line 160
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 173
    .end local v0           #child:Landroid/view/View;
    .end local v4           #j:I
    .end local v5           #layoutParams:Landroid/widget/TableRow$LayoutParams;
    :cond_36
    iput v6, p0, Landroid/widget/TableRow;->mNumColumns:I

    .line 175
    .end local v1           #columnToChild:Landroid/util/SparseIntArray;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v6           #virtualCount:I
    :cond_38
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 369
    instance-of v0, p1, Landroid/widget/TableRow$LayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/widget/TableRow;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .prologue
    .line 361
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "x0"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableRow$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "x0"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3
    .parameter "x0"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableRow$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3
    .parameter "p"

    .prologue
    .line 377
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/TableRow$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableRow$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 351
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/TableRow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/TableRow$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .registers 5
    .parameter "child"
    .parameter "index"

    .prologue
    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow$LayoutParams;

    .line 258
    .local v0, layoutParams:Landroid/widget/TableRow$LayoutParams;
    iget v1, v0, Landroid/widget/TableRow$LayoutParams;->span:I

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method getColumnsWidths(I)[I
    .registers 12
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v9, 0x0

    .line 287
    invoke-virtual {p0}, Landroid/widget/TableRow;->getVirtualChildCount()I

    move-result v4

    .line 288
    .local v4, numColumns:I
    iget-object v7, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    if-eqz v7, :cond_e

    iget-object v7, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    array-length v7, v7

    if-eq v4, v7, :cond_12

    .line 289
    :cond_e
    new-array v7, v4, [I

    iput-object v7, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    .line 292
    :cond_12
    iget-object v1, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    .line 294
    .local v1, columnWidths:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_15
    if-ge v2, v4, :cond_61

    .line 295
    invoke-virtual {p0, v2}, Landroid/widget/TableRow;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 296
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_5e

    .line 297
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/TableRow$LayoutParams;

    .line 298
    .local v3, layoutParams:Landroid/widget/TableRow$LayoutParams;
    iget v7, v3, Landroid/widget/TableRow$LayoutParams;->span:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5b

    .line 300
    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    packed-switch v7, :pswitch_data_62

    .line 308
    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v8, 0x4000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 310
    .local v5, spec:I
    :goto_3d
    invoke-virtual {v0, v5, v5}, Landroid/view/View;->measure(II)V

    .line 312
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v6, v7, v8

    .line 314
    .local v6, width:I
    aput v6, v1, v2

    .line 294
    .end local v3           #layoutParams:Landroid/widget/TableRow$LayoutParams;
    .end local v5           #spec:I
    .end local v6           #width:I
    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 302
    .restart local v3       #layoutParams:Landroid/widget/TableRow$LayoutParams;
    :pswitch_50
    const/4 v7, -0x2

    invoke-static {p1, v9, v7}, Landroid/widget/TableRow;->getChildMeasureSpec(III)I

    move-result v5

    .line 303
    .restart local v5       #spec:I
    goto :goto_3d

    .line 305
    .end local v5           #spec:I
    :pswitch_56
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 306
    .restart local v5       #spec:I
    goto :goto_3d

    .line 316
    .end local v5           #spec:I
    :cond_5b
    aput v9, v1, v2

    goto :goto_4d

    .line 319
    .end local v3           #layoutParams:Landroid/widget/TableRow$LayoutParams;
    :cond_5e
    aput v9, v1, v2

    goto :goto_4d

    .line 323
    .end local v0           #child:Landroid/view/View;
    :cond_61
    return-object v1

    .line 300
    :pswitch_data_62
    .packed-switch -0x2
        :pswitch_50
        :pswitch_56
    .end packed-switch
.end method

.method getLocationOffset(Landroid/view/View;)I
    .registers 4
    .parameter "child"

    .prologue
    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow$LayoutParams;

    invoke-static {v0}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .registers 4
    .parameter "child"

    .prologue
    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow$LayoutParams;

    invoke-static {v0}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getVirtualChildAt(I)Landroid/view/View;
    .registers 5
    .parameter "i"

    .prologue
    const/4 v2, -0x1

    .line 129
    iget-object v1, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    if-nez v1, :cond_8

    .line 130
    invoke-direct {p0}, Landroid/widget/TableRow;->mapIndexAndColumns()V

    .line 133
    :cond_8
    iget-object v1, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 134
    .local v0, deflectedIndex:I
    if-eq v0, v2, :cond_15

    .line 135
    invoke-virtual {p0, v0}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 138
    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getVirtualChildCount()I
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    if-nez v0, :cond_7

    .line 147
    invoke-direct {p0}, Landroid/widget/TableRow;->mapIndexAndColumns()V

    .line 149
    :cond_7
    iget v0, p0, Landroid/widget/TableRow;->mNumColumns:I

    return v0
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 26
    .parameter "child"
    .parameter "childIndex"
    .parameter "widthMeasureSpec"
    .parameter "totalWidth"
    .parameter "heightMeasureSpec"
    .parameter "totalHeight"

    .prologue
    .line 192
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    if-eqz v14, :cond_ac

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/TableRow$LayoutParams;

    .line 195
    .local v11, lp:Landroid/widget/TableRow$LayoutParams;
    const/high16 v12, 0x4000

    .line 196
    .local v12, measureMode:I
    const/4 v5, 0x0

    .line 198
    .local v5, columnWidth:I
    iget v13, v11, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 199
    .local v13, span:I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    .line 200
    .local v6, constrainedColumnWidths:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_16
    if-ge v8, v13, :cond_20

    .line 201
    add-int v14, p2, v8

    aget v14, v6, v14

    add-int/2addr v5, v14

    .line 200
    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    .line 204
    :cond_20
    iget v7, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 205
    .local v7, gravity:I
    invoke-static {v7}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v9

    .line 207
    .local v9, isHorizontalGravity:Z
    if-eqz v9, :cond_2a

    .line 208
    const/high16 v12, -0x8000

    .line 214
    :cond_2a
    const/4 v14, 0x0

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v15, v5, v15

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v14, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 217
    .local v4, childWidthMeasureSpec:I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/View;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v14, v15

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v15

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v15

    add-int v14, v14, p6

    iget v15, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v0, p5

    invoke-static {v0, v14, v15}, Landroid/widget/TableRow;->getChildMeasureSpec(III)I

    move-result v2

    .line 221
    .local v2, childHeightMeasureSpec:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v2}, Landroid/view/View;->measure(II)V

    .line 223
    if-eqz v9, :cond_9a

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 225
    .local v3, childWidth:I
    invoke-static {v11}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v14

    const/4 v15, 0x1

    sub-int v16, v5, v3

    aput v16, v14, v15

    .line 227
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TableRow;->getResolvedLayoutDirection()I

    move-result v10

    .line 228
    .local v10, layoutDirection:I
    invoke-static {v7, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    .line 229
    .local v1, absoluteGravity:I
    and-int/lit8 v14, v1, 0x7

    packed-switch v14, :pswitch_data_b0

    .line 248
    .end local v1           #absoluteGravity:I
    .end local v2           #childHeightMeasureSpec:I
    .end local v3           #childWidth:I
    .end local v4           #childWidthMeasureSpec:I
    .end local v5           #columnWidth:I
    .end local v6           #constrainedColumnWidths:[I
    .end local v7           #gravity:I
    .end local v8           #i:I
    .end local v9           #isHorizontalGravity:Z
    .end local v10           #layoutDirection:I
    .end local v11           #lp:Landroid/widget/TableRow$LayoutParams;
    .end local v12           #measureMode:I
    .end local v13           #span:I
    :goto_77
    :pswitch_77
    return-void

    .line 234
    .restart local v1       #absoluteGravity:I
    .restart local v2       #childHeightMeasureSpec:I
    .restart local v3       #childWidth:I
    .restart local v4       #childWidthMeasureSpec:I
    .restart local v5       #columnWidth:I
    .restart local v6       #constrainedColumnWidths:[I
    .restart local v7       #gravity:I
    .restart local v8       #i:I
    .restart local v9       #isHorizontalGravity:Z
    .restart local v10       #layoutDirection:I
    .restart local v11       #lp:Landroid/widget/TableRow$LayoutParams;
    .restart local v12       #measureMode:I
    .restart local v13       #span:I
    :pswitch_78
    invoke-static {v11}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v11}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v16

    const/16 v17, 0x1

    aget v16, v16, v17

    aput v16, v14, v15

    goto :goto_77

    .line 237
    :pswitch_88
    invoke-static {v11}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v11}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v16

    const/16 v17, 0x1

    aget v16, v16, v17

    div-int/lit8 v16, v16, 0x2

    aput v16, v14, v15

    goto :goto_77

    .line 241
    .end local v1           #absoluteGravity:I
    .end local v3           #childWidth:I
    .end local v10           #layoutDirection:I
    :cond_9a
    invoke-static {v11}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v11}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v16

    const/16 v17, 0x1

    const/16 v18, 0x0

    aput v18, v16, v17

    aput v18, v14, v15

    goto :goto_77

    .line 245
    .end local v2           #childHeightMeasureSpec:I
    .end local v4           #childWidthMeasureSpec:I
    .end local v5           #columnWidth:I
    .end local v6           #constrainedColumnWidths:[I
    .end local v7           #gravity:I
    .end local v8           #i:I
    .end local v9           #isHorizontalGravity:Z
    .end local v11           #lp:Landroid/widget/TableRow$LayoutParams;
    .end local v12           #measureMode:I
    .end local v13           #span:I
    :cond_ac
    invoke-super/range {p0 .. p6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    goto :goto_77

    .line 229
    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_88
        :pswitch_77
        :pswitch_77
        :pswitch_77
        :pswitch_78
    .end packed-switch
.end method

.method measureNullChild(I)I
    .registers 3
    .parameter "childIndex"

    .prologue
    .line 182
    iget-object v0, p0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    aget v0, v0, p1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/widget/TableRow;->layoutHorizontal()V

    .line 122
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 112
    invoke-virtual {p0, p1, p2}, Landroid/widget/TableRow;->measureHorizontal(II)V

    .line 113
    return-void
.end method

.method setColumnCollapsed(IZ)V
    .registers 5
    .parameter "columnIndex"
    .parameter "collapsed"

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_d

    .line 102
    if-eqz p2, :cond_e

    const/16 v1, 0x8

    :goto_a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :cond_d
    return-void

    .line 102
    :cond_e
    const/4 v1, 0x0

    goto :goto_a
.end method

.method setColumnsWidthConstraints([I)V
    .registers 4
    .parameter "columnWidths"

    .prologue
    .line 338
    if-eqz p1, :cond_9

    array-length v0, p1

    invoke-virtual {p0}, Landroid/widget/TableRow;->getVirtualChildCount()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 339
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "columnWidths should be >= getVirtualChildCount()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_11
    iput-object p1, p0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    .line 344
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    invoke-static {v0, p1}, Landroid/widget/TableRow$ChildrenTracker;->access$100(Landroid/widget/TableRow$ChildrenTracker;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 90
    return-void
.end method
