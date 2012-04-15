.class Landroid/view/GLES20Canvas;
.super Landroid/view/HardwareCanvas;
.source "GLES20Canvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GLES20Canvas$CanvasFinalizer;
    }
.end annotation


# static fields
.field public static final FLUSH_CACHES_FULL:I = 0x2

.field public static final FLUSH_CACHES_LAYERS:I = 0x0

.field public static final FLUSH_CACHES_MODERATE:I = 0x1

.field private static final MODIFIER_COLOR_FILTER:I = 0x4

.field private static final MODIFIER_NONE:I = 0x0

.field private static final MODIFIER_SHADER:I = 0x2

.field private static final MODIFIER_SHADOW:I = 0x1

.field private static sIsAvailable:Z


# instance fields
.field private final mClipBounds:Landroid/graphics/Rect;

.field private mFilter:Landroid/graphics/DrawFilter;

.field private mFinalizer:Landroid/view/GLES20Canvas$CanvasFinalizer;

.field private mHeight:I

.field private final mLine:[F

.field private final mOpaque:Z

.field private final mPoint:[F

.field private mRenderer:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    invoke-static {}, Landroid/view/GLES20Canvas;->nIsAvailable()Z

    move-result v0

    sput-boolean v0, Landroid/view/GLES20Canvas;->sIsAvailable:Z

    return-void
.end method

.method constructor <init>(IZ)V
    .registers 4
    .parameter "layer"
    .parameter "translucent"

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/view/HardwareCanvas;-><init>()V

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/GLES20Canvas;->mPoint:[F

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/GLES20Canvas;->mLine:[F

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/GLES20Canvas;->mClipBounds:Landroid/graphics/Rect;

    .line 93
    if-nez p2, :cond_23

    const/4 v0, 0x1

    :goto_17
    iput-boolean v0, p0, Landroid/view/GLES20Canvas;->mOpaque:Z

    .line 94
    invoke-static {p1}, Landroid/view/GLES20Canvas;->nCreateLayerRenderer(I)I

    move-result v0

    iput v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    .line 95
    invoke-direct {p0}, Landroid/view/GLES20Canvas;->setupFinalizer()V

    .line 96
    return-void

    .line 93
    :cond_23
    const/4 v0, 0x0

    goto :goto_17
.end method

.method constructor <init>(Z)V
    .registers 3
    .parameter "translucent"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/view/GLES20Canvas;-><init>(ZZ)V

    .line 87
    return-void
.end method

.method protected constructor <init>(ZZ)V
    .registers 4
    .parameter "record"
    .parameter "translucent"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/view/HardwareCanvas;-><init>()V

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/GLES20Canvas;->mPoint:[F

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/GLES20Canvas;->mLine:[F

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/GLES20Canvas;->mClipBounds:Landroid/graphics/Rect;

    .line 99
    if-nez p2, :cond_25

    const/4 v0, 0x1

    :goto_17
    iput-boolean v0, p0, Landroid/view/GLES20Canvas;->mOpaque:Z

    .line 101
    if-eqz p1, :cond_27

    .line 102
    invoke-static {}, Landroid/view/GLES20Canvas;->nCreateDisplayListRenderer()I

    move-result v0

    iput v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    .line 107
    :goto_21
    invoke-direct {p0}, Landroid/view/GLES20Canvas;->setupFinalizer()V

    .line 108
    return-void

    .line 99
    :cond_25
    const/4 v0, 0x0

    goto :goto_17

    .line 104
    :cond_27
    invoke-static {}, Landroid/view/GLES20Canvas;->nCreateRenderer()I

    move-result v0

    iput v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    goto :goto_21
.end method

.method static synthetic access$000(I)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-static {p0}, Landroid/view/GLES20Canvas;->nDestroyRenderer(I)V

    return-void
.end method

.method static destroyDisplayList(I)V
    .registers 1
    .parameter "displayList"

    .prologue
    .line 350
    invoke-static {p0}, Landroid/view/GLES20Canvas;->nDestroyDisplayList(I)V

    .line 351
    return-void
.end method

.method public static disableVsync()V
    .registers 0

    .prologue
    .line 243
    invoke-static {}, Landroid/view/GLES20Canvas;->nDisableVsync()V

    .line 244
    return-void
.end method

.method public static flushCaches(I)V
    .registers 1
    .parameter "level"

    .prologue
    .line 313
    invoke-static {p0}, Landroid/view/GLES20Canvas;->nFlushCaches(I)V

    .line 314
    return-void
.end method

.method static getDisplayListSize(I)I
    .registers 2
    .parameter "displayList"

    .prologue
    .line 356
    invoke-static {p0}, Landroid/view/GLES20Canvas;->nGetDisplayListSize(I)I

    move-result v0

    return v0
.end method

.method public static initCaches()V
    .registers 0

    .prologue
    .line 334
    invoke-static {}, Landroid/view/GLES20Canvas;->nInitCaches()V

    .line 335
    return-void
.end method

.method static isAvailable()Z
    .registers 1

    .prologue
    .line 75
    sget-boolean v0, Landroid/view/GLES20Canvas;->sIsAvailable:Z

    return v0
.end method

.method public static isBackBufferPreserved()Z
    .registers 1

    .prologue
    .line 232
    invoke-static {}, Landroid/view/GLES20Canvas;->nIsBackBufferPreserved()Z

    move-result v0

    return v0
.end method

.method private static native nCallDrawGLFunction(II)Z
.end method

.method private static native nClipRect(IFFFFI)Z
.end method

.method private static native nClipRect(IIIIII)Z
.end method

.method private static native nConcatMatrix(II)V
.end method

.method static native nCopyLayer(II)Z
.end method

.method private static native nCreateDisplayListRenderer()I
.end method

.method static native nCreateLayer(IIZ[I)I
.end method

.method private static native nCreateLayerRenderer(I)I
.end method

.method private static native nCreateRenderer()I
.end method

.method static native nCreateTextureLayer(Z[I)I
.end method

.method private static native nDestroyDisplayList(I)V
.end method

.method static native nDestroyLayer(I)V
.end method

.method static native nDestroyLayerDeferred(I)V
.end method

.method private static native nDestroyRenderer(I)V
.end method

.method private static native nDisableVsync()V
.end method

.method private static native nDrawArc(IFFFFFFZI)V
.end method

.method private static native nDrawBitmap(II[BFFFFFFFFI)V
.end method

.method private static native nDrawBitmap(II[BFFI)V
.end method

.method private static native nDrawBitmap(II[BII)V
.end method

.method private static native nDrawBitmapMesh(II[BII[FI[III)V
.end method

.method private static native nDrawCircle(IFFFI)V
.end method

.method private static native nDrawColor(III)V
.end method

.method private static native nDrawDisplayList(IIIILandroid/graphics/Rect;)Z
.end method

.method private static native nDrawLayer(IIFFI)V
.end method

.method private static native nDrawLines(I[FIII)V
.end method

.method private static native nDrawOval(IFFFFI)V
.end method

.method private static native nDrawPatch(II[B[BFFFFI)V
.end method

.method private static native nDrawPath(III)V
.end method

.method private static native nDrawPoints(I[FIII)V
.end method

.method private static native nDrawRect(IFFFFI)V
.end method

.method private static native nDrawRects(III)V
.end method

.method private static native nDrawRoundRect(IFFFFFFI)V
.end method

.method private static native nDrawText(ILjava/lang/String;IIFFII)V
.end method

.method private static native nDrawText(I[CIIFFII)V
.end method

.method private static native nDrawTextRun(ILjava/lang/String;IIIIFFII)V
.end method

.method private static native nDrawTextRun(I[CIIIIFFII)V
.end method

.method private static native nFinish(I)V
.end method

.method private static native nFlushCaches(I)V
.end method

.method private static native nGetClipBounds(ILandroid/graphics/Rect;)Z
.end method

.method private static native nGetDisplayList(II)I
.end method

.method private static native nGetDisplayListSize(I)I
.end method

.method private static native nGetMatrix(II)V
.end method

.method private static native nGetMaximumTextureHeight()I
.end method

.method private static native nGetMaximumTextureWidth()I
.end method

.method private static native nGetSaveCount(I)I
.end method

.method private static native nInitCaches()V
.end method

.method private static native nInterrupt(I)V
.end method

.method private static native nIsAvailable()Z
.end method

.method private static native nIsBackBufferPreserved()Z
.end method

.method private static native nOutputDisplayList(II)V
.end method

.method private static native nPrepare(IZ)V
.end method

.method private static native nPrepareDirty(IIIIIZ)V
.end method

.method private static native nPreserveBackBuffer()Z
.end method

.method private static native nQuickReject(IFFFFI)Z
.end method

.method private static native nResetDisplayListRenderer(I)V
.end method

.method private static native nResetModifiers(II)V
.end method

.method static native nResizeLayer(III[I)V
.end method

.method private static native nRestore(I)V
.end method

.method private static native nRestoreToCount(II)V
.end method

.method private static native nResume(I)V
.end method

.method private static native nRotate(IF)V
.end method

.method private static native nSave(II)I
.end method

.method private static native nSaveLayer(IFFFFII)I
.end method

.method private static native nSaveLayer(III)I
.end method

.method private static native nSaveLayerAlpha(IFFFFII)I
.end method

.method private static native nSaveLayerAlpha(III)I
.end method

.method private static native nScale(IFF)V
.end method

.method private static native nSetMatrix(II)V
.end method

.method static native nSetTextureLayerTransform(II)V
.end method

.method private static native nSetViewport(III)V
.end method

.method private static native nSetupColorFilter(II)V
.end method

.method private static native nSetupShader(II)V
.end method

.method private static native nSetupShadow(IFFFI)V
.end method

.method private static native nSkew(IFF)V
.end method

.method private static native nTerminateCaches()V
.end method

.method private static native nTranslate(IFF)V
.end method

.method static native nUpdateTextureLayer(IIIZLandroid/graphics/SurfaceTexture;)V
.end method

.method public static preserveBackBuffer()Z
    .registers 1

    .prologue
    .line 217
    invoke-static {}, Landroid/view/GLES20Canvas;->nPreserveBackBuffer()Z

    move-result v0

    return v0
.end method

.method private setupColorFilter(Landroid/graphics/Paint;)I
    .registers 5
    .parameter "paint"

    .prologue
    .line 1157
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 1158
    .local v0, filter:Landroid/graphics/ColorFilter;
    if-eqz v0, :cond_f

    .line 1159
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v2, v0, Landroid/graphics/ColorFilter;->nativeColorFilter:I

    invoke-static {v1, v2}, Landroid/view/GLES20Canvas;->nSetupColorFilter(II)V

    .line 1160
    const/4 v1, 0x4

    .line 1162
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private setupFinalizer()V
    .registers 3

    .prologue
    .line 111
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    if-nez v0, :cond_c

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not create GLES20Canvas renderer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_c
    new-instance v0, Landroid/view/GLES20Canvas$CanvasFinalizer;

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-direct {v0, v1}, Landroid/view/GLES20Canvas$CanvasFinalizer;-><init>(I)V

    iput-object v0, p0, Landroid/view/GLES20Canvas;->mFinalizer:Landroid/view/GLES20Canvas$CanvasFinalizer;

    .line 116
    return-void
.end method

.method private setupModifiers(Landroid/graphics/Bitmap;Landroid/graphics/Paint;)I
    .registers 6
    .parameter "b"
    .parameter "paint"

    .prologue
    .line 1119
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_d

    .line 1120
    invoke-direct {p0, p2}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)I

    move-result v1

    .line 1129
    :goto_c
    return v1

    .line 1123
    :cond_d
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 1124
    .local v0, filter:Landroid/graphics/ColorFilter;
    if-eqz v0, :cond_1c

    .line 1125
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v2, v0, Landroid/graphics/ColorFilter;->nativeColorFilter:I

    invoke-static {v1, v2}, Landroid/view/GLES20Canvas;->nSetupColorFilter(II)V

    .line 1126
    const/4 v1, 0x4

    goto :goto_c

    .line 1129
    :cond_1c
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private setupModifiers(Landroid/graphics/Paint;)I
    .registers 10
    .parameter "paint"

    .prologue
    .line 1133
    const/4 v1, 0x0

    .line 1135
    .local v1, modifiers:I
    iget-boolean v3, p1, Landroid/graphics/Paint;->hasShadow:Z

    if-eqz v3, :cond_14

    .line 1136
    iget v3, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v4, p1, Landroid/graphics/Paint;->shadowRadius:F

    iget v5, p1, Landroid/graphics/Paint;->shadowDx:F

    iget v6, p1, Landroid/graphics/Paint;->shadowDy:F

    iget v7, p1, Landroid/graphics/Paint;->shadowColor:I

    invoke-static {v3, v4, v5, v6, v7}, Landroid/view/GLES20Canvas;->nSetupShadow(IFFFI)V

    .line 1138
    or-int/lit8 v1, v1, 0x1

    .line 1141
    :cond_14
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    .line 1142
    .local v2, shader:Landroid/graphics/Shader;
    if-eqz v2, :cond_23

    .line 1143
    iget v3, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v4, v2, Landroid/graphics/Shader;->native_shader:I

    invoke-static {v3, v4}, Landroid/view/GLES20Canvas;->nSetupShader(II)V

    .line 1144
    or-int/lit8 v1, v1, 0x2

    .line 1147
    :cond_23
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 1148
    .local v0, filter:Landroid/graphics/ColorFilter;
    if-eqz v0, :cond_32

    .line 1149
    iget v3, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v4, v0, Landroid/graphics/ColorFilter;->nativeColorFilter:I

    invoke-static {v3, v4}, Landroid/view/GLES20Canvas;->nSetupColorFilter(II)V

    .line 1150
    or-int/lit8 v1, v1, 0x4

    .line 1153
    :cond_32
    return v1
.end method

.method public static terminateCaches()V
    .registers 0

    .prologue
    .line 325
    invoke-static {}, Landroid/view/GLES20Canvas;->nTerminateCaches()V

    .line 326
    return-void
.end method


# virtual methods
.method public callDrawGLFunction(I)Z
    .registers 3
    .parameter "drawGLFunction"

    .prologue
    .line 270
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nCallDrawGLFunction(II)Z

    move-result v0

    return v0
.end method

.method public clipPath(Landroid/graphics/Path;)Z
    .registers 3
    .parameter "path"

    .prologue
    .line 408
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    .registers 4
    .parameter "path"
    .parameter "op"

    .prologue
    .line 413
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clipRect(FFFF)Z
    .registers 11
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 418
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v5, v1, Landroid/graphics/Region$Op;->nativeInt:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nClipRect(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRect(FFFFLandroid/graphics/Region$Op;)Z
    .registers 12
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "op"

    .prologue
    .line 426
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v5, p5, Landroid/graphics/Region$Op;->nativeInt:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nClipRect(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRect(IIII)Z
    .registers 11
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 431
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v5, v1, Landroid/graphics/Region$Op;->nativeInt:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nClipRect(IIIIII)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/Rect;)Z
    .registers 8
    .parameter "rect"

    .prologue
    .line 439
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v5, v5, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nClipRect(IIIIII)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    .registers 9
    .parameter "rect"
    .parameter "op"

    .prologue
    .line 445
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nClipRect(IIIIII)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/RectF;)Z
    .registers 8
    .parameter "rect"

    .prologue
    .line 450
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v5, v5, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nClipRect(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z
    .registers 9
    .parameter "rect"
    .parameter "op"

    .prologue
    .line 456
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nClipRect(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRegion(Landroid/graphics/Region;)Z
    .registers 3
    .parameter "region"

    .prologue
    .line 461
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .registers 4
    .parameter "region"
    .parameter "op"

    .prologue
    .line 466
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public concat(Landroid/graphics/Matrix;)V
    .registers 4
    .parameter "matrix"

    .prologue
    .line 542
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nConcatMatrix(II)V

    .line 543
    return-void
.end method

.method public drawARGB(IIII)V
    .registers 7
    .parameter "a"
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 671
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p4, 0xff

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/GLES20Canvas;->drawColor(I)V

    .line 672
    return-void
.end method

.method public drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .registers 16
    .parameter "oval"
    .parameter "startAngle"
    .parameter "sweepAngle"
    .parameter "useCenter"
    .parameter "paint"

    .prologue
    .line 659
    invoke-direct {p0, p5}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)I

    move-result v9

    .line 660
    .local v9, modifiers:I
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v8, p5, Landroid/graphics/Paint;->mNativePaint:I

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v8}, Landroid/view/GLES20Canvas;->nDrawArc(IFFFFFFZI)V

    .line 662
    if-eqz v9, :cond_1d

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v9}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 663
    :cond_1d
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .registers 12
    .parameter "bitmap"
    .parameter "left"
    .parameter "top"
    .parameter "paint"

    .prologue
    const/4 v5, 0x0

    .line 690
    if-eqz p4, :cond_1c

    invoke-direct {p0, p1, p4}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Bitmap;Landroid/graphics/Paint;)I

    move-result v6

    .line 691
    .local v6, modifiers:I
    :goto_7
    if-nez p4, :cond_1e

    .line 692
    .local v5, nativePaint:I
    :goto_9
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-object v2, p1, Landroid/graphics/Bitmap;->mBuffer:[B

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nDrawBitmap(II[BFFI)V

    .line 693
    if-eqz v6, :cond_1b

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v6}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 694
    :cond_1b
    return-void

    .end local v5           #nativePaint:I
    .end local v6           #modifiers:I
    :cond_1c
    move v6, v5

    .line 690
    goto :goto_7

    .line 691
    .restart local v6       #modifiers:I
    :cond_1e
    iget v5, p4, Landroid/graphics/Paint;->mNativePaint:I

    goto :goto_9
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .registers 10
    .parameter "bitmap"
    .parameter "matrix"
    .parameter "paint"

    .prologue
    const/4 v1, 0x0

    .line 702
    if-eqz p3, :cond_1c

    invoke-direct {p0, p1, p3}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Bitmap;Landroid/graphics/Paint;)I

    move-result v0

    .line 703
    .local v0, modifiers:I
    :goto_7
    if-nez p3, :cond_1e

    .line 704
    .local v1, nativePaint:I
    :goto_9
    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v3, p1, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-object v4, p1, Landroid/graphics/Bitmap;->mBuffer:[B

    iget v5, p2, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v2, v3, v4, v5, v1}, Landroid/view/GLES20Canvas;->nDrawBitmap(II[BII)V

    .line 706
    if-eqz v0, :cond_1b

    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v2, v0}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 707
    :cond_1b
    return-void

    .end local v0           #modifiers:I
    .end local v1           #nativePaint:I
    :cond_1c
    move v0, v1

    .line 702
    goto :goto_7

    .line 703
    .restart local v0       #modifiers:I
    :cond_1e
    iget v1, p3, Landroid/graphics/Paint;->mNativePaint:I

    goto :goto_9
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 25
    .parameter "bitmap"
    .parameter "src"
    .parameter "dst"
    .parameter "paint"

    .prologue
    .line 715
    if-eqz p4, :cond_56

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Bitmap;Landroid/graphics/Paint;)I

    move-result v17

    .line 716
    .local v17, modifiers:I
    :goto_c
    if-nez p4, :cond_59

    const/4 v14, 0x0

    .line 719
    .local v14, nativePaint:I
    :goto_f
    if-nez p2, :cond_5e

    .line 720
    const/16 v19, 0x0

    .local v19, top:I
    move/from16 v16, v19

    .line 721
    .local v16, left:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    .line 722
    .local v18, right:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 730
    .local v15, bottom:I
    :goto_1d
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/GLES20Canvas;->mRenderer:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/graphics/Bitmap;->mBuffer:[B

    move/from16 v0, v16

    int-to-float v6, v0

    move/from16 v0, v19

    int-to-float v7, v0

    move/from16 v0, v18

    int-to-float v8, v0

    int-to-float v9, v15

    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    invoke-static/range {v3 .. v14}, Landroid/view/GLES20Canvas;->nDrawBitmap(II[BFFFFFFFFI)V

    .line 732
    if-eqz v17, :cond_55

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/GLES20Canvas;->mRenderer:I

    move/from16 v0, v17

    invoke-static {v3, v0}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 733
    :cond_55
    return-void

    .line 715
    .end local v14           #nativePaint:I
    .end local v15           #bottom:I
    .end local v16           #left:I
    .end local v17           #modifiers:I
    .end local v18           #right:I
    .end local v19           #top:I
    :cond_56
    const/16 v17, 0x0

    goto :goto_c

    .line 716
    .restart local v17       #modifiers:I
    :cond_59
    move-object/from16 v0, p4

    iget v14, v0, Landroid/graphics/Paint;->mNativePaint:I

    goto :goto_f

    .line 724
    .restart local v14       #nativePaint:I
    :cond_5e
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    .line 725
    .restart local v16       #left:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    .line 726
    .restart local v18       #right:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    .line 727
    .restart local v19       #top:I
    move-object/from16 v0, p2

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    .restart local v15       #bottom:I
    goto :goto_1d
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 19
    .parameter "bitmap"
    .parameter "src"
    .parameter "dst"
    .parameter "paint"

    .prologue
    .line 738
    if-eqz p4, :cond_3a

    move-object/from16 v0, p4

    invoke-direct {p0, p1, v0}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Bitmap;Landroid/graphics/Paint;)I

    move-result v13

    .line 739
    .local v13, modifiers:I
    :goto_8
    if-nez p4, :cond_3c

    const/4 v12, 0x0

    .line 742
    .local v12, nativePaint:I
    :goto_b
    if-nez p2, :cond_41

    .line 743
    const/4 v5, 0x0

    .local v5, top:F
    move v4, v5

    .line 744
    .local v4, left:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v6, v1

    .line 745
    .local v6, right:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v7, v1

    .line 753
    .local v7, bottom:F
    :goto_19
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v2, p1, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-object v3, p1, Landroid/graphics/Bitmap;->mBuffer:[B

    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v1 .. v12}, Landroid/view/GLES20Canvas;->nDrawBitmap(II[BFFFFFFFFI)V

    .line 755
    if-eqz v13, :cond_39

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v13}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 756
    :cond_39
    return-void

    .line 738
    .end local v4           #left:F
    .end local v5           #top:F
    .end local v6           #right:F
    .end local v7           #bottom:F
    .end local v12           #nativePaint:I
    .end local v13           #modifiers:I
    :cond_3a
    const/4 v13, 0x0

    goto :goto_8

    .line 739
    .restart local v13       #modifiers:I
    :cond_3c
    move-object/from16 v0, p4

    iget v12, v0, Landroid/graphics/Paint;->mNativePaint:I

    goto :goto_b

    .line 747
    .restart local v12       #nativePaint:I
    :cond_41
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v1

    .line 748
    .restart local v4       #left:F
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v1

    .line 749
    .restart local v6       #right:F
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v1

    .line 750
    .restart local v5       #top:F
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v1

    .restart local v7       #bottom:F
    goto :goto_19
.end method

.method public drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .registers 25
    .parameter "colors"
    .parameter "offset"
    .parameter "stride"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "hasAlpha"
    .parameter "paint"

    .prologue
    .line 766
    if-eqz p9, :cond_35

    move-object/from16 v0, p9

    invoke-direct {p0, v0}, Landroid/view/GLES20Canvas;->setupColorFilter(Landroid/graphics/Paint;)I

    move-result v14

    .line 767
    .local v14, modifier:I
    :goto_8
    if-eqz p8, :cond_37

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .local v6, config:Landroid/graphics/Bitmap$Config;
    :goto_c
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    .line 768
    invoke-static/range {v1 .. v6}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 769
    .local v13, b:Landroid/graphics/Bitmap;
    if-nez p9, :cond_3a

    const/4 v12, 0x0

    .line 770
    .local v12, nativePaint:I
    :goto_1d
    iget v7, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v8, v13, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-object v9, v13, Landroid/graphics/Bitmap;->mBuffer:[B

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-static/range {v7 .. v12}, Landroid/view/GLES20Canvas;->nDrawBitmap(II[BFFI)V

    .line 771
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 772
    if-eqz v14, :cond_34

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v14}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 773
    :cond_34
    return-void

    .line 766
    .end local v6           #config:Landroid/graphics/Bitmap$Config;
    .end local v12           #nativePaint:I
    .end local v13           #b:Landroid/graphics/Bitmap;
    .end local v14           #modifier:I
    :cond_35
    const/4 v14, 0x0

    goto :goto_8

    .line 767
    .restart local v14       #modifier:I
    :cond_37
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_c

    .line 769
    .restart local v6       #config:Landroid/graphics/Bitmap$Config;
    .restart local v13       #b:Landroid/graphics/Bitmap;
    :cond_3a
    move-object/from16 v0, p9

    iget v12, v0, Landroid/graphics/Paint;->mNativePaint:I

    goto :goto_1d
.end method

.method public drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .registers 20
    .parameter "colors"
    .parameter "offset"
    .parameter "stride"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "hasAlpha"
    .parameter "paint"

    .prologue
    .line 779
    int-to-float v4, p4

    int-to-float v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/view/GLES20Canvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    .line 780
    return-void
.end method

.method public drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .registers 22
    .parameter "bitmap"
    .parameter "meshWidth"
    .parameter "meshHeight"
    .parameter "verts"
    .parameter "vertOffset"
    .parameter "colors"
    .parameter "colorOffset"
    .parameter "paint"

    .prologue
    .line 785
    if-ltz p2, :cond_8

    if-ltz p3, :cond_8

    if-ltz p5, :cond_8

    if-gez p7, :cond_e

    .line 786
    :cond_8
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 789
    :cond_e
    if-eqz p2, :cond_12

    if-nez p3, :cond_13

    .line 805
    :cond_12
    :goto_12
    return-void

    .line 793
    :cond_13
    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v2, p3, 0x1

    mul-int v11, v1, v2

    .line 794
    .local v11, count:I
    move-object/from16 v0, p4

    array-length v1, v0

    mul-int/lit8 v2, v11, 0x2

    move/from16 v0, p5

    invoke-static {v1, v0, v2}, Landroid/view/GLES20Canvas;->checkRange(III)V

    .line 797
    const/16 p6, 0x0

    .line 798
    const/16 p7, 0x0

    .line 800
    if-eqz p8, :cond_4e

    move-object/from16 v0, p8

    invoke-direct {p0, p1, v0}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Bitmap;Landroid/graphics/Paint;)I

    move-result v12

    .line 801
    .local v12, modifiers:I
    :goto_2f
    if-nez p8, :cond_50

    const/4 v10, 0x0

    .line 802
    .local v10, nativePaint:I
    :goto_32
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v2, p1, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-object v3, p1, Landroid/graphics/Bitmap;->mBuffer:[B

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v10}, Landroid/view/GLES20Canvas;->nDrawBitmapMesh(II[BII[FI[III)V

    .line 804
    if-eqz v12, :cond_12

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v12}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    goto :goto_12

    .line 800
    .end local v10           #nativePaint:I
    .end local v12           #modifiers:I
    :cond_4e
    const/4 v12, 0x0

    goto :goto_2f

    .line 801
    .restart local v12       #modifiers:I
    :cond_50
    move-object/from16 v0, p8

    iget v10, v0, Landroid/graphics/Paint;->mNativePaint:I

    goto :goto_32
.end method

.method public drawCircle(FFFLandroid/graphics/Paint;)V
    .registers 8
    .parameter "cx"
    .parameter "cy"
    .parameter "radius"
    .parameter "paint"

    .prologue
    .line 813
    invoke-direct {p0, p4}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)I

    move-result v0

    .line 814
    .local v0, modifiers:I
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v2, p4, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, p1, p2, p3, v2}, Landroid/view/GLES20Canvas;->nDrawCircle(IFFFI)V

    .line 815
    if-eqz v0, :cond_12

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v0}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 816
    :cond_12
    return-void
.end method

.method public drawColor(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 823
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/view/GLES20Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 824
    return-void
.end method

.method public drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 5
    .parameter "color"
    .parameter "mode"

    .prologue
    .line 828
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, p1, v1}, Landroid/view/GLES20Canvas;->nDrawColor(III)V

    .line 829
    return-void
.end method

.method public drawDisplayList(Landroid/view/DisplayList;IILandroid/graphics/Rect;)Z
    .registers 7
    .parameter "displayList"
    .parameter "width"
    .parameter "height"
    .parameter "dirty"

    .prologue
    .line 363
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    check-cast p1, Landroid/view/GLES20DisplayList;

    .end local p1
    invoke-virtual {p1}, Landroid/view/GLES20DisplayList;->getNativeDisplayList()I

    move-result v1

    invoke-static {v0, v1, p2, p3, p4}, Landroid/view/GLES20Canvas;->nDrawDisplayList(IIIILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V
    .registers 10
    .parameter "layer"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    const/4 v2, 0x0

    .line 382
    move-object v0, p1

    check-cast v0, Landroid/view/GLES20Layer;

    .line 383
    .local v0, glLayer:Landroid/view/GLES20Layer;
    if-eqz p4, :cond_1d

    invoke-direct {p0, p4}, Landroid/view/GLES20Canvas;->setupColorFilter(Landroid/graphics/Paint;)I

    move-result v1

    .line 384
    .local v1, modifier:I
    :goto_a
    if-nez p4, :cond_1f

    .line 385
    .local v2, nativePaint:I
    :goto_c
    iget v3, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-virtual {v0}, Landroid/view/GLES20Layer;->getLayer()I

    move-result v4

    invoke-static {v3, v4, p2, p3, v2}, Landroid/view/GLES20Canvas;->nDrawLayer(IIFFI)V

    .line 386
    if-eqz v1, :cond_1c

    iget v3, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v3, v1}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 387
    :cond_1c
    return-void

    .end local v1           #modifier:I
    .end local v2           #nativePaint:I
    :cond_1d
    move v1, v2

    .line 383
    goto :goto_a

    .line 384
    .restart local v1       #modifier:I
    :cond_1f
    iget v2, p4, Landroid/graphics/Paint;->mNativePaint:I

    goto :goto_c
.end method

.method public drawLine(FFFFLandroid/graphics/Paint;)V
    .registers 9
    .parameter "startX"
    .parameter "startY"
    .parameter "stopX"
    .parameter "stopY"
    .parameter "paint"

    .prologue
    const/4 v2, 0x0

    .line 835
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mLine:[F

    aput p1, v0, v2

    .line 836
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mLine:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 837
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mLine:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 838
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mLine:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 839
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mLine:[F

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1, p5}, Landroid/view/GLES20Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 840
    return-void
.end method

.method public drawLines([FIILandroid/graphics/Paint;)V
    .registers 8
    .parameter "pts"
    .parameter "offset"
    .parameter "count"
    .parameter "paint"

    .prologue
    .line 844
    or-int v1, p2, p3

    if-ltz v1, :cond_9

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_11

    .line 845
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The lines array must contain 4 elements per line."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 847
    :cond_11
    invoke-direct {p0, p4}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)I

    move-result v0

    .line 848
    .local v0, modifiers:I
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v2, p4, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, p1, p2, p3, v2}, Landroid/view/GLES20Canvas;->nDrawLines(I[FIII)V

    .line 849
    if-eqz v0, :cond_23

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v0}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 850
    :cond_23
    return-void
.end method

.method public drawLines([FLandroid/graphics/Paint;)V
    .registers 5
    .parameter "pts"
    .parameter "paint"

    .prologue
    .line 857
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/view/GLES20Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 858
    return-void
.end method

.method public drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 10
    .parameter "oval"
    .parameter "paint"

    .prologue
    .line 862
    invoke-direct {p0, p2}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)I

    move-result v6

    .line 863
    .local v6, modifiers:I
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p2, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nDrawOval(IFFFFI)V

    .line 864
    if-eqz v6, :cond_1a

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v6}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 865
    :cond_1a
    return-void
.end method

.method public drawPaint(Landroid/graphics/Paint;)V
    .registers 9
    .parameter "paint"

    .prologue
    .line 872
    iget-object v6, p0, Landroid/view/GLES20Canvas;->mClipBounds:Landroid/graphics/Rect;

    .line 873
    .local v6, r:Landroid/graphics/Rect;
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v6}, Landroid/view/GLES20Canvas;->nGetClipBounds(ILandroid/graphics/Rect;)Z

    .line 874
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/GLES20Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 875
    return-void
.end method

.method public drawPatch(Landroid/graphics/Bitmap;[BLandroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 15
    .parameter "bitmap"
    .parameter "chunks"
    .parameter "dst"
    .parameter "paint"

    .prologue
    const/4 v8, 0x0

    .line 677
    if-eqz p4, :cond_23

    invoke-direct {p0, p4}, Landroid/view/GLES20Canvas;->setupColorFilter(Landroid/graphics/Paint;)I

    move-result v9

    .line 678
    .local v9, modifier:I
    :goto_7
    if-nez p4, :cond_25

    .line 679
    .local v8, nativePaint:I
    :goto_9
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-object v2, p1, Landroid/graphics/Bitmap;->mBuffer:[B

    iget v4, p3, Landroid/graphics/RectF;->left:F

    iget v5, p3, Landroid/graphics/RectF;->top:F

    iget v6, p3, Landroid/graphics/RectF;->right:F

    iget v7, p3, Landroid/graphics/RectF;->bottom:F

    move-object v3, p2

    invoke-static/range {v0 .. v8}, Landroid/view/GLES20Canvas;->nDrawPatch(II[B[BFFFFI)V

    .line 681
    if-eqz v9, :cond_22

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v9}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 682
    :cond_22
    return-void

    .end local v8           #nativePaint:I
    .end local v9           #modifier:I
    :cond_23
    move v9, v8

    .line 677
    goto :goto_7

    .line 678
    .restart local v9       #modifier:I
    :cond_25
    iget v8, p4, Landroid/graphics/Paint;->mNativePaint:I

    goto :goto_9
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .registers 7
    .parameter "path"
    .parameter "paint"

    .prologue
    .line 879
    invoke-direct {p0, p2}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)I

    move-result v0

    .line 880
    .local v0, modifiers:I
    iget-boolean v1, p1, Landroid/graphics/Path;->isSimplePath:Z

    if-eqz v1, :cond_1f

    .line 881
    iget-object v1, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v1, :cond_17

    .line 882
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget-object v2, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    iget v2, v2, Landroid/graphics/Region;->mNativeRegion:I

    iget v3, p2, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v2, v3}, Landroid/view/GLES20Canvas;->nDrawRects(III)V

    .line 887
    :cond_17
    :goto_17
    if-eqz v0, :cond_1e

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v0}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 888
    :cond_1e
    return-void

    .line 885
    :cond_1f
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v2, p1, Landroid/graphics/Path;->mNativePath:I

    iget v3, p2, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v2, v3}, Landroid/view/GLES20Canvas;->nDrawPath(III)V

    goto :goto_17
.end method

.method public drawPicture(Landroid/graphics/Picture;)V
    .registers 3
    .parameter "picture"

    .prologue
    .line 895
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .registers 4
    .parameter "picture"
    .parameter "dst"

    .prologue
    .line 900
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .registers 4
    .parameter "picture"
    .parameter "dst"

    .prologue
    .line 905
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public drawPoint(FFLandroid/graphics/Paint;)V
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    const/4 v2, 0x0

    .line 910
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mPoint:[F

    aput p1, v0, v2

    .line 911
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mPoint:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 912
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mPoint:[F

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1, p3}, Landroid/view/GLES20Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 913
    return-void
.end method

.method public drawPoints([FIILandroid/graphics/Paint;)V
    .registers 8
    .parameter "pts"
    .parameter "offset"
    .parameter "count"
    .parameter "paint"

    .prologue
    .line 922
    invoke-direct {p0, p4}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)I

    move-result v0

    .line 923
    .local v0, modifiers:I
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v2, p4, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, p1, p2, p3, v2}, Landroid/view/GLES20Canvas;->nDrawPoints(I[FIII)V

    .line 924
    if-eqz v0, :cond_12

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v0}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 925
    :cond_12
    return-void
.end method

.method public drawPoints([FLandroid/graphics/Paint;)V
    .registers 5
    .parameter "pts"
    .parameter "paint"

    .prologue
    .line 917
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/view/GLES20Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 918
    return-void
.end method

.method public drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .registers 4
    .parameter "text"
    .parameter "pos"
    .parameter "paint"

    .prologue
    .line 938
    return-void
.end method

.method public drawPosText([CII[FLandroid/graphics/Paint;)V
    .registers 6
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "pos"
    .parameter "paint"

    .prologue
    .line 933
    return-void
.end method

.method public drawRGB(III)V
    .registers 6
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 962
    const/high16 v0, -0x100

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/GLES20Canvas;->drawColor(I)V

    .line 963
    return-void
.end method

.method public drawRect(FFFFLandroid/graphics/Paint;)V
    .registers 13
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    .line 942
    invoke-direct {p0, p5}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)I

    move-result v6

    .line 943
    .local v6, modifiers:I
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nDrawRect(IFFFFI)V

    .line 944
    if-eqz v6, :cond_16

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v6}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 945
    :cond_16
    return-void
.end method

.method public drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 9
    .parameter "r"
    .parameter "paint"

    .prologue
    .line 952
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/GLES20Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 953
    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 9
    .parameter "r"
    .parameter "paint"

    .prologue
    .line 957
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/GLES20Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 958
    return-void
.end method

.method public drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .registers 14
    .parameter "rect"
    .parameter "rx"
    .parameter "ry"
    .parameter "paint"

    .prologue
    .line 967
    invoke-direct {p0, p4}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)I

    move-result v8

    .line 968
    .local v8, modifiers:I
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v7, p4, Landroid/graphics/Paint;->mNativePaint:I

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v7}, Landroid/view/GLES20Canvas;->nDrawRoundRect(IFFFFFFI)V

    .line 970
    if-eqz v8, :cond_1c

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v8}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 971
    :cond_1c
    return-void
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .registers 17
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 995
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)I

    move-result v9

    .line 997
    .local v9, modifiers:I
    :try_start_6
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_12

    instance-of v1, p1, Landroid/text/SpannedString;

    if-nez v1, :cond_12

    instance-of v1, p1, Landroid/text/SpannableString;

    if-eqz v1, :cond_2f

    .line 999
    :cond_12
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    iget v7, v0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object/from16 v0, p6

    iget v8, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v8}, Landroid/view/GLES20Canvas;->nDrawText(ILjava/lang/String;IIFFII)V
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_42

    .line 1012
    :goto_27
    if-eqz v9, :cond_2e

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v9}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 1014
    :cond_2e
    return-void

    .line 1001
    :cond_2f
    :try_start_2f
    instance-of v1, p1, Landroid/text/GraphicsOperations;

    if-eqz v1, :cond_4b

    .line 1002
    move-object v0, p1

    check-cast v0, Landroid/text/GraphicsOperations;

    move-object v1, v0

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/text/GraphicsOperations;->drawText(Landroid/graphics/Canvas;IIFFLandroid/graphics/Paint;)V
    :try_end_41
    .catchall {:try_start_2f .. :try_end_41} :catchall_42

    goto :goto_27

    .line 1012
    :catchall_42
    move-exception v1

    if-eqz v9, :cond_4a

    iget v3, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v3, v9}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_4a
    throw v1

    .line 1005
    :cond_4b
    sub-int v1, p3, p2

    :try_start_4d
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v2

    .line 1006
    .local v2, buf:[C
    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v2, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1007
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    const/4 v3, 0x0

    sub-int v4, p3, p2

    move-object/from16 v0, p6

    iget v7, v0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object/from16 v0, p6

    iget v8, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v8}, Landroid/view/GLES20Canvas;->nDrawText(I[CIIFFII)V

    .line 1009
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V
    :try_end_6a
    .catchall {:try_start_4d .. :try_end_6a} :catchall_42

    goto :goto_27
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .registers 14
    .parameter "text"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 1035
    invoke-direct {p0, p4}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)I

    move-result v8

    .line 1037
    .local v8, modifiers:I
    :try_start_4
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v6, p4, Landroid/graphics/Paint;->mBidiFlags:I

    iget v7, p4, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v7}, Landroid/view/GLES20Canvas;->nDrawText(ILjava/lang/String;IIFFII)V
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1d

    .line 1040
    if-eqz v8, :cond_1c

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v8}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 1042
    :cond_1c
    return-void

    .line 1040
    :catchall_1d
    move-exception v0

    if-eqz v8, :cond_25

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v8}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_25
    throw v0
.end method

.method public drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .registers 16
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 1018
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_13

    .line 1019
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1022
    :cond_13
    invoke-direct {p0, p6}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)I

    move-result v8

    .line 1024
    .local v8, modifiers:I
    :try_start_17
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v6, p6, Landroid/graphics/Paint;->mBidiFlags:I

    iget v7, p6, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Landroid/view/GLES20Canvas;->nDrawText(ILjava/lang/String;IIFFII)V
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_2d

    .line 1026
    if-eqz v8, :cond_2c

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v8}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 1028
    :cond_2c
    return-void

    .line 1026
    :catchall_2d
    move-exception v0

    if-eqz v8, :cond_35

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v8}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_35
    throw v0
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;)V
    .registers 16
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 978
    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_11

    .line 979
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 982
    :cond_11
    invoke-direct {p0, p6}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)I

    move-result v8

    .line 984
    .local v8, modifiers:I
    :try_start_15
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v6, p6, Landroid/graphics/Paint;->mBidiFlags:I

    iget v7, p6, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Landroid/view/GLES20Canvas;->nDrawText(I[CIIFFII)V
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_2b

    .line 986
    if-eqz v8, :cond_2a

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v8}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 988
    :cond_2a
    return-void

    .line 986
    :catchall_2b
    move-exception v0

    if-eqz v8, :cond_33

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v8}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_33
    throw v0
