.class public Landroid/view/FocusFinder;
.super Ljava/lang/Object;
.source "FocusFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FocusFinder$SequentialFocusComparator;
    }
.end annotation


# static fields
.field private static tlFocusFinder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/FocusFinder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mBestCandidateRect:Landroid/graphics/Rect;

.field mFocusedRect:Landroid/graphics/Rect;

.field mOtherRect:Landroid/graphics/Rect;

.field mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Landroid/view/FocusFinder$1;

    invoke-direct {v0}, Landroid/view/FocusFinder$1;-><init>()V

    sput-object v0, Landroid/view/FocusFinder;->tlFocusFinder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    .line 49
    new-instance v0, Landroid/view/FocusFinder$SequentialFocusComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/FocusFinder$SequentialFocusComparator;-><init>(Landroid/view/FocusFinder$1;)V

    iput-object v0, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/FocusFinder$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/view/FocusFinder;-><init>()V

    return-void
.end method

.method private findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .registers 15
    .parameter "root"
    .parameter "focused"
    .parameter "focusedRect"
    .parameter "direction"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 114
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 115
    .local v3, focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 193
    :goto_c
    return-object v7

    .line 120
    :cond_d
    const/4 v8, 0x2

    if-eq p4, v8, :cond_13

    const/4 v8, 0x1

    if-ne p4, v8, :cond_72

    .line 121
    :cond_13
    if-eqz p2, :cond_1e

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1e

    .line 124
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_1e
    :try_start_1e
    iget-object v8, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    invoke-virtual {v8, p1}, Landroid/view/FocusFinder$SequentialFocusComparator;->setRoot(Landroid/view/ViewGroup;)V

    .line 130
    iget-object v8, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    invoke-static {v3, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_46

    .line 132
    iget-object v8, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    invoke-virtual {v8}, Landroid/view/FocusFinder$SequentialFocusComparator;->recycle()V

    .line 135
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 136
    .local v1, count:I
    packed-switch p4, :pswitch_data_e2

    goto :goto_c

    .line 147
    :pswitch_35
    if-eqz p2, :cond_69

    .line 148
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 149
    .local v6, position:I
    if-lez v6, :cond_69

    .line 150
    add-int/lit8 v7, v6, -0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    goto :goto_c

    .line 132
    .end local v1           #count:I
    .end local v6           #position:I
    :catchall_46
    move-exception v7

    iget-object v8, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    invoke-virtual {v8}, Landroid/view/FocusFinder$SequentialFocusComparator;->recycle()V

    throw v7

    .line 138
    .restart local v1       #count:I
    :pswitch_4d
    if-eqz p2, :cond_62

    .line 139
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v6

    .line 140
    .restart local v6       #position:I
    if-ltz v6, :cond_62

    add-int/lit8 v7, v6, 0x1

    if-ge v7, v1, :cond_62

    .line 141
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    goto :goto_c

    .line 144
    .end local v6           #position:I
    :cond_62
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    goto :goto_c

    .line 153
    :cond_69
    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    goto :goto_c

    .line 160
    .end local v1           #count:I
    :cond_72
    iget-object v7, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 161
    sparse-switch p4, :sswitch_data_ea

    .line 175
    :goto_7a
    const/4 v0, 0x0

    .line 177
    .local v0, closest:Landroid/view/View;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 178
    .local v5, numFocusables:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_80
    if-ge v4, v5, :cond_de

    .line 179
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 182
    .local v2, focusable:Landroid/view/View;
    if-eq v2, p2, :cond_8c

    if-ne v2, p1, :cond_c1

    .line 178
    :cond_8c
    :goto_8c
    add-int/lit8 v4, v4, 0x1

    goto :goto_80

    .line 163
    .end local v0           #closest:Landroid/view/View;
    .end local v2           #focusable:Landroid/view/View;
    .end local v4           #i:I
    .end local v5           #numFocusables:I
    :sswitch_8f
    iget-object v7, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_7a

    .line 166
    :sswitch_9b
    iget-object v7, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    neg-int v8, v8

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_7a

    .line 169
    :sswitch_a8
    iget-object v7, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v9, v8}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_7a

    .line 172
    :sswitch_b4
    iget-object v7, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    neg-int v8, v8

    invoke-virtual {v7, v9, v8}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_7a

    .line 185
    .restart local v0       #closest:Landroid/view/View;
    .restart local v2       #focusable:Landroid/view/View;
    .restart local v4       #i:I
    .restart local v5       #numFocusables:I
    :cond_c1
    iget-object v7, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 186
    iget-object v7, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v7}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 188
    iget-object v7, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p4, p3, v7, v8}, Landroid/view/FocusFinder;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 189
    iget-object v7, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 190
    move-object v0, v2

    goto :goto_8c

    .end local v2           #focusable:Landroid/view/View;
    :cond_de
    move-object v7, v0

    .line 193
    goto/16 :goto_c

    .line 136
    nop

    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_35
        :pswitch_4d
    .end packed-switch

    .line 161
    :sswitch_data_ea
    .sparse-switch
        0x11 -> :sswitch_8f
        0x21 -> :sswitch_a8
        0x42 -> :sswitch_9b
        0x82 -> :sswitch_b4
    .end sparse-switch
