.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$TabStops;
    }
.end annotation


# static fields
.field static final DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions; = null

.field static final DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions; = null

.field public static final DIR_LEFT_TO_RIGHT:I = 0x1

.field static final DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final DIR_REQUEST_LTR:I = 0x1

.field static final DIR_REQUEST_RTL:I = -0x1

.field public static final DIR_RIGHT_TO_LEFT:I = -0x1

.field static final EMOJI_FACTORY:Landroid/emoji/EmojiFactory; = null

#the value of this static final field might be set in the static constructor
.field static final MAX_EMOJI:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final MIN_EMOJI:I = 0x0

.field private static final NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle; = null

.field static final RUN_LENGTH_MASK:I = 0x3ffffff

.field static final RUN_LEVEL_MASK:I = 0x3f

.field static final RUN_LEVEL_SHIFT:I = 0x1a

.field static final RUN_RTL_FLAG:I = 0x4000000

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mPaint:Landroid/text/TextPaint;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannedText:Z

.field private mText:Ljava/lang/CharSequence;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mWidth:I

.field mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 45
    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 48
    invoke-static {}, Landroid/emoji/EmojiFactory;->newAvailableInstance()Landroid/emoji/EmojiFactory;

    move-result-object v0

    sput-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    .line 53
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    if-eqz v0, :cond_46

    .line 54
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMinimumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MIN_EMOJI:I

    .line 55
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMaximumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MAX_EMOJI:I

    .line 1827
    :goto_26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    .line 1856
    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v2, [I

    fill-array-data v1, :array_4c

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1858
    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v2, [I

    fill-array-data v1, :array_54

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-void

    .line 57
    :cond_46
    sput v1, Landroid/text/Layout;->MIN_EMOJI:I

    .line 58
    sput v1, Landroid/text/Layout;->MAX_EMOJI:I

    goto :goto_26

    .line 1856
    nop

    :array_4c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0x3t
    .end array-data

    .line 1858
    :array_54
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0x7t
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .registers 15
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingMult"
    .parameter "spacingAdd"

    .prologue
    .line 116
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 118
    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V
    .registers 11
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingMult"
    .parameter "spacingAdd"

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1824
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 139
    if-gez p3, :cond_29

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_29
    if-eqz p2, :cond_2f

    .line 147
    iput v1, p2, Landroid/text/TextPaint;->bgColor:I

    .line 148
    iput v1, p2, Landroid/text/TextPaint;->baselineShift:I

    .line 151
    :cond_2f
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 152
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 153
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 154
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 155
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 156
    iput p6, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 157
    iput p7, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 158
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 159
    iput-object p5, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 160
    return-void
.end method

.method static synthetic access$000(Landroid/text/Layout;III[CI)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p5}, Landroid/text/Layout;->ellipsize(III[CI)V

    return-void
.end method

.method private addSelection(IIIIILandroid/graphics/Path;)V
    .registers 26
    .parameter "line"
    .parameter "start"
    .parameter "end"
    .parameter "top"
    .parameter "bottom"
    .parameter "dest"

    .prologue
    .line 1306
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v16

    .line 1307
    .local v16, linestart:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    .line 1308
    .local v15, lineend:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v9

    .line 1310
    .local v9, dirs:Landroid/text/Layout$Directions;
    move/from16 v0, v16

    if-le v15, v0, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v5, v15, -0x1

    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_20

    .line 1311
    add-int/lit8 v15, v15, -0x1

    .line 1313
    :cond_20
    const/4 v14, 0x0

    .local v14, i:I
    :goto_21
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v3, v3

    if-ge v14, v3, :cond_86

    .line 1314
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    aget v3, v3, v14

    add-int v13, v16, v3

    .line 1315
    .local v13, here:I
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v5, v14, 0x1

    aget v3, v3, v5

    const v5, 0x3ffffff

    and-int/2addr v3, v5

    add-int v18, v13, v3

    .line 1317
    .local v18, there:I
    move/from16 v0, v18

    if-le v0, v15, :cond_3e

    .line 1318
    move/from16 v18, v15

    .line 1320
    :cond_3e
    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_83

    move/from16 v0, p3

    if-lt v0, v13, :cond_83

    .line 1321
    move/from16 v0, p2

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1322
    .local v17, st:I
    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1324
    .local v10, en:I
    move/from16 v0, v17

    if-eq v0, v10, :cond_83

    .line 1325
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p1

    invoke-direct {v0, v1, v3, v2}, Landroid/text/Layout;->getHorizontal(IZI)F

    move-result v11

    .line 1326
    .local v11, h1:F
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v10, v3, v1}, Landroid/text/Layout;->getHorizontal(IZI)F

    move-result v12

    .line 1328
    .local v12, h2:F
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1329
    .local v4, left:F
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1331
    .local v6, right:F
    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v7, v0

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v3, p6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1313
    .end local v4           #left:F
    .end local v6           #right:F
    .end local v10           #en:I
    .end local v11           #h1:F
    .end local v12           #h2:F
    .end local v17           #st:I
    :cond_83
    add-int/lit8 v14, v14, 0x2

    goto :goto_21

    .line 1335
    .end local v13           #here:I
    .end local v18           #there:I
    :cond_86
    return-void
.end method

.method private ellipsize(III[CI)V
    .registers 13
    .parameter "start"
    .parameter "end"
    .parameter "line"
    .parameter "dest"
    .parameter "destoff"

    .prologue
    .line 1670
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    .line 1672
    .local v2, ellipsisCount:I
    if-nez v2, :cond_7

    .line 1694
    :cond_6
    return-void

    .line 1676
    :cond_7
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    .line 1677
    .local v3, ellipsisStart:I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1679
    .local v5, linestart:I
    move v4, v3

    .local v4, i:I
    :goto_10
    add-int v6, v3, v2

    if-ge v4, v6, :cond_6

    .line 1682
    if-ne v4, v3, :cond_26

    .line 1683
    const/16 v1, 0x2026

    .line 1688
    .local v1, c:C
    :goto_18
    add-int v0, v4, v5

    .line 1690
    .local v0, a:I
    if-lt v0, p1, :cond_23

    if-ge v0, p2, :cond_23

    .line 1691
    add-int v6, p5, v0

    sub-int/2addr v6, p1

    aput-char v1, p4, v6

    .line 1679
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1685
    .end local v0           #a:I
    .end local v1           #c:C
    :cond_26
    const v1, 0xfeff

    .restart local v1       #c:C
    goto :goto_18
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .registers 10
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "paint"

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, need:F
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .line 82
    .local v4, workPaint:Landroid/text/TextPaint;
    move v0, p1

    .local v0, i:I
    :goto_7
    if-gt v0, p2, :cond_1f

    .line 83
    const/16 v5, 0xa

    invoke-static {p0, v5, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    .line 85
    .local v2, next:I
    if-gez v2, :cond_12

    .line 86
    move v2, p2

    .line 89
    :cond_12
    invoke-static {p3, v4, p0, v0, v2}, Landroid/text/Layout;->measurePara(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;II)F

    move-result v3

    .line 91
    .local v3, w:F
    cmpl-float v5, v3, v1

    if-lez v5, :cond_1b

    .line 92
    move v1, v3

    .line 94
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    .line 82
    move v0, v2

    goto :goto_7

    .line 97
    .end local v2           #next:I
    .end local v3           #w:F
    :cond_1f
    return v1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .registers 4
    .parameter "source"
    .parameter "paint"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method private getHorizontal(IZ)F
    .registers 5
    .parameter "offset"
    .parameter "trailing"

    .prologue
    .line 775
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 777
    .local v0, line:I
    invoke-direct {p0, p1, p2, v0}, Landroid/text/Layout;->getHorizontal(IZI)F

    move-result v1

    return v1
.end method

.method private getHorizontal(IZI)F
    .registers 18
    .parameter "offset"
    .parameter "trailing"
    .parameter "line"

    .prologue
    .line 781
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 782
    .local v4, start:I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 783
    .local v5, end:I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 784
    .local v6, dir:I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v8

    .line 785
    .local v8, hasTabOrEmoji:Z
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 787
    .local v7, directions:Landroid/text/Layout$Directions;
    const/4 v9, 0x0

    .line 788
    .local v9, tabStops:Landroid/text/Layout$TabStops;
    if-eqz v8, :cond_3d

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_3d

    .line 791
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v4, v5, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/TabStopSpan;

    .line 792
    .local v12, tabs:[Landroid/text/style/TabStopSpan;
    array-length v2, v12

    if-lez v2, :cond_3d

    .line 793
    new-instance v9, Landroid/text/Layout$TabStops;

    .end local v9           #tabStops:Landroid/text/Layout$TabStops;
    const/16 v2, 0x14

    invoke-direct {v9, v2, v12}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 797
    .end local v12           #tabs:[Landroid/text/style/TabStopSpan;
    .restart local v9       #tabStops:Landroid/text/Layout$TabStops;
    :cond_3d
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    .line 798
    .local v1, tl:Landroid/text/TextLine;
    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 799
    sub-int v2, p1, v4

    const/4 v3, 0x0

    move/from16 v0, p2

    invoke-virtual {v1, v2, v0, v3}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v13

    .line 800
    .local v13, wid:F
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 802
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v10

    .line 803
    .local v10, left:I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v11

    .line 805
    .local v11, right:I
    move/from16 v0, p3

    invoke-direct {p0, v0, v10, v11}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v13

    return v2
.end method

.method private getLineExtent(ILandroid/text/Layout$TabStops;Z)F
    .registers 14
    .parameter "line"
    .parameter "tabStops"
    .parameter "full"

    .prologue
    .line 934
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 935
    .local v3, start:I
    if-eqz p3, :cond_2b

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 936
    .local v4, end:I
    :goto_a
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 937
    .local v7, hasTabsOrEmoji:Z
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 938
    .local v6, directions:Landroid/text/Layout$Directions;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 940
    .local v5, dir:I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 941
    .local v0, tl:Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 942
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v9

    .line 943
    .local v9, width:F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 944
    return v9

    .line 935
    .end local v0           #tl:Landroid/text/TextLine;
    .end local v4           #end:I
    .end local v5           #dir:I
    .end local v6           #directions:Landroid/text/Layout$Directions;
    .end local v7           #hasTabsOrEmoji:Z
    .end local v9           #width:F
    :cond_2b
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v4

    goto :goto_a
.end method

.method private getLineExtent(IZ)F
    .registers 14
    .parameter "line"
    .parameter "full"

    .prologue
    .line 898
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 899
    .local v3, start:I
    if-eqz p2, :cond_35

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 901
    .local v4, end:I
    :goto_a
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 902
    .local v7, hasTabsOrEmoji:Z
    const/4 v8, 0x0

    .line 903
    .local v8, tabStops:Landroid/text/Layout$TabStops;
    if-eqz v7, :cond_2d

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spanned;

    if-eqz v1, :cond_2d

    .line 906
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    const-class v2, Landroid/text/style/TabStopSpan;

    invoke-static {v1, v3, v4, v2}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/TabStopSpan;

    .line 907
    .local v9, tabs:[Landroid/text/style/TabStopSpan;
    array-length v1, v9

    if-lez v1, :cond_2d

    .line 908
    new-instance v8, Landroid/text/Layout$TabStops;

    .end local v8           #tabStops:Landroid/text/Layout$TabStops;
    const/16 v1, 0x14

    invoke-direct {v8, v1, v9}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 911
    .end local v9           #tabs:[Landroid/text/style/TabStopSpan;
    .restart local v8       #tabStops:Landroid/text/Layout$TabStops;
    :cond_2d
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 913
    .local v6, directions:Landroid/text/Layout$Directions;
    if-nez v6, :cond_3a

    .line 914
    const/4 v10, 0x0

    .line 922
    :goto_34
    return v10

    .line 899
    .end local v4           #end:I
    .end local v6           #directions:Landroid/text/Layout$Directions;
    .end local v7           #hasTabsOrEmoji:Z
    .end local v8           #tabStops:Landroid/text/Layout$TabStops;
    :cond_35
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v4

    goto :goto_a

    .line 916
    .restart local v4       #end:I
    .restart local v6       #directions:Landroid/text/Layout$Directions;
    .restart local v7       #hasTabsOrEmoji:Z
    .restart local v8       #tabStops:Landroid/text/Layout$TabStops;
    :cond_3a
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 918
    .local v5, dir:I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 919
    .local v0, tl:Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 920
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    .line 921
    .local v10, width:F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    goto :goto_34
.end method

.method private getLineStartPos(III)I
    .registers 16
    .parameter "line"
    .parameter "left"
    .parameter "right"

    .prologue
    const/4 v11, 0x1

    .line 444
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 445
    .local v0, align:Landroid/text/Layout$Alignment;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 448
    .local v1, dir:I
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_f

    .line 449
    move v8, p2

    .line 482
    .local v8, x:I
    :goto_e
    return v8

    .line 450
    .end local v8           #x:I
    :cond_f
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_19

    .line 451
    if-ne v1, v11, :cond_17

    .line 452
    move v8, p2

    .restart local v8       #x:I
    goto :goto_e

    .line 454
    .end local v8           #x:I
    :cond_17
    move v8, p3

    .restart local v8       #x:I
    goto :goto_e

    .line 457
    .end local v8           #x:I
    :cond_19
    const/4 v7, 0x0

    .line 458
    .local v7, tabStops:Landroid/text/Layout$TabStops;
    iget-boolean v9, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v9, :cond_48

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v9

    if-eqz v9, :cond_48

    .line 459
    iget-object v4, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    .line 460
    .local v4, spanned:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 461
    .local v5, start:I
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v9

    const-class v10, Landroid/text/style/TabStopSpan;

    invoke-interface {v4, v5, v9, v10}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 463
    .local v3, spanEnd:I
    const-class v9, Landroid/text/style/TabStopSpan;

    invoke-static {v4, v5, v3, v9}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/TabStopSpan;

    .line 464
    .local v6, tabSpans:[Landroid/text/style/TabStopSpan;
    array-length v9, v6

    if-lez v9, :cond_48

    .line 465
    new-instance v7, Landroid/text/Layout$TabStops;

    .end local v7           #tabStops:Landroid/text/Layout$TabStops;
    const/16 v9, 0x14

    invoke-direct {v7, v9, v6}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 468
    .end local v3           #spanEnd:I
    .end local v4           #spanned:Landroid/text/Spanned;
    .end local v5           #start:I
    .end local v6           #tabSpans:[Landroid/text/style/TabStopSpan;
    .restart local v7       #tabStops:Landroid/text/Layout$TabStops;
    :cond_48
    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v9}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v9

    float-to-int v2, v9

    .line 469
    .local v2, max:I
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_55

    .line 470
    sub-int v8, p3, v2

    .restart local v8       #x:I
    goto :goto_e

    .line 471
    .end local v8           #x:I
    :cond_55
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_61

    .line 472
    if-ne v1, v11, :cond_5e

    .line 473
    sub-int v8, p3, v2

    .restart local v8       #x:I
    goto :goto_e

    .line 475
    .end local v8           #x:I
    :cond_5e
    sub-int v8, p2, v2

    .restart local v8       #x:I
    goto :goto_e

    .line 478
    .end local v8           #x:I
    :cond_61
    and-int/lit8 v2, v2, -0x2

    .line 479
    add-int v9, p2, p3

    sub-int/2addr v9, v2

    shr-int/lit8 v8, v9, 0x1

    .restart local v8       #x:I
    goto :goto_e
.end method

.method private getLineVisibleEnd(III)I
    .registers 7
    .parameter "line"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1086
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1088
    .local v1, text:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_e

    move v2, p3

    .line 1105
    :goto_b
    return v2

    .line 1092
    .local v0, ch:C
    :cond_c
    add-int/lit8 p3, p3, -0x1

    .end local v0           #ch:C
    :cond_e
    if-le p3, p2, :cond_25

    .line 1093
    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1095
    .restart local v0       #ch:C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1d

    .line 1096
    add-int/lit8 v2, p3, -0x1

    goto :goto_b

    .line 1099
    :cond_1d
    const/16 v2, 0x20

    if-eq v0, v2, :cond_c

    const/16 v2, 0x9

    if-eq v0, v2, :cond_c

    .end local v0           #ch:C
    :cond_25
    move v2, p3

    .line 1105
    goto :goto_b
.end method

.method private getOffsetAtStartOf(I)I
    .registers 11
    .parameter "offset"

    .prologue
    .line 1195
    if-nez p1, :cond_4

    .line 1196
    const/4 v7, 0x0

    .line 1221
    :goto_3
    return v7

    .line 1198
    :cond_4
    iget-object v6, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1199
    .local v6, text:Ljava/lang/CharSequence;
    invoke-interface {v6, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1201
    .local v0, c:C
    const v7, 0xdc00

    if-lt v0, v7, :cond_26

    const v7, 0xdfff

    if-gt v0, v7, :cond_26

    .line 1202
    add-int/lit8 v7, p1, -0x1

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1204
    .local v1, c1:C
    const v7, 0xd800

    if-lt v1, v7, :cond_26

    const v7, 0xdbff

    if-gt v1, v7, :cond_26

    .line 1205
    add-int/lit8 p1, p1, -0x1

    .line 1208
    .end local v1           #c1:C
    :cond_26
    iget-boolean v7, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v7, :cond_53

    move-object v7, v6

    .line 1209
    check-cast v7, Landroid/text/Spanned;

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v7, p1, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ReplacementSpan;

    .line 1212
    .local v4, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_36
    array-length v7, v4

    if-ge v3, v7, :cond_53

    move-object v7, v6

    .line 1213
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v4, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .local v5, start:I
    move-object v7, v6

    .line 1214
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v4, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1216
    .local v2, end:I
    if-ge v5, p1, :cond_50

    if-le v2, p1, :cond_50

    .line 1217
    move p1, v5

    .line 1212
    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .end local v2           #end:I
    .end local v3           #i:I
    .end local v4           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v5           #start:I
    :cond_53
    move v7, p1

    .line 1221
    goto :goto_3
.end method

.method private getOffsetToLeftRightOf(IZ)I
    .registers 18
    .parameter "caret"
    .parameter "toLeft"

    .prologue
    .line 1141
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v12

    .line 1142
    .local v12, line:I
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1143
    .local v4, lineStart:I
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1144
    .local v5, lineEnd:I
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 1146
    .local v6, lineDir:I
    const/4 v13, 0x0

    .line 1147
    .local v13, lineChanged:Z
    const/4 v2, -0x1

    if-ne v6, v2, :cond_62

    const/4 v2, 0x1

    :goto_15
    move/from16 v0, p2

    if-ne v0, v2, :cond_64

    const/4 v10, 0x1

    .line 1149
    .local v10, advance:Z
    :goto_1a
    if-eqz v10, :cond_69

    .line 1150
    move/from16 v0, p1

    if-ne v0, v5, :cond_2b

    .line 1151
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v12, v2, :cond_66

    .line 1152
    const/4 v13, 0x1

    .line 1153
    add-int/lit8 v12, v12, 0x1

    .line 1169
    :cond_2b
    :goto_2b
    if-eqz v13, :cond_40

    .line 1170
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1171
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1172
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v14

    .line 1173
    .local v14, newDir:I
    if-eq v14, v6, :cond_40

    .line 1177
    if-nez p2, :cond_76

    const/16 p2, 0x1

    .line 1178
    :goto_3f
    move v6, v14

    .line 1182
    .end local v14           #newDir:I
    :cond_40
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 1184
    .local v7, directions:Landroid/text/Layout$Directions;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    .line 1186
    .local v1, tl:Landroid/text/TextLine;
    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1187
    sub-int v2, p1, v4

    move/from16 v0, p2

    invoke-virtual {v1, v2, v0}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v2

    add-int p1, v4, v2

    .line 1188
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    move-result-object v1

    move/from16 v11, p1

    .line 1189
    .end local v1           #tl:Landroid/text/TextLine;
    .end local v7           #directions:Landroid/text/Layout$Directions;
    .end local p1
    .local v11, caret:I
    :goto_61
    return v11

    .line 1147
    .end local v10           #advance:Z
    .end local v11           #caret:I
    .restart local p1
    :cond_62
    const/4 v2, 0x0

    goto :goto_15

    :cond_64
    const/4 v10, 0x0

    goto :goto_1a

    .restart local v10       #advance:Z
    :cond_66
    move/from16 v11, p1

    .line 1155
    .end local p1
    .restart local v11       #caret:I
    goto :goto_61

    .line 1159
    .end local v11           #caret:I
    .restart local p1
    :cond_69
    move/from16 v0, p1

    if-ne v0, v4, :cond_2b

    .line 1160
    if-lez v12, :cond_73

    .line 1161
    const/4 v13, 0x1

    .line 1162
    add-int/lit8 v12, v12, -0x1

    goto :goto_2b

    :cond_73
    move/from16 v11, p1

    .line 1164
    .end local p1
    .restart local v11       #caret:I
    goto :goto_61

    .line 1177
    .end local v11           #caret:I
    .restart local v14       #newDir:I
    .restart local p1
    :cond_76
    const/16 p2, 0x0

    goto :goto_3f
.end method

.method private getParagraphLeadingMargin(I)I
    .registers 18
    .parameter "line"

    .prologue
    .line 1448
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v14, :cond_8

    .line 1449
    const/4 v6, 0x0

    .line 1480
    :cond_7
    :goto_7
    return v6

    .line 1451
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v11, Landroid/text/Spanned;

    .line 1453
    .local v11, spanned:Landroid/text/Spanned;
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1454
    .local v5, lineStart:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1455
    .local v4, lineEnd:I
    const-class v14, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v11, v5, v4, v14}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v9

    .line 1457
    .local v9, spanEnd:I
    const-class v14, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v11, v5, v9, v14}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/LeadingMarginSpan;

    .line 1459
    .local v12, spans:[Landroid/text/style/LeadingMarginSpan;
    array-length v14, v12

    if-nez v14, :cond_29

    .line 1460
    const/4 v6, 0x0

    goto :goto_7

    .line 1463
    :cond_29
    const/4 v6, 0x0

    .line 1465
    .local v6, margin:I
    if-eqz v5, :cond_36

    add-int/lit8 v14, v5, -0x1

    invoke-interface {v11, v14}, Landroid/text/Spanned;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-ne v14, v15, :cond_62

    :cond_36
    const/4 v3, 0x1

    .line 1468
    .local v3, isFirstParaLine:Z
    :goto_37
    const/4 v2, 0x0

    .local v2, i:I
    :goto_38
    array-length v14, v12

    if-ge v2, v14, :cond_7

    .line 1469
    aget-object v8, v12, v2

    .line 1470
    .local v8, span:Landroid/text/style/LeadingMarginSpan;
    move v13, v3

    .line 1471
    .local v13, useFirstLineMargin:Z
    instance-of v14, v8, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v14, :cond_5a

    .line 1472
    invoke-interface {v11, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 1473
    .local v7, spStart:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    .local v10, spanLine:I
    move-object v14, v8

    .line 1474
    check-cast v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v14}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v1

    .line 1475
    .local v1, count:I
    add-int v14, v10, v1

    move/from16 v0, p1

    if-ge v0, v14, :cond_64

    const/4 v13, 0x1

    .line 1477
    .end local v1           #count:I
    .end local v7           #spStart:I
    .end local v10           #spanLine:I
    :cond_5a
    :goto_5a
    invoke-interface {v8, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    add-int/2addr v6, v14

    .line 1468
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 1465
    .end local v2           #i:I
    .end local v3           #isFirstParaLine:Z
    .end local v8           #span:Landroid/text/style/LeadingMarginSpan;
    .end local v13           #useFirstLineMargin:Z
    :cond_62
    const/4 v3, 0x0

    goto :goto_37

    .line 1475
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v3       #isFirstParaLine:Z
    .restart local v7       #spStart:I
    .restart local v8       #span:Landroid/text/style/LeadingMarginSpan;
    .restart local v10       #spanLine:I
    .restart local v13       #useFirstLineMargin:Z
    :cond_64
    const/4 v13, 0x0

    goto :goto_5a
.end method

.method static getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 5
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 1661
    .local p3, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-ne p1, p2, :cond_b

    if-lez p1, :cond_b

    .line 1662
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 1665
    :goto_a
    return-object v0

    :cond_b
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method static measurePara(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;II)F
    .registers 25
    .parameter "paint"
    .parameter "workPaint"
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1487
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v15

    .line 1488
    .local v15, mt:Landroid/text/MeasuredText;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v19

    .line 1490
    .local v19, tl:Landroid/text/TextLine;
    :try_start_8
    sget-object v3, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 1493
    iget-boolean v3, v15, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v3, :cond_79

    .line 1494
    sget-object v9, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1495
    .local v9, directions:Landroid/text/Layout$Directions;
    const/4 v8, 0x1

    .line 1501
    .local v8, dir:I
    :goto_1a
    iget-object v12, v15, Landroid/text/MeasuredText;->mChars:[C

    .line 1502
    .local v12, chars:[C
    iget v14, v15, Landroid/text/MeasuredText;->mLen:I

    .line 1503
    .local v14, len:I
    const/4 v10, 0x0

    .line 1504
    .local v10, hasTabs:Z
    const/4 v11, 0x0

    .line 1505
    .local v11, tabStops:Landroid/text/Layout$TabStops;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_21
    if-ge v13, v14, :cond_5e

    .line 1506
    aget-char v3, v12, v13

    const/16 v4, 0x9

    if-ne v3, v4, :cond_8a

    .line 1507
    const/4 v10, 0x1

    .line 1508
    move-object/from16 v0, p2

    instance-of v3, v0, Landroid/text/Spanned;

    if-eqz v3, :cond_5e

    .line 1509
    move-object/from16 v0, p2

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v17, v0

    .line 1510
    .local v17, spanned:Landroid/text/Spanned;
    const-class v3, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v17

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v16

    .line 1512
    .local v16, spanEnd:I
    const-class v3, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v17

    move/from16 v1, p3

    move/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Landroid/text/style/TabStopSpan;

    .line 1514
    .local v18, spans:[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v18

    array-length v3, v0

    if-lez v3, :cond_5e

    .line 1515
    new-instance v11, Landroid/text/Layout$TabStops;

    .end local v11           #tabStops:Landroid/text/Layout$TabStops;
    const/16 v3, 0x14

    move-object/from16 v0, v18

    invoke-direct {v11, v3, v0}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .end local v16           #spanEnd:I
    .end local v17           #spanned:Landroid/text/Spanned;
    .end local v18           #spans:[Landroid/text/style/TabStopSpan;
    .restart local v11       #tabStops:Landroid/text/Layout$TabStops;
    :cond_5e
    move-object/from16 v3, v19

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    .line 1521
    invoke-virtual/range {v3 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1522
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    :try_end_71
    .catchall {:try_start_8 .. :try_end_71} :catchall_8d

    move-result v3

    .line 1524
    invoke-static/range {v19 .. v19}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1525
    invoke-static {v15}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return v3

    .line 1497
    .end local v8           #dir:I
    .end local v9           #directions:Landroid/text/Layout$Directions;
    .end local v10           #hasTabs:Z
    .end local v11           #tabStops:Landroid/text/Layout$TabStops;
    .end local v12           #chars:[C
    .end local v13           #i:I
    .end local v14           #len:I
    :cond_79
    :try_start_79
    iget v3, v15, Landroid/text/MeasuredText;->mDir:I

    iget-object v4, v15, Landroid/text/MeasuredText;->mLevels:[B

    const/4 v5, 0x0

    iget-object v6, v15, Landroid/text/MeasuredText;->mChars:[C

    const/4 v7, 0x0

    iget v8, v15, Landroid/text/MeasuredText;->mLen:I

    invoke-static/range {v3 .. v8}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v9

    .line 1499
    .restart local v9       #directions:Landroid/text/Layout$Directions;
    iget v8, v15, Landroid/text/MeasuredText;->mDir:I
    :try_end_89
    .catchall {:try_start_79 .. :try_end_89} :catchall_8d

    .restart local v8       #dir:I
    goto :goto_1a

    .line 1505
    .restart local v10       #hasTabs:Z
    .restart local v11       #tabStops:Landroid/text/Layout$TabStops;
    .restart local v12       #chars:[C
    .restart local v13       #i:I
    .restart local v14       #len:I
    :cond_8a
    add-int/lit8 v13, v13, 0x1

    goto :goto_21

    .line 1524
    .end local v8           #dir:I
    .end local v9           #directions:Landroid/text/Layout$Directions;
    .end local v10           #hasTabs:Z
    .end local v11           #tabStops:Landroid/text/Layout$TabStops;
    .end local v12           #chars:[C
    .end local v13           #i:I
    .end local v14           #len:I
    :catchall_8d
    move-exception v3

    invoke-static/range {v19 .. v19}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1525
    invoke-static {v15}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw v3
.end method

.method static nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .registers 11
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "h"
    .parameter "tabs"

    .prologue
    const/high16 v5, 0x41a0

    .line 1604
    const v2, 0x7f7fffff

    .line 1605
    .local v2, nh:F
    const/4 v0, 0x0

    .line 1607
    .local v0, alltabs:Z
    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_41

    .line 1608
    if-nez p4, :cond_15

    .line 1609
    check-cast p0, Landroid/text/Spanned;

    .end local p0
    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-static {p0, p1, p2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    .line 1610
    const/4 v0, 0x1

    .line 1613
    :cond_15
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    array-length v4, p4

    if-ge v1, v4, :cond_38

    .line 1614
    if-nez v0, :cond_24

    .line 1615
    aget-object v4, p4, v1

    instance-of v4, v4, Landroid/text/style/TabStopSpan;

    if-nez v4, :cond_24

    .line 1613
    :cond_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1619
    :cond_24
    aget-object v4, p4, v1

    check-cast v4, Landroid/text/style/TabStopSpan;

    invoke-interface {v4}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v3

    .line 1621
    .local v3, where:I
    int-to-float v4, v3

    cmpg-float v4, v4, v2

    if-gez v4, :cond_21

    int-to-float v4, v3

    cmpl-float v4, v4, p3

    if-lez v4, :cond_21

    .line 1622
    int-to-float v2, v3

    goto :goto_21

    .line 1625
    .end local v3           #where:I
    :cond_38
    const v4, 0x7f7fffff

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_41

    move v4, v2

    .line 1629
    .end local v1           #i:I
    :goto_40
    return v4

    :cond_41
    add-float v4, p3, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    goto :goto_40
.end method

.method private primaryIsTrailingPrevious(I)Z
    .registers 15
    .parameter "offset"

    .prologue
    const v12, 0x3ffffff

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 706
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 707
    .local v4, line:I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    .line 708
    .local v6, lineStart:I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 709
    .local v5, lineEnd:I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v11

    iget-object v7, v11, Landroid/text/Layout$Directions;->mDirections:[I

    .line 711
    .local v7, runs:[I
    const/4 v1, -0x1

    .line 712
    .local v1, levelAt:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    array-length v11, v7

    if-ge v0, v11, :cond_39

    .line 713
    aget v11, v7, v0

    add-int v8, v6, v11

    .line 714
    .local v8, start:I
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    and-int/2addr v11, v12

    add-int v3, v8, v11

    .line 715
    .local v3, limit:I
    if-le v3, v5, :cond_2a

    .line 716
    move v3, v5

    .line 718
    :cond_2a
    if-lt p1, v8, :cond_51

    if-ge p1, v3, :cond_51

    .line 719
    if-le p1, v8, :cond_31

    .line 751
    .end local v3           #limit:I
    .end local v8           #start:I
    :goto_30
    return v9

    .line 723
    .restart local v3       #limit:I
    .restart local v8       #start:I
    :cond_31
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    ushr-int/lit8 v11, v11, 0x1a

    and-int/lit8 v1, v11, 0x3f

    .line 727
    .end local v3           #limit:I
    .end local v8           #start:I
    :cond_39
    const/4 v11, -0x1

    if-ne v1, v11, :cond_43

    .line 729
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v10, :cond_54

    move v1, v9

    .line 733
    :cond_43
    :goto_43
    const/4 v2, -0x1

    .line 734
    .local v2, levelBefore:I
    if-ne p1, v6, :cond_58

    .line 735
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v10, :cond_56

    move v2, v9

    .line 751
    :cond_4d
    :goto_4d
    if-ge v2, v1, :cond_7c

    :goto_4f
    move v9, v10

    goto :goto_30

    .line 712
    .end local v2           #levelBefore:I
    .restart local v3       #limit:I
    .restart local v8       #start:I
    :cond_51
    add-int/lit8 v0, v0, 0x2

    goto :goto_19

    .end local v3           #limit:I
    .end local v8           #start:I
    :cond_54
    move v1, v10

    .line 729
    goto :goto_43

    .restart local v2       #levelBefore:I
    :cond_56
    move v2, v10

    .line 735
    goto :goto_4d

    .line 737
    :cond_58
    add-int/lit8 p1, p1, -0x1

    .line 738
    const/4 v0, 0x0

    :goto_5b
    array-length v11, v7

    if-ge v0, v11, :cond_4d

    .line 739
    aget v11, v7, v0

    add-int v8, v6, v11

    .line 740
    .restart local v8       #start:I
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    and-int/2addr v11, v12

    add-int v3, v8, v11

    .line 741
    .restart local v3       #limit:I
    if-le v3, v5, :cond_6c

    .line 742
    move v3, v5

    .line 744
    :cond_6c
    if-lt p1, v8, :cond_79

    if-ge p1, v3, :cond_79

    .line 745
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    ushr-int/lit8 v11, v11, 0x1a

    and-int/lit8 v2, v11, 0x3f

    .line 746
    goto :goto_4d

    .line 738
    :cond_79
    add-int/lit8 v0, v0, 0x2

    goto :goto_5b

    .end local v3           #limit:I
    .end local v8           #start:I
    :cond_7c
    move v10, v9

    .line 751
    goto :goto_4f
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 186
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .registers 69
    .parameter "c"
    .parameter "highlight"
    .parameter "highlightPaint"
    .parameter "cursorOffsetVertical"

    .prologue
    .line 202
    sget-object v5, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v5

    .line 203
    :try_start_3
    sget-object v3, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 204
    monitor-exit v5

    .line 430
    :goto_e
    return-void

    .line 207
    :cond_f
    sget-object v3, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    .line 208
    .local v43, dtop:I
    sget-object v3, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v42, v0

    .line 209
    .local v42, dbottom:I
    monitor-exit v5
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_ce

    .line 211
    const/16 v61, 0x0

    .line 212
    .local v61, top:I
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v40

    .line 214
    .local v40, bottom:I
    move/from16 v0, v43

    move/from16 v1, v61

    if-le v0, v1, :cond_30

    .line 215
    move/from16 v61, v43

    .line 217
    :cond_30
    move/from16 v0, v42

    move/from16 v1, v40

    if-ge v0, v1, :cond_38

    .line 218
    move/from16 v40, v42

    .line 221
    :cond_38
    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v44

    .line 222
    .local v44, first:I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v45

    .line 224
    .local v45, last:I
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v50

    .line 225
    .local v50, previousLineBottom:I
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v51

    .line 227
    .local v51, previousLineEnd:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 228
    .local v4, paint:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 229
    .local v10, buf:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/Layout;->mWidth:I

    .line 230
    .local v6, width:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move/from16 v54, v0

    .line 232
    .local v54, spannedText:Z
    sget-object v55, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 233
    .local v55, spans:[Landroid/text/style/ParagraphStyle;
    const/16 v53, 0x0

    .line 234
    .local v53, spanEnd:I
    const/16 v59, 0x0

    .line 240
    .local v59, textLength:I
    if-eqz v54, :cond_e8

    move-object/from16 v52, v10

    .line 241
    check-cast v52, Landroid/text/Spanned;

    .line 242
    .local v52, sp:Landroid/text/Spanned;
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v59

    .line 243
    move/from16 v13, v44

    .local v13, i:I
    :goto_7c
    move/from16 v0, v45

    if-gt v13, v0, :cond_d4

    .line 244
    move/from16 v11, v51

    .line 245
    .local v11, start:I
    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    .line 246
    .local v12, end:I
    move/from16 v51, v12

    .line 248
    move/from16 v7, v50

    .line 249
    .local v7, ltop:I
    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    .line 250
    .local v9, lbottom:I
    move/from16 v50, v9

    .line 251
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    sub-int v8, v9, v3

    .line 253
    .local v8, lbaseline:I
    move/from16 v0, v53

    if-lt v11, v0, :cond_b8

    .line 256
    const-class v3, Landroid/text/style/LineBackgroundSpan;

    move-object/from16 v0, v52

    move/from16 v1, v59

    invoke-interface {v0, v11, v1, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v53

    .line 260
    const-class v3, Landroid/text/style/LineBackgroundSpan;

    move-object/from16 v0, v52

    invoke-static {v0, v11, v12, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v55

    .end local v55           #spans:[Landroid/text/style/ParagraphStyle;
    check-cast v55, [Landroid/text/style/ParagraphStyle;

    .line 263
    .restart local v55       #spans:[Landroid/text/style/ParagraphStyle;
    :cond_b8
    const/16 v48, 0x0

    .local v48, n:I
    :goto_ba
    move-object/from16 v0, v55

    array-length v3, v0

    move/from16 v0, v48

    if-ge v0, v3, :cond_d1

    .line 264
    aget-object v2, v55, v48

    check-cast v2, Landroid/text/style/LineBackgroundSpan;

    .line 266
    .local v2, back:Landroid/text/style/LineBackgroundSpan;
    const/4 v5, 0x0

    move-object/from16 v3, p1

    invoke-interface/range {v2 .. v13}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    .line 263
    add-int/lit8 v48, v48, 0x1

    goto :goto_ba

    .line 209
    .end local v2           #back:Landroid/text/style/LineBackgroundSpan;
    .end local v4           #paint:Landroid/text/TextPaint;
    .end local v6           #width:I
    .end local v7           #ltop:I
    .end local v8           #lbaseline:I
    .end local v9           #lbottom:I
    .end local v10           #buf:Ljava/lang/CharSequence;
    .end local v11           #start:I
    .end local v12           #end:I
    .end local v13           #i:I
    .end local v40           #bottom:I
    .end local v42           #dbottom:I
    .end local v43           #dtop:I
    .end local v44           #first:I
    .end local v45           #last:I
    .end local v48           #n:I
    .end local v50           #previousLineBottom:I
    .end local v51           #previousLineEnd:I
    .end local v52           #sp:Landroid/text/Spanned;
    .end local v53           #spanEnd:I
    .end local v54           #spannedText:Z
    .end local v55           #spans:[Landroid/text/style/ParagraphStyle;
    .end local v59           #textLength:I
    .end local v61           #top:I
    :catchall_ce
    move-exception v3

    :try_start_cf
    monitor-exit v5
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ce

    throw v3

    .line 243
    .restart local v4       #paint:Landroid/text/TextPaint;
    .restart local v6       #width:I
    .restart local v7       #ltop:I
    .restart local v8       #lbaseline:I
    .restart local v9       #lbottom:I
    .restart local v10       #buf:Ljava/lang/CharSequence;
    .restart local v11       #start:I
    .restart local v12       #end:I
    .restart local v13       #i:I
    .restart local v40       #bottom:I
    .restart local v42       #dbottom:I
    .restart local v43       #dtop:I
    .restart local v44       #first:I
    .restart local v45       #last:I
    .restart local v48       #n:I
    .restart local v50       #previousLineBottom:I
    .restart local v51       #previousLineEnd:I
    .restart local v52       #sp:Landroid/text/Spanned;
    .restart local v53       #spanEnd:I
    .restart local v54       #spannedText:Z
    .restart local v55       #spans:[Landroid/text/style/ParagraphStyle;
    .restart local v59       #textLength:I
    .restart local v61       #top:I
    :cond_d1
    add-int/lit8 v13, v13, 0x1

    goto :goto_7c

    .line 273
    .end local v7           #ltop:I
    .end local v8           #lbaseline:I
    .end local v9           #lbottom:I
    .end local v11           #start:I
    .end local v12           #end:I
    .end local v48           #n:I
    :cond_d4
    const/16 v53, 0x0

    .line 274
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v50

    .line 275
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v51

    .line 276
    sget-object v55, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 281
    .end local v13           #i:I
    .end local v52           #sp:Landroid/text/Spanned;
    :cond_e8
    if-eqz p2, :cond_104

    .line 282
    if-eqz p4, :cond_f5

    .line 283
    const/4 v3, 0x0

    move/from16 v0, p4

    int-to-float v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 286
    :cond_f5
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 288
    if-eqz p4, :cond_104

    .line 289
    const/4 v3, 0x0

    move/from16 v0, p4

    neg-int v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 293
    :cond_104
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v49, v0

    .line 294
    .local v49, paraAlign:Landroid/text/Layout$Alignment;
    const/16 v38, 0x0

    .line 295
    .local v38, tabStops:Landroid/text/Layout$TabStops;
    const/16 v58, 0x0

    .line 297
    .local v58, tabStopsIsInitialized:Z
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v60

    .line 302
    .local v60, tl:Landroid/text/TextLine;
    move/from16 v13, v44

    .restart local v13       #i:I
    move-object/from16 v57, v38

    .end local v38           #tabStops:Landroid/text/Layout$TabStops;
    .local v57, tabStops:Landroid/text/Layout$TabStops;
    :goto_116
    move/from16 v0, v45

    if-gt v13, v0, :cond_2f3

    .line 303
    move/from16 v11, v51

    .line 305
    .restart local v11       #start:I
    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v51

    .line 306
    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-direct {v0, v13, v11, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v12

    .line 308
    .restart local v12       #end:I
    move/from16 v7, v50

    .line 309
    .restart local v7       #ltop:I
    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    .line 310
    .restart local v9       #lbottom:I
    move/from16 v50, v9

    .line 311
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    sub-int v8, v9, v3

    .line 313
    .restart local v8       #lbaseline:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v18

    .line 314
    .local v18, dir:I
    const/16 v29, 0x0

    .line 315
    .local v29, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move/from16 v17, v0

    .line 317
    .local v17, right:I
    if-eqz v54, :cond_228

    move-object/from16 v52, v10

    .line 318
    check-cast v52, Landroid/text/Spanned;

    .line 319
    .restart local v52       #sp:Landroid/text/Spanned;
    if-eqz v11, :cond_160

    add-int/lit8 v3, v11, -0x1

    invoke-interface {v10, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_1fa

    :cond_160
    const/16 v25, 0x1

    .line 332
    .local v25, isFirstParaLine:Z
    :goto_162
    move/from16 v0, v53

    if-lt v11, v0, :cond_19f

    move/from16 v0, v44

    if-eq v13, v0, :cond_16c

    if-eqz v25, :cond_19f

    .line 333
    :cond_16c
    const-class v3, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v52

    move/from16 v1, v59

    invoke-interface {v0, v11, v1, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v53

    .line 335
    const-class v3, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-static {v0, v11, v1, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v55

    .end local v55           #spans:[Landroid/text/style/ParagraphStyle;
    check-cast v55, [Landroid/text/style/ParagraphStyle;

    .line 337
    .restart local v55       #spans:[Landroid/text/style/ParagraphStyle;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v49, v0

    .line 338
    move-object/from16 v0, v55

    array-length v3, v0

    add-int/lit8 v48, v3, -0x1

    .restart local v48       #n:I
    :goto_18d
    if-ltz v48, :cond_19d

    .line 339
    aget-object v3, v55, v48

    instance-of v3, v3, Landroid/text/style/AlignmentSpan;

    if-eqz v3, :cond_1fe

    .line 340
    aget-object v3, v55, v48

    check-cast v3, Landroid/text/style/AlignmentSpan;

    invoke-interface {v3}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v49

    .line 345
    :cond_19d
    const/16 v58, 0x0

    .line 350
    .end local v48           #n:I
    :cond_19f
    move-object/from16 v0, v55

    array-length v0, v0

    move/from16 v46, v0

    .line 351
    .local v46, length:I
    const/16 v48, 0x0

    .restart local v48       #n:I
    :goto_1a6
    move/from16 v0, v48

    move/from16 v1, v46

    if-ge v0, v1, :cond_228

    .line 352
    aget-object v3, v55, v48

    instance-of v3, v3, Landroid/text/style/LeadingMarginSpan;

    if-eqz v3, :cond_1f7

    .line 353
    aget-object v14, v55, v48

    check-cast v14, Landroid/text/style/LeadingMarginSpan;

    .line 354
    .local v14, margin:Landroid/text/style/LeadingMarginSpan;
    move/from16 v62, v25

    .line 355
    .local v62, useFirstLineMargin:Z
    instance-of v3, v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v3, :cond_1d5

    move-object v3, v14

    .line 356
    check-cast v3, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v3}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v41

    .line 357
    .local v41, count:I
    move-object/from16 v0, v52

    invoke-interface {v0, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v56

    .line 358
    .local v56, startLine:I
    add-int v3, v56, v41

    if-ge v13, v3, :cond_201

    const/16 v62, 0x1

    .line 361
    .end local v41           #count:I
    .end local v56           #startLine:I
    :cond_1d5
    :goto_1d5
    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_204

    move-object/from16 v15, p1

    move-object/from16 v16, v4

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move-object/from16 v22, v10

    move/from16 v23, v11

    move/from16 v24, v12

    move-object/from16 v26, p0

    .line 362
    invoke-interface/range {v14 .. v26}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 365
    move/from16 v0, v62

    invoke-interface {v14, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v3

    sub-int v17, v17, v3

    .line 351
    .end local v14           #margin:Landroid/text/style/LeadingMarginSpan;
    .end local v62           #useFirstLineMargin:Z
    :cond_1f7
    :goto_1f7
    add-int/lit8 v48, v48, 0x1

    goto :goto_1a6

    .line 319
    .end local v25           #isFirstParaLine:Z
    .end local v46           #length:I
    .end local v48           #n:I
    :cond_1fa
    const/16 v25, 0x0

    goto/16 :goto_162

    .line 338
    .restart local v25       #isFirstParaLine:Z
    .restart local v48       #n:I
    :cond_1fe
    add-int/lit8 v48, v48, -0x1

    goto :goto_18d

    .line 358
    .restart local v14       #margin:Landroid/text/style/LeadingMarginSpan;
    .restart local v41       #count:I
    .restart local v46       #length:I
    .restart local v56       #startLine:I
    .restart local v62       #useFirstLineMargin:Z
    :cond_201
    const/16 v62, 0x0

    goto :goto_1d5

    .end local v41           #count:I
    .end local v56           #startLine:I
    :cond_204
    move-object/from16 v26, v14

    move-object/from16 v27, p1

    move-object/from16 v28, v4

    move/from16 v30, v18

    move/from16 v31, v7

    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v34, v10

    move/from16 v35, v11

    move/from16 v36, v12

    move/from16 v37, v25

    move-object/from16 v38, p0

    .line 367
    invoke-interface/range {v26 .. v38}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 370
    move/from16 v0, v62

    invoke-interface {v14, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v3

    add-int v29, v29, v3

    goto :goto_1f7

    .line 376
    .end local v14           #margin:Landroid/text/style/LeadingMarginSpan;
    .end local v25           #isFirstParaLine:Z
    .end local v46           #length:I
    .end local v48           #n:I
    .end local v52           #sp:Landroid/text/Spanned;
    .end local v62           #useFirstLineMargin:Z
    :cond_228
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v37

    .line 378
    .local v37, hasTabOrEmoji:Z
    if-eqz v37, :cond_2f8

    if-nez v58, :cond_2f8

    .line 379
    if-nez v57, :cond_288

    .line 380
    new-instance v38, Landroid/text/Layout$TabStops;

    const/16 v3, 0x14

    move-object/from16 v0, v38

    move-object/from16 v1, v55

    invoke-direct {v0, v3, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 384
    .end local v57           #tabStops:Landroid/text/Layout$TabStops;
    .restart local v38       #tabStops:Landroid/text/Layout$TabStops;
    :goto_23f
    const/16 v58, 0x1

    .line 388
    :goto_241
    move-object/from16 v39, v49

    .line 389
    .local v39, align:Landroid/text/Layout$Alignment;
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v39

    if-ne v0, v3, :cond_297

    .line 390
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_294

    sget-object v39, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 398
    :cond_250
    :goto_250
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v39

    if-ne v0, v3, :cond_2ab

    .line 399
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_2a8

    .line 400
    move/from16 v63, v29

    .line 418
    .local v63, x:I
    :goto_25d
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v36

    .line 419
    .local v36, directions:Landroid/text/Layout$Directions;
    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, v36

    if-ne v0, v3, :cond_2d1

    if-nez v54, :cond_2d1

    if-nez v37, :cond_2d1

    .line 422
    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v34, v0

    int-to-float v0, v8

    move/from16 v35, v0

    move-object/from16 v30, p1

    move-object/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v12

    move-object/from16 v36, v4

    invoke-virtual/range {v30 .. v36}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 302
    .end local v36           #directions:Landroid/text/Layout$Directions;
    :goto_282
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v57, v38

    .end local v38           #tabStops:Landroid/text/Layout$TabStops;
    .restart local v57       #tabStops:Landroid/text/Layout$TabStops;
    goto/16 :goto_116

    .line 382
    .end local v39           #align:Landroid/text/Layout$Alignment;
    .end local v63           #x:I
    :cond_288
    const/16 v3, 0x14

    move-object/from16 v0, v57

    move-object/from16 v1, v55

    invoke-virtual {v0, v3, v1}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

    move-object/from16 v38, v57

    .end local v57           #tabStops:Landroid/text/Layout$TabStops;
    .restart local v38       #tabStops:Landroid/text/Layout$TabStops;
    goto :goto_23f

    .line 390
    .restart local v39       #align:Landroid/text/Layout$Alignment;
    :cond_294
    sget-object v39, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_250

    .line 392
    :cond_297
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v39

    if-ne v0, v3, :cond_250

    .line 393
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_2a5

    sget-object v39, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_2a4
    goto :goto_250

    :cond_2a5
    sget-object v39, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_2a4

    .line 402
    :cond_2a8
    move/from16 v63, v17

    .restart local v63       #x:I
    goto :goto_25d

    .line 405
    .end local v63           #x:I
    :cond_2ab
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v13, v1, v3}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v3

    float-to-int v0, v3

    move/from16 v47, v0

    .line 406
    .local v47, max:I
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v39

    if-ne v0, v3, :cond_2c8

    .line 407
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_2c5

    .line 408
    sub-int v63, v17, v47

    .restart local v63       #x:I
    goto :goto_25d

    .line 410
    .end local v63           #x:I
    :cond_2c5
    sub-int v63, v29, v47

    .restart local v63       #x:I
    goto :goto_25d

    .line 413
    .end local v63           #x:I
    :cond_2c8
    and-int/lit8 v47, v47, -0x2

    .line 414
    add-int v3, v17, v29

    sub-int v3, v3, v47

    shr-int/lit8 v63, v3, 0x1

    .restart local v63       #x:I
    goto :goto_25d

    .end local v47           #max:I
    .restart local v36       #directions:Landroid/text/Layout$Directions;
    :cond_2d1
    move-object/from16 v30, v60

    move-object/from16 v31, v4

    move-object/from16 v32, v10

    move/from16 v33, v11

    move/from16 v34, v12

    move/from16 v35, v18

    .line 424
    invoke-virtual/range {v30 .. v38}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 425
    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v19, v60

    move-object/from16 v20, p1

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    invoke-virtual/range {v19 .. v24}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    goto :goto_282

    .line 429
    .end local v7           #ltop:I
    .end local v8           #lbaseline:I
    .end local v9           #lbottom:I
    .end local v11           #start:I
    .end local v12           #end:I
    .end local v17           #right:I
    .end local v18           #dir:I
    .end local v29           #left:I
    .end local v36           #directions:Landroid/text/Layout$Directions;
    .end local v37           #hasTabOrEmoji:Z
    .end local v38           #tabStops:Landroid/text/Layout$TabStops;
    .end local v39           #align:Landroid/text/Layout$Alignment;
    .end local v63           #x:I
    .restart local v57       #tabStops:Landroid/text/Layout$TabStops;
    :cond_2f3
    invoke-static/range {v60 .. v60}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    goto/16 :goto_e

    .restart local v7       #ltop:I
    .restart local v8       #lbaseline:I
    .restart local v9       #lbottom:I
    .restart local v11       #start:I
    .restart local v12       #end:I
    .restart local v17       #right:I
    .restart local v18       #dir:I
    .restart local v29       #left:I
    .restart local v37       #hasTabOrEmoji:Z
    :cond_2f8
    move-object/from16 v38, v57

    .end local v57           #tabStops:Landroid/text/Layout$TabStops;
    .restart local v38       #tabStops:Landroid/text/Layout$TabStops;
    goto/16 :goto_241
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .registers 2

    .prologue
    .line 540
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract getBottomPadding()I
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .registers 15
    .parameter "point"
    .parameter "dest"
    .parameter "editingBuffer"

    .prologue
    .line 1232
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 1234
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 1235
    .local v6, line:I
    invoke-virtual {p0, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    .line 1236
    .local v7, top:I
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p0, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 1238
    .local v0, bottom:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    const/high16 v9, 0x3f00

    sub-float v4, v8, v9

    .line 1239
    .local v4, h1:F
    invoke-virtual {p0, p1}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v8

    if-eqz v8, :cond_9f

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v8

    const/high16 v9, 0x3f00

    sub-float v5, v8, v9

    .line 1241
    .local v5, h2:F
    :goto_27
    const/4 v8, 0x1

    invoke-static {p3, v8}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v8

    const/16 v9, 0x800

    invoke-static {p3, v9}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v9

    or-int v1, v8, v9

    .line 1243
    .local v1, caps:I
    const/4 v8, 0x2

    invoke-static {p3, v8}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1244
    .local v3, fn:I
    const/4 v2, 0x0

    .line 1246
    .local v2, dist:I
    if-nez v1, :cond_3e

    if-eqz v3, :cond_48

    .line 1247
    :cond_3e
    sub-int v8, v0, v7

    shr-int/lit8 v2, v8, 0x2

    .line 1249
    if-eqz v3, :cond_45

    .line 1250
    add-int/2addr v7, v2

    .line 1251
    :cond_45
    if-eqz v1, :cond_48

    .line 1252
    sub-int/2addr v0, v2

    .line 1255
    :cond_48
    const/high16 v8, 0x3f00

    cmpg-float v8, v4, v8

    if-gez v8, :cond_50

    .line 1256
    const/high16 v4, 0x3f00

    .line 1257
    :cond_50
    const/high16 v8, 0x3f00

    cmpg-float v8, v5, v8

    if-gez v8, :cond_58

    .line 1258
    const/high16 v5, 0x3f00

    .line 1260
    :cond_58
    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_a1

    .line 1261
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1262
    int-to-float v8, v0

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1271
    :goto_66
    const/4 v8, 0x2

    if-ne v1, v8, :cond_ba

    .line 1272
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1273
    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1274
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1275
    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1287
    :cond_82
    :goto_82
    const/4 v8, 0x2

    if-ne v3, v8, :cond_ee

    .line 1288
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1289
    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1290
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1291
    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1302
    :cond_9e
    :goto_9e
    return-void

    .end local v1           #caps:I
    .end local v2           #dist:I
    .end local v3           #fn:I
    .end local v5           #h2:F
    :cond_9f
    move v5, v4

    .line 1239
    goto :goto_27

    .line 1264
    .restart local v1       #caps:I
    .restart local v2       #dist:I
    .restart local v3       #fn:I
    .restart local v5       #h2:F
    :cond_a1
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1265
    add-int v8, v7, v0

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1267
    add-int v8, v7, v0

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1268
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_66

    .line 1276
    :cond_ba
    const/4 v8, 0x1

    if-ne v1, v8, :cond_82

    .line 1277
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1278
    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1280
    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    sub-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1281
    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    sub-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1283
    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1284
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_82

    .line 1292
    :cond_ee
    const/4 v8, 0x1

    if-ne v3, v8, :cond_9e

    .line 1293
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1294
    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1296
    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1297
    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1299
    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1300
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_9e
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method public abstract getEllipsisStart(I)I
.end method

.method public getEllipsizedWidth()I
    .registers 2

    .prologue
    .line 513
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 533
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public final getLineAscent(I)I
    .registers 5
    .parameter "line"

    .prologue
    .line 1129
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBaseline(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 1120
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBottom(I)I
    .registers 3
    .parameter "line"

    .prologue
    .line 1112
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .registers 4
    .parameter "line"
    .parameter "bounds"

    .prologue
    .line 579
    if-eqz p2, :cond_17

    .line 580
    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 581
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 582
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 583
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 585
    :cond_17
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public abstract getLineContainsTab(I)Z
.end method

.method public abstract getLineCount()I
.end method

.method public abstract getLineDescent(I)I
.end method

.method public abstract getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final getLineEnd(I)I
    .registers 3
    .parameter "line"

    .prologue
    .line 1074
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public getLineForOffset(I)I
    .registers 7
    .parameter "offset"

    .prologue
    .line 977
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, high:I
    const/4 v2, -0x1

    .line 979
    .local v2, low:I
    :goto_5
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_18

    .line 980
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 982
    .local v0, guess:I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_16

    .line 983
    move v1, v0

    goto :goto_5

    .line 985
    :cond_16
    move v2, v0

    goto :goto_5

    .line 988
    .end local v0           #guess:I
    :cond_18
    if-gez v2, :cond_1b

    .line 989
    const/4 v2, 0x0

    .line 991
    .end local v2           #low:I
    :cond_1b
    return v2
.end method

.method public getLineForVertical(I)I
    .registers 7
    .parameter "vertical"

    .prologue
    .line 954
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, high:I
    const/4 v2, -0x1

    .line 956
    .local v2, low:I
    :goto_5
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_18

    .line 957
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 959
    .local v0, guess:I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_16

    .line 960
    move v1, v0

    goto :goto_5

    .line 962
    :cond_16
    move v2, v0

    goto :goto_5

    .line 965
    .end local v0           #guess:I
    :cond_18
    if-gez v2, :cond_1b

    .line 966
    const/4 v2, 0x0

    .line 968
    .end local v2           #low:I
    :cond_1b
    return v2
.end method

.method public getLineLeft(I)F
    .registers 10
    .parameter "line"

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 813
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 814
    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 816
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_f

    .line 835
    :cond_e
    :goto_e
    return v5

    .line 818
    :cond_f
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_20

    .line 819
    if-ne v1, v7, :cond_e

    .line 820
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_e

    .line 823
    :cond_20
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_2d

    .line 824
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_e

    .line 825
    :cond_2d
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_3c

    .line 826
    if-eq v1, v7, :cond_e

    .line 829
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_e

    .line 831
    :cond_3c
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 832
    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 833
    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 835
    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    goto :goto_e
.end method

.method public getLineMax(I)F
    .registers 6
    .parameter "line"

    .prologue
    .line 875
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    .line 876
    .local v0, margin:F
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 877
    .local v1, signedExtent:F
    add-float v2, v0, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_12

    .end local v1           #signedExtent:F
    :goto_11
    return v1

    .restart local v1       #signedExtent:F
    :cond_12
    neg-float v1, v1

    goto :goto_11
.end method

.method public getLineRight(I)F
    .registers 9
    .parameter "line"

    .prologue
    const/4 v6, -0x1

    .line 844
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 845
    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 847
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_18

    .line 848
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    .line 866
    :goto_17
    return v5

    .line 849
    :cond_18
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_2d

    .line 850
    if-ne v1, v6, :cond_22

    .line 851
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    goto :goto_17

    .line 853
    :cond_22
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_17

    .line 854
    :cond_2d
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_35

    .line 855
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    goto :goto_17

    .line 856
    :cond_35
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_44

    .line 857
    if-ne v1, v6, :cond_40

    .line 858
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    goto :goto_17

    .line 860
    :cond_40
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    goto :goto_17

    .line 862
    :cond_44
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 863
    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 864
    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 866
    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    int-to-float v5, v5

    goto :goto_17
.end method

.method public abstract getLineStart(I)I
.end method

.method public abstract getLineTop(I)I
.end method

.method public getLineVisibleEnd(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 1082
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v0

    return v0
.end method

.method public getLineWidth(I)F
    .registers 6
    .parameter "line"

    .prologue
    .line 885
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    .line 886
    .local v0, margin:F
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 887
    .local v1, signedExtent:F
    add-float v2, v0, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_12

    .end local v1           #signedExtent:F
    :goto_11
    return v1

    .restart local v1       #signedExtent:F
    :cond_12
    neg-float v1, v1

    goto :goto_11
.end method

.method public getOffsetForHorizontal(IF)I
    .registers 23
    .parameter "line"
    .parameter "horiz"

    .prologue
    .line 999
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v18

    add-int/lit8 v13, v18, -0x1

    .line 1000
    .local v13, max:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .line 1001
    .local v14, min:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 1003
    .local v6, dirs:Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_1c

    .line 1004
    add-int/lit8 v13, v13, 0x1

    .line 1006
    :cond_1c
    move v4, v14

    .line 1007
    .local v4, best:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1009
    .local v5, bestdist:F
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2a
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_fb

    .line 1010
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    aget v18, v18, v11

    add-int v9, v14, v18

    .line 1011
    .local v9, here:I
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x1

    aget v18, v18, v19

    const v19, 0x3ffffff

    and-int v18, v18, v19

    add-int v17, v9, v18

    .line 1012
    .local v17, there:I
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x1

    aget v18, v18, v19

    const/high16 v19, 0x400

    and-int v18, v18, v19

    if-eqz v18, :cond_9a

    const/16 v16, -0x1

    .line 1014
    .local v16, swap:I
    :goto_5e
    move/from16 v0, v17

    if-le v0, v13, :cond_64

    .line 1015
    move/from16 v17, v13

    .line 1016
    :cond_64
    add-int/lit8 v18, v17, -0x1

    add-int/lit8 v10, v18, 0x1

    .local v10, high:I
    add-int/lit8 v18, v9, 0x1

    add-int/lit8 v12, v18, -0x1

    .line 1018
    .local v12, low:I
    :goto_6c
    sub-int v18, v10, v12

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_9f

    .line 1019
    add-int v18, v10, v12

    div-int/lit8 v8, v18, 0x2

    .line 1020
    .local v8, guess:I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v2

    .line 1022
    .local v2, adguess:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p2

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_9d

    .line 1023
    move v10, v8

    goto :goto_6c

    .line 1012
    .end local v2           #adguess:I
    .end local v8           #guess:I
    .end local v10           #high:I
    .end local v12           #low:I
    .end local v16           #swap:I
    :cond_9a
    const/16 v16, 0x1

    goto :goto_5e

    .line 1025
    .restart local v2       #adguess:I
    .restart local v8       #guess:I
    .restart local v10       #high:I
    .restart local v12       #low:I
    .restart local v16       #swap:I
    :cond_9d
    move v12, v8

    goto :goto_6c

    .line 1028
    .end local v2           #adguess:I
    .end local v8           #guess:I
    :cond_9f
    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    if-ge v12, v0, :cond_a7

    .line 1029
    add-int/lit8 v12, v9, 0x1

    .line 1031
    :cond_a7
    move/from16 v0, v17

    if-ge v12, v0, :cond_e5

    .line 1032
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v12

    .line 1034
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1036
    .local v7, dist:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1037
    .local v3, aft:I
    move/from16 v0, v17

    if-ge v3, v0, :cond_df

    .line 1038
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 1040
    .local v15, other:F
    cmpg-float v18, v15, v7

    if-gez v18, :cond_df

    .line 1041
    move v7, v15

    .line 1042
    move v12, v3

    .line 1046
    .end local v15           #other:F
    :cond_df
    cmpg-float v18, v7, v5

    if-gez v18, :cond_e5

    .line 1047
    move v5, v7

    .line 1048
    move v4, v12

    .line 1052
    .end local v3           #aft:I
    .end local v7           #dist:F
    :cond_e5
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1054
    .restart local v7       #dist:F
    cmpg-float v18, v7, v5

    if-gez v18, :cond_f7

    .line 1055
    move v5, v7

    .line 1056
    move v4, v9

    .line 1009
    :cond_f7
    add-int/lit8 v11, v11, 0x2

    goto/16 :goto_2a

    .line 1060
    .end local v7           #dist:F
    .end local v9           #here:I
    .end local v10           #high:I
    .end local v12           #low:I
    .end local v16           #swap:I
    .end local v17           #there:I
    :cond_fb
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1062
    .restart local v7       #dist:F
    cmpg-float v18, v7, v5

    if-gez v18, :cond_10d

    .line 1063
    move v5, v7

    .line 1064
    move v4, v13

    .line 1067
    :cond_10d
    return v4
.end method

.method public getOffsetToLeftOf(I)I
    .registers 3
    .parameter "offset"

    .prologue
    .line 1133
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public getOffsetToRightOf(I)I
    .registers 3
    .parameter "offset"

    .prologue
    .line 1137
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .registers 2

    .prologue
    .line 498
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .registers 9
    .parameter "line"

    .prologue
    .line 1400
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 1402
    .local v0, align:Landroid/text/Layout$Alignment;
    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_25

    .line 1403
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    .line 1404
    .local v1, sp:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    const-class v6, Landroid/text/style/AlignmentSpan;

    invoke-static {v1, v4, v5, v6}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/AlignmentSpan;

    .line 1408
    .local v3, spans:[Landroid/text/style/AlignmentSpan;
    array-length v2, v3

    .line 1409
    .local v2, spanLength:I
    if-lez v2, :cond_25

    .line 1410
    add-int/lit8 v4, v2, -0x1

    aget-object v4, v3, v4

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1414
    .end local v1           #sp:Landroid/text/Spanned;
    .end local v2           #spanLength:I
    .end local v3           #spans:[Landroid/text/style/AlignmentSpan;
    :cond_25
    return-object v0
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .registers 5
    .parameter "line"

    .prologue
    .line 1421
    const/4 v1, 0x0

    .line 1422
    .local v1, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1423
    .local v0, dir:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_d

    .line 1426
    .end local v1           #left:I
    :cond_c
    :goto_c
    return v1

    .restart local v1       #left:I
    :cond_d
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v1

    goto :goto_c
.end method

.method public final getParagraphRight(I)I
    .registers 5
    .parameter "line"

    .prologue
    .line 1433
    iget v1, p0, Landroid/text/Layout;->mWidth:I

    .line 1434
    .local v1, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1435
    .local v0, dir:I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_d

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_e

    .line 1438
    .end local v1           #right:I
    :cond_d
    :goto_d
    return v1

    .restart local v1       #right:I
    :cond_e
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_d
.end method

.method public getPrimaryHorizontal(I)F
    .registers 4
    .parameter "offset"

    .prologue
    .line 760
    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 761
    .local v0, trailing:Z
    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v1

    return v1
.end method

.method public getSecondaryHorizontal(I)F
    .registers 4
    .parameter "offset"

    .prologue
    .line 770
    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 771
    .local v0, trailing:Z
    if-nez v0, :cond_c

    const/4 v1, 0x1

    :goto_7
    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v1

    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .registers 23
    .parameter "start"
    .parameter "end"
    .parameter "dest"

    .prologue
    .line 1344
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    .line 1346
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_a

    .line 1393
    :goto_9
    return-void

    .line 1349
    :cond_a
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_16

    .line 1350
    move/from16 v17, p2

    .line 1351
    .local v17, temp:I
    move/from16 p2, p1

    .line 1352
    move/from16 p1, v17

    .line 1355
    .end local v17           #temp:I
    :cond_16
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1356
    .local v3, startline:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    .line 1358
    .local v15, endline:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1359
    .local v6, top:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1361
    .local v7, bottom:I
    if-ne v3, v15, :cond_3c

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v8, p3

    .line 1362
    invoke-direct/range {v2 .. v8}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    goto :goto_9

    .line 1364
    :cond_3c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v0, v2

    move/from16 v18, v0

    .line 1366
    .local v18, width:F
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    move/from16 v10, p1

    move v12, v6

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1369
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_9e

    .line 1370
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    int-to-float v10, v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1376
    :goto_79
    add-int/lit8 v16, v3, 0x1

    .local v16, i:I
    :goto_7b
    move/from16 v0, v16

    if-ge v0, v15, :cond_b6

    .line 1377
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1378
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1379
    const/4 v9, 0x0

    int-to-float v10, v6

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1376
    add-int/lit8 v16, v16, 0x1

    goto :goto_7b

    .line 1373
    .end local v16           #i:I
    :cond_9e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_79

    .line 1382
    .restart local v16       #i:I
    :cond_b6
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1383
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1385
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    move-object/from16 v8, p0

    move v9, v15

    move/from16 v11, p2

    move v12, v6

    move v13, v7

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1388
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_f0

    .line 1389
    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v9, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_9

    .line 1391
    :cond_f0
    const/4 v9, 0x0

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_9
.end method

.method public final getSpacingAdd()F
    .registers 2

    .prologue
    .line 554
    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final getSpacingMultiplier()F
    .registers 2

    .prologue
    .line 547
    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 489
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .registers 2

    .prologue
    .line 562
    iget-object v0, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public abstract getTopPadding()I
.end method

.method public final getWidth()I
    .registers 2

    .prologue
    .line 505
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final increaseWidthTo(I)V
    .registers 4
    .parameter "wid"

    .prologue
    .line 522
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-ge p1, v0, :cond_c

    .line 523
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_c
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    .line 527
    return-void
.end method

.method public isLevelBoundary(I)Z
    .registers 13
    .parameter "offset"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 652
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 653
    .local v2, line:I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    .line 654
    .local v0, dirs:Landroid/text/Layout$Directions;
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq v0, v10, :cond_12

    sget-object v10, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v10, :cond_13

    .line 673
    :cond_12
    :goto_12
    return v8

    .line 658
    :cond_13
    iget-object v7, v0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 659
    .local v7, runs:[I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 660
    .local v4, lineStart:I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 661
    .local v3, lineEnd:I
    if-eq p1, v4, :cond_21

    if-ne p1, v3, :cond_3d

    .line 662
    :cond_21
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    if-ne v10, v9, :cond_37

    move v5, v8

    .line 663
    .local v5, paraLevel:I
    :goto_28
    if-ne p1, v4, :cond_39

    move v6, v8

    .line 664
    .local v6, runIndex:I
    :goto_2b
    add-int/lit8 v10, v6, 0x1

    aget v10, v7, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v10, v10, 0x3f

    if-eq v10, v5, :cond_12

    move v8, v9

    goto :goto_12

    .end local v5           #paraLevel:I
    .end local v6           #runIndex:I
    :cond_37
    move v5, v9

    .line 662
    goto :goto_28

    .line 663
    .restart local v5       #paraLevel:I
    :cond_39
    array-length v10, v7

    add-int/lit8 v6, v10, -0x2

    goto :goto_2b

    .line 667
    .end local v5           #paraLevel:I
    :cond_3d
    sub-int/2addr p1, v4

    .line 668
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3f
    array-length v10, v7

    if-ge v1, v10, :cond_12

    .line 669
    aget v10, v7, v1

    if-ne p1, v10, :cond_48

    move v8, v9

    .line 670
    goto :goto_12

    .line 668
    :cond_48
    add-int/lit8 v1, v1, 0x2

    goto :goto_3f
.end method

.method public isRtlCharAt(I)Z
    .registers 13
    .parameter "offset"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 682
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 683
    .local v3, line:I
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    .line 684
    .local v0, dirs:Landroid/text/Layout$Directions;
    sget-object v9, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v0, v9, :cond_f

    .line 702
    :cond_e
    :goto_e
    return v8

    .line 687
    :cond_f
    sget-object v9, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v9, :cond_15

    move v8, v7

    .line 688
    goto :goto_e

    .line 690
    :cond_15
    iget-object v5, v0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 691
    .local v5, runs:[I
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 692
    .local v4, lineStart:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1c
    array-length v9, v5

    if-ge v1, v9, :cond_e

    .line 693
    aget v9, v5, v1

    const v10, 0x3ffffff

    and-int/2addr v9, v10

    add-int v6, v4, v9

    .line 696
    .local v6, start:I
    if-lt p1, v6, :cond_39

    .line 697
    add-int/lit8 v9, v1, 0x1

    aget v9, v5, v9

    ushr-int/lit8 v9, v9, 0x1a

    and-int/lit8 v2, v9, 0x3f

    .line 698
    .local v2, level:I
    and-int/lit8 v9, v2, 0x1

    if-eqz v9, :cond_37

    :goto_35
    move v8, v7

    goto :goto_e

    :cond_37
    move v7, v8

    goto :goto_35

    .line 692
    .end local v2           #level:I
    :cond_39
    add-int/lit8 v1, v1, 0x2

    goto :goto_1c
.end method

.method protected final isSpanned()Z
    .registers 2

    .prologue
    .line 1633
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .registers 10
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"

    .prologue
    .line 168
    if-gez p3, :cond_21

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_21
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 173
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 174
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 175
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 176
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 177
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 178
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 179
    return-void
.end method