.end method

.method public drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 6
    .parameter "text"
    .parameter "path"
    .parameter "hOffset"
    .parameter "vOffset"
    .parameter "paint"

    .prologue
    .line 1053
    return-void
.end method

.method public drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 8
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "path"
    .parameter "hOffset"
    .parameter "vOffset"
    .parameter "paint"

    .prologue
    .line 1048
    return-void
.end method

.method public drawTextRun(Ljava/lang/CharSequence;IIIIFFILandroid/graphics/Paint;)V
    .registers 23
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "x"
    .parameter "y"
    .parameter "dir"
    .parameter "paint"

    .prologue
    .line 1080
    or-int v2, p2, p3

    sub-int v4, p3, p2

    or-int/2addr v2, v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v4, v4, p3

    or-int/2addr v2, v4

    if-gez v2, :cond_14

    .line 1081
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1084
    :cond_14
    move-object/from16 v0, p9

    invoke-direct {p0, v0}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)I

    move-result v12

    .line 1086
    .local v12, modifiers:I
    if-nez p8, :cond_49

    const/4 v10, 0x0

    .line 1087
    .local v10, flags:I
    :goto_1d
    :try_start_1d
    instance-of v2, p1, Ljava/lang/String;

    if-nez v2, :cond_29

    instance-of v2, p1, Landroid/text/SpannedString;

    if-nez v2, :cond_29

    instance-of v2, p1, Landroid/text/SpannableString;

    if-eqz v2, :cond_4b

    .line 1089
    :cond_29
    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p9

    iget v11, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v2 .. v11}, Landroid/view/GLES20Canvas;->nDrawTextRun(ILjava/lang/String;IIIIFFII)V
    :try_end_41
    .catchall {:try_start_1d .. :try_end_41} :catchall_65

    .line 1104
    :goto_41
    if-eqz v12, :cond_48

    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v2, v12}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 1106
    :cond_48
    return-void

    .line 1086
    .end local v10           #flags:I
    :cond_49
    const/4 v10, 0x1

    goto :goto_1d

    .line 1091
    .restart local v10       #flags:I
    :cond_4b
    :try_start_4b
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_6e

    .line 1092
    move-object v0, p1

    check-cast v0, Landroid/text/GraphicsOperations;

    move-object v2, v0

    move-object v3, p0

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Landroid/text/GraphicsOperations;->drawTextRun(Landroid/graphics/Canvas;IIIIFFILandroid/graphics/Paint;)V
    :try_end_64
    .catchall {:try_start_4b .. :try_end_64} :catchall_65

    goto :goto_41

    .line 1104
    :catchall_65
    move-exception v2

    if-eqz v12, :cond_6d

    iget v4, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v4, v12}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_6d
    throw v2

    .line 1095
    :cond_6e
    sub-int v7, p5, p4

    .line 1096
    .local v7, contextLen:I
    sub-int v5, p3, p2

    .line 1097
    .local v5, len:I
    :try_start_72
    invoke-static {v7}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v3

    .line 1098
    .local v3, buf:[C
    const/4 v2, 0x0

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {p1, v0, v1, v3, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1099
    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    sub-int v4, p2, p4

    const/4 v6, 0x0

    move-object/from16 v0, p9

    iget v11, v0, Landroid/graphics/Paint;->mNativePaint:I

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v2 .. v11}, Landroid/view/GLES20Canvas;->nDrawTextRun(I[CIIIIFFII)V

    .line 1101
    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->recycle([C)V
    :try_end_91
    .catchall {:try_start_72 .. :try_end_91} :catchall_65

    goto :goto_41
.end method

.method public drawTextRun([CIIIIFFILandroid/graphics/Paint;)V
    .registers 22
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "contextIndex"
    .parameter "contextCount"
    .parameter "x"
    .parameter "y"
    .parameter "dir"
    .parameter "paint"

    .prologue
    .line 1058
    or-int v1, p2, p3

    array-length v2, p1

    sub-int/2addr v2, p2

    sub-int/2addr v2, p3

    or-int/2addr v1, v2

    if-gez v1, :cond_e

    .line 1059
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 1061
    :cond_e
    if-eqz p8, :cond_30

    const/4 v1, 0x1

    move/from16 v0, p8

    if-eq v0, v1, :cond_30

    .line 1062
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown direction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1065
    :cond_30
    move-object/from16 v0, p9

    invoke-direct {p0, v0}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)I

    move-result v11

    .line 1067
    .local v11, modifiers:I
    :try_start_36
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    move-object/from16 v0, p9

    iget v10, v0, Landroid/graphics/Paint;->mNativePaint:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v10}, Landroid/view/GLES20Canvas;->nDrawTextRun(I[CIIIIFFII)V
    :try_end_4c
    .catchall {:try_start_36 .. :try_end_4c} :catchall_54

    .line 1070
    if-eqz v11, :cond_53

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v11}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 1072
    :cond_53
    return-void

    .line 1070
    :catchall_54
    move-exception v1

    if-eqz v11, :cond_5c

    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v2, v11}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_5c
    throw v1
.end method

.method public drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .registers 13
    .parameter "mode"
    .parameter "vertexCount"
    .parameter "verts"
    .parameter "vertOffset"
    .parameter "texs"
    .parameter "texOffset"
    .parameter "colors"
    .parameter "colorOffset"
    .parameter "indices"
    .parameter "indexOffset"
    .parameter "indexCount"
    .parameter "paint"

    .prologue
    .line 1116
    return-void
.end method

.method public getClipBounds(Landroid/graphics/Rect;)Z
    .registers 3
    .parameter "bounds"

    .prologue
    .line 471
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nGetClipBounds(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method getDisplayList(I)I
    .registers 3
    .parameter "displayList"

    .prologue
    .line 344
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nGetDisplayList(II)I

    move-result v0

    return v0
.end method

.method public getDrawFilter()Landroid/graphics/DrawFilter;
    .registers 2

    .prologue
    .line 649
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mFilter:Landroid/graphics/DrawFilter;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 175
    iget v0, p0, Landroid/view/GLES20Canvas;->mHeight:I

    return v0
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .registers 4
    .parameter "matrix"

    .prologue
    .line 535
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nGetMatrix(II)V

    .line 536
    return-void
.end method

.method public getMaximumBitmapHeight()I
    .registers 2

    .prologue
    .line 185
    invoke-static {}, Landroid/view/GLES20Canvas;->nGetMaximumTextureHeight()I

    move-result v0

    return v0
.end method

.method public getMaximumBitmapWidth()I
    .registers 2

    .prologue
    .line 180
    invoke-static {}, Landroid/view/GLES20Canvas;->nGetMaximumTextureWidth()I

    move-result v0

    return v0
.end method

.method public getSaveCount()I
    .registers 2

    .prologue
    .line 633
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nGetSaveCount(I)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 170
    iget v0, p0, Landroid/view/GLES20Canvas;->mWidth:I

    return v0
.end method

.method interrupt()V
    .registers 2

    .prologue
    .line 392
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nInterrupt(I)V

    .line 393
    return-void
.end method

.method public isOpaque()Z
    .registers 2

    .prologue
    .line 165
    iget-boolean v0, p0, Landroid/view/GLES20Canvas;->mOpaque:Z

    return v0
.end method

.method onPostDraw()V
    .registers 2

    .prologue
    .line 263
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nFinish(I)V

    .line 264
    return-void
.end method

.method onPreDraw(Landroid/graphics/Rect;)V
    .registers 8
    .parameter "dirty"

    .prologue
    .line 250
    if-eqz p1, :cond_12

    .line 251
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget-boolean v5, p0, Landroid/view/GLES20Canvas;->mOpaque:Z

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nPrepareDirty(IIIIIZ)V

    .line 255
    :goto_11
    return-void

    .line 253
    :cond_12
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget-boolean v1, p0, Landroid/view/GLES20Canvas;->mOpaque:Z

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nPrepare(IZ)V

    goto :goto_11
.end method

.method outputDisplayList(Landroid/view/DisplayList;)V
    .registers 4
    .parameter "displayList"

    .prologue
    .line 372
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    check-cast p1, Landroid/view/GLES20DisplayList;

    .end local p1
    invoke-virtual {p1}, Landroid/view/GLES20DisplayList;->getNativeDisplayList()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nOutputDisplayList(II)V

    .line 373
    return-void
.end method

.method public quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z
    .registers 12
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "type"

    .prologue
    .line 478
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v5, p5, Landroid/graphics/Canvas$EdgeType;->nativeInt:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nQuickReject(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public quickReject(Landroid/graphics/Path;Landroid/graphics/Canvas$EdgeType;)Z
    .registers 4
    .parameter "path"
    .parameter "type"

    .prologue
    .line 486
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public quickReject(Landroid/graphics/RectF;Landroid/graphics/Canvas$EdgeType;)Z
    .registers 9
    .parameter "rect"
    .parameter "type"

    .prologue
    .line 491
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/GLES20Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    return v0
.end method

.method protected resetDisplayListRenderer()V
    .registers 2

    .prologue
    .line 119
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nResetDisplayListRenderer(I)V

    .line 120
    return-void
.end method

.method public restore()V
    .registers 2

    .prologue
    .line 619
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nRestore(I)V

    .line 620
    return-void
.end method

.method public restoreToCount(I)V
    .registers 3
    .parameter "saveCount"

    .prologue
    .line 626
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nRestoreToCount(II)V

    .line 627
    return-void
.end method

.method resume()V
    .registers 2

    .prologue
    .line 396
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nResume(I)V

    .line 397
    return-void
.end method

.method public rotate(F)V
    .registers 3
    .parameter "degrees"

    .prologue
    .line 514
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nRotate(IF)V

    .line 515
    return-void
.end method

.method public save()I
    .registers 3

    .prologue
    .line 553
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nSave(II)I

    move-result v0

    return v0
.end method

.method public save(I)I
    .registers 3
    .parameter "saveFlags"

    .prologue
    .line 558
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nSave(II)I

    move-result v0

    return v0
.end method

.method public saveLayer(FFFFLandroid/graphics/Paint;I)I
    .registers 16
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "paint"
    .parameter "saveFlags"

    .prologue
    const/4 v5, 0x0

    .line 581
    cmpg-float v0, p1, p3

    if-gez v0, :cond_29

    cmpg-float v0, p2, p4

    if-gez v0, :cond_29

    .line 582
    if-eqz p5, :cond_24

    invoke-direct {p0, p5}, Landroid/view/GLES20Canvas;->setupColorFilter(Landroid/graphics/Paint;)I

    move-result v8

    .line 583
    .local v8, modifier:I
    :goto_f
    if-nez p5, :cond_26

    .line 584
    .local v5, nativePaint:I
    :goto_11
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/view/GLES20Canvas;->nSaveLayer(IFFFFII)I

    move-result v7

    .line 585
    .local v7, count:I
    if-eqz v8, :cond_23

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v8}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 588
    .end local v5           #nativePaint:I
    .end local v7           #count:I
    .end local v8           #modifier:I
    :cond_23
    :goto_23
    return v7

    :cond_24
    move v8, v5

    .line 582
    goto :goto_f

    .line 583
    .restart local v8       #modifier:I
    :cond_26
    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    goto :goto_11

    .line 588
    .end local v8           #modifier:I
    :cond_29
    invoke-virtual {p0, p6}, Landroid/view/GLES20Canvas;->save(I)I

    move-result v7

    goto :goto_23
.end method

.method public saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
    .registers 14
    .parameter "bounds"
    .parameter "paint"
    .parameter "saveFlags"

    .prologue
    const/4 v9, 0x0

    .line 565
    if-eqz p1, :cond_13

    .line 566
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/view/GLES20Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    .line 573
    :cond_12
    :goto_12
    return v7

    .line 569
    :cond_13
    if-eqz p2, :cond_29

    invoke-direct {p0, p2}, Landroid/view/GLES20Canvas;->setupColorFilter(Landroid/graphics/Paint;)I

    move-result v8

    .line 570
    .local v8, modifier:I
    :goto_19
    if-nez p2, :cond_2b

    .line 571
    .local v9, nativePaint:I
    :goto_1b
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v9, p3}, Landroid/view/GLES20Canvas;->nSaveLayer(III)I

    move-result v7

    .line 572
    .local v7, count:I
    if-eqz v8, :cond_12

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v8}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    goto :goto_12

    .end local v7           #count:I
    .end local v8           #modifier:I
    .end local v9           #nativePaint:I
    :cond_29
    move v8, v9

    .line 569
    goto :goto_19

    .line 570
    .restart local v8       #modifier:I
    :cond_2b
    iget v9, p2, Landroid/graphics/Paint;->mNativePaint:I

    goto :goto_1b
