.class public Landroid/view/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final PRESSURE_THRESHOLD:F = 0.67f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"


# instance fields
.field private mActive0MostRecent:Z

.field private mActiveId0:I

.field private mActiveId1:I

.field private mBottomSlopEdge:F

.field private final mContext:Landroid/content/Context;

.field private mCurrEvent:Landroid/view/MotionEvent;

.field private mCurrFingerDiffX:F

.field private mCurrFingerDiffY:F

.field private mCurrLen:F

.field private mCurrPressure:F

.field private final mEdgeSlop:F

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureInProgress:Z

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mInvalidGesture:Z

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mPrevEvent:Landroid/view/MotionEvent;

.field private mPrevFingerDiffX:F

.field private mPrevFingerDiffY:F

.field private mPrevLen:F

.field private mPrevPressure:F

.field private mRightSlopEdge:F

.field private mScaleFactor:F

.field private mSloppyGesture:Z

.field private mTimeDelta:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .registers 6
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 173
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance v1, Landroid/view/InputEventConsistencyVerifier;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_f
    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 174
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 175
    .local v0, config:Landroid/view/ViewConfiguration;
    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 176
    iput-object p2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 177
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mEdgeSlop:F

    .line 178
    return-void

    .line 169
    .end local v0           #config:Landroid/view/ViewConfiguration;
    :cond_21
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private findNewActiveIndex(Landroid/view/MotionEvent;II)I
    .registers 14
    .parameter "ev"
    .parameter "otherActiveId"
    .parameter "oldIndex"

    .prologue
    .line 487
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .line 490
    .local v5, pointerCount:I
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 491
    .local v4, otherActiveIndex:I
    const/4 v3, -0x1

    .line 494
    .local v3, newActiveIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v5, :cond_2f

    .line 495
    if-eq v2, p3, :cond_30

    if-eq v2, v4, :cond_30

    .line 496
    iget v1, p0, Landroid/view/ScaleGestureDetector;->mEdgeSlop:F

    .line 497
    .local v1, edgeSlop:F
    iget v6, p0, Landroid/view/ScaleGestureDetector;->mRightSlopEdge:F

    .line 498
    .local v6, rightSlop:F
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mBottomSlopEdge:F

    .line 499
    .local v0, bottomSlop:F
    invoke-static {p1, v2}, Landroid/view/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 500
    .local v7, x:F
    invoke-static {p1, v2}, Landroid/view/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 501
    .local v8, y:F
    cmpl-float v9, v7, v1

    if-ltz v9, :cond_30

    cmpl-float v9, v8, v1

    if-ltz v9, :cond_30

    cmpg-float v9, v7, v6

    if-gtz v9, :cond_30

    cmpg-float v9, v8, v0

    if-gtz v9, :cond_30

    .line 502
    move v3, v2

    .line 508
    .end local v0           #bottomSlop:F
    .end local v1           #edgeSlop:F
    .end local v6           #rightSlop:F
    .end local v7           #x:F
    .end local v8           #y:F
    :cond_2f
    return v3

    .line 494
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method private static getRawX(Landroid/view/MotionEvent;I)F
    .registers 5
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 515
    if-gez p1, :cond_4

    const/4 v1, 0x1

    .line 518
    :goto_3
    return v1

    .line 516
    :cond_4
    if-nez p1, :cond_b

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    goto :goto_3

    .line 517
    :cond_b
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float v0, v1, v2

    .line 518
    .local v0, offset:F
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v0

    goto :goto_3
.end method

.method private static getRawY(Landroid/view/MotionEvent;I)F
    .registers 5
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 525
    if-gez p1, :cond_4

    const/4 v1, 0x1

    .line 528
    :goto_3
    return v1

    .line 526
    :cond_4
    if-nez p1, :cond_b

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    goto :goto_3

    .line 527
    :cond_b
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float v0, v1, v2

    .line 528
    .local v0, offset:F
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v0

    goto :goto_3
.end method