.end method

.method public static getInstance()Landroid/view/FocusFinder;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Landroid/view/FocusFinder;->tlFocusFinder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/FocusFinder;

    return-object v0
.end method

.method private isTouchCandidate(IILandroid/graphics/Rect;I)Z
    .registers 8
    .parameter "x"
    .parameter "y"
    .parameter "destRect"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 514
    sparse-switch p4, :sswitch_data_46

    .line 524
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :sswitch_d
    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-gt v2, p1, :cond_1a

    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-gt v2, p2, :cond_1a

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v2, :cond_1a

    .line 522
    :cond_19
    :goto_19
    return v0

    :cond_1a
    move v0, v1

    .line 516
    goto :goto_19

    .line 518
    :sswitch_1c
    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-lt v2, p1, :cond_28

    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-gt v2, p2, :cond_28

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    if-le p2, v2, :cond_19

    :cond_28
    move v0, v1

    goto :goto_19

    .line 520
    :sswitch_2a
    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-gt v2, p2, :cond_36

    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-gt v2, p1, :cond_36

    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-le p1, v2, :cond_19

    :cond_36
    move v0, v1

    goto :goto_19

    .line 522
    :sswitch_38
    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-lt v2, p2, :cond_44

    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-gt v2, p1, :cond_44

    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-le p1, v2, :cond_19

    :cond_44
    move v0, v1

    goto :goto_19

    .line 514
    :sswitch_data_46
    .sparse-switch
        0x11 -> :sswitch_d
        0x21 -> :sswitch_2a
        0x42 -> :sswitch_1c
        0x82 -> :sswitch_38
    .end sparse-switch
.end method

.method static majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .parameter "direction"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .parameter "direction"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 363
    sparse-switch p0, :sswitch_data_24

    .line 373
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :sswitch_b
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 371
    :goto_10
    return v0

    .line 367
    :sswitch_11
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_10

    .line 369
    :sswitch_17
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_10

    .line 371
    :sswitch_1d
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_10

    .line 363
    nop

    :sswitch_data_24
    .sparse-switch
        0x11 -> :sswitch_b
        0x21 -> :sswitch_17
        0x42 -> :sswitch_11
        0x82 -> :sswitch_1d
    .end sparse-switch
.end method

.method static majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .parameter "direction"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 384
    const/4 v0, 0x1

    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .parameter "direction"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 388
    sparse-switch p0, :sswitch_data_24

    .line 398
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :sswitch_b
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 396
    :goto_10
    return v0

    .line 392
    :sswitch_11
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_10

    .line 394
    :sswitch_17
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    goto :goto_10

    .line 396
    :sswitch_1d
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_10

    .line 388
    nop

    :sswitch_data_24
    .sparse-switch
        0x11 -> :sswitch_b
        0x21 -> :sswitch_17
        0x42 -> :sswitch_11
        0x82 -> :sswitch_1d
    .end sparse-switch
.end method

.method static minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 6
    .parameter "direction"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 411
    sparse-switch p0, :sswitch_data_3c

    .line 425
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :sswitch_b
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 421
    :goto_22
    return v0

    :sswitch_23
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_22

    .line 411
    nop

    :sswitch_data_3c
    .sparse-switch
        0x11 -> :sswitch_b
        0x21 -> :sswitch_23
        0x42 -> :sswitch_b
        0x82 -> :sswitch_23
    .end sparse-switch
.end method


# virtual methods
.method beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 11
    .parameter "direction"
    .parameter "source"
    .parameter "rect1"
    .parameter "rect2"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 246
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    .line 247
    .local v0, rect1InSrcBeam:Z
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    .line 250
    .local v1, rect2InSrcBeam:Z
    if-nez v1, :cond_e

    if-nez v0, :cond_10

    :cond_e
    move v2, v3

    .line 273
    :cond_f
    :goto_f
    return v2

    .line 260
    :cond_10
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 265
    const/16 v4, 0x11

    if-eq p1, v4, :cond_f

    const/16 v4, 0x42

    if-eq p1, v4, :cond_f

    .line 273
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v4

    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v5

    if-lt v4, v5, :cond_f

    move v2, v3

    goto :goto_f