.end method

.method public saveLayerAlpha(FFFFII)I
    .registers 14
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "alpha"
    .parameter "saveFlags"

    .prologue
    .line 608
    cmpg-float v0, p1, p3

    if-gez v0, :cond_15

    cmpg-float v0, p2, p4

    if-gez v0, :cond_15

    .line 609
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/view/GLES20Canvas;->nSaveLayerAlpha(IFFFFII)I

    move-result v0

    .line 611
    :goto_14
    return v0

    :cond_15
    invoke-virtual {p0, p6}, Landroid/view/GLES20Canvas;->save(I)I

    move-result v0

    goto :goto_14
.end method

.method public saveLayerAlpha(Landroid/graphics/RectF;II)I
    .registers 11
    .parameter "bounds"
    .parameter "alpha"
    .parameter "saveFlags"

    .prologue
    .line 596
    if-eqz p1, :cond_12

    .line 597
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/view/GLES20Canvas;->saveLayerAlpha(FFFFII)I

    move-result v0

    .line 600
    :goto_11
    return v0

    :cond_12
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p2, p3}, Landroid/view/GLES20Canvas;->nSaveLayerAlpha(III)I

    move-result v0

    goto :goto_11
.end method

.method public scale(FF)V
    .registers 4
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 521
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1, p2}, Landroid/view/GLES20Canvas;->nScale(IFF)V

    .line 522
    return-void
