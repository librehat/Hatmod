.class public Landroid/widget/SpellChecker;
.super Ljava/lang/Object;
.source "SpellChecker.java"

# interfaces
.implements Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SpellChecker$SpellParser;
    }
.end annotation


# static fields
.field public static final AVERAGE_WORD_LENGTH:I = 0x7

.field public static final MAX_NUMBER_OF_WORDS:I = 0x32

.field private static final SPELL_PAUSE_DURATION:I = 0x190

.field public static final WORD_ITERATOR_INTERVAL:I = 0x15e


# instance fields
.field final mCookie:I

.field private mCurrentLocale:Ljava/util/Locale;

.field private mIds:[I

.field private mLength:I

.field private mSpanSequenceCounter:I

.field private mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

.field mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

.field private mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

.field private mSpellRunnable:Ljava/lang/Runnable;

.field private mTextServicesManager:Landroid/view/textservice/TextServicesManager;

.field private final mTextView:Landroid/widget/TextView;

.field private mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 5
    .parameter "textView"

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-array v1, v2, [Landroid/widget/SpellChecker$SpellParser;

    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    .line 75
    iput v2, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    .line 88
    iput-object p1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    .line 91
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealObjectArraySize(I)I

    move-result v0

    .line 92
    .local v0, size:I
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    .line 93
    new-array v1, v0, [Landroid/text/style/SpellCheckSpan;

    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    .line 95
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/SpellChecker;->setLocale(Ljava/util/Locale;)V

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Landroid/widget/SpellChecker;->mCookie:I

    .line 98
    return-void
.end method

.method static synthetic access$100(Landroid/widget/SpellChecker;)[Landroid/widget/SpellChecker$SpellParser;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SpellChecker;->addSpellCheckSpan(Landroid/text/Editable;II)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/SpellChecker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/widget/SpellChecker;->spellCheck()V

    return-void
.end method

.method private addSpellCheckSpan(Landroid/text/Editable;II)V
    .registers 8
    .parameter "editable"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 184
    invoke-direct {p0}, Landroid/widget/SpellChecker;->nextSpellCheckSpanIndex()I

    move-result v0

    .line 185
    .local v0, index:I
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v1, v1, v0

    const/16 v2, 0x21

    invoke-interface {p1, v1, p2, p3, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 186
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    iget v2, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    aput v2, v1, v0

    .line 187
    return-void
.end method

.method private createMisspelledSuggestionSpan(Landroid/text/Editable;Landroid/view/textservice/SuggestionsInfo;Landroid/text/style/SpellCheckSpan;)V
    .registers 28
    .parameter "editable"
    .parameter "suggestionsInfo"
    .parameter "spellCheckSpan"

    .prologue
    .line 336
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    .line 337
    .local v15, start:I
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 338
    .local v4, end:I
    if-ltz v15, :cond_14

    if-gt v4, v15, :cond_15

    .line 397
    :cond_14
    :goto_14
    return-void

    .line 342
    :cond_15
    const-class v22, Landroid/text/style/SuggestionSpan;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v15, v4, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Landroid/text/style/SuggestionSpan;

    .line 343
    .local v18, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v18

    array-length v8, v0

    .line 344
    .local v8, length:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_25
    if-ge v5, v8, :cond_46

    .line 345
    aget-object v22, v18, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 346
    .local v13, spanStart:I
    aget-object v22, v18, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 347
    .local v12, spanEnd:I
    if-ne v13, v15, :cond_3f

    if-eq v12, v4, :cond_43

    .line 349
    :cond_3f
    const/16 v22, 0x0

    aput-object v22, v18, v5

    .line 344
    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 353
    .end local v12           #spanEnd:I
    .end local v13           #spanStart:I
    :cond_46
    invoke-virtual/range {p2 .. p2}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsCount()I

    move-result v20

    .line 355
    .local v20, suggestionsCount:I
    if-gtz v20, :cond_88

    .line 357
    const-class v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    .line 392
    .local v19, suggestions:[Ljava/lang/String;
    :cond_54
    :goto_54
    new-instance v17, Landroid/text/style/SuggestionSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v22

    const/16 v23, 0x3

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 394
    .local v17, suggestionSpan:Landroid/text/style/SuggestionSpan;
    const/16 v22, 0x21

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-interface {v0, v1, v15, v4, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v15, v4, v1}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    goto :goto_14

    .line 359
    .end local v17           #suggestionSpan:Landroid/text/style/SuggestionSpan;
    .end local v19           #suggestions:[Ljava/lang/String;
    :cond_88
    const/4 v10, 0x0

    .line 360
    .local v10, numberOfSuggestions:I
    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 362
    .restart local v19       #suggestions:[Ljava/lang/String;
    const/4 v5, 0x0

    move v11, v10

    .end local v10           #numberOfSuggestions:I
    .local v11, numberOfSuggestions:I
    :goto_91
    move/from16 v0, v20

    if-ge v5, v0, :cond_9d

    .line 363
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionAt(I)Ljava/lang/String;

    move-result-object v14

    .line 364
    .local v14, spellSuggestion:Ljava/lang/String;
    if-nez v14, :cond_b3

    .line 385
    .end local v14           #spellSuggestion:Ljava/lang/String;
    :cond_9d
    move/from16 v0, v20

    if-eq v11, v0, :cond_54

    .line 386
    new-array v9, v11, [Ljava/lang/String;

    .line 387
    .local v9, newSuggestions:[Ljava/lang/String;
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v9, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    move-object/from16 v19, v9

    goto :goto_54

    .line 365
    .end local v9           #newSuggestions:[Ljava/lang/String;
    .restart local v14       #spellSuggestion:Ljava/lang/String;
    :cond_b3
    const/16 v16, 0x0

    .line 367
    .local v16, suggestionFound:Z
    const/4 v6, 0x0

    .local v6, j:I
    :goto_b6
    if-ge v6, v8, :cond_be

    if-nez v16, :cond_be

    .line 368
    aget-object v22, v18, v6

    if-nez v22, :cond_c8

    .line 380
    :cond_be
    if-nez v16, :cond_ea

    .line 381
    add-int/lit8 v10, v11, 0x1

    .end local v11           #numberOfSuggestions:I
    .restart local v10       #numberOfSuggestions:I
    aput-object v14, v19, v11

    .line 362
    :goto_c4
    add-int/lit8 v5, v5, 0x1

    move v11, v10

    .end local v10           #numberOfSuggestions:I
    .restart local v11       #numberOfSuggestions:I
    goto :goto_91

    .line 370
    :cond_c8
    aget-object v22, v18, v6

    invoke-virtual/range {v22 .. v22}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v21

    .line 371
    .local v21, suggests:[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, k:I
    :goto_cf
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_e4

    .line 372
    aget-object v22, v21, v7

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e7

    .line 374
    const/16 v16, 0x1

    .line 367
    :cond_e4
    add-int/lit8 v6, v6, 0x1

    goto :goto_b6

    .line 371
    :cond_e7
    add-int/lit8 v7, v7, 0x1

    goto :goto_cf

    .end local v7           #k:I
    .end local v21           #suggests:[Ljava/lang/String;
    :cond_ea
    move v10, v11

    .end local v11           #numberOfSuggestions:I
    .restart local v10       #numberOfSuggestions:I
    goto :goto_c4
.end method

.method private isSessionActive()Z
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private nextSpellCheckSpanIndex()I
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget v4, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v0, v4, :cond_10

    .line 165
    iget-object v4, p0, Landroid/widget/SpellChecker;->mIds:[I

    aget v4, v4, v0

    if-gez v4, :cond_d

    .line 180
    .end local v0           #i:I
    :goto_c
    return v0

    .line 164
    .restart local v0       #i:I
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 168
    :cond_10
    iget v4, p0, Landroid/widget/SpellChecker;->mLength:I

    iget-object v5, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    array-length v5, v5

    if-ne v4, v5, :cond_31

    .line 169
    iget v4, p0, Landroid/widget/SpellChecker;->mLength:I

    mul-int/lit8 v2, v4, 0x2

    .line 170
    .local v2, newSize:I
    new-array v1, v2, [I

    .line 171
    .local v1, newIds:[I
    new-array v3, v2, [Landroid/text/style/SpellCheckSpan;

    .line 172
    .local v3, newSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;
    iget-object v4, p0, Landroid/widget/SpellChecker;->mIds:[I

    iget v5, p0, Landroid/widget/SpellChecker;->mLength:I

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    iget-object v4, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    iget v5, p0, Landroid/widget/SpellChecker;->mLength:I

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iput-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    .line 175
    iput-object v3, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    .line 178
    .end local v1           #newIds:[I
    .end local v2           #newSize:I
    .end local v3           #newSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;
    :cond_31
    iget-object v4, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    iget v5, p0, Landroid/widget/SpellChecker;->mLength:I

    new-instance v6, Landroid/text/style/SpellCheckSpan;

    invoke-direct {v6}, Landroid/text/style/SpellCheckSpan;-><init>()V

    aput-object v6, v4, v5

    .line 179
    iget v4, p0, Landroid/widget/SpellChecker;->mLength:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/SpellChecker;->mLength:I

    .line 180
    iget v4, p0, Landroid/widget/SpellChecker;->mLength:I

    add-int/lit8 v0, v4, -0x1

    goto :goto_c
.end method

.method private resetSession()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 101
    invoke-virtual {p0}, Landroid/widget/SpellChecker;->closeSession()V

    .line 103
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "textservices"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textservice/TextServicesManager;

    iput-object v1, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    .line 105
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v1}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v1

    if-nez v1, :cond_34

    .line 106
    iput-object v4, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    .line 115
    :goto_20
    const/4 v0, 0x0

    .local v0, i:I
    :goto_21
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v0, v1, :cond_3f

    .line 116
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/text/style/SpellCheckSpan;->setSpellCheckInProgress(Z)V

    .line 117
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 108
    .end local v0           #i:I
    :cond_34
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    iget-object v2, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/view/textservice/TextServicesManager;->newSpellCheckerSession(Landroid/os/Bundle;Ljava/util/Locale;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Z)Landroid/view/textservice/SpellCheckerSession;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    goto :goto_20

    .line 119
    .restart local v0       #i:I
    :cond_3f
    iput v3, p0, Landroid/widget/SpellChecker;->mLength:I

    .line 122
    iget-object v2, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    .line 125
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->onLocaleChanged()V

    .line 126
    return-void
.end method

.method private scheduleNewSpellCheck()V
    .registers 5

    .prologue
    .line 313
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_15

    .line 314
    new-instance v0, Landroid/widget/SpellChecker$1;

    invoke-direct {v0, p0}, Landroid/widget/SpellChecker$1;-><init>(Landroid/widget/SpellChecker;)V

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    .line 331
    :goto_b
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 332
    return-void

    .line 328
    :cond_15
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method private setLocale(Ljava/util/Locale;)V
    .registers 3
    .parameter "locale"

    .prologue
    .line 129
    iput-object p1, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    .line 131
    invoke-direct {p0}, Landroid/widget/SpellChecker;->resetSession()V

    .line 134
    new-instance v0, Landroid/text/method/WordIterator;

    invoke-direct {v0, p1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;

    .line 137
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onLocaleChanged()V

    .line 138
    return-void
.end method

.method private spellCheck()V
    .registers 16

    .prologue
    .line 242
    iget-object v12, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-nez v12, :cond_5

    .line 278
    :cond_4
    :goto_4
    return-void

    .line 244
    :cond_5
    iget-object v12, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 245
    .local v0, editable:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 246
    .local v4, selectionStart:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 248
    .local v3, selectionEnd:I
    iget v12, p0, Landroid/widget/SpellChecker;->mLength:I

    new-array v7, v12, [Landroid/view/textservice/TextInfo;

    .line 249
    .local v7, textInfos:[Landroid/view/textservice/TextInfo;
    const/4 v9, 0x0

    .line 251
    .local v9, textInfosCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1b
    iget v12, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v2, v12, :cond_65

    .line 252
    iget-object v12, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v5, v12, v2

    .line 253
    .local v5, spellCheckSpan:Landroid/text/style/SpellCheckSpan;
    invoke-virtual {v5}, Landroid/text/style/SpellCheckSpan;->isSpellCheckInProgress()Z

    move-result v12

    if-eqz v12, :cond_2c

    .line 251
    :cond_29
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 255
    :cond_2c
    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 256
    .local v6, start:I
    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 259
    .local v1, end:I
    if-ltz v6, :cond_29

    if-le v1, v6, :cond_29

    if-lt v3, v6, :cond_3c

    if-le v4, v1, :cond_29

    .line 260
    :cond_3c
    instance-of v12, v0, Landroid/text/SpannableStringBuilder;

    if-eqz v12, :cond_5c

    move-object v12, v0

    check-cast v12, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v12, v6, v1}, Landroid/text/SpannableStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 263
    .local v11, word:Ljava/lang/String;
    :goto_47
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Landroid/text/style/SpellCheckSpan;->setSpellCheckInProgress(Z)V

    .line 264
    add-int/lit8 v10, v9, 0x1

    .end local v9           #textInfosCount:I
    .local v10, textInfosCount:I
    new-instance v12, Landroid/view/textservice/TextInfo;

    iget v13, p0, Landroid/widget/SpellChecker;->mCookie:I

    iget-object v14, p0, Landroid/widget/SpellChecker;->mIds:[I

    aget v14, v14, v2

    invoke-direct {v12, v11, v13, v14}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/String;II)V

    aput-object v12, v7, v9

    move v9, v10

    .end local v10           #textInfosCount:I
    .restart local v9       #textInfosCount:I
    goto :goto_29

    .line 260
    .end local v11           #word:Ljava/lang/String;
    :cond_5c
    invoke-interface {v0, v6, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_47

    .line 268
    .end local v1           #end:I
    .end local v5           #spellCheckSpan:Landroid/text/style/SpellCheckSpan;
    .end local v6           #start:I
    :cond_65
    if-lez v9, :cond_4

    .line 269
    array-length v12, v7

    if-ge v9, v12, :cond_72

    .line 270
    new-array v8, v9, [Landroid/view/textservice/TextInfo;

    .line 271
    .local v8, textInfosCopy:[Landroid/view/textservice/TextInfo;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v7, v12, v8, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    move-object v7, v8

    .line 275
    .end local v8           #textInfosCopy:[Landroid/view/textservice/TextInfo;
    :cond_72
    iget-object v12, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    const/4 v13, 0x5

    const/4 v14, 0x0

    invoke-virtual {v12, v7, v13, v14}, Landroid/view/textservice/SpellCheckerSession;->getSuggestions([Landroid/view/textservice/TextInfo;IZ)V

    goto :goto_4
.end method


# virtual methods
.method public closeSession()V
    .registers 5

    .prologue
    .line 149
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz v2, :cond_9

    .line 150
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerSession;->close()V

    .line 153
    :cond_9
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    array-length v1, v2

    .line 154
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v1, :cond_19

    .line 155
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/SpellChecker$SpellParser;->finish()V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 158
    :cond_19
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_24

    .line 159
    iget-object v2, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 161
    :cond_24
    return-void
.end method

.method public onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .registers 15
    .parameter "results"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 282
    iget-object v11, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    .line 284
    .local v1, editable:Landroid/text/Editable;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    array-length v11, p1

    if-ge v2, v11, :cond_4e

    .line 285
    aget-object v8, p1, v2

    .line 286
    .local v8, suggestionsInfo:Landroid/view/textservice/SuggestionsInfo;
    invoke-virtual {v8}, Landroid/view/textservice/SuggestionsInfo;->getCookie()I

    move-result v11

    iget v12, p0, Landroid/widget/SpellChecker;->mCookie:I

    if-eq v11, v12, :cond_1b

    .line 284
    :cond_18
    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 287
    :cond_1b
    invoke-virtual {v8}, Landroid/view/textservice/SuggestionsInfo;->getSequence()I

    move-result v6

    .line 289
    .local v6, sequenceNumber:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_20
    iget v11, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v4, v11, :cond_18

    .line 290
    iget-object v11, p0, Landroid/widget/SpellChecker;->mIds:[I

    aget v11, v11, v4

    if-ne v6, v11, :cond_4b

    .line 291
    invoke-virtual {v8}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsAttributes()I

    move-result v0

    .line 292
    .local v0, attributes:I
    and-int/lit8 v11, v0, 0x1

    if-lez v11, :cond_47

    move v3, v9

    .line 294
    .local v3, isInDictionary:Z
    :goto_33
    and-int/lit8 v11, v0, 0x2

    if-lez v11, :cond_49

    move v5, v9

    .line 297
    .local v5, looksLikeTypo:Z
    :goto_38
    iget-object v11, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v7, v11, v4

    .line 299
    .local v7, spellCheckSpan:Landroid/text/style/SpellCheckSpan;
    if-nez v3, :cond_43

    if-eqz v5, :cond_43

    .line 300
    invoke-direct {p0, v1, v8, v7}, Landroid/widget/SpellChecker;->createMisspelledSuggestionSpan(Landroid/text/Editable;Landroid/view/textservice/SuggestionsInfo;Landroid/text/style/SpellCheckSpan;)V

    .line 303
    :cond_43
    invoke-interface {v1, v7}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_18

    .end local v3           #isInDictionary:Z
    .end local v5           #looksLikeTypo:Z
    .end local v7           #spellCheckSpan:Landroid/text/style/SpellCheckSpan;
    :cond_47
    move v3, v10

    .line 292
    goto :goto_33

    .restart local v3       #isInDictionary:Z
    :cond_49
    move v5, v10

    .line 294
    goto :goto_38

    .line 289
    .end local v0           #attributes:I
    .end local v3           #isInDictionary:Z
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 309
    .end local v4           #j:I
    .end local v6           #sequenceNumber:I
    .end local v8           #suggestionsInfo:Landroid/view/textservice/SuggestionsInfo;
    :cond_4e
    invoke-direct {p0}, Landroid/widget/SpellChecker;->scheduleNewSpellCheck()V

    .line 310
    return-void
.end method

.method public onSelectionChanged()V
    .registers 1

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/widget/SpellChecker;->spellCheck()V

    .line 201
    return-void
.end method

.method public removeSpellCheckSpan(Landroid/text/style/SpellCheckSpan;)V
    .registers 5
    .parameter "spellCheckSpan"

    .prologue
    .line 190
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v0, v1, :cond_18

    .line 191
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_19

    .line 192
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/style/SpellCheckSpan;->setSpellCheckInProgress(Z)V

    .line 193
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 197
    :cond_18
    return-void

    .line 190
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public spellCheck(II)V
    .registers 11
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v7, 0x0

    .line 204
    iget-object v6, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v2

    .line 205
    .local v2, locale:Ljava/util/Locale;
    iget-object v6, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    if-eqz v6, :cond_13

    iget-object v6, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v6, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_28

    .line 206
    :cond_13
    invoke-direct {p0, v2}, Landroid/widget/SpellChecker;->setLocale(Ljava/util/Locale;)V

    .line 208
    const/4 p1, 0x0

    .line 209
    iget-object v6, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result p2

    .line 218
    :cond_21
    :goto_21
    invoke-direct {p0}, Landroid/widget/SpellChecker;->isSessionActive()Z

    move-result v6

    if-nez v6, :cond_38

    .line 239
    :goto_27
    return-void

    .line 211
    :cond_28
    iget-object v6, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v6}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v4

    .line 212
    .local v4, spellCheckerActivated:Z
    invoke-direct {p0}, Landroid/widget/SpellChecker;->isSessionActive()Z

    move-result v6

    if-eq v6, v4, :cond_21

    .line 214
    invoke-direct {p0}, Landroid/widget/SpellChecker;->resetSession()V

    goto :goto_21

    .line 220
    .end local v4           #spellCheckerActivated:Z
    :cond_38
    iget-object v6, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    array-length v1, v6

    .line 221
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3c
    if-ge v0, v1, :cond_52

    .line 222
    iget-object v6, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aget-object v5, v6, v0

    .line 223
    .local v5, spellParser:Landroid/widget/SpellChecker$SpellParser;
    invoke-virtual {v5}, Landroid/widget/SpellChecker$SpellParser;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 224
    invoke-virtual {v5, p1, p2}, Landroid/widget/SpellChecker$SpellParser;->init(II)V

    .line 225
    invoke-virtual {v5}, Landroid/widget/SpellChecker$SpellParser;->parse()V

    goto :goto_27

    .line 221
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 231
    .end local v5           #spellParser:Landroid/widget/SpellChecker$SpellParser;
    :cond_52
    add-int/lit8 v6, v1, 0x1

    new-array v3, v6, [Landroid/widget/SpellChecker$SpellParser;

    .line 232
    .local v3, newSpellParsers:[Landroid/widget/SpellChecker$SpellParser;
    iget-object v6, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    invoke-static {v6, v7, v3, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    iput-object v3, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    .line 235
    new-instance v5, Landroid/widget/SpellChecker$SpellParser;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/SpellChecker$SpellParser;-><init>(Landroid/widget/SpellChecker;Landroid/widget/SpellChecker$1;)V

    .line 236
    .restart local v5       #spellParser:Landroid/widget/SpellChecker$SpellParser;
    iget-object v6, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aput-object v5, v6, v1

    .line 237
    invoke-virtual {v5, p1, p2}, Landroid/widget/SpellChecker$SpellParser;->init(II)V

    .line 238
    invoke-virtual {v5}, Landroid/widget/SpellChecker$SpellParser;->parse()V

    goto :goto_27
.end method