.method private reset()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 583
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_e

    .line 584
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 585
    iput-object v3, p0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 587
    :cond_e
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_19

    .line 588
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 589
    iput-object v3, p0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 591
    :cond_19
    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mSloppyGesture:Z

    .line 592
    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    .line 593
    iput v2, p0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 594
    iput v2, p0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 595
    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mInvalidGesture:Z

    .line 596
    return-void
.end method

.method private setContext(Landroid/view/MotionEvent;)V
    .registers 26
    .parameter "curr"

    .prologue
    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->recycle()V

    .line 535
    :cond_11
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 537
    const/high16 v20, -0x4080

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrLen:F

    .line 538
    const/high16 v20, -0x4080

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevLen:F

    .line 539
    const/high16 v20, -0x4080

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    .line 541
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 543
    .local v11, prev:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 544
    .local v12, prevIndex0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 545
    .local v13, prevIndex1:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 546
    .local v3, currIndex0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 548
    .local v4, currIndex1:I
    if-ltz v12, :cond_73

    if-ltz v13, :cond_73

    if-ltz v3, :cond_73

    if-gez v4, :cond_9d

    .line 549
    :cond_73
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInvalidGesture:Z

    .line 550
    const-string v20, "ScaleGestureDetector"

    const-string v21, "Invalid MotionEvent stream detected."

    new-instance v22, Ljava/lang/Throwable;

    invoke-direct/range {v22 .. v22}, Ljava/lang/Throwable;-><init>()V

    invoke-static/range {v20 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 551
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9c

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 580
    :cond_9c
    :goto_9c
    return-void

    .line 557
    :cond_9d
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 558
    .local v16, px0:F
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 559
    .local v18, py0:F
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 560
    .local v17, px1:F
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    .line 561
    .local v19, py1:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 562
    .local v7, cx0:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 563
    .local v9, cy0:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 564
    .local v8, cx1:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 566
    .local v10, cy1:F
    sub-float v14, v17, v16

    .line 567
    .local v14, pvx:F
    sub-float v15, v19, v18

    .line 568
    .local v15, pvy:F
    sub-float v5, v8, v7

    .line 569
    .local v5, cvx:F
    sub-float v6, v10, v9

    .line 570
    .local v6, cvy:F
    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffX:F

    .line 571
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffY:F

    .line 572
    move-object/from16 v0, p0

    iput v5, v0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffX:F

    .line 573
    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffY:F

    .line 575
    const/high16 v20, 0x3f00

    mul-float v20, v20, v5

    add-float v20, v20, v7

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 576
    const/high16 v20, 0x3f00

    mul-float v20, v20, v6

    add-float v20, v20, v9

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 577
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v22

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mTimeDelta:J

    .line 578
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v20

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrPressure:F

    .line 579
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v20

    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevPressure:F

    goto/16 :goto_9c
.end method


# virtual methods
.method public getCurrentSpan()F
    .registers 5

    .prologue
    .line 643
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_17

    .line 644
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffX:F

    .line 645
    .local v0, cvx:F
    iget v1, p0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffY:F

    .line 646
    .local v1, cvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mCurrLen:F

    .line 648
    .end local v0           #cvx:F
    .end local v1           #cvy:F
    :cond_17
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrLen:F

    return v2
.end method

.method public getCurrentSpanX()F
    .registers 2

    .prologue
    .line 658
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffX:F

    return v0
.end method

.method public getCurrentSpanY()F
    .registers 2

    .prologue
    .line 668
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffY:F

    return v0
.end method

.method public getEventTime()J
    .registers 3

    .prologue
    .line 736
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFocusX()F
    .registers 2

    .prologue
    .line 618
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .registers 2

    .prologue
    .line 633
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .registers 5

    .prologue
    .line 678
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mPrevLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_17

    .line 679
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffX:F

    .line 680
    .local v0, pvx:F
    iget v1, p0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffY:F

    .line 681
    .local v1, pvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mPrevLen:F

    .line 683
    .end local v0           #pvx:F
    .end local v1           #pvy:F
    :cond_17
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mPrevLen:F

    return v2
.end method

.method public getPreviousSpanX()F
    .registers 2

    .prologue
    .line 693
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffX:F

    return v0
.end method

.method public getPreviousSpanY()F
    .registers 2

    .prologue
    .line 703
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffY:F

    return v0
.end method

.method public getScaleFactor()F
    .registers 3

    .prologue
    .line 714
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    .line 715
    invoke-virtual {p0}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    .line 717
    :cond_13
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    return v0
.end method

.method public getTimeDelta()J
    .registers 3

    .prologue
    .line 727
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mTimeDelta:J

    return-wide v0
.end method

.method public isInProgress()Z
    .registers 2

    .prologue
    .line 603
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 32
    .parameter "event"

    .prologue
    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v27, v0

    if-eqz v27, :cond_19

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 185
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 187
    .local v3, action:I
    if-nez v3, :cond_22

    .line 188
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    .line 191
    :cond_22
    const/4 v10, 0x1

    .line 192
    .local v10, handled:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInvalidGesture:Z

    move/from16 v27, v0

    if-eqz v27, :cond_4a

    .line 193
    const/4 v10, 0x0

    .line 480
    :cond_2c
    :goto_2c
    if-nez v10, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v27, v0

    if-eqz v27, :cond_47

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_47
    move/from16 v27, v10

    .line 483
    :goto_49
    return v27

    .line 194
    :cond_4a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    move/from16 v27, v0

    if-nez v27, :cond_42a

    .line 195
    packed-switch v3, :pswitch_data_6b8

    :pswitch_55
    goto :goto_2c

    .line 197
    :pswitch_56
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 198
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    goto :goto_2c

    .line 203
    :pswitch_6f
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto :goto_2c

    .line 210
    :pswitch_73
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 211
    .local v14, metrics:Landroid/util/DisplayMetrics;
    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mEdgeSlop:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mRightSlopEdge:F

    .line 212
    iget v0, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mEdgeSlop:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mBottomSlopEdge:F

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    if-eqz v27, :cond_c0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->recycle()V

    .line 215
    :cond_c0
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 216
    const-wide/16 v27, 0x0

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mTimeDelta:J

    .line 218
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v13

    .line 219
    .local v13, index1:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 220
    .local v12, index0:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 221
    if-ltz v12, :cond_f4

    if-ne v12, v13, :cond_10e

    .line 223
    :cond_f4
    if-ne v12, v13, :cond_181

    const/16 v27, -0x1

    :goto_f8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v12}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v12

    .line 224
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 226
    :cond_10e
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 228
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 234
    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/ScaleGestureDetector;->mEdgeSlop:F

    .line 235
    .local v8, edgeSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mRightSlopEdge:F

    move/from16 v21, v0

    .line 236
    .local v21, rightSlop:F
    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ScaleGestureDetector;->mBottomSlopEdge:F

    .line 237
    .local v7, bottomSlop:F
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/view/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v23

    .line 238
    .local v23, x0:F
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/view/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 239
    .local v25, y0:F
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/view/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v24

    .line 240
    .local v24, x1:F
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/view/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v26

    .line 242
    .local v26, y1:F
    cmpg-float v27, v23, v8

    if-ltz v27, :cond_14f

    cmpg-float v27, v25, v8

    if-ltz v27, :cond_14f

    cmpl-float v27, v23, v21

    if-gtz v27, :cond_14f

    cmpl-float v27, v25, v7

    if-lez v27, :cond_189

    :cond_14f
    const/16 v18, 0x1

    .line 244
    .local v18, p0sloppy:Z
    :goto_151
    cmpg-float v27, v24, v8

    if-ltz v27, :cond_161

    cmpg-float v27, v26, v8

    if-ltz v27, :cond_161

    cmpl-float v27, v24, v21

    if-gtz v27, :cond_161

    cmpl-float v27, v26, v7

    if-lez v27, :cond_18c

    :cond_161
    const/16 v19, 0x1

    .line 247
    .local v19, p1sloppy:Z
    :goto_163
    if-eqz v18, :cond_18f

    if-eqz v19, :cond_18f

    .line 248
    const/high16 v27, -0x4080

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 249
    const/high16 v27, -0x4080

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 250
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_2c

    .line 223
    .end local v7           #bottomSlop:F
    .end local v8           #edgeSlop:F
    .end local v18           #p0sloppy:Z
    .end local v19           #p1sloppy:Z
    .end local v21           #rightSlop:F
    .end local v23           #x0:F
    .end local v24           #x1:F
    .end local v25           #y0:F
    .end local v26           #y1:F
    :cond_181
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    goto/16 :goto_f8

    .line 242
    .restart local v7       #bottomSlop:F
    .restart local v8       #edgeSlop:F
    .restart local v21       #rightSlop:F
    .restart local v23       #x0:F
    .restart local v24       #x1:F
    .restart local v25       #y0:F
    .restart local v26       #y1:F
    :cond_189
    const/16 v18, 0x0

    goto :goto_151

    .line 244
    .restart local v18       #p0sloppy:Z
    :cond_18c
    const/16 v19, 0x0

    goto :goto_163

    .line 251
    .restart local v19       #p1sloppy:Z
    :cond_18f
    if-eqz v18, :cond_1b3

    .line 252
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 253
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 254
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_2c

    .line 255
    :cond_1b3
    if-eqz v19, :cond_1d7

    .line 256
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 257
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 258
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_2c

    .line 260
    :cond_1d7
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mSloppyGesture:Z

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_2c

    .line 267
    .end local v7           #bottomSlop:F
    .end local v8           #edgeSlop:F
    .end local v12           #index0:I
    .end local v13           #index1:I
    .end local v14           #metrics:Landroid/util/DisplayMetrics;
    .end local v18           #p0sloppy:Z
    .end local v19           #p1sloppy:Z
    .end local v21           #rightSlop:F
    .end local v23           #x0:F
    .end local v24           #x1:F
    .end local v25           #y0:F
    .end local v26           #y1:F
    :pswitch_1f5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mSloppyGesture:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2c

    .line 269
    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/ScaleGestureDetector;->mEdgeSlop:F

    .line 270
    .restart local v8       #edgeSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mRightSlopEdge:F

    move/from16 v21, v0

    .line 271
    .restart local v21       #rightSlop:F
    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ScaleGestureDetector;->mBottomSlopEdge:F

    .line 272
    .restart local v7       #bottomSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 273
    .restart local v12       #index0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 275
    .restart local v13       #index1:I
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/view/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v23

    .line 276
    .restart local v23       #x0:F
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/view/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 277
    .restart local v25       #y0:F
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/view/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v24

    .line 278
    .restart local v24       #x1:F
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/view/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v26

    .line 280
    .restart local v26       #y1:F
    cmpg-float v27, v23, v8

    if-ltz v27, :cond_24f

    cmpg-float v27, v25, v8

    if-ltz v27, :cond_24f

    cmpl-float v27, v23, v21

    if-gtz v27, :cond_24f

    cmpl-float v27, v25, v7

    if-lez v27, :cond_2d7

    :cond_24f
    const/16 v18, 0x1

    .line 282
    .restart local v18       #p0sloppy:Z
    :goto_251
    cmpg-float v27, v24, v8

    if-ltz v27, :cond_261

    cmpg-float v27, v26, v8

    if-ltz v27, :cond_261

    cmpl-float v27, v24, v21

    if-gtz v27, :cond_261

    cmpl-float v27, v26, v7

    if-lez v27, :cond_2db

    :cond_261
    const/16 v19, 0x1

    .line 285
    .restart local v19       #p1sloppy:Z
    :goto_263
    if-eqz v18, :cond_292

    .line 287
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v12}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v11

    .line 288
    .local v11, index:I
    if-ltz v11, :cond_292

    .line 289
    move v12, v11

    .line 290
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 291
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/view/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v23

    .line 292
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/view/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 293
    const/16 v18, 0x0

    .line 297
    .end local v11           #index:I
    :cond_292
    if-eqz v19, :cond_2c1

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v13}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v11

    .line 300
    .restart local v11       #index:I
    if-ltz v11, :cond_2c1

    .line 301
    move v13, v11

    .line 302
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 303
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/view/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v24

    .line 304
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/view/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v26

    .line 305
    const/16 v19, 0x0

    .line 309
    .end local v11           #index:I
    :cond_2c1
    if-eqz v18, :cond_2de

    if-eqz v19, :cond_2de

    .line 310
    const/high16 v27, -0x4080

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 311
    const/high16 v27, -0x4080

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    goto/16 :goto_2c

    .line 280
    .end local v18           #p0sloppy:Z
    .end local v19           #p1sloppy:Z
    :cond_2d7
    const/16 v18, 0x0

    goto/16 :goto_251

    .line 282
    .restart local v18       #p0sloppy:Z
    :cond_2db
    const/16 v19, 0x0

    goto :goto_263

    .line 312
    .restart local v19       #p1sloppy:Z
    :cond_2de
    if-eqz v18, :cond_2fa

    .line 313
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 314
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    goto/16 :goto_2c

    .line 315
    :cond_2fa
    if-eqz v19, :cond_316

    .line 316
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 317
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    goto/16 :goto_2c

    .line 319
    :cond_316
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mSloppyGesture:Z

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_2c

    .line 326
    .end local v7           #bottomSlop:F
    .end local v8           #edgeSlop:F
    .end local v12           #index0:I
    .end local v13           #index1:I
    .end local v18           #p0sloppy:Z
    .end local v19           #p1sloppy:Z
    .end local v21           #rightSlop:F
    .end local v23           #x0:F
    .end local v24           #x1:F
    .end local v25           #y0:F
    .end local v26           #y1:F
    :pswitch_334
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mSloppyGesture:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2c

    .line 327
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    .line 328
    .local v20, pointerCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 329
    .local v5, actionIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 331
    .local v4, actionId:I
    const/16 v27, 0x2

    move/from16 v0, v20

    move/from16 v1, v27

    if-le v0, v1, :cond_3a6

    .line 332
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v4, v0, :cond_37c

    .line 333
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v5}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v15

    .line 334
    .local v15, newIndex:I
    if-ltz v15, :cond_2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    goto/16 :goto_2c

    .line 335
    .end local v15           #newIndex:I
    :cond_37c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v4, v0, :cond_2c

    .line 336
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v5}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v15

    .line 337
    .restart local v15       #newIndex:I
    if-ltz v15, :cond_2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    goto/16 :goto_2c

    .line 341
    .end local v15           #newIndex:I
    :cond_3a6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v4, v0, :cond_3ed

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    :goto_3b6
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 343
    .restart local v11       #index:I
    if-gez v11, :cond_3f4

    .line 344
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInvalidGesture:Z

    .line 345
    const-string v27, "ScaleGestureDetector"

    const-string v28, "Invalid MotionEvent stream detected."

    new-instance v29, Ljava/lang/Throwable;

    invoke-direct/range {v29 .. v29}, Ljava/lang/Throwable;-><init>()V

    invoke-static/range {v27 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3e9

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 349
    :cond_3e9
    const/16 v27, 0x0

    goto/16 :goto_49

    .line 341
    .end local v11           #index:I
    :cond_3ed
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    goto :goto_3b6

    .line 352
    .restart local v11       #index:I
    :cond_3f4
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 354
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 355
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 356
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 357
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    goto/16 :goto_2c

    .line 364
    .end local v4           #actionId:I
    .end local v5           #actionIndex:I
    .end local v11           #index:I
    .end local v20           #pointerCount:I
    :cond_42a
    packed-switch v3, :pswitch_data_6ca

    :pswitch_42d
    goto/16 :goto_2c

    .line 458
    :pswitch_42f
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto/16 :goto_2c

    .line 367
    :pswitch_434
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 368
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v16, v0

    .line 369
    .local v16, oldActive0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v17, v0

    .line 370
    .local v17, oldActive1:I
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    .line 372
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 373
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    move/from16 v27, v0

    if-eqz v27, :cond_515

    .end local v16           #oldActive0:I
    :goto_462
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 374
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v27

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 375
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 377
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 378
    .restart local v12       #index0:I
    if-ltz v12, :cond_4a4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_4fc

    .line 380
    :cond_4a4
    const-string v27, "ScaleGestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Got "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {v3}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " with bad state while a gesture was in progress. "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "Did you forget to pass an event to "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "ScaleGestureDetector#onTouchEvent?"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_519

    const/16 v27, -0x1

    :goto_4e6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v12}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v12

    .line 386
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 389
    :cond_4fc
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_2c

    .end local v12           #index0:I
    .restart local v16       #oldActive0:I
    :cond_515
    move/from16 v16, v17

    .line 373
    goto/16 :goto_462

    .line 384
    .end local v16           #oldActive0:I
    .restart local v12       #index0:I
    :cond_519
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    goto :goto_4e6

    .line 396
    .end local v12           #index0:I
    .end local v17           #oldActive1:I
    :pswitch_520
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    .line 397
    .restart local v20       #pointerCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 398
    .restart local v5       #actionIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 400
    .restart local v4       #actionId:I
    const/4 v9, 0x0

    .line 401
    .local v9, gestureEnded:Z
    const/16 v27, 0x2

    move/from16 v0, v20

    move/from16 v1, v27

    if-le v0, v1, :cond_65f

    .line 402
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v4, v0, :cond_5fc

    .line 403
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v5}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v15

    .line 404
    .restart local v15       #newIndex:I
    if-ltz v15, :cond_5fa

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 406
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 407
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 408
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 409
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    .line 427
    .end local v15           #newIndex:I
    :cond_595
    :goto_595
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->recycle()V

    .line 428
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 429
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 434
    :goto_5ab
    if-eqz v9, :cond_2c

    .line 436
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 439
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v4, v0, :cond_662

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 440
    .local v6, activeId:I
    :goto_5be
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 441
    .restart local v11       #index:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 442
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 445
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    .line 446
    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 447
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    goto/16 :goto_2c

    .line 412
    .end local v6           #activeId:I
    .end local v11           #index:I
    .restart local v15       #newIndex:I
    :cond_5fa
    const/4 v9, 0x1

    goto :goto_595

    .line 414
    .end local v15           #newIndex:I
    :cond_5fc
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v4, v0, :cond_595

    .line 415
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v5}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v15

    .line 416
    .restart local v15       #newIndex:I
    if-ltz v15, :cond_65c

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 418
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 419
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 420
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 421
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_595

    .line 424
    :cond_65c
    const/4 v9, 0x1

    goto/16 :goto_595

    .line 431
    .end local v15           #newIndex:I
    :cond_65f
    const/4 v9, 0x1

    goto/16 :goto_5ab

    .line 439
    :cond_662
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    goto/16 :goto_5be

    .line 453
    .end local v4           #actionId:I
    .end local v5           #actionIndex:I
    .end local v9           #gestureEnded:Z
    .end local v20           #pointerCount:I
    :pswitch_668
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 454
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto/16 :goto_2c

    .line 462
    :pswitch_67a
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 467
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrPressure:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mPrevPressure:F

    move/from16 v28, v0

    div-float v27, v27, v28

    const v28, 0x3f2b851f

    cmpl-float v27, v27, v28

    if-lez v27, :cond_2c

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v22

    .line 470
    .local v22, updatePrevious:Z
    if-eqz v22, :cond_2c

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->recycle()V

    .line 472
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    goto/16 :goto_2c

    .line 195
    nop

    :pswitch_data_6b8
    .packed-switch 0x0
        :pswitch_56
        :pswitch_6f
        :pswitch_1f5
        :pswitch_55
        :pswitch_55
        :pswitch_73
        :pswitch_334
    .end packed-switch

    .line 364
    :pswitch_data_6ca
    .packed-switch 0x1
        :pswitch_42f
        :pswitch_67a
        :pswitch_668
        :pswitch_42d
        :pswitch_434
        :pswitch_520
    .end packed-switch
.end method
