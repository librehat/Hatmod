.class final Landroid/view/GLES20Canvas$CanvasFinalizer;
.super Ljava/lang/Object;
.source "GLES20Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GLES20Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CanvasFinalizer"
.end annotation


# instance fields
.field private final mRenderer:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter "renderer"

    .prologue
    .line 131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput p1, p0, Landroid/view/GLES20Canvas$CanvasFinalizer;->mRenderer:I

    .line 133
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 138
    :try_start_0
    iget v0, p0, Landroid/view/GLES20Canvas$CanvasFinalizer;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->access$000(I)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 140
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 142
    return-void

    .line 140
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
