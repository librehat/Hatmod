.class public final Landroid/view/MotionEvent$PointerProperties;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerProperties"
.end annotation


# instance fields
.field public id:I

.field public toolType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3369
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3370
    invoke-virtual {p0}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 3371
    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent$PointerProperties;)V
    .registers 2
    .parameter "other"

    .prologue
    .line 3378
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3379
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerProperties;->copyFrom(Landroid/view/MotionEvent$PointerProperties;)V

    .line 3380
    return-void
.end method

.method public static createArray(I)[Landroid/view/MotionEvent$PointerProperties;
    .registers 4
    .parameter "size"

    .prologue
    .line 3384
    new-array v0, p0, [Landroid/view/MotionEvent$PointerProperties;

    .line 3385
    .local v0, array:[Landroid/view/MotionEvent$PointerProperties;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, p0, :cond_f

    .line 3386
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v0, v1

    .line 3385
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3388
    :cond_f
    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 3411
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 3412
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 3413
    return-void
.end method

.method public copyFrom(Landroid/view/MotionEvent$PointerProperties;)V
    .registers 3
    .parameter "other"

    .prologue
    .line 3421
    iget v0, p1, Landroid/view/MotionEvent$PointerProperties;->id:I

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 3422
    iget v0, p1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 3423
    return-void
.end method
