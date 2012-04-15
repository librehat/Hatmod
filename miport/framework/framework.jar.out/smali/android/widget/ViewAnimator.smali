.class public Landroid/widget/ViewAnimator;
.super Landroid/widget/FrameLayout;
.source "ViewAnimator.java"


# instance fields
.field mAnimateFirstTime:Z

.field mFirstTime:Z

.field mInAnimation:Landroid/view/animation/Animation;

.field mOutAnimation:Landroid/view/animation/Animation;

.field mWhichChild:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 39
    iput-boolean v1, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 41
    iput-boolean v1, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ViewAnimator;->initViewAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v4, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 39
    iput-boolean v5, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 41
    iput-boolean v5, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    .line 54
    sget-object v3, Lcom/android/internal/R$styleable;->ViewAnimator:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 56
    .local v2, resource:I
    if-lez v2, :cond_1a

    .line 57
    invoke-virtual {p0, p1, v2}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    .line 60
    :cond_1a
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 61
    if-lez v2, :cond_23

    .line 62
    invoke-virtual {p0, p1, v2}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    .line 65
    :cond_23
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 66
    .local v1, flag:Z
    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->setAnimateFirstView(Z)V

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;->initViewAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method private initViewAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    .line 78
    if-nez p2, :cond_6

    .line 80
    iput-boolean v3, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 92
    :goto_5
    return-void

    .line 86
    :cond_6
    sget-object v2, Lcom/android/internal/R$styleable;->FrameLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 90
    .local v1, measureAllChildren:Z
    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->setMeasureAllChildren(Z)V

    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_5
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 182
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 183
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 188
    :goto_e
    return-void

    .line 186
    :cond_f
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e
.end method

.method public getBaseline()I
    .registers 2

    .prologue
    .line 338
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-super {p0}, Landroid/widget/FrameLayout;->getBaseline()I

    move-result v0

    goto :goto_e
.end method

.method public getCurrentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 248
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayedChild()I
    .registers 2

    .prologue
    .line 120
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    return v0
.end method

.method public getInAnimation()Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getOutAnimation()Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public removeAllViews()V
    .registers 2

    .prologue
    .line 192
    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 195
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 200
    .local v0, index:I
    if-ltz v0, :cond_9

    .line 201
    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->removeViewAt(I)V

    .line 203
    :cond_9
    return-void
.end method

.method public removeViewAt(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 207
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 208
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    .line 209
    .local v0, childCount:I
    if-nez v0, :cond_10

    .line 210
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 211
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 219
    :cond_f
    :goto_f
    return-void

    .line 212
    :cond_10
    iget v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    if-lt v1, v0, :cond_1a

    .line 214
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_f

    .line 215
    :cond_1a
    iget v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    if-ne v1, p1, :cond_f

    .line 217
    iget v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_f
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->removeView(Landroid/view/View;)V

    .line 223
    return-void
.end method

.method public removeViews(II)V
    .registers 5
    .parameter "start"
    .parameter "count"

    .prologue
    .line 226
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeViews(II)V

    .line 227
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    if-nez v0, :cond_10

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 234
    :cond_f
    :goto_f
    return-void

    .line 230
    :cond_10
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    if-lt v0, p1, :cond_f

    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    add-int v1, p1, p2

    if-ge v0, v1, :cond_f

    .line 232
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_f
.end method

.method public removeViewsInLayout(II)V
    .registers 3
    .parameter "start"
    .parameter "count"

    .prologue
    .line 237
    invoke-virtual {p0, p1, p2}, Landroid/widget/ViewAnimator;->removeViews(II)V

    .line 238
    return-void
.end method

.method public setAnimateFirstView(Z)V
    .registers 2
    .parameter "animate"

    .prologue
    .line 333
    iput-boolean p1, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    .line 334
    return-void
.end method

.method public setDisplayedChild(I)V
    .registers 4
    .parameter "whichChild"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 101
    iput p1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 102
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_1e

    .line 103
    iput v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 107
    :cond_b
    :goto_b
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    .line 109
    .local v0, hasFocus:Z
    :cond_12
    iget v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->showOnly(I)V

    .line 110
    if-eqz v0, :cond_1d

    .line 112
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->requestFocus(I)Z

    .line 114
    :cond_1d
    return-void

    .line 104
    .end local v0           #hasFocus:Z
    :cond_1e
    if-gez p1, :cond_b

    .line 105
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    goto :goto_b
.end method

.method public setInAnimation(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "resourceID"

    .prologue
    .line 309
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 310
    return-void
.end method

.method public setInAnimation(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "inAnimation"

    .prologue
    .line 272
    iput-object p1, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    .line 273
    return-void
.end method

.method public setOutAnimation(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "resourceID"

    .prologue
    .line 322
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 323
    return-void
.end method

.method public setOutAnimation(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "outAnimation"

    .prologue
    .line 296
    iput-object p1, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    .line 297
    return-void
.end method

.method public showNext()V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 128
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 129
    return-void
.end method

.method showOnly(I)V
    .registers 4
    .parameter "childIndex"

    .prologue
    .line 176
    iget-boolean v1, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    if-eqz v1, :cond_d

    :cond_8
    const/4 v0, 0x1

    .line 177
    .local v0, animate:Z
    :goto_9
    invoke-virtual {p0, p1, v0}, Landroid/widget/ViewAnimator;->showOnly(IZ)V

    .line 178
    return-void

    .line 176
    .end local v0           #animate:Z
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method showOnly(IZ)V
    .registers 9
    .parameter "childIndex"
    .parameter "animate"

    .prologue
    const/4 v5, 0x0

    .line 150
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v1

    .line 151
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    if-ge v2, v1, :cond_44

    .line 152
    invoke-virtual {p0, v2}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 153
    .local v0, child:Landroid/view/View;
    if-ne v2, p1, :cond_21

    .line 154
    if-eqz p2, :cond_19

    iget-object v3, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_19

    .line 155
    iget-object v3, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 157
    :cond_19
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iput-boolean v5, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 151
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 160
    :cond_21
    if-eqz p2, :cond_38

    iget-object v3, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_38

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_38

    .line 161
    iget-object v3, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 164
    :cond_32
    :goto_32
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1e

    .line 162
    :cond_38
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    if-ne v3, v4, :cond_32

    .line 163
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_32

    .line 167
    .end local v0           #child:Landroid/view/View;
    :cond_44
    return-void
.end method

.method public showPrevious()V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 136
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 137
    return-void
.end method
