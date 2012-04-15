.class public Lcom/android/server/pm/UserManager;
.super Ljava/lang/Object;
.source "UserManager.java"


# static fields
.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final LOG_TAG:Ljava/lang/String; = "UserManager"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final USER_INFO_DIR:Ljava/lang/String; = null

.field private static final USER_LIST_FILENAME:Ljava/lang/String; = "userlist.xml"


# instance fields
.field private mBaseUserPath:Ljava/io/File;

.field private mInstaller:Lcom/android/server/pm/Installer;

.field private mUserIds:[I

.field private final mUserListFile:Ljava/io/File;

.field private mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserManager;->USER_INFO_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/Installer;Ljava/io/File;)V
    .registers 4
    .parameter "installer"
    .parameter "baseUserPath"

    .prologue
    .line 85
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/UserManager;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 86
    iput-object p1, p0, Lcom/android/server/pm/UserManager;->mInstaller:Lcom/android/server/pm/Installer;

    .line 87
    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .registers 6
    .parameter "dataDir"
    .parameter "baseUserPath"

    .prologue
    const/4 v2, -0x1

    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/pm/UserManager;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/UserManager;->mUsersDir:Ljava/io/File;

    .line 74
    iget-object v0, p0, Lcom/android/server/pm/UserManager;->mUsersDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 75
    iput-object p2, p0, Lcom/android/server/pm/UserManager;->mBaseUserPath:Ljava/io/File;

    .line 76
    iget-object v0, p0, Lcom/android/server/pm/UserManager;->mUsersDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 80
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/UserManager;->mUsersDir:Ljava/io/File;

    const-string v2, "userlist.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/UserManager;->mUserListFile:Ljava/io/File;

    .line 81
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->readUserList()V

    .line 82
    return-void
.end method

.method private createPackageFolders(ILjava/io/File;Ljava/util/List;)Z
    .registers 15
    .parameter "id"
    .parameter "userPath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v10, 0x1

    const/4 v8, -0x1

    .line 379
    iget-object v6, p0, Lcom/android/server/pm/UserManager;->mInstaller:Lcom/android/server/pm/Installer;

    if-eqz v6, :cond_8

    if-nez p3, :cond_9

    .line 398
    :cond_8
    :goto_8
    return v10

    .line 381
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 383
    .local v2, startTime:J
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    .line 384
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1f9

    invoke-static {v6, v7, v8, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 388
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 389
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v7, 0x2710

    if-le v6, v7, :cond_1d

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const v7, 0x186a0

    if-ge v6, v7, :cond_1d

    .line 391
    iget-object v6, p0, Lcom/android/server/pm/UserManager;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v8}, Landroid/content/pm/PackageManager;->getUid(II)I

    move-result v8

    invoke-virtual {v6, v7, v8, p1}, Lcom/android/server/pm/Installer;->createUserData(Ljava/lang/String;II)I

    goto :goto_1d

    .line 395
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    :cond_44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 396
    .local v4, stopTime:J
    const-string v6, "UserManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Time to create "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " packages = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v4, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method private fallbackToSingleUser()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 155
    new-instance v0, Landroid/content/pm/UserInfo;

    const-string v1, "Primary"

    const/4 v2, 0x3

    invoke-direct {v0, v3, v1, v2}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;I)V

    .line 157
    .local v0, primary:Landroid/content/pm/UserInfo;
    iget-object v1, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->updateUserIds()V

    .line 160
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->writeUserList()V

    .line 161
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManager;->writeUser(Landroid/content/pm/UserInfo;)V

    .line 162
    return-void
.end method

