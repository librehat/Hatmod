.class Landroid/widget/StackView2$StackSlider;
.super Ljava/lang/Object;
.source "StackView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/StackView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StackSlider"
.end annotation


# static fields
.field static final BEGINNING_OF_STACK_MODE:I = 0x1

.field static final END_OF_STACK_MODE:I = 0x2

.field static final NORMAL_MODE:I


# instance fields
.field mIndex:I

.field mMode:I

.field mView:Landroid/view/View;

.field mXProgress:F

.field mYProgress:F

.field final synthetic this$0:Landroid/widget/StackView2;


# direct methods
.method public constructor <init>(Landroid/widget/StackView2;)V
    .registers 3
    .parameter

    .prologue
    .line 1296
    iput-object p1, p0, Landroid/widget/StackView2$StackSlider;->this$0:Landroid/widget/StackView2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1294
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/StackView2$StackSlider;->mMode:I

    .line 1297
    return-void
.end method

.method public constructor <init>(Landroid/widget/StackView2;Landroid/widget/StackView2$StackSlider;)V
    .registers 4
    .parameter
    .parameter "copy"

    .prologue
    .line 1299
    iput-object p1, p0, Landroid/widget/StackView2$StackSlider;->this$0:Landroid/widget/StackView2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1294
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/StackView2$StackSlider;->mMode:I

    .line 1300
    iget-object v0, p2, Landroid/widget/StackView2$StackSlider;->mView:Landroid/view/View;

    iput-object v0, p0, Landroid/widget/StackView2$StackSlider;->mView:Landroid/view/View;

    .line 1301
    iget v0, p2, Landroid/widget/StackView2$StackSlider;->mYProgress:F

    iput v0, p0, Landroid/widget/StackView2$StackSlider;->mYProgress:F

    .line 1302
    iget v0, p2, Landroid/widget/StackView2$StackSlider;->mXProgress:F

    iput v0, p0, Landroid/widget/StackView2$StackSlider;->mXProgress:F

    .line 1303
    iget v0, p2, Landroid/widget/StackView2$StackSlider;->mMode:I

    iput v0, p0, Landroid/widget/StackView2$StackSlider;->mMode:I

    .line 1304
    return-void
.end method

.method private cubic(F)F
    .registers 7
    .parameter "r"

    .prologue
    const/high16 v4, 0x4000

    .line 1307
    mul-float v0, v4, p1

    const/high16 v1, 0x3f80

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4008

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0

    add-double/2addr v0, v2

    double-to-float v0, v0

    div-float/2addr v0, v4

    return v0
.end method

