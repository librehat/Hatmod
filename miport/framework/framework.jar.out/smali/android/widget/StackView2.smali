.class public Landroid/widget/StackView2;
.super Landroid/widget/AdapterViewAnimator;
.source "StackView2.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/StackView2$HolographicHelper;,
        Landroid/widget/StackView2$LayoutParams;,
        Landroid/widget/StackView2$StackSlider;,
        Landroid/widget/StackView2$StackFrame;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:I = 0x190

.field private static final FRAME_PADDING:I = 0x4

.field private static final GESTURE_NONE:I = 0x0

.field private static final GESTURE_SLIDE_DOWN:I = 0x2

.field private static final GESTURE_SLIDE_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field private static final ITEMS_SLIDE_DOWN:I = 0x1

.field private static final ITEMS_SLIDE_UP:I = 0x0

.field private static final MINIMUM_ANIMATION_DURATION:I = 0x32

.field private static final MIN_TIME_BETWEEN_INTERACTION_AND_AUTOADVANCE:I = 0x1388

.field private static final MIN_TIME_BETWEEN_SCROLLS:J = 0x64L

.field private static final NUM_ACTIVE_VIEWS:I = 0x6

.field private static final PERSPECTIVE_SCALE_FACTOR:F = 0.8f

.field private static final PERSPECTIVE_SHIFT_FACTOR_X:F = 0.1f

.field private static final PERSPECTIVE_SHIFT_FACTOR_Y:F = 0.1f

.field private static final SLIDE_UP_RATIO:F = 0.7f

.field private static final STACK_RELAYOUT_DURATION:I = 0x64

.field private static final SWIPE_THRESHOLD_RATIO:F = 0.2f

.field private static sHolographicHelper:Landroid/widget/StackView2$HolographicHelper;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivePointerId:I

.field private mClickColor:I

.field private mClickFeedback:Landroid/widget/ImageView;

.field private mClickFeedbackIsValid:Z

.field private mFirstLayoutHappened:Z

.field private mFramePadding:I

.field private mInitialX:F

.field private mInitialY:F

.field private mLastInteractionTime:J

.field private mLastScrollTime:J

.field private mMaximumVelocity:I

.field private mNewPerspectiveShiftX:F

.field private mNewPerspectiveShiftY:F

.field private mPerspectiveShiftX:F

.field private mPerspectiveShiftY:F

.field private mResOutColor:I

.field private mSlideAmount:I

.field private mStackMode:I

.field private mStackSlider:Landroid/widget/StackView2$StackSlider;

.field private mStackSlider1:Landroid/widget/StackView2$StackSlider;

.field private mStackSlider2:Landroid/widget/StackView2$StackSlider;

.field private mStackSlider3:Landroid/widget/StackView2$StackSlider;

.field private mStackSlider4:Landroid/widget/StackView2$StackSlider;

.field private mStackSlider5:Landroid/widget/StackView2$StackSlider;

.field private mSwipeGestureType:I

.field private mSwipeThreshold:I

.field private final mTouchRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTransitionIsSetup:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mYVelocity:I

.field private final stackInvalidateRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/StackView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 170
    const v0, 0x10103b9

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/StackView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    const/4 v3, 0x0

    .line 177
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const-string v1, "StackView2"

    iput-object v1, p0, Landroid/widget/StackView2;->TAG:Ljava/lang/String;

    .line 117
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/StackView2;->mTouchRect:Landroid/graphics/Rect;

    .line 131
    iput v3, p0, Landroid/widget/StackView2;->mYVelocity:I

    .line 132
    iput v3, p0, Landroid/widget/StackView2;->mSwipeGestureType:I

    .line 138
    iput-boolean v3, p0, Landroid/widget/StackView2;->mTransitionIsSetup:Z

    .line 145
    iput-boolean v3, p0, Landroid/widget/StackView2;->mClickFeedbackIsValid:Z

    .line 147
    iput-boolean v3, p0, Landroid/widget/StackView2;->mFirstLayoutHappened:Z

    .line 148
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/widget/StackView2;->mLastInteractionTime:J

    .line 152
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/StackView2;->stackInvalidateRect:Landroid/graphics/Rect;

    .line 178
    sget-object v1, Lcom/android/internal/R$styleable;->StackView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 181
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/StackView2;->mResOutColor:I

    .line 183
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/StackView2;->mClickColor:I

    .line 186
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    invoke-direct {p0}, Landroid/widget/StackView2;->initStackView()V

    .line 188
    return-void
.end method

.method private CancelStackSlider(Landroid/widget/StackView2$StackSlider;I)V
    .registers 4
    .parameter "mStkSlider"
    .parameter "index"

    .prologue
    .line 1281
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/StackView2$StackSlider;->setYProgress(F)V

    .line 1282
    return-void
.end method