.method private getNextAvailableId()I
    .registers 3

    .prologue
    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, i:I
    :goto_1
    const v1, 0x7fffffff

    if-ge v0, v1, :cond_e

    .line 369
    iget-object v1, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_f

    .line 374
    :cond_e
    return v0

    .line 372
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private readUser(I)Landroid/content/pm/UserInfo;
    .registers 15
    .parameter "id"

    .prologue
    .line 236
    const/4 v3, 0x0

    .line 237
    .local v3, flags:I
    const/4 v4, 0x0

    .line 239
    .local v4, name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 241
    .local v0, fis:Ljava/io/FileInputStream;
    :try_start_3
    new-instance v8, Ljava/io/File;

    iget-object v10, p0, Lcom/android/server/pm/UserManager;->mUsersDir:Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 242
    .local v8, userFile:Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_26} :catch_bb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_26} :catch_b5

    .line 243
    .end local v0           #fis:Ljava/io/FileInputStream;
    .local v1, fis:Ljava/io/FileInputStream;
    :try_start_26
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 244
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v10, 0x0

    invoke-interface {v5, v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 247
    :cond_2e
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, type:I
    const/4 v10, 0x2

    if-eq v7, v10, :cond_38

    const/4 v10, 0x1

    if-ne v7, v10, :cond_2e

    .line 251
    :cond_38
    const/4 v10, 0x2

    if-eq v7, v10, :cond_56

    .line 252
    const-string v10, "UserManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to read user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v9, 0x0

    move-object v0, v1

    .line 283
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v7           #type:I
    .end local v8           #userFile:Ljava/io/File;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    :goto_55
    return-object v9

    .line 256
    .end local v0           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7       #type:I
    .restart local v8       #userFile:Ljava/io/File;
    :cond_56
    const/4 v10, 0x2

    if-ne v7, v10, :cond_ab

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "user"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ab

    .line 257
    const/4 v10, 0x0

    const-string v11, "id"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 258
    .local v6, storedId:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eq v10, p1, :cond_7c

    .line 259
    const-string v10, "UserManager"

    const-string v11, "User id does not match the file name"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v9, 0x0

    move-object v0, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    goto :goto_55

    .line 262
    .end local v0           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :cond_7c
    const/4 v10, 0x0

    const-string v11, "flags"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, flagString:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 266
    :cond_87
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v10, 0x2

    if-eq v7, v10, :cond_91

    const/4 v10, 0x1

    if-ne v7, v10, :cond_87

    .line 268
    :cond_91
    const/4 v10, 0x2

    if-ne v7, v10, :cond_ab

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "name"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ab

    .line 269
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 270
    const/4 v10, 0x4

    if-ne v7, v10, :cond_ab

    .line 271
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 275
    .end local v2           #flagString:Ljava/lang/String;
    .end local v6           #storedId:Ljava/lang/String;
    :cond_ab
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 277
    new-instance v9, Landroid/content/pm/UserInfo;

    invoke-direct {v9, p1, v4, v3}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;I)V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_b3} :catch_bd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_26 .. :try_end_b3} :catch_b8

    .local v9, userInfo:Landroid/content/pm/UserInfo;
    move-object v0, v1

    .line 278
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    goto :goto_55

    .line 281
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v7           #type:I
    .end local v8           #userFile:Ljava/io/File;
    .end local v9           #userInfo:Landroid/content/pm/UserInfo;
    :catch_b5
    move-exception v10

    .line 283
    :goto_b6
    const/4 v9, 0x0

    goto :goto_55

    .line 281
    .end local v0           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    .restart local v8       #userFile:Ljava/io/File;
    :catch_b8
    move-exception v10

    move-object v0, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    goto :goto_b6

    .line 280
    .end local v8           #userFile:Ljava/io/File;
    :catch_bb
    move-exception v10

    goto :goto_b6

    .end local v0           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    .restart local v8       #userFile:Ljava/io/File;
    :catch_bd
    move-exception v10

    move-object v0, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    goto :goto_b6
.end method