.method private getDuration(ZF)F
    .registers 15
    .parameter "invert"
    .parameter "velocity"

    .prologue
    const/high16 v11, 0x43c8

    const/4 v4, 0x0

    const-wide/high16 v9, 0x4000

    .line 1472
    iget-object v5, p0, Landroid/widget/StackView2$StackSlider;->mView:Landroid/view/View;

    if-eqz v5, :cond_77

    .line 1473
    iget-object v5, p0, Landroid/widget/StackView2$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/StackView2$LayoutParams;

    .line 1475
    .local v3, viewLp:Landroid/widget/StackView2$LayoutParams;
    iget v5, v3, Landroid/widget/StackView2$LayoutParams;->horizontalOffset:I

    int-to-double v5, v5

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget v7, v3, Landroid/widget/StackView2$LayoutParams;->verticalOffset:I

    int-to-double v7, v7

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v0, v5

    .line 1477
    .local v0, d:F
    iget-object v5, p0, Landroid/widget/StackView2$StackSlider;->this$0:Landroid/widget/StackView2;

    invoke-static {v5}, Landroid/widget/StackView2;->access$200(Landroid/widget/StackView2;)I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const v7, 0x3ecccccd

    iget-object v8, p0, Landroid/widget/StackView2$StackSlider;->this$0:Landroid/widget/StackView2;

    invoke-static {v8}, Landroid/widget/StackView2;->access$200(Landroid/widget/StackView2;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v2, v5

    .line 1480
    .local v2, maxd:F
    cmpl-float v5, p2, v4

    if-nez v5, :cond_57

    .line 1481
    if-eqz p1, :cond_54

    const/high16 v4, 0x3f80

    div-float v5, v0, v2

    sub-float/2addr v4, v5

    :goto_51
    mul-float v1, v4, v11

    .line 1493
    .end local v0           #d:F
    .end local v2           #maxd:F
    .end local v3           #viewLp:Landroid/widget/StackView2$LayoutParams;
    :cond_53
    :goto_53
    return v1

    .line 1481
    .restart local v0       #d:F
    .restart local v2       #maxd:F
    .restart local v3       #viewLp:Landroid/widget/StackView2$LayoutParams;
    :cond_54
    div-float v4, v0, v2

    goto :goto_51

    .line 1483
    :cond_57
    if-eqz p1, :cond_6e

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float v1, v0, v5

    .line 1485
    .local v1, duration:F
    :goto_5f
    const/high16 v5, 0x4248

    cmpg-float v5, v1, v5

    if-ltz v5, :cond_69

    cmpl-float v5, v1, v11

    if-lez v5, :cond_53

    .line 1487
    :cond_69
    invoke-direct {p0, p1, v4}, Landroid/widget/StackView2$StackSlider;->getDuration(ZF)F

    move-result v1

    goto :goto_53

    .line 1483
    .end local v1           #duration:F
    :cond_6e
    sub-float v5, v2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float v1, v5, v6

    goto :goto_5f

    .end local v0           #d:F
    .end local v2           #maxd:F
    .end local v3           #viewLp:Landroid/widget/StackView2$LayoutParams;
    :cond_77
    move v1, v4

    .line 1493
    goto :goto_53
.end method

.method private highlightAlphaInterpolator(F)F
    .registers 7
    .parameter "r"

    .prologue
    const/high16 v4, 0x3f80

    const v3, 0x3f59999a

    .line 1314
    const v0, 0x3ecccccd

    .line 1315
    .local v0, pivot:F
    cmpg-float v1, p1, v0

    if-gez v1, :cond_14

    .line 1316
    div-float v1, p1, v0

    invoke-direct {p0, v1}, Landroid/widget/StackView2$StackSlider;->cubic(F)F

    move-result v1

    mul-float/2addr v1, v3

    .line 1318
    :goto_13
    return v1

    :cond_14
    sub-float v1, p1, v0

    sub-float v2, v4, v0

    div-float/2addr v1, v2

    sub-float v1, v4, v1

    invoke-direct {p0, v1}, Landroid/widget/StackView2$StackSlider;->cubic(F)F

    move-result v1

    mul-float/2addr v1, v3

    goto :goto_13
.end method

.method private rotationInterpolator(F)F
    .registers 5
    .parameter "r"

    .prologue
    .line 1332
    const v0, 0x3e4ccccd

    .line 1333
    .local v0, pivot:F
    cmpg-float v1, p1, v0

    if-gez v1, :cond_9

    .line 1334
    const/4 v1, 0x0

    .line 1336
    :goto_8
    return v1

    :cond_9
    sub-float v1, p1, v0

    const/high16 v2, 0x3f80

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    goto :goto_8
.end method

.method private viewAlphaInterpolator(F)F
    .registers 5
    .parameter "r"

    .prologue
    .line 1323
    const v0, 0x3e99999a

    .line 1324
    .local v0, pivot:F
    cmpl-float v1, p1, v0

    if-lez v1, :cond_e

    .line 1325
    sub-float v1, p1, v0

    const/high16 v2, 0x3f80

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    .line 1327
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method


# virtual methods
.method getDurationForNeutralPosition()F
    .registers 3

    .prologue
    .line 1456
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/StackView2$StackSlider;->getDuration(ZF)F

    move-result v0

    return v0
.end method

.method getDurationForNeutralPosition(F)F
    .registers 3
    .parameter "velocity"

    .prologue
    .line 1464
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/widget/StackView2$StackSlider;->getDuration(ZF)F

    move-result v0

    return v0
.end method

.method getDurationForOffscreenPosition()F
    .registers 3

    .prologue
    .line 1460
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/StackView2$StackSlider;->getDuration(ZF)F

    move-result v0

    return v0
.end method

.method getDurationForOffscreenPosition(F)F
    .registers 3
    .parameter "velocity"

    .prologue
    .line 1468
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/widget/StackView2$StackSlider;->getDuration(ZF)F

    move-result v0

    return v0
.end method

.method public getXProgress()F
    .registers 2

    .prologue
    .line 1505
    iget v0, p0, Landroid/widget/StackView2$StackSlider;->mXProgress:F

    return v0
.end method

.method public getYProgress()F
    .registers 2

    .prologue
    .line 1499
    iget v0, p0, Landroid/widget/StackView2$StackSlider;->mYProgress:F

    return v0
.end method

.method public setIndex(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 1311
    iput p1, p0, Landroid/widget/StackView2$StackSlider;->mIndex:I

    .line 1312
    return-void
.end method

.method setMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 1452
    iput p1, p0, Landroid/widget/StackView2$StackSlider;->mMode:I

    .line 1453
    return-void
.end method

.method setView(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 1341
    iput-object p1, p0, Landroid/widget/StackView2$StackSlider;->mView:Landroid/view/View;

    .line 1342
    return-void
.end method

.method public setXProgress(F)V
    .registers 4
    .parameter "r"

    .prologue
    .line 1437
    const/high16 v1, 0x4000

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1438
    const/high16 v1, -0x4000

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1440
    iput p1, p0, Landroid/widget/StackView2$StackSlider;->mXProgress:F

    .line 1442
    iget-object v1, p0, Landroid/widget/StackView2$StackSlider;->mView:Landroid/view/View;

    if-nez v1, :cond_13

    .line 1449
    :goto_12
    return-void

    .line 1443
    :cond_13
    iget-object v1, p0, Landroid/widget/StackView2$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/StackView2$LayoutParams;

    .line 1446
    .local v0, viewLp:Landroid/widget/StackView2$LayoutParams;
    const v1, 0x3e4ccccd

    mul-float/2addr p1, v1

    .line 1447
    iget-object v1, p0, Landroid/widget/StackView2$StackSlider;->this$0:Landroid/widget/StackView2;

    invoke-static {v1}, Landroid/widget/StackView2;->access$200(Landroid/widget/StackView2;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/StackView2$LayoutParams;->setHorizontalOffset(I)V

    goto :goto_12
.end method

.method public setYProgress(F)V
    .registers 24
    .parameter "r"

    .prologue
    .line 1346
    const/4 v6, 0x1

    .line 1348
    .local v6, mScaleType:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView2$StackSlider;->mIndex:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_10

    .line 1350
    const/4 v6, -0x1

    .line 1352
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView2$StackSlider;->this$0:Landroid/widget/StackView2;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/StackView2;->access$000(Landroid/widget/StackView2;)F

    move-result v8

    .line 1354
    .local v8, maxPerspectiveShiftY:F
    const/high16 v16, 0x3f80

    move/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1355
    const/high16 v16, -0x4080

    move/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1357
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/StackView2$StackSlider;->mYProgress:F

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView2$StackSlider;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    if-nez v16, :cond_3d

    .line 1433
    :goto_3c
    return-void

    .line 1360
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView2$StackSlider;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/StackView2$LayoutParams;

    .line 1363
    .local v15, viewLp:Landroid/widget/StackView2$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView2$StackSlider;->this$0:Landroid/widget/StackView2;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/StackView2;->access$100(Landroid/widget/StackView2;)I

    move-result v16

    if-nez v16, :cond_1b4

    const/4 v14, 0x1

    .line 1367
    .local v14, stackDirection:I
    :goto_56
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView2$StackSlider;->mYProgress:F

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Float;->compare(FF)I

    move-result v16

    if-eqz v16, :cond_1b7

    const/high16 v16, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView2$StackSlider;->mYProgress:F

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Float;->compare(FF)I

    move-result v16

    if-eqz v16, :cond_1b7

    .line 1368
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView2$StackSlider;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayerType()I

    move-result v16

    if-nez v16, :cond_8b

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView2$StackSlider;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1377
    :cond_8b
    :goto_8b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView2$StackSlider;->mMode:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_25c

    goto :goto_3c

    .line 1379
    :pswitch_95
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView2$StackSlider;->mIndex:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1d2

    const/4 v3, 0x1

    .line 1380
    .local v3, isMiddle:I
    :goto_a4
    const v16, 0x3e4ccccd

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView2$StackSlider;->this$0:Landroid/widget/StackView2;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/StackView2;->getMeasuredHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3f666666

    mul-float v17, v17, v18

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    mul-float v12, v16, v17

    .line 1383
    .local v12, scaleShiftCorrectionY:F
    const v16, 0x3e266666

    mul-float v16, v16, v8

    int-to-float v0, v3

    move/from16 v17, v0

    const v18, 0x3eb33333

    mul-float v17, v17, v18

    mul-float v17, v17, v8

    add-float v5, v16, v17

    .line 1385
    .local v5, mItemTransAmount:F
    add-float v4, v5, v12

    .line 1386
    .local v4, mItemSlideAmount:F
    move/from16 v0, p1

    neg-float v0, v0

    move/from16 v16, v0

    int-to-float v0, v14

    move/from16 v17, v0

    mul-float v16, v16, v17

    mul-float v16, v16, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 1387
    .local v7, mVerticalOffset:I
    invoke-virtual {v15, v7}, Landroid/widget/StackView2$LayoutParams;->setVerticalOffset(I)V

    .line 1394
    if-lez v3, :cond_1d5

    const-wide/high16 v16, 0x3fe0

    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3fe0

    sub-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v2, v0

    .line 1396
    .local v2, alpha:F
    :goto_fd
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView2$StackSlider;->mIndex:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x3f80

    mul-float v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView2$StackSlider;->this$0:Landroid/widget/StackView2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v10, v16, v17

    .line 1398
    .local v10, r1:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView2$StackSlider;->mIndex:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_1d9

    const/4 v13, -0x1

    .line 1399
    .local v13, sclCrctY:I
    :goto_132
    const/16 v16, 0x0

    cmpg-float v16, p1, v16

    if-gez v16, :cond_147

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView2$StackSlider;->mIndex:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_147

    .line 1400
    const/4 v13, 0x1

    .line 1401
    :cond_147
    const/high16 v16, 0x3f80

    const v17, 0x3f4ccccd

    const/high16 v18, 0x3f00

    sub-float v18, v18, v10

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    mul-float v17, v17, v18

    sub-float v9, v16, v17

    .line 1402
    .local v9, now_scale:F
    const v16, 0x3e4ccccd

    mul-float v16, v16, p1

    int-to-float v0, v13

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v11, v9, v16

    .line 1405
    .local v11, scale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView2$StackSlider;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getAlpha()F

    move-result v16

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-nez v16, :cond_1dc

    const/16 v16, 0x0

    cmpl-float v16, v2, v16

    if-eqz v16, :cond_1dc

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView2$StackSlider;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-eqz v16, :cond_1dc

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView2$StackSlider;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 1413
    :cond_191
    :goto_191
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView2$StackSlider;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView2$StackSlider;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/view/View;->setScaleX(F)V

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView2$StackSlider;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_3c

    .line 1363
    .end local v2           #alpha:F
    .end local v3           #isMiddle:I
    .end local v4           #mItemSlideAmount:F
    .end local v5           #mItemTransAmount:F
    .end local v7           #mVerticalOffset:I
    .end local v9           #now_scale:F
    .end local v10           #r1:F
    .end local v11           #scale:F
    .end local v12           #scaleShiftCorrectionY:F
    .end local v13           #sclCrctY:I
    .end local v14           #stackDirection:I
    :cond_1b4
    const/4 v14, -0x1

    goto/16 :goto_56

    .line 1372
    .restart local v14       #stackDirection:I
    :cond_1b7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView2$StackSlider;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayerType()I

    move-result v16

    if-eqz v16, :cond_8b

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView2$StackSlider;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_8b

    .line 1379
    :cond_1d2
    const/4 v3, 0x0

    goto/16 :goto_a4

    .line 1394
    .restart local v3       #isMiddle:I
    .restart local v4       #mItemSlideAmount:F
    .restart local v5       #mItemTransAmount:F
    .restart local v7       #mVerticalOffset:I
    .restart local v12       #scaleShiftCorrectionY:F
    :cond_1d5
    const/high16 v2, 0x3f80

    goto/16 :goto_fd

    .line 1398
    .restart local v2       #alpha:F
    .restart local v10       #r1:F
    :cond_1d9
    const/4 v13, 0x1

    goto/16 :goto_132

    .line 1407
    .restart local v9       #now_scale:F
    .restart local v11       #scale:F
    .restart local v13       #sclCrctY:I
    :cond_1dc
    const/16 v16, 0x0

    cmpl-float v16, v2, v16

    if-nez v16, :cond_191

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView2$StackSlider;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getAlpha()F

    move-result v16

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-eqz v16, :cond_191

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView2$StackSlider;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_191

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView2$StackSlider;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    goto :goto_191

    .line 1421
    .end local v2           #alpha:F
    .end local v3           #isMiddle:I
    .end local v4           #mItemSlideAmount:F
    .end local v5           #mItemTransAmount:F
    .end local v7           #mVerticalOffset:I
    .end local v9           #now_scale:F
    .end local v10           #r1:F
    .end local v11           #scale:F
    .end local v12           #scaleShiftCorrectionY:F
    .end local v13           #sclCrctY:I
    :pswitch_20a
    const v16, 0x3e4ccccd

    mul-float p1, p1, v16

    .line 1422
    neg-int v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView2$StackSlider;->this$0:Landroid/widget/StackView2;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/StackView2;->access$200(Landroid/widget/StackView2;)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/StackView2$LayoutParams;->setVerticalOffset(I)V

    goto/16 :goto_3c

    .line 1427
    :pswitch_233
    const/high16 v16, 0x3f80

    sub-float v16, v16, p1

    const v17, 0x3e4ccccd

    mul-float p1, v16, v17

    .line 1428
    int-to-float v0, v14

    move/from16 v16, v0

    mul-float v16, v16, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView2$StackSlider;->this$0:Landroid/widget/StackView2;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/StackView2;->access$200(Landroid/widget/StackView2;)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/StackView2$LayoutParams;->setVerticalOffset(I)V

    goto/16 :goto_3c

    .line 1377
    nop

    :pswitch_data_25c
    .packed-switch 0x0
        :pswitch_95
        :pswitch_233
        :pswitch_20a
    .end packed-switch
.end method
