.class Landroid/widget/StackView2$HolographicHelper;
.super Ljava/lang/Object;
.source "StackView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/StackView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HolographicHelper"
.end annotation


# static fields
.field private static final CLICK_FEEDBACK:I = 0x1

.field private static final RES_OUT:I


# instance fields
.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private mDensity:F

.field private final mErasePaint:Landroid/graphics/Paint;

.field private final mHolographicPaint:Landroid/graphics/Paint;

.field private final mIdentityMatrix:Landroid/graphics/Matrix;

.field private mLargeBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mMaskCanvas:Landroid/graphics/Canvas;

.field private mSmallBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mTmpXY:[I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 1770
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1757
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView2$HolographicHelper;->mHolographicPaint:Landroid/graphics/Paint;

    .line 1758
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView2$HolographicHelper;->mErasePaint:Landroid/graphics/Paint;

    .line 1759
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView2$HolographicHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 1765
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView2$HolographicHelper;->mCanvas:Landroid/graphics/Canvas;

    .line 1766
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView2$HolographicHelper;->mMaskCanvas:Landroid/graphics/Canvas;

    .line 1767
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/StackView2$HolographicHelper;->mTmpXY:[I

    .line 1768
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView2$HolographicHelper;->mIdentityMatrix:Landroid/graphics/Matrix;

    .line 1771
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/widget/StackView2$HolographicHelper;->mDensity:F

    .line 1773
    iget-object v0, p0, Landroid/widget/StackView2$HolographicHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1774
    iget-object v0, p0, Landroid/widget/StackView2$HolographicHelper;->mHolographicPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1775
    iget-object v0, p0, Landroid/widget/StackView2$HolographicHelper;->mErasePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1776
    iget-object v0, p0, Landroid/widget/StackView2$HolographicHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1778
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x4000

    iget v2, p0, Landroid/widget/StackView2$HolographicHelper;->mDensity:F

    mul-float/2addr v1, v2

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Landroid/widget/StackView2$HolographicHelper;->mSmallBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 1779
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x4080

    iget v2, p0, Landroid/widget/StackView2$HolographicHelper;->mDensity:F

    mul-float/2addr v1, v2

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Landroid/widget/StackView2$HolographicHelper;->mLargeBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 1780
    return-void
.end method


# virtual methods
.method createClickOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "v"
    .parameter "color"

    .prologue
    .line 1783
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/StackView2$HolographicHelper;->createOutline(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method createOutline(Landroid/view/View;II)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "v"
    .parameter "type"
    .parameter "color"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 1791
    iget-object v6, p0, Landroid/widget/StackView2$HolographicHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1792
    if-nez p2, :cond_1e

    .line 1793
    iget-object v6, p0, Landroid/widget/StackView2$HolographicHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/widget/StackView2$HolographicHelper;->mSmallBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1798
    :cond_10
    :goto_10
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-eqz v6, :cond_1c

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-nez v6, :cond_29

    :cond_1c
    move-object v0, v5

    .line 1822
    :goto_1d
    return-object v0

    .line 1794
    :cond_1e
    const/4 v6, 0x1

    if-ne p2, v6, :cond_10

    .line 1795
    iget-object v6, p0, Landroid/widget/StackView2$HolographicHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/widget/StackView2$HolographicHelper;->mLargeBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_10

    .line 1802
    :cond_29
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1804
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v6, p0, Landroid/widget/StackView2$HolographicHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1806
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v2

    .line 1807
    .local v2, rotationX:F
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v1

    .line 1808
    .local v1, rotation:F
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    .line 1809
    .local v4, translationY:F
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v3

    .line 1810
    .local v3, translationX:F
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationX(F)V

    .line 1811
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    .line 1812
    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 1813
    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 1814
    iget-object v6, p0, Landroid/widget/StackView2$HolographicHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1815
    invoke-virtual {p1, v2}, Landroid/view/View;->setRotationX(F)V

    .line 1816
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 1817
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 1818
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 1820
    iget-object v6, p0, Landroid/widget/StackView2$HolographicHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v6, v0}, Landroid/widget/StackView2$HolographicHelper;->drawOutline(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 1821
    iget-object v6, p0, Landroid/widget/StackView2$HolographicHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1d
.end method

.method createResOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "v"
    .parameter "color"

    .prologue
    .line 1787
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/StackView2$HolographicHelper;->createOutline(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method drawOutline(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .registers 11
    .parameter "dest"
    .parameter "src"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1826
    iget-object v1, p0, Landroid/widget/StackView2$HolographicHelper;->mTmpXY:[I

    .line 1827
    .local v1, xy:[I
    iget-object v2, p0, Landroid/widget/StackView2$HolographicHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1828
    .local v0, mask:Landroid/graphics/Bitmap;
    iget-object v2, p0, Landroid/widget/StackView2$HolographicHelper;->mMaskCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1829
    iget-object v2, p0, Landroid/widget/StackView2$HolographicHelper;->mMaskCanvas:Landroid/graphics/Canvas;

    aget v3, v1, v6

    neg-int v3, v3

    int-to-float v3, v3

    aget v4, v1, v7

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Landroid/widget/StackView2$HolographicHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1830
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v6, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1831
    iget-object v2, p0, Landroid/widget/StackView2$HolographicHelper;->mIdentityMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1832
    aget v2, v1, v6

    int-to-float v2, v2

    aget v3, v1, v7

    int-to-float v3, v3

    iget-object v4, p0, Landroid/widget/StackView2$HolographicHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1833
    iget-object v2, p0, Landroid/widget/StackView2$HolographicHelper;->mMaskCanvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1834
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1835
    return-void
.end method
