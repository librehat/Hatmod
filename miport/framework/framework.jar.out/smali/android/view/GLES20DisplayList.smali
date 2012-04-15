.class Landroid/view/GLES20DisplayList;
.super Landroid/view/DisplayList;
.source "GLES20DisplayList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GLES20DisplayList$DisplayListFinalizer;
    }
.end annotation


# instance fields
.field final mBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCanvas:Landroid/view/GLES20RecordingCanvas;

.field private mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

.field private mValid:Z


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/view/DisplayList;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/view/GLES20DisplayList;->mBitmaps:Ljava/util/ArrayList;

    .line 91
    return-void
.end method


# virtual methods
.method end()V
    .registers 4

    .prologue
    .line 73
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20RecordingCanvas;

    if-eqz v0, :cond_1c

    .line 74
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    if-eqz v0, :cond_1d

    .line 75
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20RecordingCanvas;

    iget-object v1, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v1, v1, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-virtual {v0, v1}, Landroid/view/GLES20RecordingCanvas;->end(I)I

    .line 79
    :goto_11
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20RecordingCanvas;

    invoke-virtual {v0}, Landroid/view/GLES20RecordingCanvas;->recycle()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20RecordingCanvas;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GLES20DisplayList;->mValid:Z

    .line 83
    :cond_1c
    return-void

    .line 77
    :cond_1d
    new-instance v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget-object v1, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20RecordingCanvas;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/GLES20RecordingCanvas;->end(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/view/GLES20DisplayList$DisplayListFinalizer;-><init>(I)V

    iput-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    goto :goto_11
.end method

.method getNativeDisplayList()I
    .registers 3

    .prologue
    .line 39
    iget-boolean v0, p0, Landroid/view/GLES20DisplayList;->mValid:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    if-nez v0, :cond_10

    .line 40
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The display list is not valid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_10
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    return v0
.end method

.method getSize()I
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 88
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->getDisplayListSize(I)I

    move-result v0

    goto :goto_5
.end method

.method invalidate()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20RecordingCanvas;

    if-eqz v0, :cond_c

    .line 60
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20RecordingCanvas;

    invoke-virtual {v0}, Landroid/view/GLES20RecordingCanvas;->recycle()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20RecordingCanvas;

    .line 63
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GLES20DisplayList;->mValid:Z

    .line 64
    return-void
.end method

.method isValid()Z
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Landroid/view/GLES20DisplayList;->mValid:Z

    return v0
.end method

.method start()Landroid/view/HardwareCanvas;
    .registers 3

    .prologue
    .line 47
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20RecordingCanvas;

    if-eqz v0, :cond_c

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording has already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GLES20DisplayList;->mValid:Z

    .line 52
    invoke-static {p0}, Landroid/view/GLES20RecordingCanvas;->obtain(Landroid/view/GLES20DisplayList;)Landroid/view/GLES20RecordingCanvas;

    move-result-object v0

    iput-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20RecordingCanvas;

    .line 53
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20RecordingCanvas;

    invoke-virtual {v0}, Landroid/view/GLES20RecordingCanvas;->start()V

    .line 54
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20RecordingCanvas;

    return-object v0
.end method