.method private readUserList()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    .line 107
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    .line 108
    iget-object v8, p0, Lcom/android/server/pm/UserManager;->mUserListFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_15

    .line 109
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->fallbackToSingleUser()V

    .line 151
    :cond_14
    :goto_14
    return-void

    .line 112
    :cond_15
    const/4 v0, 0x0

    .line 114
    .local v0, fis:Ljava/io/FileInputStream;
    :try_start_16
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/android/server/pm/UserManager;->mUserListFile:Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_8d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1d} :catch_9e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_1d} :catch_83

    .line 115
    .end local v0           #fis:Ljava/io/FileInputStream;
    .local v1, fis:Ljava/io/FileInputStream;
    :try_start_1d
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 116
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    invoke-interface {v4, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 119
    :cond_25
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, type:I
    if-eq v6, v10, :cond_2d

    if-ne v6, v11, :cond_25

    .line 123
    :cond_2d
    if-eq v6, v10, :cond_41

    .line 124
    const-string v8, "UserManager"

    const-string v9, "Unable to read user list"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->fallbackToSingleUser()V
    :try_end_39
    .catchall {:try_start_1d .. :try_end_39} :catchall_98
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_39} :catch_6e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_39} :catch_9b

    .line 144
    if-eqz v1, :cond_14

    .line 146
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_14

    .line 147
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #type:I
    :catch_3f
    move-exception v8

    goto :goto_14

    .line 129
    .restart local v1       #fis:Ljava/io/FileInputStream;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #type:I
    :cond_41
    :goto_41
    :try_start_41
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v11, :cond_79

    .line 130
    if-ne v6, v10, :cond_41

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "user"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_41

    .line 131
    const/4 v8, 0x0

    const-string v9, "id"

    invoke-interface {v4, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, id:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/pm/UserManager;->readUser(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 133
    .local v7, user:Landroid/content/pm/UserInfo;
    if-eqz v7, :cond_41

    .line 134
    iget-object v8, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_6d
    .catchall {:try_start_41 .. :try_end_6d} :catchall_98
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_6d} :catch_6e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_41 .. :try_end_6d} :catch_9b

    goto :goto_41

    .line 139
    .end local v2           #id:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #type:I
    .end local v7           #user:Landroid/content/pm/UserInfo;
    :catch_6e
    move-exception v3

    move-object v0, v1

    .line 140
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    .local v3, ioe:Ljava/io/IOException;
    :goto_70
    :try_start_70
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->fallbackToSingleUser()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_8d

    .line 144
    if-eqz v0, :cond_14

    .line 146
    :try_start_75
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_3f

    goto :goto_14

    .line 138
    .end local v0           #fis:Ljava/io/FileInputStream;
    .end local v3           #ioe:Ljava/io/IOException;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #type:I
    :cond_79
    :try_start_79
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->updateUserIds()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_98
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_6e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_79 .. :try_end_7c} :catch_9b

    .line 144
    if-eqz v1, :cond_81

    .line 146
    :try_start_7e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_96

    :cond_81
    :goto_81
    move-object v0, v1

    .line 150
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    goto :goto_14

    .line 141
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #type:I
    :catch_83
    move-exception v5

    .line 142
    .local v5, pe:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_84
    :try_start_84
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->fallbackToSingleUser()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_8d

    .line 144
    if-eqz v0, :cond_14

    .line 146
    :try_start_89
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_3f

    goto :goto_14

    .line 144
    .end local v5           #pe:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_8d
    move-exception v8

    :goto_8e
    if-eqz v0, :cond_93

    .line 146
    :try_start_90
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_94

    .line 144
    :cond_93
    :goto_93
    throw v8

    .line 147
    :catch_94
    move-exception v9

    goto :goto_93

    .end local v0           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #type:I
    :catch_96
    move-exception v8

    goto :goto_81

    .line 144
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #type:I
    :catchall_98
    move-exception v8

    move-object v0, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    goto :goto_8e

    .line 141
    .end local v0           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :catch_9b
    move-exception v5

    move-object v0, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    goto :goto_84

    .line 139
    :catch_9e
    move-exception v3

    goto :goto_70
.end method

.method private removePackageFolders(I)Z
    .registers 4
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 403
    iget-object v0, p0, Lcom/android/server/pm/UserManager;->mInstaller:Lcom/android/server/pm/Installer;

    if-nez v0, :cond_6

    .line 406
    :goto_5
    return v1

    .line 405
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/UserManager;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Installer;->removeUserDataDirs(I)I

    goto :goto_5
.end method

