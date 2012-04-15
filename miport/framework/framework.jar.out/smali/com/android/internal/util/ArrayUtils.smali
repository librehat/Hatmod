.class public Lcom/android/internal/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field private static final CACHE_SIZE:I = 0x49

.field private static EMPTY:[Ljava/lang/Object;

.field private static sCache:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/internal/util/ArrayUtils;->EMPTY:[Ljava/lang/Object;

    .line 34
    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/internal/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains([II)Z
    .registers 7
    .parameter "array"
    .parameter "value"

    .prologue
    .line 138
    move-object v0, p0

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_e

    aget v1, v0, v2

    .line 139
    .local v1, element:I
    if-ne v1, p1, :cond_b

    .line 140
    const/4 v4, 0x1

    .line 143
    .end local v1           #element:I
    :goto_a
    return v4

    .line 138
    .restart local v1       #element:I
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 143
    .end local v1           #element:I
    :cond_e
    const/4 v4, 0x0

    goto :goto_a
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    const/4 v4, 0x1

    .line 127
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_18

    aget-object v1, v0, v2

    .line 128
    .local v1, element:Ljava/lang/Object;,"TT;"
    if-nez v1, :cond_d

    .line 129
    if-nez p1, :cond_15

    .line 134
    .end local v1           #element:Ljava/lang/Object;,"TT;"
    :cond_c
    :goto_c
    return v4

    .line 131
    .restart local v1       #element:Ljava/lang/Object;,"TT;"
    :cond_d
    if-eqz p1, :cond_15

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 127
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 134
    .end local v1           #element:Ljava/lang/Object;,"TT;"
    :cond_18
    const/4 v4, 0x0

    goto :goto_c
.end method

.method public static emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, kind:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const-class v2, Ljava/lang/Object;

    if-ne p0, v2, :cond_9

    .line 104
    sget-object v2, Lcom/android/internal/util/ArrayUtils;->EMPTY:[Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 117
    :goto_8
    return-object v2

    .line 107
    :cond_9
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    rem-int/lit8 v0, v2, 0x49

    .line 108
    .local v0, bucket:I
    sget-object v2, Lcom/android/internal/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 110
    .local v1, cache:Ljava/lang/Object;
    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p0, :cond_2e

    .line 111
    :cond_25
    const/4 v2, 0x0

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 112
    sget-object v2, Lcom/android/internal/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 117
    :cond_2e
    check-cast v1, [Ljava/lang/Object;

    .end local v1           #cache:Ljava/lang/Object;
    check-cast v1, [Ljava/lang/Object;

    move-object v2, v1

    goto :goto_8
.end method

.method public static equals([B[BI)Z
    .registers 8
    .parameter "array1"
    .parameter "array2"
    .parameter "length"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    if-ne p0, p1, :cond_5

    .line 94
    :cond_4
    :goto_4
    return v1

    .line 86
    :cond_5
    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    array-length v3, p0

    if-lt v3, p2, :cond_f

    array-length v3, p1

    if-ge v3, p2, :cond_11

    :cond_f
    move v1, v2

    .line 87
    goto :goto_4

    .line 89
    :cond_11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    if-ge v0, p2, :cond_4

    .line 90
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-eq v3, v4, :cond_1c

    move v1, v2

    .line 91
    goto :goto_4

    .line 89
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method public static idealBooleanArraySize(I)I
    .registers 2
    .parameter "need"

    .prologue
    .line 47
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    return v0
.end method

.method public static idealByteArraySize(I)I
    .registers 4
    .parameter "need"

    .prologue
    const/4 v2, 0x1

    .line 39
    const/4 v0, 0x4

    .local v0, i:I
    :goto_2
    const/16 v1, 0x20

    if-ge v0, v1, :cond_10

    .line 40
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_11

    .line 41
    shl-int v1, v2, v0

    add-int/lit8 p0, v1, -0xc

    .line 43
    .end local p0
    :cond_10
    return p0

    .line 39
    .restart local p0
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static idealCharArraySize(I)I
    .registers 2
    .parameter "need"

    .prologue
    .line 55
    mul-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static idealFloatArraySize(I)I
    .registers 2
    .parameter "need"

    .prologue
    .line 63
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static idealIntArraySize(I)I
    .registers 2
    .parameter "need"

    .prologue
    .line 59
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static idealLongArraySize(I)I
    .registers 2
    .parameter "need"

    .prologue
    .line 71
    mul-int/lit8 v0, p0, 0x8

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static idealObjectArraySize(I)I
    .registers 2
    .parameter "need"

    .prologue
    .line 67
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static idealShortArraySize(I)I
    .registers 2
    .parameter "need"

    .prologue
    .line 51
    mul-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method
