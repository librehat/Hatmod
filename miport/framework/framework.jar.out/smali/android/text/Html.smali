.class public Landroid/text/Html;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Html$HtmlParser;,
        Landroid/text/Html$TagHandler;,
        Landroid/text/Html$ImageGetter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .registers 2
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-static {p0, v0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .registers 8
    .parameter "source"
    .parameter "imageGetter"
    .parameter "tagHandler"

    .prologue
    .line 125
    new-instance v2, Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v2}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    .line 127
    .local v2, parser:Lorg/ccil/cowan/tagsoup/Parser;
    :try_start_5
    const-string v3, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-static {}, Landroid/text/Html$HtmlParser;->access$000()Lorg/ccil/cowan/tagsoup/HTMLSchema;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/ccil/cowan/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_5 .. :try_end_e} :catch_18
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_5 .. :try_end_e} :catch_1f

    .line 136
    new-instance v0, Landroid/text/HtmlToSpannedConverter;

    invoke-direct {v0, p0, p1, p2, v2}, Landroid/text/HtmlToSpannedConverter;-><init>(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;Lorg/ccil/cowan/tagsoup/Parser;)V

    .line 139
    .local v0, converter:Landroid/text/HtmlToSpannedConverter;
    invoke-virtual {v0}, Landroid/text/HtmlToSpannedConverter;->convert()Landroid/text/Spanned;

    move-result-object v3

    return-object v3

    .line 128
    .end local v0           #converter:Landroid/text/HtmlToSpannedConverter;
    :catch_18
    move-exception v1

    .line 130
    .local v1, e:Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 131
    .end local v1           #e:Lorg/xml/sax/SAXNotRecognizedException;
    :catch_1f
    move-exception v1

    .line 133
    .local v1, e:Lorg/xml/sax/SAXNotSupportedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .registers 3
    .parameter "text"

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v0, out:Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Landroid/text/Html;->withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .registers 12
    .parameter "out"
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v7, 0xa

    .line 208
    const-string v0, "<p>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    move v2, p2

    .local v2, i:I
    :goto_8
    if-ge v2, p3, :cond_2d

    .line 212
    invoke-static {p1, v7, v2, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v6

    .line 213
    .local v6, next:I
    if-gez v6, :cond_11

    .line 214
    move v6, p3

    .line 217
    :cond_11
    const/4 v4, 0x0

    .line 219
    .local v4, nl:I
    :goto_12
    if-ge v6, p3, :cond_1f

    invoke-interface {p1, v6}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_1f

    .line 220
    add-int/lit8 v4, v4, 0x1

    .line 221
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 224
    :cond_1f
    sub-int v3, v6, v4

    if-ne v6, p3, :cond_2b

    const/4 v5, 0x1

    :goto_24
    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Landroid/text/Html;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;IIIZ)V

    .line 211
    move v2, v6

    goto :goto_8

    .line 224
    :cond_2b
    const/4 v5, 0x0

    goto :goto_24

    .line 227
    .end local v4           #nl:I
    .end local v6           #next:I
    :cond_2d
    const-string v0, "</p>\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    return-void
.end method

