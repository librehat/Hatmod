.class public Lcom/android/server/PackageManagerBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "PackageManagerBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PackageManagerBackupAgent$Metadata;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final GLOBAL_METADATA_KEY:Ljava/lang/String; = "@meta@"

.field private static final TAG:Ljava/lang/String; = "PMBA"


# instance fields
.field private mAllPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mExisting:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasMetadata:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRestoredSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerBackupAgent$Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private mStateVersions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerBackupAgent$Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private mStoredIncrementalVersion:Ljava/lang/String;

.field private mStoredSdkVersion:I


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V
    .registers 4
    .parameter "packageMgr"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p2, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 86
    iput-object p1, p0, Lcom/android/server/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 87
    iput-object p2, p0, Lcom/android/server/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PackageManagerBackupAgent;->mHasMetadata:Z

    .line 90
    return-void
.end method

.method private parseStateFile(Landroid/os/ParcelFileDescriptor;)V
    .registers 12
    .parameter "stateFile"

    .prologue
    const/4 v8, 0x0

    .line 364
    iget-object v7, p0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 365
    iget-object v7, p0, Lcom/android/server/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 366
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 367
    iput-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 373
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 374
    .local v4, instream:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 376
    .local v3, in:Ljava/io/DataInputStream;
    const/16 v1, 0x100

    .line 377
    .local v1, bufSize:I
    new-array v0, v1, [B

    .line 379
    .local v0, buf:[B
    :try_start_22
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 380
    .local v5, pkg:Ljava/lang/String;
    const-string v7, "@meta@"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 381
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, p0, Lcom/android/server/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 382
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 383
    iget-object v7, p0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    const-string v8, "@meta@"

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 391
    :goto_41
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 392
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 393
    .local v6, versionCode:I
    iget-object v7, p0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v7, p0, Lcom/android/server/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    new-instance v8, Lcom/android/server/PackageManagerBackupAgent$Metadata;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v6, v9}, Lcom/android/server/PackageManagerBackupAgent$Metadata;-><init>(Lcom/android/server/PackageManagerBackupAgent;I[Landroid/content/pm/Signature;)V

    invoke-virtual {v7, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    .line 396
    .end local v5           #pkg:Ljava/lang/String;
    .end local v6           #versionCode:I
    :catch_5a
    move-exception v7

    .line 402
    :goto_5b
    return-void

    .line 385
    .restart local v5       #pkg:Ljava/lang/String;
    :cond_5c
    const-string v7, "PMBA"

    const-string v8, "No global metadata in state file!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/io/EOFException; {:try_start_22 .. :try_end_63} :catch_5a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_63} :catch_64

    goto :goto_5b

    .line 398
    .end local v5           #pkg:Ljava/lang/String;
    :catch_64
    move-exception v2

    .line 400
    .local v2, e:Ljava/io/IOException;
    const-string v7, "PMBA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to read Package Manager state file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b
.end method

.method private static readSignatureArray(Ljava/io/DataInputStream;)[Landroid/content/pm/Signature;
    .registers 10
    .parameter "in"

    .prologue
    const/4 v6, 0x0

    .line 333
    :try_start_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_4} :catch_22
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_18

    move-result v4

    .line 343
    .local v4, num:I
    const/16 v7, 0x14

    if-le v4, v7, :cond_2c

    .line 344
    :try_start_9
    const-string v7, "PMBA"

    const-string v8, "Suspiciously large sig count in restore data; aborting"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Bad restore state"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_18} :catch_18

    .line 356
    .end local v4           #num:I
    :catch_18
    move-exception v0

    .line 357
    .local v0, e:Ljava/io/IOException;
    const-string v7, "PMBA"

    const-string v8, "Unable to read signatures"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 358
    .end local v0           #e:Ljava/io/IOException;
    :cond_21
    :goto_21
    return-object v5

    .line 334
    :catch_22
    move-exception v0

    .line 336
    .local v0, e:Ljava/io/EOFException;
    :try_start_23
    const-string v7, "PMBA"

    const-string v8, "Read empty signature block"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 337
    goto :goto_21

    .line 348
    .end local v0           #e:Ljava/io/EOFException;
    .restart local v4       #num:I
    :cond_2c
    new-array v5, v4, [Landroid/content/pm/Signature;

    .line 349
    .local v5, sigs:[Landroid/content/pm/Signature;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2f
    if-ge v2, v4, :cond_21

    .line 350
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 351
    .local v3, len:I
    new-array v1, v3, [B

    .line 352
    .local v1, flatSig:[B
    invoke-virtual {p0, v1}, Ljava/io/DataInputStream;->read([B)I

    .line 353
    new-instance v7, Landroid/content/pm/Signature;

    invoke-direct {v7, v1}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v7, v5, v2
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_41} :catch_18

    .line 349
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f
.end method

.method private static writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V
    .registers 4
    .parameter "data"
    .parameter "key"
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    array-length v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 247
    array-length v0, p2

    invoke-virtual {p0, p2, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 248
    return-void
.end method

.method private static writeSignatureArray(Ljava/io/DataOutputStream;[Landroid/content/pm/Signature;)V
    .registers 8
    .parameter "out"
    .parameter "sigs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    array-length v5, p1

    invoke-virtual {p0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 322
    move-object v0, p1

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_7
    if-ge v2, v3, :cond_19

    aget-object v4, v0, v2

    .line 323
    .local v4, sig:Landroid/content/pm/Signature;
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    .line 324
    .local v1, flat:[B
    array-length v5, v1

    invoke-virtual {p0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 325
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 322
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 327
    .end local v1           #flat:[B
    .end local v4           #sig:Landroid/content/pm/Signature;
    :cond_19
    return-void
.end method

.method private writeStateFile(Ljava/util/List;Landroid/os/ParcelFileDescriptor;)V
    .registers 10
    .parameter
    .parameter "stateFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Landroid/os/ParcelFileDescriptor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, pkgs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 407
    .local v3, outstream:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 411
    .local v2, out:Ljava/io/DataOutputStream;
    :try_start_e
    const-string v5, "@meta@"

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 412
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 413
    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 416
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 417
    .local v4, pkg:Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 418
    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_37} :catch_38

    goto :goto_21

    .line 420
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #pkg:Landroid/content/pm/PackageInfo;
    :catch_38
    move-exception v0

    .line 421
    .local v0, e:Ljava/io/IOException;
    const-string v5, "PMBA"

    const-string v6, "Unable to write package manager state file!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .end local v0           #e:Ljava/io/IOException;
    :cond_40
    return-void
.end method


# virtual methods
.method public getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/PackageManagerBackupAgent$Metadata;
    .registers 4
    .parameter "packageName"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    if-nez v0, :cond_d

    .line 98
    const-string v0, "PMBA"

    const-string v1, "getRestoredMetadata() before metadata read!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, 0x0

    .line 102
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/android/server/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerBackupAgent$Metadata;

    goto :goto_c
.end method

.method public getRestoredPackages()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    if-nez v0, :cond_d

    .line 107
    const-string v0, "PMBA"

    const-string v1, "getRestoredPackages() before metadata read!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x0

    .line 116
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/android/server/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_c
.end method

.method public hasMetadata()Z
    .registers 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/server/PackageManagerBackupAgent;->mHasMetadata:Z

    return v0
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 15
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"

    .prologue
    .line 125
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 126
    .local v4, outputBuffer:Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 127
    .local v5, outputBufferStream:Ljava/io/DataOutputStream;
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerBackupAgent;->parseStateFile(Landroid/os/ParcelFileDescriptor;)V

    .line 132
    iget-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    if-eqz v8, :cond_1b

    iget-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    sget-object v9, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4c

    .line 134
    :cond_1b
    const-string v8, "PMBA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Previous metadata "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mismatch vs "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - rewriting"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    .line 149
    :cond_4c
    :try_start_4c
    iget-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    const-string v9, "@meta@"

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_da

    .line 151
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 152
    sget-object v8, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 153
    const-string v8, "@meta@"

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-static {p2, v8, v9}, Lcom/android/server/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V

    .line 162
    :goto_69
    iget-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_6f
    :goto_6f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ff

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 163
    .local v7, pkg:Landroid/content/pm/PackageInfo;
    iget-object v6, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 164
    .local v6, packName:Ljava/lang/String;
    const-string v8, "@meta@"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_82} :catch_d1

    move-result v8

    if-nez v8, :cond_6f

    .line 168
    const/4 v3, 0x0

    .line 170
    .local v3, info:Landroid/content/pm/PackageInfo;
    :try_start_86
    iget-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v9, 0x40

    invoke-virtual {v8, v6, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_8d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_86 .. :try_end_8d} :catch_e2
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8d} :catch_d1

    move-result-object v3

    .line 179
    :try_start_8e
    iget-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v8, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a9

    .line 185
    iget-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v8, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 186
    iget v9, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/PackageManagerBackupAgent$Metadata;

    iget v8, v8, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    if-eq v9, v8, :cond_6f

    .line 191
    :cond_a9
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v8, :cond_b2

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    if-nez v8, :cond_e9

    .line 193
    :cond_b2
    const-string v8, "PMBA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not backing up package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " since it appears to have no signatures."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_d0} :catch_d1

    goto :goto_6f

    .line 234
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    .end local v6           #packName:Ljava/lang/String;
    .end local v7           #pkg:Landroid/content/pm/PackageInfo;
    :catch_d1
    move-exception v1

    .line 236
    .local v1, e:Ljava/io/IOException;
    const-string v8, "PMBA"

    const-string v9, "Unable to write package backup data file!"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v1           #e:Ljava/io/IOException;
    :goto_d9
    return-void

    .line 157
    :cond_da
    :try_start_da
    iget-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    const-string v9, "@meta@"

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_69

    .line 172
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #info:Landroid/content/pm/PackageInfo;
    .restart local v6       #packName:Ljava/lang/String;
    .restart local v7       #pkg:Landroid/content/pm/PackageInfo;
    :catch_e2
    move-exception v1

    .line 175
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v8, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 207
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_e9
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 208
    iget v8, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 209
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v5, v8}, Lcom/android/server/PackageManagerBackupAgent;->writeSignatureArray(Ljava/io/DataOutputStream;[Landroid/content/pm/Signature;)V

    .line 218
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-static {p2, v6, v8}, Lcom/android/server/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V

    goto/16 :goto_6f

    .line 225
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    .end local v6           #packName:Ljava/lang/String;
    .end local v7           #pkg:Landroid/content/pm/PackageInfo;
    :cond_ff
    iget-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_105
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_111} :catch_d1

    .line 228
    .local v0, app:Ljava/lang/String;
    const/4 v8, -0x1

    :try_start_112
    invoke-virtual {p2, v0, v8}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_115} :catch_116

    goto :goto_105

    .line 229
    :catch_116
    move-exception v1

    .line 230
    .local v1, e:Ljava/io/IOException;
    :try_start_117
    const-string v8, "PMBA"

    const-string v9, "Unable to write package deletions!"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11e
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_11e} :catch_d1

    goto :goto_d9

    .line 241
    .end local v0           #app:Ljava/lang/String;
    .end local v1           #e:Ljava/io/IOException;
    :cond_11f
    iget-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    invoke-direct {p0, v8, p3}, Lcom/android/server/PackageManagerBackupAgent;->writeStateFile(Ljava/util/List;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_d9
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .registers 20
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v7, restoredApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 258
    .local v8, sigMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerBackupAgent$Metadata;>;"
    const/4 v11, -0x1

    .line 260
    .local v11, storedSystemVersion:I
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v13

    if-eqz v13, :cond_97

    .line 261
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 262
    .local v6, key:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v2

    .line 267
    .local v2, dataSize:I
    new-array v5, v2, [B

    .line 268
    .local v5, inputBytes:[B
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v13, v2}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 269
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 270
    .local v3, inputBuffer:Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 272
    .local v4, inputBufferStream:Ljava/io/DataInputStream;
    const-string v13, "@meta@"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_55

    .line 273
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 275
    .local v10, storedSdkVersion:I
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v11, v13, :cond_43

    .line 277
    const-string v13, "PMBA"

    const-string v14, "Restore set was from a later version of Android; not restoring"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v2           #dataSize:I
    .end local v3           #inputBuffer:Ljava/io/ByteArrayInputStream;
    .end local v4           #inputBufferStream:Ljava/io/DataInputStream;
    .end local v5           #inputBytes:[B
    .end local v6           #key:Ljava/lang/String;
    .end local v10           #storedSdkVersion:I
    :goto_42
    return-void

    .line 280
    .restart local v2       #dataSize:I
    .restart local v3       #inputBuffer:Ljava/io/ByteArrayInputStream;
    .restart local v4       #inputBufferStream:Ljava/io/DataInputStream;
    .restart local v5       #inputBytes:[B
    .restart local v6       #key:Ljava/lang/String;
    .restart local v10       #storedSdkVersion:I
    :cond_43
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 281
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 282
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/PackageManagerBackupAgent;->mHasMetadata:Z

    goto :goto_b

    .line 291
    .end local v10           #storedSdkVersion:I
    :cond_55
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 292
    .local v12, versionCode:I
    invoke-static {v4}, Lcom/android/server/PackageManagerBackupAgent;->readSignatureArray(Ljava/io/DataInputStream;)[Landroid/content/pm/Signature;

    move-result-object v9

    .line 299
    .local v9, sigs:[Landroid/content/pm/Signature;
    if-eqz v9, :cond_62

    array-length v13, v9

    if-nez v13, :cond_81

    .line 300
    :cond_62
    const-string v13, "PMBA"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Not restoring package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " since it appears to have no signatures."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 305
    :cond_81
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 306
    .local v1, app:Landroid/content/pm/ApplicationInfo;
    iput-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 307
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    new-instance v13, Lcom/android/server/PackageManagerBackupAgent$Metadata;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v12, v9}, Lcom/android/server/PackageManagerBackupAgent$Metadata;-><init>(Lcom/android/server/PackageManagerBackupAgent;I[Landroid/content/pm/Signature;)V

    invoke-virtual {v8, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 313
    .end local v1           #app:Landroid/content/pm/ApplicationInfo;
    .end local v2           #dataSize:I
    .end local v3           #inputBuffer:Ljava/io/ByteArrayInputStream;
    .end local v4           #inputBufferStream:Ljava/io/DataInputStream;
    .end local v5           #inputBytes:[B
    .end local v6           #key:Ljava/lang/String;
    .end local v9           #sigs:[Landroid/content/pm/Signature;
    .end local v12           #versionCode:I
    :cond_97
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    goto :goto_42
.end method