.method private updateUserIds()V
    .registers 4

    .prologue
    .line 354
    iget-object v1, p0, Lcom/android/server/pm/UserManager;->mUserIds:[I

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/pm/UserManager;->mUserIds:[I

    array-length v1, v1

    iget-object v2, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eq v1, v2, :cond_19

    .line 355
    :cond_f
    iget-object v1, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/pm/UserManager;->mUserIds:[I

    .line 357
    :cond_19
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    iget-object v1, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 358
    iget-object v1, p0, Lcom/android/server/pm/UserManager;->mUserIds:[I

    iget-object v2, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    aput v2, v1, v0

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 360
    :cond_2f
    return-void
.end method

.method private writeUser(Landroid/content/pm/UserInfo;)V
    .registers 10
    .parameter "userInfo"

    .prologue
    .line 173
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/UserManager;->mUsersDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    .local v3, mUserFile:Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 175
    .local v1, fos:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 178
    .local v0, bos:Ljava/io/BufferedOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 179
    .local v4, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v4, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 180
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 181
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 183
    const/4 v5, 0x0

    const-string v6, "user"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    const/4 v5, 0x0

    const-string v6, "id"

    iget v7, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 185
    const/4 v5, 0x0

    const-string v6, "flags"

    iget v7, p1, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 187
    const/4 v5, 0x0

    const-string v6, "name"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    iget-object v5, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    const/4 v5, 0x0

    const-string v6, "name"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 191
    const/4 v5, 0x0

    const-string v6, "user"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_77} :catch_78

    .line 197
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #mUserFile:Ljava/io/File;
    .end local v4           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :goto_77
    return-void

    .line 194
    :catch_78
    move-exception v2

    .line 195
    .local v2, ioe:Ljava/io/IOException;
    const-string v5, "UserManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error writing user info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77
.end method

.method private writeUserList()V
    .registers 10

    .prologue
    .line 209
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/android/server/pm/UserManager;->mUserListFile:Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 210
    .local v1, fos:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 213
    .local v0, bos:Ljava/io/BufferedOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 214
    .local v4, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v6, "utf-8"

    invoke-interface {v4, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 215
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 216
    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 218
    const/4 v6, 0x0

    const-string v7, "users"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2c
    iget-object v6, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_57

    .line 221
    iget-object v6, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 222
    .local v5, user:Landroid/content/pm/UserInfo;
    const/4 v6, 0x0

    const-string v7, "user"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 223
    const/4 v6, 0x0

    const-string v7, "id"

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    const/4 v6, 0x0

    const-string v7, "user"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 227
    .end local v5           #user:Landroid/content/pm/UserInfo;
    :cond_57
    const/4 v6, 0x0

    const-string v7, "users"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 229
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_60} :catch_61

    .line 233
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v2           #i:I
    .end local v4           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :goto_60
    return-void

    .line 230
    :catch_61
    move-exception v3

    .line 231
    .local v3, ioe:Ljava/io/IOException;
    const-string v6, "UserManager"

    const-string v7, "Error writing user list"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60
.end method


# virtual methods
.method public clearUserDataForAllUsers(Ljava/lang/String;)V
    .registers 7
    .parameter "packageName"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/server/pm/UserManager;->mUserIds:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_13

    aget v3, v0, v1

    .line 335
    .local v3, userId:I
    if-nez v3, :cond_d

    .line 333
    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 337
    :cond_d
    iget-object v4, p0, Lcom/android/server/pm/UserManager;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v4, p1, v3}, Lcom/android/server/pm/Installer;->clearUserData(Ljava/lang/String;I)I

    goto :goto_a

    .line 339
    .end local v3           #userId:I
    :cond_13
    return-void
.end method

.method public createUser(Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/UserInfo;
    .registers 9
    .parameter "name"
    .parameter "flags"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Landroid/content/pm/UserInfo;"
        }
    .end annotation

    .prologue
    .line 287
    .local p3, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->getNextAvailableId()I

    move-result v0

    .line 288
    .local v0, userId:I
    new-instance v1, Landroid/content/pm/UserInfo;

    invoke-direct {v1, v0, p1, p2}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;I)V

    .line 289
    .local v1, userInfo:Landroid/content/pm/UserInfo;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/UserManager;->mBaseUserPath:Ljava/io/File;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 290
    .local v2, userPath:Ljava/io/File;
    invoke-direct {p0, v0, v2, p3}, Lcom/android/server/pm/UserManager;->createPackageFolders(ILjava/io/File;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 291
    const/4 v1, 0x0

    .line 297
    .end local v1           #userInfo:Landroid/content/pm/UserInfo;
    :goto_1b
    return-object v1

    .line 293
    .restart local v1       #userInfo:Landroid/content/pm/UserInfo;
    :cond_1c
    iget-object v3, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 294
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->writeUserList()V

    .line 295
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManager;->writeUser(Landroid/content/pm/UserInfo;)V

    .line 296
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->updateUserIds()V

    goto :goto_1b
.end method

.method getUserIds()[I
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/pm/UserManager;->mUserIds:[I

    return-object v0
.end method

.method public getUsers()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .local v1, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    iget-object v2, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 92
    iget-object v2, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 94
    :cond_20
    return-object v1
.end method

.method public installPackageForAllUsers(Ljava/lang/String;I)V
    .registers 9
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/server/pm/UserManager;->mUserIds:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_17

    aget v3, v0, v1

    .line 325
    .local v3, userId:I
    if-nez v3, :cond_d

    .line 323
    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 327
    :cond_d
    iget-object v4, p0, Lcom/android/server/pm/UserManager;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {v3, p2}, Landroid/content/pm/PackageManager;->getUid(II)I

    move-result v5

    invoke-virtual {v4, p1, v5, v3}, Lcom/android/server/pm/Installer;->createUserData(Ljava/lang/String;II)I

    goto :goto_a

    .line 330
    .end local v3           #userId:I
    :cond_17
    return-void
.end method

.method public removePackageForAllUsers(Ljava/lang/String;)V
    .registers 7
    .parameter "packageName"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/server/pm/UserManager;->mUserIds:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_13

    aget v3, v0, v1

    .line 344
    .local v3, userId:I
    if-nez v3, :cond_d

    .line 342
    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 346
    :cond_d
    iget-object v4, p0, Lcom/android/server/pm/UserManager;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v4, p1, v3}, Lcom/android/server/pm/Installer;->remove(Ljava/lang/String;I)I

    goto :goto_a

    .line 348
    .end local v3           #userId:I
    :cond_13
    return-void
.end method

.method public removeUser(I)V
    .registers 7
    .parameter "id"

    .prologue
    .line 307
    iget-object v2, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 308
    .local v1, userInfo:Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_35

    .line 310
    iget-object v2, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 312
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/UserManager;->mUsersDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 313
    .local v0, userFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 315
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->writeUserList()V

    .line 317
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManager;->removePackageFolders(I)Z

    .line 318
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->updateUserIds()V

    .line 320
    .end local v0           #userFile:Ljava/io/File;
    :cond_35
    return-void
.end method
