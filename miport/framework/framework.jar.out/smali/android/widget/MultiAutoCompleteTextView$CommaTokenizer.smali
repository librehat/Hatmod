.class public Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;
.super Ljava/lang/Object;
.source "MultiAutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommaTokenizer"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 223
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .registers 7
    .parameter "text"
    .parameter "cursor"

    .prologue
    .line 238
    move v0, p2

    .line 239
    .local v0, i:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 241
    .local v1, len:I
    :goto_5
    if-ge v0, v1, :cond_13

    .line 242
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_10

    .line 249
    .end local v0           #i:I
    :goto_f
    return v0

    .line 245
    .restart local v0       #i:I
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_13
    move v0, v1

    .line 249
    goto :goto_f
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .registers 6
    .parameter "text"
    .parameter "cursor"

    .prologue
    .line 225
    move v0, p2

    .line 227
    .local v0, i:I
    :goto_1
    if-lez v0, :cond_10

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_10

    .line 228
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 230
    :cond_10
    :goto_10
    if-ge v0, p2, :cond_1d

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1d

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 234
    :cond_1d
    return v0
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 9
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 255
    .local v6, i:I
    :goto_5
    if-lez v6, :cond_14

    add-int/lit8 v0, v6, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_14

    .line 256
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 259
    :cond_14
    if-lez v6, :cond_21

    add-int/lit8 v0, v6, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x2c

    if-ne v0, v2, :cond_21

    .line 268
    .end local p1
    :goto_20
    return-object p1

    .line 262
    .restart local p1
    :cond_21
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_4c

    .line 263
    new-instance v4, Landroid/text/SpannableString;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .local v4, sp:Landroid/text/SpannableString;
    move-object v0, p1

    .line 264
    check-cast v0, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    move-object p1, v4

    .line 266
    goto :goto_20

    .line 268
    .end local v4           #sp:Landroid/text/SpannableString;
    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_20
.end method