.end method

.method public setDrawFilter(Landroid/graphics/DrawFilter;)V
    .registers 2
    .parameter "filter"

    .prologue
    .line 644
    iput-object p1, p0, Landroid/view/GLES20Canvas;->mFilter:Landroid/graphics/DrawFilter;

    .line 645
    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .registers 4
    .parameter "matrix"

    .prologue
    .line 528
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nSetMatrix(II)V

    .line 529
    return-void
.end method

.method public setViewport(II)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 197
    iput p1, p0, Landroid/view/GLES20Canvas;->mWidth:I

    .line 198
    iput p2, p0, Landroid/view/GLES20Canvas;->mHeight:I

    .line 200
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1, p2}, Landroid/view/GLES20Canvas;->nSetViewport(III)V

    .line 201
    return-void
.end method

.method public skew(FF)V
    .registers 4
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 507
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1, p2}, Landroid/view/GLES20Canvas;->nSkew(IFF)V

    .line 508
    return-void
.end method

.method public translate(FF)V
    .registers 5
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v1, 0x0

    .line 500
    cmpl-float v0, p1, v1

    if-nez v0, :cond_9

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_e

    :cond_9
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1, p2}, Landroid/view/GLES20Canvas;->nTranslate(IFF)V

    .line 501
    :cond_e
    return-void
.end method
