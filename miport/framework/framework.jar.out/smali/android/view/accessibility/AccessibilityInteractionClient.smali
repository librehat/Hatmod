.class public final Landroid/view/accessibility/AccessibilityInteractionClient;
.super Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;
.source "AccessibilityInteractionClient.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityInteractionClient"

.field public static final NO_ID:I = -0x1

.field private static final TIMEOUT_INTERACTION_MILLIS:J = 0x1388L

.field private static final sConnectionCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/accessibilityservice/IAccessibilityServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Landroid/view/accessibility/AccessibilityInteractionClient;

.field private static final sStaticLock:Ljava/lang/Object;


# instance fields
.field private mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private mFindAccessibilityNodeInfosResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstanceLock:Ljava/lang/Object;

.field private mInteractionId:I

.field private final mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPerformAccessibilityActionResult:Z

.field private mSameThreadMessage:Landroid/os/Message;

.field private final mTempBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sStaticLock:Ljava/lang/Object;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;-><init>()V

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mTempBounds:Landroid/graphics/Rect;

    return-void
.end method

.method private applyCompatibilityScaleIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;F)V
    .registers 5
    .parameter "info"
    .parameter "scale"

    .prologue
    .line 453
    const/high16 v1, 0x3f80

    cmpl-float v1, p2, v1

    if-nez v1, :cond_7

    .line 464
    :goto_6
    return-void

    .line 456
    :cond_7
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mTempBounds:Landroid/graphics/Rect;

    .line 457
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 458
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->scale(F)V

    .line 459
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 461
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 462
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->scale(F)V

    .line 463
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    goto :goto_6
.end method

.method private clearResultLocked()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 406
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 407
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 408
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPerformAccessibilityActionResult:Z

    .line 410
    return-void
.end method

.method private finalizeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IF)V
    .registers 5
    .parameter "info"
    .parameter "connectionId"
    .parameter "windowScale"

    .prologue
    .line 475
    if-eqz p1, :cond_c

    .line 476
    invoke-direct {p0, p1, p3}, Landroid/view/accessibility/AccessibilityInteractionClient;->applyCompatibilityScaleIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;F)V

    .line 477
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setConnectionId(I)V

    .line 478
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSealed(Z)V

    .line 480
    :cond_c
    return-void
.end method

.method private finalizeAccessibilityNodeInfos(Ljava/util/List;IF)V
    .registers 7
    .parameter
    .parameter "connectionId"
    .parameter "windowScale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;IF)V"
        }
    .end annotation

    .prologue
    .line 491
    .local p1, infos:Ljava/util/List;,"Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz p1, :cond_15

    .line 492
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 493
    .local v2, infosCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v2, :cond_15

    .line 494
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 495
    .local v1, info:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v1, p2, p3}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IF)V

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 498
    .end local v0           #i:I
    .end local v1           #info:Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2           #infosCount:I
    :cond_15
    return-void
.end method

.method private getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 6
    .parameter "interactionId"

    .prologue
    .line 322
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 323
    :try_start_3
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->waitForResultTimedLocked(I)Z

    move-result v1

    .line 324
    .local v1, success:Z
    if-eqz v1, :cond_10

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 325
    .local v0, result:Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_b
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearResultLocked()V

    .line 326
    monitor-exit v3

    return-object v0

    .line 324
    .end local v0           #result:Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_10
    const/4 v0, 0x0

    goto :goto_b

    .line 327
    .end local v1           #success:Z
    :catchall_12
    move-exception v2

    monitor-exit v3
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v2
.end method

.method private getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;
    .registers 6
    .parameter "interactionId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 353
    :try_start_3
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->waitForResultTimedLocked(I)Z

    move-result v1

    .line 354
    .local v1, success:Z
    if-eqz v1, :cond_10

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .line 355
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :goto_b
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearResultLocked()V

    .line 356
    monitor-exit v3

    return-object v0

    .line 354
    .end local v0           #result:Ljava/util/List;,"Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_10
    const/4 v0, 0x0

    goto :goto_b

    .line 357
    .end local v1           #success:Z
    :catchall_12
    move-exception v2

    monitor-exit v3
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v2
.end method

.method public static getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;
    .registers 2

    .prologue
    .line 102
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sStaticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_3
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sInstance:Landroid/view/accessibility/AccessibilityInteractionClient;

    if-nez v0, :cond_e

    .line 104
    new-instance v0, Landroid/view/accessibility/AccessibilityInteractionClient;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sInstance:Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 106
    :cond_e
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sInstance:Landroid/view/accessibility/AccessibilityInteractionClient;

    monitor-exit v1

    return-object v0

    .line 107
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private getPerformAccessibilityActionResult(I)Z
    .registers 6
    .parameter "interactionId"

    .prologue
    .line 381
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 382
    :try_start_3
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->waitForResultTimedLocked(I)Z

    move-result v1

    .line 383
    .local v1, success:Z
    if-eqz v1, :cond_10

    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPerformAccessibilityActionResult:Z

    .line 384
    .local v0, result:Z
    :goto_b
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearResultLocked()V

    .line 385
    monitor-exit v3

    return v0

    .line 383
    .end local v0           #result:Z
    :cond_10
    const/4 v0, 0x0

    goto :goto_b

    .line 386
    .end local v1           #success:Z
    :catchall_12
    move-exception v2

    monitor-exit v3
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v2
.end method