.end method

.method beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 8
    .parameter "direction"
    .parameter "rect1"
    .parameter "rect2"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 323
    sparse-switch p1, :sswitch_data_2a

    .line 331
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :sswitch_d
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_1a

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_1a

    .line 329
    :cond_19
    :goto_19
    return v0

    :cond_1a
    move v0, v1

    .line 326
    goto :goto_19

    .line 329
    :sswitch_1c
    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_28

    iget v2, p3, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_19

    :cond_28
    move v0, v1

    goto :goto_19

    .line 323
    :sswitch_data_2a
    .sparse-switch
        0x11 -> :sswitch_d
        0x21 -> :sswitch_1c
        0x42 -> :sswitch_d
        0x82 -> :sswitch_1c
    .end sparse-switch
.end method

.method public findNearestTouchable(Landroid/view/ViewGroup;III[I)Landroid/view/View;
    .registers 21
    .parameter "root"
    .parameter "x"
    .parameter "y"
    .parameter "direction"
    .parameter "deltas"

    .prologue
    .line 441
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTouchables()Ljava/util/ArrayList;

    move-result-object v12

    .line 442
    .local v12, touchables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const v8, 0x7fffffff

    .line 443
    .local v8, minDistance:I
    const/4 v3, 0x0

    .line 445
    .local v3, closest:Landroid/view/View;
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 447
    .local v9, numTouchables:I
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v6

    .line 449
    .local v6, edgeSlop:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 450
    .local v4, closestBounds:Landroid/graphics/Rect;
    iget-object v11, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    .line 452
    .local v11, touchableBounds:Landroid/graphics/Rect;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_20
    if-ge v7, v9, :cond_88

    .line 453
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 456
    .local v10, touchable:Landroid/view/View;
    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 458
    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v13, v14}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 460
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {p0, v0, v1, v11, v2}, Landroid/view/FocusFinder;->isTouchCandidate(IILandroid/graphics/Rect;I)Z

    move-result v13

    if-nez v13, :cond_41

    .line 452
    :cond_3e
    :goto_3e
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    .line 464
    :cond_41
    const v5, 0x7fffffff

    .line 466
    .local v5, distance:I
    sparse-switch p4, :sswitch_data_8a

    .line 481
    :goto_47
    if-ge v5, v6, :cond_3e

    .line 483
    if-eqz v3, :cond_59

    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_59

    invoke-virtual {v11, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_3e

    if-ge v5, v8, :cond_3e

    .line 486
    :cond_59
    move v8, v5

    .line 487
    move-object v3, v10

    .line 488
    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 489
    sparse-switch p4, :sswitch_data_9c

    goto :goto_3e

    .line 491
    :sswitch_62
    const/4 v13, 0x0

    neg-int v14, v5

    aput v14, p5, v13

    goto :goto_3e

    .line 468
    :sswitch_67
    iget v13, v11, Landroid/graphics/Rect;->right:I

    sub-int v13, p2, v13

    add-int/lit8 v5, v13, 0x1

    .line 469
    goto :goto_47

    .line 471
    :sswitch_6e
    iget v5, v11, Landroid/graphics/Rect;->left:I

    .line 472
    goto :goto_47

    .line 474
    :sswitch_71
    iget v13, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v13, p3, v13

    add-int/lit8 v5, v13, 0x1

    .line 475
    goto :goto_47

    .line 477
    :sswitch_78
    iget v5, v11, Landroid/graphics/Rect;->top:I

    goto :goto_47

    .line 494
    :sswitch_7b
    const/4 v13, 0x0

    aput v5, p5, v13

    goto :goto_3e

    .line 497
    :sswitch_7f
    const/4 v13, 0x1

    neg-int v14, v5

    aput v14, p5, v13

    goto :goto_3e

    .line 500
    :sswitch_84
    const/4 v13, 0x1

    aput v5, p5, v13

    goto :goto_3e

    .line 506
    .end local v5           #distance:I
    .end local v10           #touchable:Landroid/view/View;
    :cond_88
    return-object v3

    .line 466
    nop

    :sswitch_data_8a
    .sparse-switch
        0x11 -> :sswitch_67
        0x21 -> :sswitch_71
        0x42 -> :sswitch_6e
        0x82 -> :sswitch_78
    .end sparse-switch

    .line 489
    :sswitch_data_9c
    .sparse-switch
        0x11 -> :sswitch_62
        0x21 -> :sswitch_7f
        0x42 -> :sswitch_7b
        0x82 -> :sswitch_84
    .end sparse-switch
.end method

.method public final findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .registers 11
    .parameter "root"
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 64
    if-eqz p2, :cond_2c

    .line 66
    invoke-virtual {p2, p1, p3}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 67
    .local v4, userSetNextFocus:Landroid/view/View;
    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Landroid/view/View;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {v4}, Landroid/view/View;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {v4}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 98
    .end local v4           #userSetNextFocus:Landroid/view/View;
    :cond_1a
    :goto_1a
    return-object v4

    .line 75
    .restart local v4       #userSetNextFocus:Landroid/view/View;
    :cond_1b
    iget-object v5, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 76
    iget-object v5, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 98
    .end local v4           #userSetNextFocus:Landroid/view/View;
    :goto_25
    iget-object v5, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v5, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v4

    goto :goto_1a

    .line 79
    :cond_2c
    sparse-switch p3, :sswitch_data_58

    goto :goto_25

    .line 91
    :sswitch_30
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    add-int v0, v5, v6

    .line 92
    .local v0, rootBottom:I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    add-int v2, v5, v6

    .line 93
    .local v2, rootRight:I
    iget-object v5, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v0, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_25

    .line 83
    .end local v0           #rootBottom:I
    .end local v2           #rootRight:I
    :sswitch_4a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    .line 84
    .local v3, rootTop:I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    .line 85
    .local v1, rootLeft:I
    iget-object v5, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v3, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_25

    .line 79
    :sswitch_data_58
    .sparse-switch
        0x1 -> :sswitch_30
        0x2 -> :sswitch_4a
        0x11 -> :sswitch_30
        0x21 -> :sswitch_30
        0x42 -> :sswitch_4a
        0x82 -> :sswitch_4a
    .end sparse-switch
.end method

.method public findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;
    .registers 5
    .parameter "root"
    .parameter "focusedRect"
    .parameter "direction"

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getWeightedDistanceFor(II)I
    .registers 5
    .parameter "majorAxisDistance"
    .parameter "minorAxisDistance"

    .prologue
    .line 283
    mul-int/lit8 v0, p1, 0xd

    mul-int/2addr v0, p1

    mul-int v1, p2, p2

    add-int/2addr v0, v1

    return v0
.end method

.method isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 10
    .parameter "direction"
    .parameter "source"
    .parameter "rect1"
    .parameter "rect2"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 210
    invoke-virtual {p0, p2, p3, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    .line 231
    :cond_9
    :goto_9
    return v0

    .line 216
    :cond_a
    invoke-virtual {p0, p2, p4, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 221
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 226
    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move v0, v1

    .line 227
    goto :goto_9

    .line 231
    :cond_1e
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/view/FocusFinder;->getWeightedDistanceFor(II)I

    move-result v2

    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/view/FocusFinder;->getWeightedDistanceFor(II)I

    move-result v3

    if-lt v2, v3, :cond_9

    move v0, v1

    goto :goto_9
.end method

.method isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .registers 8
    .parameter "srcRect"
    .parameter "destRect"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 296
    sparse-switch p3, :sswitch_data_5e

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :sswitch_d
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_19

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_20

    :cond_19
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_20

    .line 307
    :cond_1f
    :goto_1f
    return v0

    :cond_20
    move v0, v1

    .line 298
    goto :goto_1f

    .line 301
    :sswitch_22
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_2e

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_34

    :cond_2e
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_1f

    :cond_34
    move v0, v1

    goto :goto_1f

    .line 304
    :sswitch_36
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_42

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_48

    :cond_42
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_1f

    :cond_48
    move v0, v1

    goto :goto_1f

    .line 307
    :sswitch_4a
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_56

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_5c

    :cond_56
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_1f

    :cond_5c
    move v0, v1

    goto :goto_1f

    .line 296
    :sswitch_data_5e
    .sparse-switch
        0x11 -> :sswitch_d
        0x21 -> :sswitch_36
        0x42 -> :sswitch_22
        0x82 -> :sswitch_4a
    .end sparse-switch
.end method

.method isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 8
    .parameter "direction"
    .parameter "src"
    .parameter "dest"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 339
    sparse-switch p1, :sswitch_data_2e

    .line 349
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :sswitch_d
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_14

    .line 347
    :cond_13
    :goto_13
    return v0

    :cond_14
    move v0, v1

    .line 341
    goto :goto_13

    .line 343
    :sswitch_16
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_13

    move v0, v1

    goto :goto_13

    .line 345
    :sswitch_1e
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_13

    move v0, v1

    goto :goto_13

    .line 347
    :sswitch_26
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_13

    move v0, v1

    goto :goto_13

    .line 339
    :sswitch_data_2e
    .sparse-switch
        0x11 -> :sswitch_d
        0x21 -> :sswitch_1e
        0x42 -> :sswitch_16
        0x82 -> :sswitch_26
    .end sparse-switch
.end method
