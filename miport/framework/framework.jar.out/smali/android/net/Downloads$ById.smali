.class public final Landroid/net/Downloads$ById;
.super Landroid/net/Downloads$DownloadBase;
.source "Downloads.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Downloads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ById"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 344
    invoke-direct {p0}, Landroid/net/Downloads$DownloadBase;-><init>()V

    return-void
.end method

.method public static deleteDownload(Landroid/content/Context;J)V
    .registers 7
    .parameter "context"
    .parameter "downloadId"

    .prologue
    const/4 v3, 0x0

    .line 374
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 376
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 378
    .local v2, mimeType:Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/net/Downloads$ById;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 380
    .local v1, downloadUri:Landroid/net/Uri;
    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 381
    return-void
.end method

.method private static getDownloadUri(J)Landroid/net/Uri;
    .registers 4
    .parameter "downloadId"

    .prologue
    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getMimeTypeForId(Landroid/content/Context;J)Ljava/lang/String;
    .registers 11
    .parameter "context"
    .parameter "downloadId"

    .prologue
    .line 350
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 352
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 353
    .local v7, mimeType:Ljava/lang/String;
    const/4 v6, 0x0

    .line 356
    .local v6, downloadCursor:Landroid/database/Cursor;
    :try_start_6
    invoke-static {p1, p2}, Landroid/net/Downloads$ById;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 358
    .local v1, downloadUri:Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "mimetype"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 361
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 362
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_2b

    move-result-object v7

    .line 365
    :cond_25
    if-eqz v6, :cond_2a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 367
    :cond_2a
    return-object v7

    .line 365
    .end local v1           #downloadUri:Landroid/net/Uri;
    :catchall_2b
    move-exception v2

    if-eqz v6, :cond_31

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_31
    throw v2
.end method

.method public static final getStatus(Landroid/content/Context;J)Landroid/net/Downloads$StatusInfo;
    .registers 18
    .parameter "context"
    .parameter "downloadId"

    .prologue
    .line 425
    const/4 v12, 0x0

    .line 426
    .local v12, result:Landroid/net/Downloads$StatusInfo;
    const/4 v9, 0x0

    .line 427
    .local v9, hasFailedDownload:Z
    const-wide/16 v7, 0x0

    .line 429
    .local v7, failedDownloadModificationTime:J
    invoke-static/range {p1 .. p2}, Landroid/net/Downloads$ById;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 431
    .local v1, downloadUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 433
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/net/Downloads;->access$000()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 436
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1f

    :try_start_19
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_7f

    move-result v2

    if-nez v2, :cond_26

    .line 459
    :cond_1f
    if-eqz v6, :cond_24

    .line 460
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_24
    move-object v13, v12

    .line 463
    .end local v12           #result:Landroid/net/Downloads$StatusInfo;
    .local v13, result:Landroid/net/Downloads$StatusInfo;
    :goto_25
    return-object v13

    .line 440
    .end local v13           #result:Landroid/net/Downloads$StatusInfo;
    .restart local v12       #result:Landroid/net/Downloads$StatusInfo;
    :cond_26
    if-nez v12, :cond_2e

    .line 441
    :try_start_28
    new-instance v13, Landroid/net/Downloads$StatusInfo;

    invoke-direct {v13}, Landroid/net/Downloads$StatusInfo;-><init>()V

    .end local v12           #result:Landroid/net/Downloads$StatusInfo;
    .restart local v13       #result:Landroid/net/Downloads$StatusInfo;
    move-object v12, v13

    .line 443
    .end local v13           #result:Landroid/net/Downloads$StatusInfo;
    .restart local v12       #result:Landroid/net/Downloads$StatusInfo;
    :cond_2e
    const-wide/16 v2, 0x0

    invoke-static {v6, v2, v3}, Landroid/net/Downloads;->access$100(Landroid/database/Cursor;J)I

    move-result v14

    .line 444
    .local v14, status:I
    const/4 v2, 0x3

    if-eq v14, v2, :cond_3a

    const/4 v2, 0x4

    if-ne v14, v2, :cond_65

    .line 446
    :cond_3a
    const/4 v2, 0x4

    if-ne v14, v2, :cond_63

    const/4 v2, 0x1

    :goto_3e
    iput-boolean v2, v12, Landroid/net/Downloads$StatusInfo;->completed:Z

    .line 447
    const/4 v2, 0x3

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Landroid/net/Downloads$StatusInfo;->filename:Ljava/lang/String;

    .line 448
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v12, Landroid/net/Downloads$StatusInfo;->id:J

    .line 449
    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Landroid/net/Downloads$StatusInfo;->statusCode:I

    .line 450
    const/4 v2, 0x5

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v12, Landroid/net/Downloads$StatusInfo;->bytesSoFar:J
    :try_end_5c
    .catchall {:try_start_28 .. :try_end_5c} :catchall_7f

    .line 459
    if-eqz v6, :cond_61

    .line 460
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_61
    move-object v13, v12

    .end local v12           #result:Landroid/net/Downloads$StatusInfo;
    .restart local v13       #result:Landroid/net/Downloads$StatusInfo;
    goto :goto_25

    .line 446
    .end local v13           #result:Landroid/net/Downloads$StatusInfo;
    .restart local v12       #result:Landroid/net/Downloads$StatusInfo;
    :cond_63
    const/4 v2, 0x0

    goto :goto_3e

    .line 454
    :cond_65
    const/4 v2, 0x4

    :try_start_66
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 456
    .local v10, modTime:J
    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Landroid/net/Downloads$StatusInfo;->statusCode:I

    .line 457
    const/4 v2, 0x5

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v12, Landroid/net/Downloads$StatusInfo;->bytesSoFar:J
    :try_end_78
    .catchall {:try_start_66 .. :try_end_78} :catchall_7f

    .line 459
    if-eqz v6, :cond_7d

    .line 460
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7d
    move-object v13, v12

    .line 463
    .end local v12           #result:Landroid/net/Downloads$StatusInfo;
    .restart local v13       #result:Landroid/net/Downloads$StatusInfo;
    goto :goto_25

    .line 459
    .end local v10           #modTime:J
    .end local v13           #result:Landroid/net/Downloads$StatusInfo;
    .end local v14           #status:I
    .restart local v12       #result:Landroid/net/Downloads$StatusInfo;
    :catchall_7f
    move-exception v2

    if-eqz v6, :cond_85

    .line 460
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_85
    throw v2
.end method

.method public static openDownload(Landroid/content/Context;JLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .parameter "context"
    .parameter "downloadId"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 392
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 394
    .local v2, mimeType:Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/net/Downloads$ById;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 396
    .local v1, downloadUri:Landroid/net/Uri;
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    return-object v3
.end method

.method public static openDownloadStream(Landroid/content/Context;J)Ljava/io/InputStream;
    .registers 7
    .parameter "context"
    .parameter "downloadId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 407
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 409
    .local v2, mimeType:Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/net/Downloads$ById;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 411
    .local v1, downloadUri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    return-object v3
.end method
