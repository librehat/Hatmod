.class public abstract Landroid/database/sqlite/SQLiteProgram;
.super Landroid/database/sqlite/SQLiteClosable;
.source "SQLiteProgram.java"


# static fields
.field static final STATEMENT_CACHEABLE:I = 0x10

.field static final STATEMENT_DONT_PREPARE:I = 0x20

.field static final STATEMENT_TYPE_MASK:I = 0xf

.field static final STATEMENT_USE_POOLED_CONN:I = 0x40

.field private static final TAG:Ljava/lang/String; = "SQLiteProgram"


# instance fields
.field mBindArgs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

.field protected mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final mSql:Ljava/lang/String;

.field final mStatementType:I

.field protected nHandle:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected nStatement:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 5
    .parameter "db"
    .parameter "sql"

    .prologue
    .line 94
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Z)V

    .line 95
    return-void
.end method

.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Z)V
    .registers 10
    .parameter "db"
    .parameter "sql"
    .parameter "bindArgs"
    .parameter "compileFlag"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 86
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    .line 99
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    .line 100
    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-static {v3}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v1

    .line 101
    .local v1, n:I
    packed-switch v1, :pswitch_data_4a

    .line 114
    :pswitch_15
    iput v1, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    .line 116
    :goto_17
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 117
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->addSQLiteClosable(Landroid/database/sqlite/SQLiteClosable;)V

    .line 118
    iput-object p1, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 119
    iget v3, p1, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    iput v3, p0, Landroid/database/sqlite/SQLiteProgram;->nHandle:I

    .line 120
    if-eqz p3, :cond_44

    .line 121
    array-length v2, p3

    .line 122
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_27
    if-ge v0, v2, :cond_44

    .line 123
    add-int/lit8 v3, v0, 0x1

    aget-object v4, p3, v0

    invoke-direct {p0, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->addToBindArgs(ILjava/lang/Object;)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 103
    .end local v0           #i:I
    .end local v2           #size:I
    :pswitch_33
    or-int/lit8 v3, v1, 0x10

    iput v3, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    goto :goto_17

    .line 106
    :pswitch_38
    or-int/lit8 v3, v1, 0x10

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    goto :goto_17

    .line 111
    :pswitch_3f
    or-int/lit8 v3, v1, 0x20

    iput v3, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    goto :goto_17

    .line 126
    :cond_44
    if-eqz p4, :cond_49

    .line 127
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->compileAndbindAllArgs()V

    .line 129
    :cond_49
    return-void

    .line 101
    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_38
        :pswitch_33
        :pswitch_15
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
    .end packed-switch
.end method

.method private addToBindArgs(ILjava/lang/Object;)V
    .registers 5
    .parameter "index"
    .parameter "value"

    .prologue
    .line 345
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 346
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    .line 348
    :cond_b
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    return-void
.end method

.method private bind(IILjava/lang/Object;)V
    .registers 6
    .parameter "type"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 226
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 227
    if-nez p1, :cond_1e

    const/4 v0, 0x0

    :goto_8
    invoke-direct {p0, p2, v0}, Landroid/database/sqlite/SQLiteProgram;->addToBindArgs(ILjava/lang/Object;)V

    .line 228
    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    if-lez v0, :cond_1d

    .line 230
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->acquireReference()V

    .line 232
    packed-switch p1, :pswitch_data_46

    .line 247
    :pswitch_15
    :try_start_15
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {p0, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->native_bind_string(ILjava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_24

    .line 251
    :goto_1a
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    .line 254
    :cond_1d
    return-void

    .restart local p3
    :cond_1e
    move-object v0, p3

    .line 227
    goto :goto_8

    .line 234
    :pswitch_20
    :try_start_20
    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteProgram;->native_bind_null(I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_1a

    .line 251
    .end local p3
    :catchall_24
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    throw v0

    .line 237
    .restart local p3
    :pswitch_29
    :try_start_29
    check-cast p3, [B

    .end local p3
    check-cast p3, [B

    invoke-virtual {p0, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->native_bind_blob(I[B)V

    goto :goto_1a

    .line 240
    .restart local p3
    :pswitch_31
    check-cast p3, Ljava/lang/Double;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->native_bind_double(ID)V

    goto :goto_1a

    .line 243
    .restart local p3
    :pswitch_3b
    check-cast p3, Ljava/lang/Long;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->native_bind_long(IJ)V
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_24

    goto :goto_1a

    .line 232
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_20
        :pswitch_3b
        :pswitch_31
        :pswitch_15
        :pswitch_29
    .end packed-switch
.end method

.method private compileSql()V
    .registers 5

    .prologue
    .line 133
    iget v1, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_18

    .line 134
    new-instance v1, Landroid/database/sqlite/SQLiteCompiledSql;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/database/sqlite/SQLiteCompiledSql;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    .line 135
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    iget v1, v1, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    iput v1, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    .line 164
    :goto_17
    return-void

    .line 140
    :cond_18
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->getCompiledStatementForSql(Ljava/lang/String;)Landroid/database/sqlite/SQLiteCompiledSql;

    move-result-object v1

    iput-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    .line 141
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    if-nez v1, :cond_46

    .line 143
    new-instance v1, Landroid/database/sqlite/SQLiteCompiledSql;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/database/sqlite/SQLiteCompiledSql;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    .line 148
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteCompiledSql;->acquire()Z

    .line 149
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->addToCompiledQueries(Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;)V

    .line 163
    :cond_3f
    :goto_3f
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    iget v1, v1, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    iput v1, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    goto :goto_17

    .line 153
    :cond_46
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteCompiledSql;->acquire()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 154
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    iget v0, v1, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    .line 159
    .local v0, last:I
    new-instance v1, Landroid/database/sqlite/SQLiteCompiledSql;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/database/sqlite/SQLiteCompiledSql;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    goto :goto_3f
.end method

.method private final native native_clear_bindings()V
.end method


# virtual methods
.method public bindAllArgsAsStrings([Ljava/lang/String;)V
    .registers 6
    .parameter "bindArgs"

    .prologue
    .line 396
    if-nez p1, :cond_3

    .line 403
    :cond_2
    return-void

    .line 399
    :cond_3
    array-length v1, p1

    .line 400
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_2

    .line 401
    add-int/lit8 v2, v0, 0x1

    aget-object v3, p1, v0

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public bindBlob(I[B)V
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 310
    if-nez p2, :cond_22

    .line 311
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the bind value at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_22
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bind(IILjava/lang/Object;)V

    .line 314
    return-void
.end method

.method public bindDouble(ID)V
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 285
    const/4 v0, 0x2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Landroid/database/sqlite/SQLiteProgram;->bind(IILjava/lang/Object;)V

    .line 286
    return-void
.end method

.method public bindLong(IJ)V
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 274
    const/4 v0, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Landroid/database/sqlite/SQLiteProgram;->bind(IILjava/lang/Object;)V

    .line 275
    return-void
.end method

.method public bindNull(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 263
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/database/sqlite/SQLiteProgram;->bind(IILjava/lang/Object;)V

    .line 264
    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 296
    if-nez p2, :cond_22

    .line 297
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the bind value at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_22
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bind(IILjava/lang/Object;)V

    .line 300
    return-void
.end method

.method public clearBindings()V
    .registers 2

    .prologue
    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    .line 321
    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    if-nez v0, :cond_8

    .line 331
    :goto_7
    return-void

    .line 324
    :cond_8
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 325
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->acquireReference()V

    .line 327
    :try_start_10
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteProgram;->native_clear_bindings()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_17

    .line 329
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    goto :goto_7

    :catchall_17
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    throw v0
.end method

.method public close()V
    .registers 2

    .prologue
    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    .line 338
    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->nHandle:I

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    .line 342
    :cond_f
    :goto_f
    return-void

    .line 341
    :cond_10
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    goto :goto_f
.end method

.method protected compile(Ljava/lang/String;Z)V
    .registers 3
    .parameter "sql"
    .parameter "forceCompilation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 223
    return-void
.end method

.method compileAndbindAllArgs()V
    .registers 11

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x0

    .line 352
    iget v4, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    and-int/lit8 v4, v4, 0x20

    if-lez v4, :cond_29

    .line 353
    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    if-eqz v4, :cond_34

    .line 354
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t pass bindargs for this sql :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 359
    :cond_29
    iget v4, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    if-nez v4, :cond_30

    .line 361
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteProgram;->compileSql()V

    .line 363
    :cond_30
    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    if-nez v4, :cond_35

    .line 388
    :cond_34
    return-void

    .line 366
    :cond_35
    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 367
    .local v2, index:I
    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 368
    .local v3, value:Ljava/lang/Object;
    if-nez v3, :cond_5f

    .line 369
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteProgram;->native_bind_null(I)V

    goto :goto_3f

    .line 370
    :cond_5f
    instance-of v4, v3, Ljava/lang/Double;

    if-nez v4, :cond_67

    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_71

    .line 371
    :cond_67
    check-cast v3, Ljava/lang/Number;

    .end local v3           #value:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->native_bind_double(ID)V

    goto :goto_3f

    .line 372
    .restart local v3       #value:Ljava/lang/Object;
    :cond_71
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_7f

    .line 373
    check-cast v3, Ljava/lang/Number;

    .end local v3           #value:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->native_bind_long(IJ)V

    goto :goto_3f

    .line 374
    .restart local v3       #value:Ljava/lang/Object;
    :cond_7f
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_a0

    move-object v0, v3

    .line 375
    check-cast v0, Ljava/lang/Boolean;

    .line 376
    .local v0, bool:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9a

    move-wide v4, v6

    :goto_8d
    invoke-virtual {p0, v2, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->native_bind_long(IJ)V

    .line 377
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 378
    invoke-virtual {p0, v2, v6, v7}, Landroid/database/sqlite/SQLiteProgram;->native_bind_long(IJ)V

    goto :goto_3f

    :cond_9a
    move-wide v4, v8

    .line 376
    goto :goto_8d

    .line 380
    :cond_9c
    invoke-virtual {p0, v2, v8, v9}, Landroid/database/sqlite/SQLiteProgram;->native_bind_long(IJ)V

    goto :goto_3f

    .line 382
    .end local v0           #bool:Ljava/lang/Boolean;
    :cond_a0
    instance-of v4, v3, [B

    if-eqz v4, :cond_ac

    .line 383
    check-cast v3, [B

    .end local v3           #value:Ljava/lang/Object;
    check-cast v3, [B

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->native_bind_blob(I[B)V

    goto :goto_3f

    .line 385
    .restart local v3       #value:Ljava/lang/Object;
    :cond_ac
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/database/sqlite/SQLiteProgram;->native_bind_string(ILjava/lang/String;)V

    goto :goto_3f
.end method

.method getSqlStatementId()I
    .registers 2

    .prologue
    .line 204
    monitor-enter p0

    .line 205
    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    goto :goto_6

    .line 206
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method getSqlString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    return-object v0
.end method

.method public final getUniqueId()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 197
    const/4 v0, -0x1

    return v0
.end method

.method protected final native native_bind_blob(I[B)V
.end method

.method protected final native native_bind_double(ID)V
.end method

.method protected final native native_bind_long(IJ)V
.end method

.method protected final native native_bind_null(I)V
.end method

.method protected final native native_bind_string(ILjava/lang/String;)V
.end method

.method protected final native native_compile(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected final native native_finalize()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected onAllReferencesReleased()V
    .registers 2

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->release()V

    .line 169
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->removeSQLiteClosable(Landroid/database/sqlite/SQLiteClosable;)V

    .line 170
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 171
    return-void
.end method

.method protected onAllReferencesReleasedFromContainer()V
    .registers 2

    .prologue
    .line 175
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->release()V

    .line 176
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 177
    return-void
.end method

.method release()V
    .registers 4

    .prologue
    .line 180
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    if-nez v0, :cond_5

    .line 186
    :goto_4
    return-void

    .line 183
    :cond_5
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->releaseCompiledSqlObj(Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;)V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    goto :goto_4
.end method

.method final declared-synchronized setNativeHandle(I)V
    .registers 3
    .parameter "nHandle"

    .prologue
    .line 406
    monitor-enter p0

    :try_start_1
    iput p1, p0, Landroid/database/sqlite/SQLiteProgram;->nHandle:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 407
    monitor-exit p0

    return-void

    .line 406
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