.method private static withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .registers 12
    .parameter "out"
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 190
    move v1, p2

    .local v1, i:I
    :goto_1
    if-ge v1, p3, :cond_34

    .line 191
    const-class v7, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v1, p3, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    .line 192
    .local v4, next:I
    const-class v7, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v1, v4, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/QuoteSpan;

    .line 194
    .local v6, quotes:[Landroid/text/style/QuoteSpan;
    move-object v0, v6

    .local v0, arr$:[Landroid/text/style/QuoteSpan;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_14
    if-ge v2, v3, :cond_20

    aget-object v5, v0, v2

    .line 195
    .local v5, quote:Landroid/text/style/QuoteSpan;
    const-string v7, "<blockquote>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 198
    .end local v5           #quote:Landroid/text/style/QuoteSpan;
    :cond_20
    invoke-static {p0, p1, v1, v4}, Landroid/text/Html;->withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 200
    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_26
    if-ge v2, v3, :cond_32

    aget-object v5, v0, v2

    .line 201
    .restart local v5       #quote:Landroid/text/style/QuoteSpan;
    const-string v7, "</blockquote>\n"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 190
    .end local v5           #quote:Landroid/text/style/QuoteSpan;
    :cond_32
    move v1, v4

    goto :goto_1

    .line 204
    .end local v0           #arr$:[Landroid/text/style/QuoteSpan;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #next:I
    .end local v6           #quotes:[Landroid/text/style/QuoteSpan;
    :cond_34
    return-void
.end method

.method private static withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V
    .registers 12
    .parameter "out"
    .parameter "text"

    .prologue
    .line 152
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v4

    .line 155
    .local v4, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v8

    if-ge v2, v8, :cond_a0

    .line 156
    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v4, v8}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    .line 157
    .local v6, next:I
    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v6, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ParagraphStyle;

    .line 158
    .local v7, style:[Landroid/text/style/ParagraphStyle;
    const-string v1, " "

    .line 159
    .local v1, elements:Ljava/lang/String;
    const/4 v5, 0x0

    .line 161
    .local v5, needDiv:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1d
    array-length v8, v7

    if-ge v3, v8, :cond_75

    .line 162
    aget-object v8, v7, v3

    instance-of v8, v8, Landroid/text/style/AlignmentSpan;

    if-eqz v8, :cond_46

    .line 163
    aget-object v8, v7, v3

    check-cast v8, Landroid/text/style/AlignmentSpan;

    invoke-interface {v8}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 165
    .local v0, align:Landroid/text/Layout$Alignment;
    const/4 v5, 0x1

    .line 166
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v8, :cond_49

    .line 167
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"center\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .end local v0           #align:Landroid/text/Layout$Alignment;
    :cond_46
    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 168
    .restart local v0       #align:Landroid/text/Layout$Alignment;
    :cond_49
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v8, :cond_61

    .line 169
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"right\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    .line 171
    :cond_61
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"left\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    .line 175
    .end local v0           #align:Landroid/text/Layout$Alignment;
    :cond_75
    if-eqz v5, :cond_93

    .line 176
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<div "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_93
    invoke-static {p0, p1, v2, v6}, Landroid/text/Html;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 181
    if-eqz v5, :cond_9d

    .line 182
    const-string v8, "</div>"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_9d
    move v2, v6

    goto/16 :goto_5

    .line 185
    .end local v1           #elements:Ljava/lang/String;
    .end local v3           #j:I
    .end local v5           #needDiv:Z
    .end local v6           #next:I
    .end local v7           #style:[Landroid/text/style/ParagraphStyle;
    :cond_a0
    return-void
.end method

.method private static withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;IIIZ)V
    .registers 15
    .parameter "out"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "nl"
    .parameter "last"

    .prologue
    .line 234
    move v1, p2

    .local v1, i:I
    :goto_1
    if-ge v1, p3, :cond_1aa

    .line 235
    const-class v7, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v1, p3, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 236
    .local v3, next:I
    const-class v7, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v1, v3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/CharacterStyle;

    .line 239
    .local v6, style:[Landroid/text/style/CharacterStyle;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_12
    array-length v7, v6

    if-ge v2, v7, :cond_112

    .line 240
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/StyleSpan;

    if-eqz v7, :cond_35

    .line 241
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/StyleSpan;

    invoke-virtual {v7}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v5

    .line 243
    .local v5, s:I
    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_2c

    .line 244
    const-string v7, "<b>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_2c
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_35

    .line 247
    const-string v7, "<i>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .end local v5           #s:I
    :cond_35
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/TypefaceSpan;

    if-eqz v7, :cond_51

    .line 251
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v7}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v5

    .line 253
    .local v5, s:Ljava/lang/String;
    const-string/jumbo v7, "monospace"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 254
    const-string v7, "<tt>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .end local v5           #s:Ljava/lang/String;
    :cond_51
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/SuperscriptSpan;

    if-eqz v7, :cond_5c

    .line 258
    const-string v7, "<sup>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_5c
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/SubscriptSpan;

    if-eqz v7, :cond_67

    .line 261
    const-string v7, "<sub>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_67
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/UnderlineSpan;

    if-eqz v7, :cond_72

    .line 264
    const-string v7, "<u>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_72
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/StrikethroughSpan;

    if-eqz v7, :cond_7d

    .line 267
    const-string v7, "<strike>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_7d
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/URLSpan;

    if-eqz v7, :cond_98

    .line 270
    const-string v7, "<a href=\""

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/URLSpan;

    invoke-virtual {v7}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v7, "\">"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_98
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/ImageSpan;

    if-eqz v7, :cond_b4

    .line 275
    const-string v7, "<img src=\""

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/ImageSpan;

    invoke-virtual {v7}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string v7, "\">"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    move v1, v3

    .line 282
    :cond_b4
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v7, :cond_d1

    .line 283
    const-string v7, "<font size =\""

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v7}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v7

    div-int/lit8 v7, v7, 0x6

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    const-string v7, "\">"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_d1
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/ForegroundColorSpan;

    if-eqz v7, :cond_10e

    .line 288
    const-string v7, "<font color =\"#"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v7}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v7

    const/high16 v8, 0x100

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, color:Ljava/lang/String;
    :goto_eb
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x6

    if-ge v7, v8, :cond_106

    .line 292
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_eb

    .line 294
    :cond_106
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string v7, "\">"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .end local v0           #color:Ljava/lang/String;
    :cond_10e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_12

    .line 299
    :cond_112
    invoke-static {p0, p1, v1, v3}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 301
    array-length v7, v6

    add-int/lit8 v2, v7, -0x1

    :goto_118
    if-ltz v2, :cond_1a7

    .line 302
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/ForegroundColorSpan;

    if-eqz v7, :cond_125

    .line 303
    const-string v7, "</font>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_125
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v7, :cond_130

    .line 306
    const-string v7, "</font>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_130
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/URLSpan;

    if-eqz v7, :cond_13b

    .line 309
    const-string v7, "</a>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_13b
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/StrikethroughSpan;

    if-eqz v7, :cond_146

    .line 312
    const-string v7, "</strike>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_146
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/UnderlineSpan;

    if-eqz v7, :cond_151

    .line 315
    const-string v7, "</u>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_151
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/SubscriptSpan;

    if-eqz v7, :cond_15c

    .line 318
    const-string v7, "</sub>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_15c
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/SuperscriptSpan;

    if-eqz v7, :cond_167

    .line 321
    const-string v7, "</sup>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_167
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/TypefaceSpan;

    if-eqz v7, :cond_183

    .line 324
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v7}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v5

    .line 326
    .restart local v5       #s:Ljava/lang/String;
    const-string/jumbo v7, "monospace"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_183

    .line 327
    const-string v7, "</tt>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .end local v5           #s:Ljava/lang/String;
    :cond_183
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/StyleSpan;

    if-eqz v7, :cond_1a3

    .line 331
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/StyleSpan;

    invoke-virtual {v7}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v5

    .line 333
    .local v5, s:I
    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_19a

    .line 334
    const-string v7, "</b>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_19a
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_1a3

    .line 337
    const-string v7, "</i>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .end local v5           #s:I
    :cond_1a3
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_118

    .line 234
    :cond_1a7
    move v1, v3

    goto/16 :goto_1

    .line 343
    .end local v2           #j:I
    .end local v3           #next:I
    .end local v6           #style:[Landroid/text/style/CharacterStyle;
    :cond_1aa
    if-eqz p5, :cond_1b7

    const-string v4, ""

    .line 345
    .local v4, p:Ljava/lang/String;
    :goto_1ae
    const/4 v7, 0x1

    if-ne p4, v7, :cond_1ba

    .line 346
    const-string v7, "<br>\n"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :goto_1b6
    return-void

    .line 343
    .end local v4           #p:Ljava/lang/String;
    :cond_1b7
    const-string v4, "</p>\n<p>"

    goto :goto_1ae

    .line 347
    .restart local v4       #p:Ljava/lang/String;
    :cond_1ba
    const/4 v7, 0x2

    if-ne p4, v7, :cond_1c1

    .line 348
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b6

    .line 350
    :cond_1c1
    const/4 v1, 0x2

    :goto_1c2
    if-ge v1, p4, :cond_1cc

    .line 351
    const-string v7, "<br>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c2

    .line 354
    :cond_1cc
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b6
.end method

.method private static withinStyle(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .registers 9
    .parameter "out"
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v4, 0x20

    .line 360
    move v1, p2

    .local v1, i:I
    :goto_3
    if-ge v1, p3, :cond_6a

    .line 361
    invoke-interface {p1, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 363
    .local v0, c:C
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_15

    .line 364
    const-string v2, "&lt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 365
    :cond_15
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_1f

    .line 366
    const-string v2, "&gt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 367
    :cond_1f
    const/16 v2, 0x26

    if-ne v0, v2, :cond_29

    .line 368
    const-string v2, "&amp;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 369
    :cond_29
    const/16 v2, 0x7e

    if-gt v0, v2, :cond_2f

    if-ge v0, v4, :cond_4c

    .line 370
    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 371
    :cond_4c
    if-ne v0, v4, :cond_66

    .line 372
    :goto_4e
    add-int/lit8 v2, v1, 0x1

    if-ge v2, p3, :cond_62

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_62

    .line 373
    const-string v2, "&nbsp;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 377
    :cond_62
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 379
    :cond_66
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 382
    .end local v0           #c:C
    :cond_6a
    return-void
.end method
