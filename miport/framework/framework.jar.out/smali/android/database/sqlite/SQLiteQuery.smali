.class public Landroid/database/sqlite/SQLiteQuery;
.super Landroid/database/sqlite/SQLiteProgram;
.source "SQLiteQuery.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteQuery"


# instance fields
.field private mClosed:Z

.field private mOffsetIndex:I


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQuery;)V
    .registers 5
    .parameter "db"
    .parameter "query"

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p2, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 41
    iput v1, p0, Landroid/database/sqlite/SQLiteQuery;->mOffsetIndex:I

    .line 43
    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteQuery;->mClosed:Z

    .line 68
    iget-object v0, p2, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    .line 69
    iget v0, p2, Landroid/database/sqlite/SQLiteQuery;->mOffsetIndex:I

    iput v0, p0, Landroid/database/sqlite/SQLiteQuery;->mOffsetIndex:I

    .line 70
    return-void
.end method

.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 6
    .parameter "db"
    .parameter "query"
    .parameter "offsetIndex"
    .parameter "bindArgs"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 41
    iput v0, p0, Landroid/database/sqlite/SQLiteQuery;->mOffsetIndex:I

    .line 43
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteQuery;->mClosed:Z

    .line 54
    iput p3, p0, Landroid/database/sqlite/SQLiteQuery;->mOffsetIndex:I

    .line 55
    invoke-virtual {p0, p4}, Landroid/database/sqlite/SQLiteQuery;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private static native nativeColumnCount(I)I
.end method

.method private static native nativeColumnName(II)Ljava/lang/String;
.end method

.method private static native nativeFillWindow(IIIII)I
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 162
    invoke-super {p0}, Landroid/database/sqlite/SQLiteProgram;->close()V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteQuery;->mClosed:Z

    .line 164
    return-void
.end method

.method columnCountLocked()I
    .registers 2

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->acquireReference()V

    .line 133
    :try_start_3
    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    invoke-static {v0}, Landroid/database/sqlite/SQLiteQuery;->nativeColumnCount(I)I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    move-result v0

    .line 135
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    return v0

    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    throw v0
.end method

.method columnNameLocked(I)Ljava/lang/String;
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->acquireReference()V

    .line 149
    :try_start_3
    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    invoke-static {v0, p1}, Landroid/database/sqlite/SQLiteQuery;->nativeColumnName(II)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    move-result-object v0

    .line 151
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    return-object v0

    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    throw v0
.end method

.method fillWindow(Landroid/database/CursorWindow;)I
    .registers 13
    .parameter "window"

    .prologue
    .line 79
    iget-object v7, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v8, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->lock(Ljava/lang/String;)V

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 82
    .local v5, timeStart:J
    :try_start_b
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->acquireReference()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_e3

    .line 84
    :try_start_e
    invoke-virtual {p1}, Landroid/database/CursorWindow;->acquireReference()V

    .line 85
    invoke-virtual {p1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v4

    .line 86
    .local v4, startPos:I
    iget v7, p0, Landroid/database/sqlite/SQLiteProgram;->nHandle:I

    iget v8, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    iget v9, p1, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v10, p0, Landroid/database/sqlite/SQLiteQuery;->mOffsetIndex:I

    invoke-static {v7, v8, v9, v4, v10}, Landroid/database/sqlite/SQLiteQuery;->nativeFillWindow(IIIII)I

    move-result v3

    .line 88
    .local v3, numRows:I
    sget-boolean v7, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOG_SLOW_QUERIES:Z

    if-eqz v7, :cond_b3

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v1, v7, v5

    .line 90
    .local v1, elapsed:J
    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteDebug;->shouldLogSlowQuery(J)Z

    move-result v7

    if-eqz v7, :cond_b3

    .line 91
    const-string v8, "SQLiteQuery"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fillWindow took "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " ms: window=\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\", startPos="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", offset="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Landroid/database/sqlite/SQLiteQuery;->mOffsetIndex:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", filledRows="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", countedRows="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", query=\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", args=["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    if-eqz v7, :cond_c6

    const-string v7, ", "

    iget-object v10, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    :goto_a2
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "]"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v1           #elapsed:J
    :cond_b3
    iget-object v7, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v8, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v7, v8, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_ba
    .catchall {:try_start_e .. :try_end_ba} :catchall_de
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_ba} :catch_c9
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_e .. :try_end_ba} :catch_d7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_ba} :catch_ed

    .line 115
    :try_start_ba
    invoke-virtual {p1}, Landroid/database/CursorWindow;->releaseReference()V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_e3

    .line 118
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    .line 119
    iget-object v7, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .end local v3           #numRows:I
    .end local v4           #startPos:I
    :goto_c5
    return v3

    .line 91
    .restart local v1       #elapsed:J
    .restart local v3       #numRows:I
    .restart local v4       #startPos:I
    :cond_c6
    :try_start_c6
    const-string v7, ""
    :try_end_c8
    .catchall {:try_start_c6 .. :try_end_c8} :catchall_de
    .catch Ljava/lang/IllegalStateException; {:try_start_c6 .. :try_end_c8} :catch_c9
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_c6 .. :try_end_c8} :catch_d7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c6 .. :try_end_c8} :catch_ed

    goto :goto_a2

    .line 105
    .end local v1           #elapsed:J
    .end local v3           #numRows:I
    .end local v4           #startPos:I
    :catch_c9
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/IllegalStateException;
    const/4 v3, 0x0

    .line 115
    :try_start_cb
    invoke-virtual {p1}, Landroid/database/CursorWindow;->releaseReference()V
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_e3

    .line 118
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    .line 119
    iget-object v7, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    goto :goto_c5

    .line 108
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_d7
    move-exception v0

    .line 109
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_d8
    iget-object v7, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 110
    throw v0
    :try_end_de
    .catchall {:try_start_d8 .. :try_end_de} :catchall_de

    .line 115
    .end local v0           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_de
    move-exception v7

    :try_start_df
    invoke-virtual {p1}, Landroid/database/CursorWindow;->releaseReference()V

    throw v7
    :try_end_e3
    .catchall {:try_start_df .. :try_end_e3} :catchall_e3

    .line 118
    :catchall_e3
    move-exception v7

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    .line 119
    iget-object v8, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v7

    .line 111
    :catch_ed
    move-exception v0

    .line 112
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    :try_start_ee
    const-string v7, "SQLiteQuery"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; query: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    throw v0
    :try_end_117
    .catchall {:try_start_ee .. :try_end_117} :catchall_de
.end method

.method requery()V
    .registers 3

    .prologue
    .line 170
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteQuery;->mClosed:Z

    if-eqz v0, :cond_d

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "requerying a closed cursor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_d
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->compileAndbindAllArgs()V

    .line 174
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteQuery: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