.method private getSameProcessMessageAndClear()Landroid/os/Message;
    .registers 4

    .prologue
    .line 507
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 508
    :try_start_3
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mSameThreadMessage:Landroid/os/Message;

    .line 509
    .local v0, result:Landroid/os/Message;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mSameThreadMessage:Landroid/os/Message;

    .line 510
    monitor-exit v2

    return-object v0

    .line 511
    .end local v0           #result:Landroid/os/Message;
    :catchall_a
    move-exception v1

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private waitForResultTimedLocked(I)Z
    .registers 12
    .parameter "interactionId"

    .prologue
    const/4 v7, 0x0

    .line 419
    const-wide/16 v5, 0x1388

    .line 420
    .local v5, waitTimeMillis:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 423
    .local v3, startTimeMillis:J
    :goto_7
    :try_start_7
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getSameProcessMessageAndClear()Landroid/os/Message;

    move-result-object v2

    .line 424
    .local v2, sameProcessMessage:Landroid/os/Message;
    if-eqz v2, :cond_14

    .line 425
    invoke-virtual {v2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 428
    :cond_14
    iget v8, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-ne v8, p1, :cond_1a

    .line 429
    const/4 v7, 0x1

    .line 437
    :cond_19
    return v7

    .line 431
    :cond_1a
    iget v8, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-gt v8, p1, :cond_19

    .line 434
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v3

    .line 435
    .local v0, elapsedTimeMillis:J
    const-wide/16 v8, 0x1388

    sub-long v5, v8, v0

    .line 436
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-lez v8, :cond_19

    .line 439
    iget-object v8, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v8, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_33} :catch_34

    goto :goto_7

    .line 440
    .end local v0           #elapsedTimeMillis:J
    .end local v2           #sameProcessMessage:Landroid/os/Message;
    :catch_34
    move-exception v8

    goto :goto_7
.end method


# virtual methods
.method public addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;)V
    .registers 5
    .parameter "connectionId"
    .parameter "connection"

    .prologue
    .line 533
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v1

    .line 534
    :try_start_3
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 535
    monitor-exit v1

    .line 536
    return-void

    .line 535
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(III)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 13
    .parameter "connectionId"
    .parameter "accessibilityWindowId"
    .parameter "accessibilityViewId"

    .prologue
    .line 134
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 135
    .local v0, connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_29

    .line 136
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 137
    .local v3, interactionId:I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    move v1, p2

    move v2, p3

    move-object v4, p0

    invoke-interface/range {v0 .. v6}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfoByAccessibilityId(IIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)F

    move-result v8

    .line 141
    .local v8, windowScale:F
    const/4 v1, 0x0

    cmpl-float v1, v8, v1

    if-lez v1, :cond_29

    .line 142
    invoke-direct {p0, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    .line 144
    .local v7, info:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v7, p1, v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IF)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_28

    .line 158
    .end local v0           #connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v3           #interactionId:I
    .end local v7           #info:Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v8           #windowScale:F
    :goto_27
    return-object v7

    .line 152
    :catch_28
    move-exception v1

    .line 158
    :cond_29
    const/4 v7, 0x0

    goto :goto_27
.end method

.method public findAccessibilityNodeInfoByViewIdInActiveWindow(II)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 11
    .parameter "connectionId"
    .parameter "viewId"

    .prologue
    .line 172
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 173
    .local v0, connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_28

    .line 174
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 175
    .local v2, interactionId:I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    move v1, p2

    move-object v3, p0

    invoke-interface/range {v0 .. v5}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfoByViewIdInActiveWindow(IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)F

    move-result v7

    .line 179
    .local v7, windowScale:F
    const/4 v1, 0x0

    cmpl-float v1, v7, v1

    if-lez v1, :cond_28

    .line 180
    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    .line 182
    .local v6, info:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v6, p1, v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IF)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_27

    .line 196
    .end local v0           #connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v2           #interactionId:I
    .end local v6           #info:Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v7           #windowScale:F
    :goto_26
    return-object v6

    .line 190
    :catch_27
    move-exception v1

    .line 196
    :cond_28
    const/4 v6, 0x0

    goto :goto_26
.end method