.method static synthetic access$000(Landroid/widget/StackView2;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Landroid/widget/StackView2;->mPerspectiveShiftY:F

    return v0
.end method

.method static synthetic access$100(Landroid/widget/StackView2;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Landroid/widget/StackView2;->mStackMode:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/StackView2;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Landroid/widget/StackView2;->mSlideAmount:I

    return v0
.end method

.method private beginGestureIfNeeded(F)V
    .registers 15
    .parameter "deltaY"

    .prologue
    .line 927
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v11, v11

    iget v12, p0, Landroid/widget/StackView2;->mTouchSlop:I

    if-le v11, v12, :cond_1e

    iget v11, p0, Landroid/widget/StackView2;->mSwipeGestureType:I

    if-nez v11, :cond_1e

    .line 928
    const/4 v11, 0x0

    cmpg-float v11, p1, v11

    if-gez v11, :cond_1f

    const/4 v5, 0x1

    .line 929
    .local v5, swipeGestureType:I
    :goto_13
    invoke-virtual {p0}, Landroid/widget/StackView2;->cancelLongPress()V

    .line 930
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Landroid/widget/StackView2;->requestDisallowInterceptTouchEvent(Z)V

    .line 932
    iget-object v11, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v11, :cond_21

    .line 983
    .end local v5           #swipeGestureType:I
    :cond_1e
    :goto_1e
    return-void

    .line 928
    :cond_1f
    const/4 v5, 0x2

    goto :goto_13

    .line 933
    .restart local v5       #swipeGestureType:I
    :cond_21
    invoke-virtual {p0}, Landroid/widget/StackView2;->getCount()I

    move-result v1

    .line 936
    .local v1, adapterCount:I
    iget v11, p0, Landroid/widget/StackView2;->mStackMode:I

    if-nez v11, :cond_b4

    .line 937
    const/4 v11, 0x2

    if-ne v5, v11, :cond_b1

    const/4 v0, 0x0

    .line 942
    .local v0, activeIndex:I
    :goto_2d
    iget-boolean v11, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v11, :cond_bc

    const/4 v11, 0x1

    if-ne v1, v11, :cond_bc

    iget v11, p0, Landroid/widget/StackView2;->mStackMode:I

    if-nez v11, :cond_3b

    const/4 v11, 0x1

    if-eq v5, v11, :cond_43

    :cond_3b
    iget v11, p0, Landroid/widget/StackView2;->mStackMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_bc

    const/4 v11, 0x2

    if-ne v5, v11, :cond_bc

    :cond_43
    const/4 v3, 0x1

    .line 945
    .local v3, endOfStack:Z
    :goto_44
    iget-boolean v11, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v11, :cond_be

    const/4 v11, 0x1

    if-ne v1, v11, :cond_be

    iget v11, p0, Landroid/widget/StackView2;->mStackMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_53

    const/4 v11, 0x1

    if-eq v5, v11, :cond_5a

    :cond_53
    iget v11, p0, Landroid/widget/StackView2;->mStackMode:I

    if-nez v11, :cond_be

    const/4 v11, 0x2

    if-ne v5, v11, :cond_be

    :cond_5a
    const/4 v2, 0x1

    .line 950
    .local v2, beginningOfStack:Z
    :goto_5b
    iget-boolean v11, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v11, :cond_c0

    if-nez v2, :cond_c0

    if-nez v3, :cond_c0

    .line 951
    const/4 v4, 0x0

    .line 961
    .local v4, stackMode:I
    :goto_64
    if-nez v4, :cond_d9

    const/4 v11, 0x1

    :goto_67
    iput-boolean v11, p0, Landroid/widget/StackView2;->mTransitionIsSetup:Z

    .line 965
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Landroid/widget/StackView2;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v6

    .line 966
    .local v6, v1:Landroid/view/View;
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Landroid/widget/StackView2;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v7

    .line 967
    .local v7, v2:Landroid/view/View;
    const/4 v11, 0x3

    invoke-virtual {p0, v11}, Landroid/widget/StackView2;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v8

    .line 968
    .local v8, v3:Landroid/view/View;
    const/4 v11, 0x4

    invoke-virtual {p0, v11}, Landroid/widget/StackView2;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v9

    .line 969
    .local v9, v4:Landroid/view/View;
    const/4 v11, 0x5

    invoke-virtual {p0, v11}, Landroid/widget/StackView2;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v10

    .line 971
    .local v10, v5:Landroid/view/View;
    if-eqz v6, :cond_1e

    if-eqz v7, :cond_1e

    if-eqz v8, :cond_1e

    if-eqz v9, :cond_1e

    if-eqz v10, :cond_1e

    .line 974
    const/4 v11, 0x0

    iget-object v12, p0, Landroid/widget/StackView2;->mStackSlider1:Landroid/widget/StackView2$StackSlider;

    invoke-direct {p0, v6, v4, v11, v12}, Landroid/widget/StackView2;->setupStackSlider2(Landroid/view/View;IZLandroid/widget/StackView2$StackSlider;)V

    .line 975
    const/4 v11, 0x0

    iget-object v12, p0, Landroid/widget/StackView2;->mStackSlider2:Landroid/widget/StackView2$StackSlider;

    invoke-direct {p0, v7, v4, v11, v12}, Landroid/widget/StackView2;->setupStackSlider2(Landroid/view/View;IZLandroid/widget/StackView2$StackSlider;)V

    .line 976
    const/4 v11, 0x0

    iget-object v12, p0, Landroid/widget/StackView2;->mStackSlider5:Landroid/widget/StackView2$StackSlider;

    invoke-direct {p0, v10, v4, v11, v12}, Landroid/widget/StackView2;->setupStackSlider2(Landroid/view/View;IZLandroid/widget/StackView2$StackSlider;)V

    .line 977
    const/4 v11, 0x0

    iget-object v12, p0, Landroid/widget/StackView2;->mStackSlider4:Landroid/widget/StackView2$StackSlider;

    invoke-direct {p0, v9, v4, v11, v12}, Landroid/widget/StackView2;->setupStackSlider2(Landroid/view/View;IZLandroid/widget/StackView2$StackSlider;)V

    .line 978
    const/4 v11, 0x1

    iget-object v12, p0, Landroid/widget/StackView2;->mStackSlider3:Landroid/widget/StackView2$StackSlider;

    invoke-direct {p0, v8, v4, v11, v12}, Landroid/widget/StackView2;->setupStackSlider2(Landroid/view/View;IZLandroid/widget/StackView2$StackSlider;)V

    .line 980
    iput v5, p0, Landroid/widget/StackView2;->mSwipeGestureType:I

    .line 981
    invoke-virtual {p0}, Landroid/widget/StackView2;->cancelHandleClick()V

    goto/16 :goto_1e

    .line 937
    .end local v0           #activeIndex:I
    .end local v2           #beginningOfStack:Z
    .end local v3           #endOfStack:Z
    .end local v4           #stackMode:I
    .end local v6           #v1:Landroid/view/View;
    .end local v7           #v2:Landroid/view/View;
    .end local v8           #v3:Landroid/view/View;
    .end local v9           #v4:Landroid/view/View;
    .end local v10           #v5:Landroid/view/View;
    :cond_b1
    const/4 v0, 0x1

    goto/16 :goto_2d

    .line 939
    :cond_b4
    const/4 v11, 0x2

    if-ne v5, v11, :cond_ba

    const/4 v0, 0x1

    .restart local v0       #activeIndex:I
    :goto_b8
    goto/16 :goto_2d

    .end local v0           #activeIndex:I
    :cond_ba
    const/4 v0, 0x0

    goto :goto_b8

    .line 942
    .restart local v0       #activeIndex:I
    :cond_bc
    const/4 v3, 0x0

    goto :goto_44

    .line 945
    .restart local v3       #endOfStack:Z
    :cond_be
    const/4 v2, 0x0

    goto :goto_5b

    .line 952
    .restart local v2       #beginningOfStack:Z
    :cond_c0
    iget v11, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    add-int/2addr v11, v0

    const/4 v12, -0x1

    if-eq v11, v12, :cond_c8

    if-eqz v2, :cond_cc

    .line 953
    :cond_c8
    add-int/lit8 v0, v0, 0x1

    .line 954
    const/4 v4, 0x1

    .restart local v4       #stackMode:I
    goto :goto_64

    .line 955
    .end local v4           #stackMode:I
    :cond_cc
    iget v11, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    add-int/2addr v11, v0

    add-int/lit8 v12, v1, -0x1

    if-eq v11, v12, :cond_d5

    if-eqz v3, :cond_d7

    .line 956
    :cond_d5
    const/4 v4, 0x2

    .restart local v4       #stackMode:I
    goto :goto_64

    .line 958
    .end local v4           #stackMode:I
    :cond_d7
    const/4 v4, 0x0

    .restart local v4       #stackMode:I
    goto :goto_64

    .line 961
    :cond_d9
    const/4 v11, 0x0

    goto :goto_67
.end method

.method private handlePointerUp(Landroid/view/MotionEvent;)V
    .registers 13
    .parameter "ev"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1174
    iget v3, p0, Landroid/widget/StackView2;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 1175
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 1176
    .local v1, newY:F
    iget v3, p0, Landroid/widget/StackView2;->mInitialY:F

    sub-float v3, v1, v3

    float-to-int v0, v3

    .line 1177
    .local v0, deltaY:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/StackView2;->mLastInteractionTime:J

    .line 1179
    iget-object v3, p0, Landroid/widget/StackView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_33

    .line 1180
    iget-object v3, p0, Landroid/widget/StackView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v5, p0, Landroid/widget/StackView2;->mMaximumVelocity:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1181
    iget-object v3, p0, Landroid/widget/StackView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Landroid/widget/StackView2;->mActivePointerId:I

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/StackView2;->mYVelocity:I

    .line 1184
    :cond_33
    iget-object v3, p0, Landroid/widget/StackView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_3f

    .line 1185
    iget-object v3, p0, Landroid/widget/StackView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 1186
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/StackView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1189
    :cond_3f
    iget v3, p0, Landroid/widget/StackView2;->mSwipeThreshold:I

    if-le v0, v3, :cond_7e

    iget v3, p0, Landroid/widget/StackView2;->mSwipeGestureType:I

    if-ne v3, v7, :cond_7e

    iget-object v3, p0, Landroid/widget/StackView2;->mStackSlider:Landroid/widget/StackView2$StackSlider;

    iget v3, v3, Landroid/widget/StackView2$StackSlider;->mMode:I

    if-nez v3, :cond_7e

    .line 1192
    invoke-virtual {p0}, Landroid/widget/StackView2;->showNext()V

    .line 1193
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/StackView2;->mSwipeGestureType:I

    .line 1196
    iget-object v3, p0, Landroid/widget/StackView2;->mStackSlider5:Landroid/widget/StackView2$StackSlider;

    invoke-direct {p0, v3, v10}, Landroid/widget/StackView2;->CancelStackSlider(Landroid/widget/StackView2$StackSlider;I)V

    .line 1197
    iget-object v3, p0, Landroid/widget/StackView2;->mStackSlider4:Landroid/widget/StackView2$StackSlider;

    invoke-direct {p0, v3, v9}, Landroid/widget/StackView2;->CancelStackSlider(Landroid/widget/StackView2$StackSlider;I)V

    .line 1198
    iget-object v3, p0, Landroid/widget/StackView2;->mStackSlider1:Landroid/widget/StackView2$StackSlider;

    invoke-direct {p0, v3, v6}, Landroid/widget/StackView2;->CancelStackSlider(Landroid/widget/StackView2$StackSlider;I)V

    .line 1199
    iget-object v3, p0, Landroid/widget/StackView2;->mStackSlider2:Landroid/widget/StackView2$StackSlider;

    invoke-direct {p0, v3, v7}, Landroid/widget/StackView2;->CancelStackSlider(Landroid/widget/StackView2$StackSlider;I)V

    .line 1200
    iget-object v3, p0, Landroid/widget/StackView2;->mStackSlider3:Landroid/widget/StackView2$StackSlider;

    invoke-direct {p0, v3, v8}, Landroid/widget/StackView2;->CancelStackSlider(Landroid/widget/StackView2$StackSlider;I)V

    .line 1202
    iget v3, p0, Landroid/widget/StackView2;->mStackMode:I

    if-nez v3, :cond_7a

    .line 1203
    invoke-virtual {p0}, Landroid/widget/StackView2;->showPrevious()V

    .line 1275
    :cond_73
    :goto_73
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/StackView2;->mActivePointerId:I

    .line 1276
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/StackView2;->mSwipeGestureType:I

    .line 1277
    return-void

    .line 1205
    :cond_7a
    invoke-virtual {p0}, Landroid/widget/StackView2;->showNext()V

    goto :goto_73

    .line 1208
    :cond_7e
    iget v3, p0, Landroid/widget/StackView2;->mSwipeThreshold:I

    neg-int v3, v3

    if-ge v0, v3, :cond_b8

    iget v3, p0, Landroid/widget/StackView2;->mSwipeGestureType:I

    if-ne v3, v6, :cond_b8

    iget-object v3, p0, Landroid/widget/StackView2;->mStackSlider:Landroid/widget/StackView2$StackSlider;

    iget v3, v3, Landroid/widget/StackView2$StackSlider;->mMode:I

    if-nez v3, :cond_b8

    .line 1211
    invoke-virtual {p0}, Landroid/widget/StackView2;->showNext()V

    .line 1212
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/StackView2;->mSwipeGestureType:I

    .line 1215
    iget-object v3, p0, Landroid/widget/StackView2;->mStackSlider5:Landroid/widget/StackView2$StackSlider;

    invoke-direct {p0, v3, v10}, Landroid/widget/StackView2;->CancelStackSlider(Landroid/widget/StackView2$StackSlider;I)V

    .line 1216
    iget-object v3, p0, Landroid/widget/StackView2;->mStackSlider4:Landroid/widget/StackView2$StackSlider;

    invoke-direct {p0, v3, v9}, Landroid/widget/StackView2;->CancelStackSlider(Landroid/widget/StackView2$StackSlider;I)V

    .line 1217
    iget-object v3, p0, Landroid/widget/StackView2;->mStackSlider1:Landroid/widget/StackView2$StackSlider;

    invoke-direct {p0, v3, v6}, Landroid/widget/StackView2;->CancelStackSlider(Landroid/widget/StackView2$StackSlider;I)V

    .line 1218
    iget-object v3, p0, Landroid/widget/StackView2;->mStackSlider2:Landroid/widget/StackView2$StackSlider;

    invoke-direct {p0, v3, v7}, Landroid/widget/StackView2;->CancelStackSlider(Landroid/widget/StackView2$StackSlider;I)V

    .line 1219
    iget-object v3, p0, Landroid/widget/StackView2;->mStackSlider3:Landroid/widget/StackView2$StackSlider;

    invoke-direct {p0, v3, v8}, Landroid/widget/StackView2;->CancelStackSlider(Landroid/widget/StackView2$StackSlider;I)V

    .line 1220
    iget v3, p0, Landroid/widget/StackView2;->mStackMode:I

    if-nez v3, :cond_b4

    .line 1221
    invoke-virtual {p0}, Landroid/widget/StackView2;->showNext()V

    goto :goto_73

    .line 1223
    :cond_b4
    invoke-virtual {p0}, Landroid/widget/StackView2;->showPrevious()V

    goto :goto_73

    .line 1227
    :cond_b8
    iget v3, p0, Landroid/widget/StackView2;->mSwipeGestureType:I

    if-ne v3, v6, :cond_d6

    .line 1245
    iget-object v3, p0, Landroid/widget/StackView2;->mStackSlider5:Landroid/widget/StackView2$StackSlider;

    invoke-direct {p0, v3, v10}, Landroid/widget/StackView2;->CancelStackSlider(Landroid/widget/StackView2$StackSlider;I)V

    .line 1246
    iget-object v3, p0, Landroid/widget/StackView2;->mStackSlider4:Landroid/widget/StackView2$StackSlider;

    invoke-direct {p0, v3, v9}, Landroid/widget/StackView2;->CancelStackSlider(Landroid/widget/StackView2$StackSlider;I)V

    .line 1247
    iget-object v3, p0, Landroid/widget/StackView2;->mStackSlider1:Landroid/widget/StackView2$StackSlider;

    invoke-direct {p0, v3, v6}, Landroid/widget/StackView2;->CancelStackSlider(Landroid/widget/StackView2$StackSlider;I)V

    .line 1248
    iget-object v3, p0, Landroid/widget/StackView2;->mStackSlider2:Landroid/widget/StackView2$StackSlider;

    invoke-direct {p0, v3, v7}, Landroid/widget/StackView2;->CancelStackSlider(Landroid/widget/StackView2$StackSlider;I)V

    .line 1249
    iget-object v3, p0, Landroid/widget/StackView2;->mStackSlider3:Landroid/widget/StackView2$StackSlider;

    invoke-direct {p0, v3, v8}, Landroid/widget/StackView2;->CancelStackSlider(Landroid/widget/StackView2$StackSlider;I)V

    goto :goto_73

    .line 1250
    :cond_d6
    iget v3, p0, Landroid/widget/StackView2;->mSwipeGestureType:I

    if-ne v3, v7, :cond_73

    .line 1268
    iget-object v3, p0, Landroid/widget/StackView2;->mStackSlider5:Landroid/widget/StackView2$StackSlider;

    invoke-direct {p0, v3, v10}, Landroid/widget/StackView2;->CancelStackSlider(Landroid/widget/StackView2$StackSlider;I)V

    .line 1269
    iget-object v3, p0, Landroid/widget/StackView2;->mStackSlider4:Landroid/widget/StackView2$StackSlider;

    invoke-direct {p0, v3, v9}, Landroid/widget/StackView2;->CancelStackSlider(Landroid/widget/StackView2$StackSlider;I)V

    .line 1270
    iget-object v3, p0, Landroid/widget/StackView2;->mStackSlider1:Landroid/widget/StackView2$StackSlider;

    invoke-direct {p0, v3, v6}, Landroid/widget/StackView2;->CancelStackSlider(Landroid/widget/StackView2$StackSlider;I)V

    .line 1271
    iget-object v3, p0, Landroid/widget/StackView2;->mStackSlider2:Landroid/widget/StackView2$StackSlider;

    invoke-direct {p0, v3, v7}, Landroid/widget/StackView2;->CancelStackSlider(Landroid/widget/StackView2$StackSlider;I)V

    .line 1272
    iget-object v3, p0, Landroid/widget/StackView2;->mStackSlider3:Landroid/widget/StackView2$StackSlider;

    invoke-direct {p0, v3, v8}, Landroid/widget/StackView2;->CancelStackSlider(Landroid/widget/StackView2$StackSlider;I)V

    goto :goto_73
.end method

.method private initStackView()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 191
    const/4 v2, 0x6

    invoke-virtual {p0, v2, v5}, Landroid/widget/StackView2;->configureViewAnimator(II)V

    .line 192
    invoke-virtual {p0, v5}, Landroid/widget/StackView2;->setStaticTransformationsEnabled(Z)V

    .line 193
    invoke-virtual {p0}, Landroid/widget/StackView2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 194
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/widget/StackView2;->mTouchSlop:I

    .line 195
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/widget/StackView2;->mMaximumVelocity:I

    .line 196
    iput v6, p0, Landroid/widget/StackView2;->mActivePointerId:I

    .line 202
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/StackView2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/StackView2;->mClickFeedback:Landroid/widget/ImageView;

    .line 203
    iget-object v2, p0, Landroid/widget/StackView2;->mClickFeedback:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView2$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView2;->mClickFeedback:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView2$LayoutParams;-><init>(Landroid/widget/StackView2;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v2, p0, Landroid/widget/StackView2;->mClickFeedback:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView2$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView2;->mClickFeedback:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView2$LayoutParams;-><init>(Landroid/widget/StackView2;Landroid/view/View;)V

    invoke-virtual {p0, v2, v6, v3}, Landroid/widget/StackView2;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 205
    iget-object v2, p0, Landroid/widget/StackView2;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    new-instance v2, Landroid/widget/StackView2$StackSlider;

    invoke-direct {v2, p0}, Landroid/widget/StackView2$StackSlider;-><init>(Landroid/widget/StackView2;)V

    iput-object v2, p0, Landroid/widget/StackView2;->mStackSlider:Landroid/widget/StackView2$StackSlider;

    .line 209
    new-instance v2, Landroid/widget/StackView2$StackSlider;

    invoke-direct {v2, p0}, Landroid/widget/StackView2$StackSlider;-><init>(Landroid/widget/StackView2;)V

    iput-object v2, p0, Landroid/widget/StackView2;->mStackSlider1:Landroid/widget/StackView2$StackSlider;

    .line 210
    new-instance v2, Landroid/widget/StackView2$StackSlider;

    invoke-direct {v2, p0}, Landroid/widget/StackView2$StackSlider;-><init>(Landroid/widget/StackView2;)V

    iput-object v2, p0, Landroid/widget/StackView2;->mStackSlider2:Landroid/widget/StackView2$StackSlider;

    .line 211
    new-instance v2, Landroid/widget/StackView2$StackSlider;

    invoke-direct {v2, p0}, Landroid/widget/StackView2$StackSlider;-><init>(Landroid/widget/StackView2;)V

    iput-object v2, p0, Landroid/widget/StackView2;->mStackSlider3:Landroid/widget/StackView2$StackSlider;

    .line 212
    new-instance v2, Landroid/widget/StackView2$StackSlider;

    invoke-direct {v2, p0}, Landroid/widget/StackView2$StackSlider;-><init>(Landroid/widget/StackView2;)V

    iput-object v2, p0, Landroid/widget/StackView2;->mStackSlider4:Landroid/widget/StackView2$StackSlider;

    .line 213
    new-instance v2, Landroid/widget/StackView2$StackSlider;

    invoke-direct {v2, p0}, Landroid/widget/StackView2$StackSlider;-><init>(Landroid/widget/StackView2;)V

    iput-object v2, p0, Landroid/widget/StackView2;->mStackSlider5:Landroid/widget/StackView2$StackSlider;

    .line 215
    sget-object v2, Landroid/widget/StackView2;->sHolographicHelper:Landroid/widget/StackView2$HolographicHelper;

    if-nez v2, :cond_80

    .line 216
    new-instance v2, Landroid/widget/StackView2$HolographicHelper;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/StackView2$HolographicHelper;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/widget/StackView2;->sHolographicHelper:Landroid/widget/StackView2$HolographicHelper;

    .line 218
    :cond_80
    invoke-virtual {p0, v7}, Landroid/widget/StackView2;->setClipChildren(Z)V

    .line 219
    invoke-virtual {p0, v7}, Landroid/widget/StackView2;->setClipToPadding(Z)V

    .line 224
    iput v5, p0, Landroid/widget/StackView2;->mStackMode:I

    .line 227
    iput v6, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 231
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 232
    .local v1, density:F
    const/high16 v2, 0x4080

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Landroid/widget/StackView2;->mFramePadding:I

    .line 234
    invoke-virtual {p0, v5}, Landroid/widget/StackView2;->setStackView2index(Z)V

    .line 236
    return-void
.end method

.method private measureChildren()V
    .registers 14

    .prologue
    .line 1555
    invoke-virtual {p0}, Landroid/widget/StackView2;->getChildCount()I

    move-result v5

    .line 1557
    .local v5, count:I
    invoke-virtual {p0}, Landroid/widget/StackView2;->getMeasuredWidth()I

    move-result v10

    .line 1558
    .local v10, measuredWidth:I
    invoke-virtual {p0}, Landroid/widget/StackView2;->getMeasuredHeight()I

    move-result v9

    .line 1560
    .local v9, measuredHeight:I
    int-to-float v11, v10

    const v12, 0x3f666666

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v12, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v4, v11, v12

    .line 1562
    .local v4, childWidth:I
    int-to-float v11, v9

    const v12, 0x3f666666

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v12, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v1, v11, v12

    .line 1565
    .local v1, childHeight:I
    const/4 v8, 0x0

    .line 1566
    .local v8, maxWidth:I
    const/4 v7, 0x0

    .line 1568
    .local v7, maxHeight:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2f
    if-ge v6, v5, :cond_59

    .line 1569
    invoke-virtual {p0, v6}, Landroid/widget/StackView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1570
    .local v0, child:Landroid/view/View;
    const/high16 v11, -0x8000

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/high16 v12, -0x8000

    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v0, v11, v12}, Landroid/view/View;->measure(II)V

    .line 1574
    iget-object v11, p0, Landroid/widget/StackView2;->mClickFeedback:Landroid/widget/ImageView;

    if-eq v0, v11, :cond_56

    .line 1575
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1576
    .local v3, childMeasuredWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1578
    .local v2, childMeasuredHeight:I
    if-le v3, v8, :cond_53

    .line 1579
    move v8, v3

    .line 1581
    :cond_53
    if-le v2, v7, :cond_56

    .line 1582
    move v7, v2

    .line 1568
    .end local v2           #childMeasuredHeight:I
    .end local v3           #childMeasuredWidth:I
    :cond_56
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    .line 1588
    .end local v0           #child:Landroid/view/View;
    :cond_59
    const v11, 0x3dcccccd

    int-to-float v12, v10

    mul-float/2addr v11, v12

    iput v11, p0, Landroid/widget/StackView2;->mNewPerspectiveShiftX:F

    .line 1589
    const v11, 0x3dcccccd

    int-to-float v12, v9

    mul-float/2addr v11, v12

    iput v11, p0, Landroid/widget/StackView2;->mNewPerspectiveShiftY:F

    .line 1593
    if-lez v8, :cond_72

    if-lez v5, :cond_72

    if-ge v8, v4, :cond_72

    .line 1594
    sub-int v11, v10, v8

    int-to-float v11, v11

    iput v11, p0, Landroid/widget/StackView2;->mNewPerspectiveShiftX:F

    .line 1597
    :cond_72
    if-lez v7, :cond_7d

    if-lez v5, :cond_7d

    if-ge v7, v1, :cond_7d

    .line 1598
    sub-int v11, v9, v7

    int-to-float v11, v11

    iput v11, p0, Landroid/widget/StackView2;->mNewPerspectiveShiftY:F

    .line 1601
    :cond_7d
    return-void
.end method

.method private onLayout()V
    .registers 4

    .prologue
    .line 783
    iget-boolean v1, p0, Landroid/widget/StackView2;->mFirstLayoutHappened:Z

    if-nez v1, :cond_a

    .line 784
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/StackView2;->mFirstLayoutHappened:Z

    .line 785
    invoke-direct {p0}, Landroid/widget/StackView2;->updateChildTransforms()V

    .line 788
    :cond_a
    const v1, 0x3f333333

    invoke-virtual {p0}, Landroid/widget/StackView2;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 789
    .local v0, newSlideAmount:I
    iget v1, p0, Landroid/widget/StackView2;->mSlideAmount:I

    if-eq v1, v0, :cond_28

    .line 790
    iput v0, p0, Landroid/widget/StackView2;->mSlideAmount:I

    .line 791
    const v1, 0x3e4ccccd

    int-to-float v2, v0

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Landroid/widget/StackView2;->mSwipeThreshold:I

    .line 794
    :cond_28
    iget v1, p0, Landroid/widget/StackView2;->mPerspectiveShiftY:F

    iget v2, p0, Landroid/widget/StackView2;->mNewPerspectiveShiftY:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_3c

    iget v1, p0, Landroid/widget/StackView2;->mPerspectiveShiftX:F

    iget v2, p0, Landroid/widget/StackView2;->mNewPerspectiveShiftX:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_47

    .line 797
    :cond_3c
    iget v1, p0, Landroid/widget/StackView2;->mNewPerspectiveShiftY:F

    iput v1, p0, Landroid/widget/StackView2;->mPerspectiveShiftY:F

    .line 798
    iget v1, p0, Landroid/widget/StackView2;->mNewPerspectiveShiftX:F

    iput v1, p0, Landroid/widget/StackView2;->mPerspectiveShiftX:F

    .line 799
    invoke-direct {p0}, Landroid/widget/StackView2;->updateChildTransforms()V

    .line 801
    :cond_47
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 16
    .parameter "ev"

    .prologue
    .line 1130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1131
    .local v0, activePointerIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 1132
    .local v5, pointerId:I
    iget v9, p0, Landroid/widget/StackView2;->mActivePointerId:I

    if-ne v5, v9, :cond_18

    .line 1134
    iget v9, p0, Landroid/widget/StackView2;->mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_19

    const/4 v1, 0x0

    .line 1136
    .local v1, activeViewIndex:I
    :goto_12
    invoke-virtual {p0, v1}, Landroid/widget/StackView2;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v6

    .line 1137
    .local v6, v:Landroid/view/View;
    if-nez v6, :cond_1b

    .line 1171
    .end local v1           #activeViewIndex:I
    .end local v6           #v:Landroid/view/View;
    :cond_18
    :goto_18
    return-void

    .line 1134
    :cond_19
    const/4 v1, 0x1

    goto :goto_12

    .line 1143
    .restart local v1       #activeViewIndex:I
    .restart local v6       #v:Landroid/view/View;
    :cond_1b
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ge v2, v9, :cond_7a

    .line 1144
    if-eq v2, v0, :cond_77

    .line 1146
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 1147
    .local v7, x:F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 1149
    .local v8, y:F
    iget-object v9, p0, Landroid/widget/StackView2;->mTouchRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 1150
    iget-object v9, p0, Landroid/widget/StackView2;->mTouchRect:Landroid/graphics/Rect;

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_77

    .line 1151
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1152
    .local v3, oldX:F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1155
    .local v4, oldY:F
    iget v9, p0, Landroid/widget/StackView2;->mInitialY:F

    sub-float v10, v8, v4

    add-float/2addr v9, v10

    iput v9, p0, Landroid/widget/StackView2;->mInitialY:F

    .line 1156
    iget v9, p0, Landroid/widget/StackView2;->mInitialX:F

    sub-float v10, v7, v3

    add-float/2addr v9, v10

    iput v9, p0, Landroid/widget/StackView2;->mInitialX:F

    .line 1158
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/widget/StackView2;->mActivePointerId:I

    .line 1159
    iget-object v9, p0, Landroid/widget/StackView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_18

    .line 1160
    iget-object v9, p0, Landroid/widget/StackView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_18

    .line 1143
    .end local v3           #oldX:F
    .end local v4           #oldY:F
    .end local v7           #x:F
    .end local v8           #y:F
    :cond_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 1169
    :cond_7a
    invoke-direct {p0, p1}, Landroid/widget/StackView2;->handlePointerUp(Landroid/view/MotionEvent;)V

    goto :goto_18
.end method

.method private pacedScroll(Z)V
    .registers 8
    .parameter "up"

    .prologue
    .line 824
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/widget/StackView2;->mLastScrollTime:J

    sub-long v0, v2, v4

    .line 825
    .local v0, timeSinceLastScroll:J
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-lez v2, :cond_19

    .line 826
    if-eqz p1, :cond_1a

    .line 827
    invoke-virtual {p0}, Landroid/widget/StackView2;->showPrevious()V

    .line 831
    :goto_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/StackView2;->mLastScrollTime:J

    .line 833
    :cond_19
    return-void

    .line 829
    :cond_1a
    invoke-virtual {p0}, Landroid/widget/StackView2;->showNext()V

    goto :goto_13
.end method

.method private setupStackSlider(Landroid/view/View;I)V
    .registers 4
    .parameter "v"
    .parameter "mode"

    .prologue
    .line 538
    iget-object v0, p0, Landroid/widget/StackView2;->mStackSlider:Landroid/widget/StackView2$StackSlider;

    invoke-virtual {v0, p2}, Landroid/widget/StackView2$StackSlider;->setMode(I)V

    .line 539
    if-eqz p1, :cond_13

    .line 545
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 546
    iget-object v0, p0, Landroid/widget/StackView2;->mStackSlider:Landroid/widget/StackView2$StackSlider;

    invoke-virtual {v0, p1}, Landroid/widget/StackView2$StackSlider;->setView(Landroid/view/View;)V

    .line 548
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 550
    :cond_13
    return-void
.end method

.method private setupStackSlider2(Landroid/view/View;IZLandroid/widget/StackView2$StackSlider;)V
    .registers 6
    .parameter "v"
    .parameter "mode"
    .parameter "isFocus"
    .parameter "mStkSlider"

    .prologue
    .line 553
    invoke-virtual {p4, p2}, Landroid/widget/StackView2$StackSlider;->setMode(I)V

    .line 554
    if-eqz p1, :cond_f

    .line 563
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 564
    invoke-virtual {p4, p1}, Landroid/widget/StackView2$StackSlider;->setView(Landroid/view/View;)V

    .line 565
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 567
    :cond_f
    return-void
.end method

.method private transformViewAtIndex(ILandroid/view/View;Z)V
    .registers 27
    .parameter "index"
    .parameter "view"
    .parameter "animate"

    .prologue
    .line 475
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/StackView2;->mPerspectiveShiftY:F

    .line 476
    .local v4, maxPerspectiveShiftY:F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/StackView2;->mPerspectiveShiftX:F

    .line 478
    .local v3, maxPerspectiveShiftX:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView2;->mStackMode:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_160

    .line 479
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    move/from16 v19, v0

    sub-int v19, v19, p1

    add-int/lit8 p1, v19, -0x1

    .line 480
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_30

    add-int/lit8 p1, p1, -0x1

    .line 486
    :cond_30
    :goto_30
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f80

    mul-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v8, v19, v20

    .line 488
    .local v8, r:F
    const/16 v19, 0x2

    move/from16 v0, p1

    move/from16 v1, v19

    if-le v0, v1, :cond_168

    const/4 v2, 0x1

    .line 492
    .local v2, itemPos:I
    :goto_51
    const/high16 v19, 0x3f80

    const v20, 0x3f4ccccd

    const/high16 v21, 0x3f00

    sub-float v21, v21, v8

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    mul-float v20, v20, v21

    sub-float v9, v19, v20

    .line 495
    .local v9, scale:F
    const v19, 0x3e99999a

    mul-float v19, v19, v4

    int-to-float v0, v2

    move/from16 v20, v0

    mul-float v19, v19, v20

    const v20, 0x3f333333

    mul-float v20, v20, v8

    mul-float v20, v20, v4

    add-float v7, v19, v20

    .line 496
    .local v7, perspectiveTranslationY:F
    const/high16 v19, 0x3f80

    sub-float v19, v9, v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/StackView2;->getMeasuredHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x3f666666

    mul-float v20, v20, v21

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    mul-float v13, v19, v20

    .line 499
    .local v13, scaleShiftCorrectionY:F
    const/16 v19, 0x2

    move/from16 v0, p1

    move/from16 v1, v19

    if-le v0, v1, :cond_16b

    const/4 v14, -0x1

    .line 500
    .local v14, sclCrctY:I
    :goto_96
    int-to-float v0, v14

    move/from16 v19, v0

    const/high16 v20, 0x4170

    add-float v20, v20, v13

    mul-float v19, v19, v20

    add-float v16, v7, v19

    .line 503
    .local v16, transY:F
    const/high16 v19, 0x3f80

    sub-float v19, v19, v8

    mul-float v6, v19, v3

    .line 504
    .local v6, perspectiveTranslationX:F
    const/high16 v19, 0x3f80

    sub-float v19, v19, v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/StackView2;->getMeasuredWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x3f666666

    mul-float v20, v20, v21

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    mul-float v12, v19, v20

    .line 507
    .local v12, scaleShiftCorrectionX:F
    const/4 v15, 0x0

    .line 511
    .local v15, transX:F
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/widget/StackView2$StackFrame;

    move/from16 v19, v0

    if-eqz v19, :cond_d6

    move-object/from16 v19, p2

    .line 512
    check-cast v19, Landroid/widget/StackView2$StackFrame;

    invoke-virtual/range {v19 .. v19}, Landroid/widget/StackView2$StackFrame;->cancelTransformAnimator()Z

    move-object/from16 v19, p2

    .line 513
    check-cast v19, Landroid/widget/StackView2$StackFrame;

    invoke-virtual/range {v19 .. v19}, Landroid/widget/StackView2$StackFrame;->cancelSliderAnimator()Z

    .line 516
    :cond_d6
    if-eqz p3, :cond_16e

    .line 517
    const-string/jumbo v19, "translationX"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    aput v22, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    .line 518
    .local v17, translationX:Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v19, "translationY"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v16, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    .line 519
    .local v18, translationY:Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v19, "scaleX"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v9, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 520
    .local v10, scalePropX:Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v19, "scaleY"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v9, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 522
    .local v11, scalePropY:Landroid/animation/PropertyValuesHolder;
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v10, v19, v20

    const/16 v20, 0x1

    aput-object v11, v19, v20

    const/16 v20, 0x2

    aput-object v18, v19, v20

    const/16 v20, 0x3

    aput-object v17, v19, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 524
    .local v5, oa:Landroid/animation/ObjectAnimator;
    const-wide/16 v19, 0x64

    move-wide/from16 v0, v19

    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 525
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/widget/StackView2$StackFrame;

    move/from16 v19, v0

    if-eqz v19, :cond_15c

    .line 526
    check-cast p2, Landroid/widget/StackView2$StackFrame;

    .end local p2
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/widget/StackView2$StackFrame;->setTransformAnimator(Landroid/animation/ObjectAnimator;)V

    .line 528
    :cond_15c
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 535
    .end local v5           #oa:Landroid/animation/ObjectAnimator;
    .end local v10           #scalePropX:Landroid/animation/PropertyValuesHolder;
    .end local v11           #scalePropY:Landroid/animation/PropertyValuesHolder;
    .end local v17           #translationX:Landroid/animation/PropertyValuesHolder;
    .end local v18           #translationY:Landroid/animation/PropertyValuesHolder;
    :goto_15f
    return-void

    .line 482
    .end local v2           #itemPos:I
    .end local v6           #perspectiveTranslationX:F
    .end local v7           #perspectiveTranslationY:F
    .end local v8           #r:F
    .end local v9           #scale:F
    .end local v12           #scaleShiftCorrectionX:F
    .end local v13           #scaleShiftCorrectionY:F
    .end local v14           #sclCrctY:I
    .end local v15           #transX:F
    .end local v16           #transY:F
    .restart local p2
    :cond_160
    add-int/lit8 p1, p1, -0x1

    .line 483
    if-gez p1, :cond_30

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_30

    .line 488
    .restart local v8       #r:F
    :cond_168
    const/4 v2, 0x0

    goto/16 :goto_51

    .line 499
    .restart local v2       #itemPos:I
    .restart local v7       #perspectiveTranslationY:F
    .restart local v9       #scale:F
    .restart local v13       #scaleShiftCorrectionY:F
    :cond_16b
    const/4 v14, 0x1

    goto/16 :goto_96

    .line 530
    .restart local v6       #perspectiveTranslationX:F
    .restart local v12       #scaleShiftCorrectionX:F
    .restart local v14       #sclCrctY:I
    .restart local v15       #transX:F
    .restart local v16       #transY:F
    :cond_16e
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 531
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 532
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->setScaleX(F)V

    .line 533
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->setScaleY(F)V

    goto :goto_15f
.end method

.method private updateChildTransforms()V
    .registers 4

    .prologue
    .line 675
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/StackView2;->getNumActiveViews()I

    move-result v2

    if-ge v0, v2, :cond_14

    .line 676
    invoke-virtual {p0, v0}, Landroid/widget/StackView2;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v1

    .line 677
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_11

    .line 678
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/StackView2;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 675
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 681
    .end local v1           #v:Landroid/view/View;
    :cond_14
    return-void
.end method


# virtual methods
.method public advance()V
    .registers 8

    .prologue
    .line 1542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/widget/StackView2;->mLastInteractionTime:J

    sub-long v1, v3, v5

    .line 1544
    .local v1, timeSinceLastInteraction:J
    iget-object v3, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v3, :cond_d

    .line 1552
    :cond_c
    :goto_c
    return-void

    .line 1545
    :cond_d
    invoke-virtual {p0}, Landroid/widget/StackView2;->getCount()I

    move-result v0

    .line 1546
    .local v0, adapterCount:I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_18

    iget-boolean v3, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-nez v3, :cond_c

    .line 1548
    :cond_18
    iget v3, p0, Landroid/widget/StackView2;->mSwipeGestureType:I

    if-nez v3, :cond_c

    const-wide/16 v3, 0x1388

    cmp-long v3, v1, v3

    if-lez v3, :cond_c

    .line 1550
    invoke-virtual {p0}, Landroid/widget/StackView2;->showNext()V

    goto :goto_c
.end method

.method applyTransformForChildAtIndex(Landroid/view/View;I)V
    .registers 3
    .parameter "child"
    .parameter "relativeIndex"

    .prologue
    .line 749
    return-void
.end method

.method bridge synthetic createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/StackView2;->createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/StackView2$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/StackView2$LayoutParams;
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 1510
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1511
    .local v0, currentLp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/widget/StackView2$LayoutParams;

    if-eqz v2, :cond_17

    move-object v1, v0

    .line 1512
    check-cast v1, Landroid/widget/StackView2$LayoutParams;

    .line 1513
    .local v1, lp:Landroid/widget/StackView2$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/widget/StackView2$LayoutParams;->setHorizontalOffset(I)V

    .line 1514
    invoke-virtual {v1, v3}, Landroid/widget/StackView2$LayoutParams;->setVerticalOffset(I)V

    .line 1515
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1516
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1519
    .end local v1           #lp:Landroid/widget/StackView2$LayoutParams;
    :goto_16
    return-object v1

    :cond_17
    new-instance v1, Landroid/widget/StackView2$LayoutParams;

    invoke-direct {v1, p0, p1}, Landroid/widget/StackView2$LayoutParams;-><init>(Landroid/widget/StackView2;Landroid/view/View;)V

    goto :goto_16
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    .line 753
    const/4 v3, 0x0

    .line 755
    .local v3, expandClipRegion:Z
    iget-object v6, p0, Landroid/widget/StackView2;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 756
    invoke-virtual {p0}, Landroid/widget/StackView2;->getChildCount()I

    move-result v1

    .line 757
    .local v1, childCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_b
    if-ge v4, v1, :cond_44

    .line 758
    invoke-virtual {p0, v4}, Landroid/widget/StackView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 759
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/StackView2$LayoutParams;

    .line 760
    .local v5, lp:Landroid/widget/StackView2$LayoutParams;
    iget v6, v5, Landroid/widget/StackView2$LayoutParams;->horizontalOffset:I

    if-nez v6, :cond_1f

    iget v6, v5, Landroid/widget/StackView2$LayoutParams;->verticalOffset:I

    if-eqz v6, :cond_2e

    :cond_1f
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2e

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_31

    .line 762
    :cond_2e
    invoke-virtual {v5}, Landroid/widget/StackView2$LayoutParams;->resetInvalidateRect()V

    .line 764
    :cond_31
    invoke-virtual {v5}, Landroid/widget/StackView2$LayoutParams;->getInvalidateRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 765
    .local v2, childInvalidateRect:Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_41

    .line 766
    const/4 v3, 0x1

    .line 767
    iget-object v6, p0, Landroid/widget/StackView2;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 757
    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 772
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childInvalidateRect:Landroid/graphics/Rect;
    .end local v5           #lp:Landroid/widget/StackView2$LayoutParams;
    :cond_44
    if-eqz v3, :cond_58

    .line 773
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->save(I)I

    .line 774
    iget-object v6, p0, Landroid/widget/StackView2;->stackInvalidateRect:Landroid/graphics/Rect;

    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 775
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 776
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 780
    :goto_57
    return-void

    .line 778
    :cond_58
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_57
.end method

.method getFrameForChild()Landroid/widget/FrameLayout;
    .registers 6

    .prologue
    .line 740
    new-instance v0, Landroid/widget/StackView2$StackFrame;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/StackView2$StackFrame;-><init>(Landroid/content/Context;)V

    .line 741
    .local v0, fl:Landroid/widget/StackView2$StackFrame;
    iget v1, p0, Landroid/widget/StackView2;->mFramePadding:I

    iget v2, p0, Landroid/widget/StackView2;->mFramePadding:I

    iget v3, p0, Landroid/widget/StackView2;->mFramePadding:I

    iget v4, p0, Landroid/widget/StackView2;->mFramePadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/StackView2$StackFrame;->setPadding(IIII)V

    .line 742
    return-object v0
.end method

.method hideTapFeedback(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 669
    iget-object v0, p0, Landroid/widget/StackView2;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 670
    invoke-virtual {p0}, Landroid/widget/StackView2;->invalidate()V

    .line 671
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 805
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_11

    .line 806
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_2e

    .line 819
    :cond_11
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_15
    return v1

    .line 808
    :pswitch_16
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 809
    .local v0, vscroll:F
    cmpg-float v2, v0, v3

    if-gez v2, :cond_25

    .line 810
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/widget/StackView2;->pacedScroll(Z)V

    goto :goto_15

    .line 812
    :cond_25
    cmpl-float v2, v0, v3

    if-lez v2, :cond_11

    .line 813
    invoke-direct {p0, v1}, Landroid/widget/StackView2;->pacedScroll(Z)V

    goto :goto_15

    .line 806
    nop

    :pswitch_data_2e
    .packed-switch 0x8
        :pswitch_16
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "ev"

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 840
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 842
    .local v0, action:I
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_4e

    .line 875
    :cond_b
    :goto_b
    :pswitch_b
    iget v5, p0, Landroid/widget/StackView2;->mSwipeGestureType:I

    if-eqz v5, :cond_10

    const/4 v4, 0x1

    :cond_10
    :goto_10
    return v4

    .line 844
    :pswitch_11
    iget v5, p0, Landroid/widget/StackView2;->mActivePointerId:I

    if-ne v5, v6, :cond_b

    .line 845
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Landroid/widget/StackView2;->mInitialX:F

    .line 846
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Landroid/widget/StackView2;->mInitialY:F

    .line 847
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroid/widget/StackView2;->mActivePointerId:I

    goto :goto_b

    .line 852
    :pswitch_28
    iget v5, p0, Landroid/widget/StackView2;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 853
    .local v3, pointerIndex:I
    if-ne v3, v6, :cond_38

    .line 855
    const-string v5, "StackView2"

    const-string v6, "Error: No data for our primary pointer."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 858
    :cond_38
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 859
    .local v2, newY:F
    iget v5, p0, Landroid/widget/StackView2;->mInitialY:F

    sub-float v1, v2, v5

    .line 861
    .local v1, deltaY:F
    invoke-direct {p0, v1}, Landroid/widget/StackView2;->beginGestureIfNeeded(F)V

    goto :goto_b

    .line 865
    .end local v1           #deltaY:F
    .end local v2           #newY:F
    .end local v3           #pointerIndex:I
    :pswitch_44
    invoke-direct {p0, p1}, Landroid/widget/StackView2;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_b

    .line 870
    :pswitch_48
    iput v6, p0, Landroid/widget/StackView2;->mActivePointerId:I

    .line 871
    iput v4, p0, Landroid/widget/StackView2;->mSwipeGestureType:I

    goto :goto_b

    .line 842
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_11
        :pswitch_48
        :pswitch_28
        :pswitch_48
        :pswitch_b
        :pswitch_b
        :pswitch_44
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 685
    const/4 v0, 0x0

    .line 686
    .local v0, result:Z
    const-string v1, "StackView2"

    const-string v2, "-----onKeyDown()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    packed-switch p1, :pswitch_data_18

    .line 696
    :goto_b
    :pswitch_b
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 689
    :pswitch_10
    invoke-virtual {p0}, Landroid/widget/StackView2;->showPrevious()V

    goto :goto_b

    .line 692
    :pswitch_14
    invoke-virtual {p0}, Landroid/widget/StackView2;->showNext()V

    goto :goto_b

    .line 687
    :pswitch_data_18
    .packed-switch 0x7
        :pswitch_14
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 16
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1524
    invoke-virtual {p0}, Landroid/widget/StackView2;->checkForAndHandleDataChanged()V

    .line 1526
    invoke-virtual {p0}, Landroid/widget/StackView2;->getChildCount()I

    move-result v2

    .line 1527
    .local v2, childCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_8
    if-ge v4, v2, :cond_3a

    .line 1528
    invoke-virtual {p0, v4}, Landroid/widget/StackView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1530
    .local v0, child:Landroid/view/View;
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v6, v7

    .line 1531
    .local v3, childRight:I
    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v1, v6, v7

    .line 1532
    .local v1, childBottom:I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/StackView2$LayoutParams;

    .line 1533
    .local v5, lp:Landroid/widget/StackView2$LayoutParams;
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    iget v7, v5, Landroid/widget/StackView2$LayoutParams;->horizontalOffset:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mPaddingTop:I

    iget v8, v5, Landroid/widget/StackView2$LayoutParams;->verticalOffset:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/widget/StackView2$LayoutParams;->horizontalOffset:I

    add-int/2addr v8, v3

    iget v9, v5, Landroid/widget/StackView2$LayoutParams;->verticalOffset:I

    add-int/2addr v9, v1

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 1527
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1537
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childBottom:I
    .end local v3           #childRight:I
    .end local v5           #lp:Landroid/widget/StackView2$LayoutParams;
    :cond_3a
    invoke-direct {p0}, Landroid/widget/StackView2;->onLayout()V

    .line 1538
    return-void
.end method

.method protected onMeasure(II)V
    .registers 14
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1605
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 1606
    .local v8, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 1607
    .local v5, heightSpecSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1608
    .local v7, widthSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 1610
    .local v4, heightSpecMode:I
    iget v9, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_54

    iget v9, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_54

    const/4 v2, 0x1

    .line 1614
    .local v2, haveChildRefSize:Z
    :goto_1b
    const v1, 0x3f8e38e4

    .line 1615
    .local v1, factorY:F
    if-nez v4, :cond_58

    .line 1616
    if-eqz v2, :cond_56

    iget v9, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x3f80

    add-float/2addr v10, v1

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mPaddingBottom:I

    add-int v5, v9, v10

    .line 1634
    :cond_34
    :goto_34
    const v0, 0x3f8e38e4

    .line 1635
    .local v0, factorX:F
    if-nez v7, :cond_7c

    .line 1636
    if-eqz v2, :cond_7a

    iget v9, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x3f80

    add-float/2addr v10, v0

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mPaddingRight:I

    add-int v8, v9, v10

    .line 1651
    :cond_4d
    :goto_4d
    invoke-virtual {p0, v8, v5}, Landroid/widget/StackView2;->setMeasuredDimension(II)V

    .line 1652
    invoke-direct {p0}, Landroid/widget/StackView2;->measureChildren()V

    .line 1653
    return-void

    .line 1610
    .end local v0           #factorX:F
    .end local v1           #factorY:F
    .end local v2           #haveChildRefSize:Z
    :cond_54
    const/4 v2, 0x0

    goto :goto_1b

    .line 1616
    .restart local v1       #factorY:F
    .restart local v2       #haveChildRefSize:Z
    :cond_56
    const/4 v5, 0x0

    goto :goto_34

    .line 1619
    :cond_58
    const/high16 v9, -0x8000

    if-ne v4, v9, :cond_34

    .line 1620
    if-eqz v2, :cond_78

    .line 1621
    iget v9, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x3f80

    add-float/2addr v10, v1

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mPaddingBottom:I

    add-int v3, v9, v10

    .line 1623
    .local v3, height:I
    if-gt v3, v5, :cond_74

    .line 1624
    move v5, v3

    goto :goto_34

    .line 1626
    :cond_74
    const/high16 v9, 0x100

    or-int/2addr v5, v9

    goto :goto_34

    .line 1630
    .end local v3           #height:I
    :cond_78
    const/4 v5, 0x0

    goto :goto_34

    .line 1636
    .restart local v0       #factorX:F
    :cond_7a
    const/4 v8, 0x0

    goto :goto_4d

    .line 1639
    :cond_7c
    const/high16 v9, -0x8000

    if-ne v4, v9, :cond_4d

    .line 1640
    if-eqz v2, :cond_93

    .line 1641
    iget v9, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mPaddingRight:I

    add-int v6, v9, v10

    .line 1642
    .local v6, width:I
    if-gt v6, v8, :cond_8f

    .line 1643
    move v8, v6

    goto :goto_4d

    .line 1645
    :cond_8f
    const/high16 v9, 0x100

    or-int/2addr v8, v9

    goto :goto_4d

    .line 1648
    .end local v6           #width:I
    :cond_93
    const/4 v8, 0x0

    goto :goto_4d
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "ev"

    .prologue
    const/4 v10, -0x1

    const v13, 0x42b2cccd

    const/high16 v12, 0x3f00

    const/4 v8, 0x1

    const/high16 v11, 0x3f80

    .line 1050
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1052
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1053
    .local v0, action:I
    iget v9, p0, Landroid/widget/StackView2;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 1054
    .local v5, pointerIndex:I
    if-ne v5, v10, :cond_21

    .line 1056
    const-string v8, "StackView2"

    const-string v9, "Error: No data for our primary pointer."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const/4 v8, 0x0

    .line 1126
    :cond_20
    :goto_20
    return v8

    .line 1060
    :cond_21
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1061
    .local v4, newY:F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1062
    .local v3, newX:F
    iget v9, p0, Landroid/widget/StackView2;->mInitialY:F

    sub-float v2, v4, v9

    .line 1063
    .local v2, deltaY:F
    iget v9, p0, Landroid/widget/StackView2;->mInitialX:F

    sub-float v1, v3, v9

    .line 1064
    .local v1, deltaX:F
    iget-object v9, p0, Landroid/widget/StackView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_3b

    .line 1065
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Landroid/widget/StackView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1067
    :cond_3b
    iget-object v9, p0, Landroid/widget/StackView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1069
    and-int/lit16 v9, v0, 0xff

    packed-switch v9, :pswitch_data_fa

    :pswitch_45
    goto :goto_20

    .line 1113
    :pswitch_46
    invoke-direct {p0, p1}, Landroid/widget/StackView2;->handlePointerUp(Landroid/view/MotionEvent;)V

    goto :goto_20

    .line 1071
    :pswitch_4a
    invoke-direct {p0, v2}, Landroid/widget/StackView2;->beginGestureIfNeeded(F)V

    .line 1073
    iget-object v9, p0, Landroid/widget/StackView2;->mStackSlider5:Landroid/widget/StackView2$StackSlider;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/widget/StackView2$StackSlider;->setIndex(I)V

    .line 1074
    iget-object v9, p0, Landroid/widget/StackView2;->mStackSlider4:Landroid/widget/StackView2$StackSlider;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/StackView2$StackSlider;->setIndex(I)V

    .line 1075
    iget-object v9, p0, Landroid/widget/StackView2;->mStackSlider1:Landroid/widget/StackView2$StackSlider;

    invoke-virtual {v9, v8}, Landroid/widget/StackView2$StackSlider;->setIndex(I)V

    .line 1076
    iget-object v9, p0, Landroid/widget/StackView2;->mStackSlider2:Landroid/widget/StackView2$StackSlider;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/StackView2$StackSlider;->setIndex(I)V

    .line 1077
    iget-object v9, p0, Landroid/widget/StackView2;->mStackSlider3:Landroid/widget/StackView2$StackSlider;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/widget/StackView2$StackSlider;->setIndex(I)V

    .line 1079
    iget v9, p0, Landroid/widget/StackView2;->mSlideAmount:I

    int-to-float v9, v9

    mul-float/2addr v9, v11

    div-float v7, v1, v9

    .line 1080
    .local v7, rx:F
    iget v9, p0, Landroid/widget/StackView2;->mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_b7

    .line 1082
    iget v9, p0, Landroid/widget/StackView2;->mTouchSlop:I

    int-to-float v9, v9

    mul-float/2addr v9, v11

    sub-float v9, v2, v9

    div-float v6, v9, v13

    .line 1083
    .local v6, r:F
    iget v9, p0, Landroid/widget/StackView2;->mStackMode:I

    if-ne v9, v8, :cond_83

    sub-float v6, v11, v6

    .line 1087
    :cond_83
    iget-object v9, p0, Landroid/widget/StackView2;->mStackSlider5:Landroid/widget/StackView2$StackSlider;

    sub-float v10, v11, v6

    invoke-virtual {v9, v10}, Landroid/widget/StackView2$StackSlider;->setYProgress(F)V

    .line 1088
    cmpg-float v9, v6, v12

    if-gez v9, :cond_95

    .line 1089
    iget-object v9, p0, Landroid/widget/StackView2;->mStackSlider4:Landroid/widget/StackView2$StackSlider;

    sub-float v10, v11, v6

    invoke-virtual {v9, v10}, Landroid/widget/StackView2$StackSlider;->setYProgress(F)V

    .line 1090
    :cond_95
    iget-object v9, p0, Landroid/widget/StackView2;->mStackSlider1:Landroid/widget/StackView2$StackSlider;

    sub-float v10, v11, v6

    invoke-virtual {v9, v10}, Landroid/widget/StackView2$StackSlider;->setYProgress(F)V

    .line 1091
    iget-object v9, p0, Landroid/widget/StackView2;->mStackSlider2:Landroid/widget/StackView2$StackSlider;

    sub-float v10, v11, v6

    invoke-virtual {v9, v10}, Landroid/widget/StackView2$StackSlider;->setYProgress(F)V

    .line 1092
    iget-object v9, p0, Landroid/widget/StackView2;->mStackSlider3:Landroid/widget/StackView2$StackSlider;

    sub-float v10, v11, v6

    invoke-virtual {v9, v10}, Landroid/widget/StackView2$StackSlider;->setYProgress(F)V

    .line 1093
    cmpl-float v9, v6, v12

    if-ltz v9, :cond_20

    .line 1094
    iget-object v9, p0, Landroid/widget/StackView2;->mStackSlider4:Landroid/widget/StackView2$StackSlider;

    sub-float v10, v11, v6

    invoke-virtual {v9, v10}, Landroid/widget/StackView2$StackSlider;->setYProgress(F)V

    goto/16 :goto_20

    .line 1096
    .end local v6           #r:F
    :cond_b7
    iget v9, p0, Landroid/widget/StackView2;->mSwipeGestureType:I

    if-ne v9, v8, :cond_20

    .line 1098
    iget v9, p0, Landroid/widget/StackView2;->mTouchSlop:I

    int-to-float v9, v9

    mul-float/2addr v9, v11

    add-float/2addr v9, v2

    div-float v6, v9, v13

    .line 1099
    .restart local v6       #r:F
    iget v9, p0, Landroid/widget/StackView2;->mStackMode:I

    if-ne v9, v8, :cond_c8

    sub-float v6, v11, v6

    .line 1103
    :cond_c8
    iget-object v9, p0, Landroid/widget/StackView2;->mStackSlider5:Landroid/widget/StackView2$StackSlider;

    sub-float v10, v11, v6

    invoke-virtual {v9, v10}, Landroid/widget/StackView2$StackSlider;->setYProgress(F)V

    .line 1104
    iget-object v9, p0, Landroid/widget/StackView2;->mStackSlider4:Landroid/widget/StackView2$StackSlider;

    sub-float v10, v11, v6

    invoke-virtual {v9, v10}, Landroid/widget/StackView2$StackSlider;->setYProgress(F)V

    .line 1105
    iget-object v9, p0, Landroid/widget/StackView2;->mStackSlider1:Landroid/widget/StackView2$StackSlider;

    sub-float v10, v11, v6

    invoke-virtual {v9, v10}, Landroid/widget/StackView2$StackSlider;->setYProgress(F)V

    .line 1106
    iget-object v9, p0, Landroid/widget/StackView2;->mStackSlider2:Landroid/widget/StackView2$StackSlider;

    sub-float v10, v11, v6

    invoke-virtual {v9, v10}, Landroid/widget/StackView2$StackSlider;->setYProgress(F)V

    .line 1107
    iget-object v9, p0, Landroid/widget/StackView2;->mStackSlider3:Landroid/widget/StackView2$StackSlider;

    sub-float v10, v11, v6

    invoke-virtual {v9, v10}, Landroid/widget/StackView2$StackSlider;->setYProgress(F)V

    goto/16 :goto_20

    .line 1117
    .end local v6           #r:F
    .end local v7           #rx:F
    :pswitch_ed
    invoke-direct {p0, p1}, Landroid/widget/StackView2;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_20

    .line 1121
    :pswitch_f2
    iput v10, p0, Landroid/widget/StackView2;->mActivePointerId:I

    .line 1122
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/StackView2;->mSwipeGestureType:I

    goto/16 :goto_20

    .line 1069
    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_46
        :pswitch_4a
        :pswitch_f2
        :pswitch_45
        :pswitch_45
        :pswitch_ed
    .end packed-switch
.end method

.method public setStackView2index(Z)V
    .registers 2
    .parameter "bl"

    .prologue
    .line 572
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->setStackView2index(Z)V

    .line 573
    return-void
.end method

.method public showNext()V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 582
    iget v1, p0, Landroid/widget/StackView2;->mSwipeGestureType:I

    if-eqz v1, :cond_6

    .line 592
    :goto_5
    return-void

    .line 583
    :cond_6
    iget-boolean v1, p0, Landroid/widget/StackView2;->mTransitionIsSetup:Z

    if-nez v1, :cond_1f

    .line 584
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/StackView2;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    .line 585
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_1f

    .line 586
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/StackView2;->setupStackSlider(Landroid/view/View;I)V

    .line 587
    iget-object v1, p0, Landroid/widget/StackView2;->mStackSlider:Landroid/widget/StackView2$StackSlider;

    invoke-virtual {v1, v2}, Landroid/widget/StackView2$StackSlider;->setYProgress(F)V

    .line 588
    iget-object v1, p0, Landroid/widget/StackView2;->mStackSlider:Landroid/widget/StackView2$StackSlider;

    invoke-virtual {v1, v2}, Landroid/widget/StackView2$StackSlider;->setXProgress(F)V

    .line 591
    .end local v0           #v:Landroid/view/View;
    :cond_1f
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    goto :goto_5
.end method

.method showOnly(IZ)V
    .registers 13
    .parameter "childIndex"
    .parameter "animate"

    .prologue
    const/4 v9, 0x0

    .line 616
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 620
    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    .local v2, j:I
    :goto_6
    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    if-lt v2, v6, :cond_4e

    .line 622
    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    div-int/lit8 v7, v7, 0x2

    add-int v3, v6, v7

    .line 623
    .local v3, middle:I
    const/4 v0, 0x0

    .line 624
    .local v0, i:I
    if-gt v2, v3, :cond_4c

    .line 626
    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    sub-int v7, v3, v2

    add-int v0, v6, v7

    .line 630
    :goto_20
    invoke-virtual {p0}, Landroid/widget/StackView2;->getWindowSize()I

    move-result v6

    invoke-virtual {p0, v0, v6}, Landroid/widget/StackView2;->modulo(II)I

    move-result v1

    .line 632
    .local v1, index:I
    iget-object v6, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    .line 633
    .local v5, vm:Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    if-eqz v5, :cond_49

    .line 634
    iget-object v6, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v4, v6, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 635
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_49

    .line 636
    invoke-virtual {v4}, Landroid/view/View;->bringToFront()V

    .line 620
    .end local v4           #v:Landroid/view/View;
    :cond_49
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 629
    .end local v1           #index:I
    .end local v5           #vm:Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    :cond_4c
    move v0, v2

    goto :goto_20

    .line 642
    .end local v0           #i:I
    .end local v3           #middle:I
    :cond_4e
    iput-boolean v9, p0, Landroid/widget/StackView2;->mTransitionIsSetup:Z

    .line 643
    iput-boolean v9, p0, Landroid/widget/StackView2;->mClickFeedbackIsValid:Z

    .line 644
    return-void
.end method

.method public showPrevious()V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 602
    iget v1, p0, Landroid/widget/StackView2;->mSwipeGestureType:I

    if-eqz v1, :cond_6

    .line 612
    :goto_5
    return-void

    .line 603
    :cond_6
    iget-boolean v1, p0, Landroid/widget/StackView2;->mTransitionIsSetup:Z

    if-nez v1, :cond_20

    .line 604
    invoke-virtual {p0, v2}, Landroid/widget/StackView2;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    .line 605
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_20

    .line 606
    invoke-direct {p0, v0, v2}, Landroid/widget/StackView2;->setupStackSlider(Landroid/view/View;I)V

    .line 607
    iget-object v1, p0, Landroid/widget/StackView2;->mStackSlider:Landroid/widget/StackView2$StackSlider;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/widget/StackView2$StackSlider;->setYProgress(F)V

    .line 608
    iget-object v1, p0, Landroid/widget/StackView2;->mStackSlider:Landroid/widget/StackView2$StackSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/StackView2$StackSlider;->setXProgress(F)V

    .line 611
    .end local v0           #v:Landroid/view/View;
    :cond_20
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showPrevious()V

    goto :goto_5
.end method

.method showTapFeedback(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 661
    invoke-virtual {p0}, Landroid/widget/StackView2;->updateClickFeedback()V

    .line 662
    iget-object v0, p0, Landroid/widget/StackView2;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 663
    iget-object v0, p0, Landroid/widget/StackView2;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 664
    invoke-virtual {p0}, Landroid/widget/StackView2;->invalidate()V

    .line 665
    return-void
.end method

.method transformViewForTransition(IILandroid/view/View;Z)V
    .registers 12
    .parameter "fromIndex"
    .parameter "toIndex"
    .parameter "view"
    .parameter "animate"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 383
    if-nez p4, :cond_1d

    move-object v1, p3

    .line 384
    check-cast v1, Landroid/widget/StackView2$StackFrame;

    invoke-virtual {v1}, Landroid/widget/StackView2$StackFrame;->cancelSliderAnimator()Z

    .line 385
    invoke-virtual {p3, v3}, Landroid/view/View;->setRotationX(F)V

    .line 386
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/StackView2$LayoutParams;

    .line 387
    .local v0, lp:Landroid/widget/StackView2$LayoutParams;
    invoke-virtual {v0, v2}, Landroid/widget/StackView2$LayoutParams;->setVerticalOffset(I)V

    .line 388
    invoke-virtual {v0, v2}, Landroid/widget/StackView2$LayoutParams;->setHorizontalOffset(I)V

    .line 391
    .end local v0           #lp:Landroid/widget/StackView2$LayoutParams;
    :cond_1d
    if-ne p1, v5, :cond_36

    invoke-virtual {p0}, Landroid/widget/StackView2;->getNumActiveViews()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_36

    .line 392
    invoke-direct {p0, p2, p3, v2}, Landroid/widget/StackView2;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 393
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 394
    invoke-virtual {p3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 469
    :cond_30
    :goto_30
    if-eq p2, v5, :cond_35

    .line 470
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/StackView2;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 472
    :cond_35
    return-void

    .line 396
    :cond_36
    if-nez p1, :cond_47

    if-ne p2, v6, :cond_47

    move-object v1, p3

    .line 398
    check-cast v1, Landroid/widget/StackView2$StackFrame;

    invoke-virtual {v1}, Landroid/widget/StackView2$StackFrame;->cancelSliderAnimator()Z

    .line 399
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 400
    invoke-virtual {p3, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_30

    .line 442
    :cond_47
    if-nez p2, :cond_51

    .line 444
    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    .line 445
    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_30

    .line 446
    :cond_51
    if-eqz p1, :cond_55

    if-ne p1, v6, :cond_6d

    :cond_55
    if-le p2, v6, :cond_6d

    .line 447
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 448
    invoke-virtual {p3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 449
    invoke-virtual {p3, v3}, Landroid/view/View;->setRotationX(F)V

    .line 450
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/StackView2$LayoutParams;

    .line 451
    .restart local v0       #lp:Landroid/widget/StackView2$LayoutParams;
    invoke-virtual {v0, v2}, Landroid/widget/StackView2$LayoutParams;->setVerticalOffset(I)V

    .line 452
    invoke-virtual {v0, v2}, Landroid/widget/StackView2$LayoutParams;->setHorizontalOffset(I)V

    goto :goto_30

    .line 453
    .end local v0           #lp:Landroid/widget/StackView2$LayoutParams;
    :cond_6d
    if-ne p1, v5, :cond_76

    .line 454
    invoke-virtual {p3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 455
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_30

    .line 456
    :cond_76
    if-ne p2, v5, :cond_30

    .line 457
    if-eqz p4, :cond_85

    .line 458
    new-instance v1, Landroid/widget/StackView2$1;

    invoke-direct {v1, p0, p3}, Landroid/widget/StackView2$1;-><init>(Landroid/widget/StackView2;Landroid/view/View;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/StackView2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_30

    .line 464
    :cond_85
    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_30
.end method

.method updateClickFeedback()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 647
    iget-boolean v1, p0, Landroid/widget/StackView2;->mClickFeedbackIsValid:Z

    if-nez v1, :cond_2c

    .line 648
    invoke-virtual {p0, v4}, Landroid/widget/StackView2;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    .line 649
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_2a

    .line 650
    iget-object v1, p0, Landroid/widget/StackView2;->mClickFeedback:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/StackView2;->sHolographicHelper:Landroid/widget/StackView2$HolographicHelper;

    iget v3, p0, Landroid/widget/StackView2;->mClickColor:I

    invoke-virtual {v2, v0, v3}, Landroid/widget/StackView2$HolographicHelper;->createClickOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 652
    iget-object v1, p0, Landroid/widget/StackView2;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 653
    iget-object v1, p0, Landroid/widget/StackView2;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 655
    :cond_2a
    iput-boolean v4, p0, Landroid/widget/StackView2;->mClickFeedbackIsValid:Z

    .line 657
    .end local v0           #v:Landroid/view/View;
    :cond_2c
    return-void
.end method