.method public findAccessibilityNodeInfosByViewText(ILjava/lang/String;II)Ljava/util/List;
    .registers 15
    .parameter "connectionId"
    .parameter "text"
    .parameter "accessibilityWindowId"
    .parameter "accessibilityViewId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 255
    .local v0, connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_2a

    .line 256
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    .line 257
    .local v4, interactionId:I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p0

    invoke-interface/range {v0 .. v7}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfosByViewText(Ljava/lang/String;IIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)F

    move-result v9

    .line 261
    .local v9, windowScale:F
    const/4 v1, 0x0

    cmpl-float v1, v9, v1

    if-lez v1, :cond_2a

    .line 262
    invoke-direct {p0, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;

    move-result-object v8

    .line 264
    .local v8, infos:Ljava/util/List;,"Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-direct {p0, v8, p1, v9}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAccessibilityNodeInfos(Ljava/util/List;IF)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_29

    .line 278
    .end local v0           #connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v4           #interactionId:I
    .end local v8           #infos:Ljava/util/List;,"Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v9           #windowScale:F
    :goto_28
    return-object v8

    .line 272
    :catch_29
    move-exception v1

    .line 278
    :cond_2a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    goto :goto_28
.end method

.method public findAccessibilityNodeInfosByViewTextInActiveWindow(ILjava/lang/String;)Ljava/util/List;
    .registers 11
    .parameter "connectionId"
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 212
    .local v0, connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_28

    .line 213
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 214
    .local v2, interactionId:I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    move-object v1, p2

    move-object v3, p0

    invoke-interface/range {v0 .. v5}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfosByViewTextInActiveWindow(Ljava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)F

    move-result v7

    .line 218
    .local v7, windowScale:F
    const/4 v1, 0x0

    cmpl-float v1, v7, v1

    if-lez v1, :cond_28

    .line 219
    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;

    move-result-object v6

    .line 221
    .local v6, infos:Ljava/util/List;,"Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-direct {p0, v6, p1, v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAccessibilityNodeInfos(Ljava/util/List;IF)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_27

    .line 235
    .end local v0           #connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v2           #interactionId:I
    .end local v6           #infos:Ljava/util/List;,"Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v7           #windowScale:F
    :goto_26
    return-object v6

    .line 229
    :catch_27
    move-exception v1

    .line 235
    :cond_28
    const/4 v6, 0x0

    goto :goto_26
.end method

.method public getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .registers 4
    .parameter "connectionId"

    .prologue
    .line 521
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v1

    .line 522
    :try_start_3
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    monitor-exit v1

    return-object v0

    .line 523
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public performAccessibilityAction(IIII)Z
    .registers 14
    .parameter "connectionId"
    .parameter "accessibilityWindowId"
    .parameter "accessibilityViewId"
    .parameter "action"

    .prologue
    .line 293
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 294
    .local v0, connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_24

    .line 295
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    .line 296
    .local v4, interactionId:I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p0

    invoke-interface/range {v0 .. v7}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performAccessibilityAction(IIIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v8

    .line 299
    .local v8, success:Z
    if-eqz v8, :cond_24

    .line 300
    invoke-direct {p0, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getPerformAccessibilityActionResult(I)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_23

    move-result v1

    .line 312
    .end local v0           #connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v4           #interactionId:I
    .end local v8           #success:Z
    :goto_22
    return v1

    .line 307
    :catch_23
    move-exception v1

    .line 312
    :cond_24
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public removeConnection(I)V
    .registers 4
    .parameter "connectionId"

    .prologue
    .line 544
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v1

    .line 545
    :try_start_3
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 546
    monitor-exit v1

    .line 547
    return-void

    .line 546
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .registers 5
    .parameter "info"
    .parameter "interactionId"

    .prologue
    .line 335
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 336
    :try_start_3
    iget v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-le p2, v0, :cond_b

    .line 337
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 338
    iput p2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 340
    :cond_b
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 341
    monitor-exit v1

    .line 342
    return-void

    .line 341
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    .registers 5
    .parameter
    .parameter "interactionId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p1, infos:Ljava/util/List;,"Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    :try_start_3
    iget v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-le p2, v0, :cond_b

    .line 367
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .line 368
    iput p2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 370
    :cond_b
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 371
    monitor-exit v1

    .line 372
    return-void

    .line 371
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public setPerformAccessibilityActionResult(ZI)V
    .registers 5
    .parameter "succeeded"
    .parameter "interactionId"

    .prologue
    .line 393
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 394
    :try_start_3
    iget v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-le p2, v0, :cond_b

    .line 395
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPerformAccessibilityActionResult:Z

    .line 396
    iput p2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 398
    :cond_b
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 399
    monitor-exit v1

    .line 400
    return-void

    .line 399
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public setSameThreadMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 117
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_3
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mSameThreadMessage:Landroid/os/Message;

    .line 119
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 120
    monitor-exit v1

    .line 121
    return-void

    .line 120
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method
