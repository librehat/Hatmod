.class public Landroid/mtp/MtpDatabase;
.super Ljava/lang/Object;
.source "MtpDatabase.java"


# static fields
.field static final ALL_PROPERTIES:[I = null

.field static final AUDIO_PROPERTIES:[I = null

.field private static final DEVICE_PROPERTIES_DATABASE_VERSION:I = 0x1

.field static final FILE_PROPERTIES:[I = null

.field private static final FORMAT_PARENT_WHERE:Ljava/lang/String; = "parent=? AND parent=?"

.field private static final FORMAT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field static final IMAGE_PROPERTIES:[I = null

.field private static final OBJECT_INFO_PROJECTION:[Ljava/lang/String; = null

.field private static final PARENT_WHERE:Ljava/lang/String; = "format=?"

.field private static final PATH_PROJECTION:[Ljava/lang/String; = null

.field private static final PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String; = null

.field private static final PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final STORAGE_FORMAT_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND format=? AND parent=?"

.field private static final STORAGE_FORMAT_WHERE:Ljava/lang/String; = "storage_id=? AND format=?"

.field private static final STORAGE_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND parent=?"

.field private static final STORAGE_WHERE:Ljava/lang/String; = "storage_id=?"

.field private static final TAG:Ljava/lang/String; = "MtpDatabase"

.field static final VIDEO_PROPERTIES:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabaseModified:Z

.field private mDeviceProperties:Landroid/content/SharedPreferences;

.field private final mMediaProvider:Landroid/content/IContentProvider;

.field private final mMediaScanner:Landroid/media/MediaScanner;

.field private final mMediaStoragePath:Ljava/lang/String;

.field private mNativeContext:I

.field private final mObjectsUri:Landroid/net/Uri;

.field private final mPropertyGroupsByFormat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPropertyGroupsByProperty:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubDirectories:[Ljava/lang/String;

.field private mSubDirectoriesWhere:Ljava/lang/String;

.field private mSubDirectoriesWhereArgs:[Ljava/lang/String;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    .line 83
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    .line 87
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "_size"

    aput-object v1, v0, v4

    const-string v1, "format"

    aput-object v1, v0, v5

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

    .line 93
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "storage_id"

    aput-object v1, v0, v3

    const-string v1, "format"

    aput-object v1, v0, v4

    const-string/jumbo v1, "parent"

    aput-object v1, v0, v5

    const-string v1, "_data"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    .line 120
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 519
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_86

    sput-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    .line 534
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_9e

    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    .line 559
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_c8

    sput-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    .line 580
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_ea

    sput-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    .line 598
    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_106

    sput-object v0, Landroid/mtp/MtpDatabase;->ALL_PROPERTIES:[I

    return-void

    .line 519
    :array_86
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
    .end array-data

    .line 534
    :array_9e
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
        0x46t 0xdct 0x0t 0x0t
        0x9at 0xdct 0x0t 0x0t
        0x9bt 0xdct 0x0t 0x0t
        0x8bt 0xdct 0x0t 0x0t
        0x99t 0xdct 0x0t 0x0t
        0x89t 0xdct 0x0t 0x0t
        0x8ct 0xdct 0x0t 0x0t
        0x96t 0xdct 0x0t 0x0t
    .end array-data

    .line 559
    :array_c8
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
        0x46t 0xdct 0x0t 0x0t
        0x9at 0xdct 0x0t 0x0t
        0x89t 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
    .end array-data

    .line 580
    :array_ea
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
    .end array-data

    .line 598
    :array_106
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
        0x46t 0xdct 0x0t 0x0t
        0x9at 0xdct 0x0t 0x0t
        0x9bt 0xdct 0x0t 0x0t
        0x8bt 0xdct 0x0t 0x0t
        0x99t 0xdct 0x0t 0x0t
        0x89t 0xdct 0x0t 0x0t
        0x8ct 0xdct 0x0t 0x0t
        0x96t 0xdct 0x0t 0x0t
        0x46t 0xdct 0x0t 0x0t
        0x9at 0xdct 0x0t 0x0t
        0x89t 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 18
    .parameter "context"
    .parameter "volumeName"
    .parameter "storagePath"
    .parameter "subDirectories"

    .prologue
    .line 124
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    .line 66
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    .line 70
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    .line 125
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_setup()V

    .line 127
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "media"

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    .line 129
    iput-object p2, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    .line 130
    move-object/from16 v0, p3

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    .line 131
    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    .line 132
    new-instance v10, Landroid/media/MediaScanner;

    invoke-direct {v10, p1}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    .line 134
    move-object/from16 v0, p4

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    .line 135
    if-eqz p4, :cond_9e

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v10, "("

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    move-object/from16 v0, p4

    array-length v2, v0

    .line 140
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_51
    if-ge v4, v2, :cond_64

    .line 141
    const-string v10, "_data=? OR _data LIKE ?"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    add-int/lit8 v10, v2, -0x1

    if-eq v4, v10, :cond_61

    .line 144
    const-string v10, " OR "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_61
    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    .line 147
    :cond_64
    const-string v10, ")"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 151
    mul-int/lit8 v10, v2, 0x2

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 152
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, j:I
    move v6, v5

    .end local v5           #j:I
    .local v6, j:I
    :goto_78
    if-ge v4, v2, :cond_9e

    .line 153
    aget-object v9, p4, v4

    .line 154
    .local v9, path:Ljava/lang/String;
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v5, v6, 0x1

    .end local v6           #j:I
    .restart local v5       #j:I
    aput-object v9, v10, v6

    .line 155
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    .end local v5           #j:I
    .restart local v6       #j:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 152
    add-int/lit8 v4, v4, 0x1

    goto :goto_78

    .line 160
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v6           #j:I
    .end local v9           #path:Ljava/lang/String;
    :cond_9e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v8, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 161
    .local v8, locale:Ljava/util/Locale;
    if-eqz v8, :cond_d2

    .line 162
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 163
    .local v7, language:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, country:Ljava/lang/String;
    if-eqz v7, :cond_d2

    .line 165
    if-eqz v3, :cond_d6

    .line 166
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    .line 172
    .end local v3           #country:Ljava/lang/String;
    .end local v7           #language:Ljava/lang/String;
    :cond_d2
    :goto_d2
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->initDeviceProperties(Landroid/content/Context;)V

    .line 173
    return-void

    .line 168
    .restart local v3       #country:Ljava/lang/String;
    .restart local v7       #language:Ljava/lang/String;
    :cond_d6
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    invoke-virtual {v10, v7}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    goto :goto_d2
.end method

.method private beginSendObject(Ljava/lang/String;IIIJJ)I
    .registers 19
    .parameter "path"
    .parameter "format"
    .parameter "parent"
    .parameter "storageId"
    .parameter "size"
    .parameter "modified"

    .prologue
    .line 262
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->inStorageSubDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    .line 301
    :cond_7
    :goto_7
    return v0

    .line 265
    :cond_8
    if-eqz p1, :cond_4a

    .line 266
    const/4 v6, 0x0

    .line 268
    .local v6, c:Landroid/database/Cursor;
    :try_start_b
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 270
    if-eqz v6, :cond_45

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_45

    .line 271
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file already exists in beginSendObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_b .. :try_end_3e} :catchall_af
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_3e} :catch_a1

    .line 272
    const/4 v0, -0x1

    .line 277
    if-eqz v6, :cond_7

    .line 278
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 277
    :cond_45
    if-eqz v6, :cond_4a

    .line 278
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 283
    .end local v6           #c:Landroid/database/Cursor;
    :cond_4a
    :goto_4a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 284
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 285
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "_data"

    invoke-virtual {v9, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v0, "format"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    const-string/jumbo v0, "parent"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 288
    const-string/jumbo v0, "storage_id"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 289
    const-string v0, "_size"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 290
    const-string v0, "date_modified"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 293
    :try_start_86
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v9}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 294
    .local v8, uri:Landroid/net/Uri;
    if-eqz v8, :cond_b6

    .line 295
    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_9e} :catch_b9

    move-result v0

    goto/16 :goto_7

    .line 274
    .end local v8           #uri:Landroid/net/Uri;
    .end local v9           #values:Landroid/content/ContentValues;
    .restart local v6       #c:Landroid/database/Cursor;
    :catch_a1
    move-exception v7

    .line 275
    .local v7, e:Landroid/os/RemoteException;
    :try_start_a2
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in beginSendObject"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a9
    .catchall {:try_start_a2 .. :try_end_a9} :catchall_af

    .line 277
    if-eqz v6, :cond_4a

    .line 278
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4a

    .line 277
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_af
    move-exception v0

    if-eqz v6, :cond_b5

    .line 278
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_b5
    throw v0

    .line 297
    .end local v6           #c:Landroid/database/Cursor;
    .restart local v8       #uri:Landroid/net/Uri;
    .restart local v9       #values:Landroid/content/ContentValues;
    :cond_b6
    const/4 v0, -0x1

    goto/16 :goto_7

    .line 299
    .end local v8           #uri:Landroid/net/Uri;
    :catch_b9
    move-exception v7

    .line 300
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in beginSendObject"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    const/4 v0, -0x1

    goto/16 :goto_7
.end method

.method private createObjectQuery(III)Landroid/database/Cursor;
    .registers 13
    .parameter "storageID"
    .parameter "format"
    .parameter "parent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 344
    if-ne p1, v0, :cond_53

    .line 346
    if-nez p2, :cond_30

    .line 348
    if-nez p3, :cond_22

    .line 350
    const/4 v3, 0x0

    .line 351
    .local v3, where:Ljava/lang/String;
    const/4 v4, 0x0

    .line 415
    .local v4, whereArgs:[Ljava/lang/String;
    :goto_c
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 416
    if-nez v3, :cond_a9

    .line 417
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 418
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 436
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 353
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_22
    if-ne p3, v0, :cond_25

    .line 355
    const/4 p3, 0x0

    .line 357
    :cond_25
    const-string v3, "format=?"

    .line 358
    .restart local v3       #where:Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .restart local v4       #whereArgs:[Ljava/lang/String;
    goto :goto_c

    .line 362
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_30
    if-nez p3, :cond_3e

    .line 364
    const-string/jumbo v3, "parent=?"

    .line 365
    .restart local v3       #where:Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .restart local v4       #whereArgs:[Ljava/lang/String;
    goto :goto_c

    .line 367
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_3e
    if-ne p3, v0, :cond_41

    .line 369
    const/4 p3, 0x0

    .line 371
    :cond_41
    const-string/jumbo v3, "parent=? AND parent=?"

    .line 372
    .restart local v3       #where:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .restart local v4       #whereArgs:[Ljava/lang/String;
    goto :goto_c

    .line 378
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_53
    if-nez p2, :cond_78

    .line 380
    if-nez p3, :cond_63

    .line 382
    const-string/jumbo v3, "storage_id=?"

    .line 383
    .restart local v3       #where:Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .restart local v4       #whereArgs:[Ljava/lang/String;
    goto :goto_c

    .line 385
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_63
    if-ne p3, v0, :cond_66

    .line 387
    const/4 p3, 0x0

    .line 389
    :cond_66
    const-string/jumbo v3, "storage_id=? AND parent=?"

    .line 390
    .restart local v3       #where:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .restart local v4       #whereArgs:[Ljava/lang/String;
    goto :goto_c

    .line 395
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_78
    if-nez p3, :cond_8c

    .line 397
    const-string/jumbo v3, "storage_id=? AND format=?"

    .line 398
    .restart local v3       #where:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .restart local v4       #whereArgs:[Ljava/lang/String;
    goto :goto_c

    .line 401
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_8c
    if-ne p3, v0, :cond_8f

    .line 403
    const/4 p3, 0x0

    .line 405
    :cond_8f
    const-string/jumbo v3, "storage_id=? AND format=? AND parent=?"

    .line 406
    .restart local v3       #where:Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .restart local v4       #whereArgs:[Ljava/lang/String;
    goto/16 :goto_c

    .line 420
    :cond_a9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 423
    array-length v0, v4

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v8, v0, [Ljava/lang/String;

    .line 426
    .local v8, newWhereArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_ca
    array-length v0, v4

    if-ge v6, v0, :cond_d4

    .line 427
    aget-object v0, v4, v6

    aput-object v0, v8, v6

    .line 426
    add-int/lit8 v6, v6, 0x1

    goto :goto_ca

    .line 429
    :cond_d4
    const/4 v7, 0x0

    .local v7, j:I
    :goto_d5
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_e5

    .line 430
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    aget-object v0, v0, v7

    aput-object v0, v8, v6

    .line 429
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_d5

    .line 432
    :cond_e5
    move-object v4, v8

    goto/16 :goto_16
.end method

.method private deleteFile(I)I
    .registers 16
    .parameter "handle"

    .prologue
    const/16 v11, 0x2009

    const/16 v12, 0x2002

    const/4 v0, 0x1

    .line 883
    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 884
    const/4 v9, 0x0

    .line 885
    .local v9, path:Ljava/lang/String;
    const/4 v8, 0x0

    .line 887
    .local v8, format:I
    const/4 v6, 0x0

    .line 889
    .local v6, c:Landroid/database/Cursor;
    :try_start_a
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 891
    if-eqz v6, :cond_3e

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 894
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 895
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_32
    .catchall {:try_start_a .. :try_end_32} :catchall_ac
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_32} :catch_9d

    move-result v8

    .line 900
    if-eqz v9, :cond_37

    if-nez v8, :cond_45

    .line 926
    :cond_37
    if-eqz v6, :cond_3c

    .line 927
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3c
    move v0, v12

    :cond_3d
    :goto_3d
    return v0

    .line 926
    :cond_3e
    if-eqz v6, :cond_43

    .line 927
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_43
    move v0, v11

    goto :goto_3d

    .line 905
    :cond_45
    :try_start_45
    invoke-direct {p0, v9}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_ac
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_48} :catch_9d

    move-result v0

    if-eqz v0, :cond_53

    .line 906
    const/16 v0, 0x200d

    .line 926
    if-eqz v6, :cond_3d

    .line 927
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3d

    .line 909
    :cond_53
    const/16 v0, 0x3001

    if-ne v8, v0, :cond_7d

    .line 911
    :try_start_57
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 912
    .local v10, uri:Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    const-string v1, "_data LIKE ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v10, v1, v2}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 916
    .end local v10           #uri:Landroid/net/Uri;
    :cond_7d
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v10

    .line 917
    .restart local v10       #uri:Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v10, v1, v2}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_57 .. :try_end_8b} :catchall_ac
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_8b} :catch_9d

    move-result v0

    if-lez v0, :cond_96

    .line 918
    const/16 v0, 0x2001

    .line 926
    if-eqz v6, :cond_3d

    .line 927
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3d

    .line 926
    :cond_96
    if-eqz v6, :cond_9b

    .line 927
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9b
    move v0, v11

    goto :goto_3d

    .line 922
    .end local v10           #uri:Landroid/net/Uri;
    :catch_9d
    move-exception v7

    .line 923
    .local v7, e:Landroid/os/RemoteException;
    :try_start_9e
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in deleteFile"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a5
    .catchall {:try_start_9e .. :try_end_a5} :catchall_ac

    .line 926
    if-eqz v6, :cond_aa

    .line 927
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_aa
    move v0, v12

    goto :goto_3d

    .line 926
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_ac
    move-exception v0

    if-eqz v6, :cond_b2

    .line 927
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_b2
    throw v0
.end method

.method private endSendObject(Ljava/lang/String;IIZ)V
    .registers 14
    .parameter "path"
    .parameter "handle"
    .parameter "format"
    .parameter "succeeded"

    .prologue
    .line 306
    if-eqz p4, :cond_76

    .line 309
    const v4, 0xba05

    if-ne p3, v4, :cond_6e

    .line 311
    move-object v2, p1

    .line 312
    .local v2, name:Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 313
    .local v1, lastSlash:I
    if-ltz v1, :cond_16

    .line 314
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 317
    :cond_16
    const-string v4, ".pla"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 318
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 321
    :cond_29
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 322
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "_data"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v4, "format"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 326
    const-string/jumbo v4, "media_scanner_new_object_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 328
    :try_start_5d
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    sget-object v5, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v4, v5, v3}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_64} :catch_65

    .line 338
    .end local v1           #lastSlash:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_64
    return-void

    .line 329
    .restart local v1       #lastSlash:I
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #values:Landroid/content/ContentValues;
    :catch_65
    move-exception v0

    .line 330
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MtpDatabase"

    const-string v5, "RemoteException in endSendObject"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    .line 333
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #lastSlash:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_6e
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-virtual {v4, p1, v5, p2, p3}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_64

    .line 336
    :cond_76
    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->deleteFile(I)I

    goto :goto_64
.end method

.method private getDeviceProperty(I[J[C)I
    .registers 15
    .parameter "property"
    .parameter "outIntValue"
    .parameter "outStringValue"

    .prologue
    const/16 v7, 0x2001

    const/4 v10, 0x0

    .line 770
    sparse-switch p1, :sswitch_data_6c

    .line 795
    const/16 v6, 0x200a

    :goto_8
    return v6

    .line 774
    :sswitch_9
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 775
    .local v4, value:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 776
    .local v3, length:I
    const/16 v6, 0xff

    if-le v3, v6, :cond_1f

    .line 777
    const/16 v3, 0xff

    .line 779
    :cond_1f
    invoke-virtual {v4, v10, v3, p3, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 780
    aput-char v10, p3, v3

    move v6, v7

    .line 781
    goto :goto_8

    .line 785
    .end local v3           #length:I
    .end local v4           #value:Ljava/lang/String;
    :sswitch_26
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "window"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 787
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v5

    .line 788
    .local v5, width:I
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v1

    .line 789
    .local v1, height:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 790
    .local v2, imageSize:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v10, v6, p3, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 791
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    aput-char v10, p3, v6

    move v6, v7

    .line 792
    goto :goto_8

    .line 770
    :sswitch_data_6c
    .sparse-switch
        0x5003 -> :sswitch_26
        0xd401 -> :sswitch_9
        0xd402 -> :sswitch_9
    .end sparse-switch
.end method

.method private getNumObjects(III)I
    .registers 8
    .parameter "storageID"
    .parameter "format"
    .parameter "parent"

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 468
    .local v0, c:Landroid/database/Cursor;
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_11

    .line 470
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_26
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_18

    move-result v2

    .line 475
    if-eqz v0, :cond_10

    .line 476
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 479
    :cond_10
    :goto_10
    return v2

    .line 475
    :cond_11
    if-eqz v0, :cond_16

    .line 476
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 479
    :cond_16
    :goto_16
    const/4 v2, -0x1

    goto :goto_10

    .line 472
    :catch_18
    move-exception v1

    .line 473
    .local v1, e:Landroid/os/RemoteException;
    :try_start_19
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in getNumObjects"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_26

    .line 475
    if-eqz v0, :cond_16

    .line 476
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_16

    .line 475
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_26
    move-exception v2

    if-eqz v0, :cond_2c

    .line 476
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2c
    throw v2
.end method

.method private getObjectFilePath(I[C[J)I
    .registers 15
    .parameter "handle"
    .parameter "outFilePath"
    .parameter "outFileLengthFormat"

    .prologue
    const/16 v9, 0x2001

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 850
    if-nez p1, :cond_23

    .line 852
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1, p2, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 853
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aput-char v2, p2, v0

    .line 854
    const-wide/16 v0, 0x0

    aput-wide v0, p3, v2

    .line 855
    const-wide/16 v0, 0x3001

    aput-wide v0, p3, v3

    move v0, v9

    .line 877
    :cond_22
    :goto_22
    return v0

    .line 858
    :cond_23
    const/4 v6, 0x0

    .line 860
    .local v6, c:Landroid/database/Cursor;
    :try_start_24
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 862
    if-eqz v6, :cond_6f

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 863
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 864
    .local v8, path:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v1, p2, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 865
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    aput-char v1, p2, v0

    .line 866
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, p3, v0

    .line 867
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, p3, v0
    :try_end_68
    .catchall {:try_start_24 .. :try_end_68} :catchall_87
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_68} :catch_77

    .line 876
    if-eqz v6, :cond_6d

    .line 877
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6d
    move v0, v9

    goto :goto_22

    .line 870
    .end local v8           #path:Ljava/lang/String;
    :cond_6f
    const/16 v0, 0x2009

    .line 876
    if-eqz v6, :cond_22

    .line 877
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_22

    .line 872
    :catch_77
    move-exception v7

    .line 873
    .local v7, e:Landroid/os/RemoteException;
    :try_start_78
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in getObjectFilePath"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_87

    .line 874
    const/16 v0, 0x2002

    .line 876
    if-eqz v6, :cond_22

    .line 877
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_22

    .line 876
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_87
    move-exception v0

    if-eqz v6, :cond_8d

    .line 877
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8d
    throw v0
.end method

.method private getObjectInfo(I[I[C[J)Z
    .registers 19
    .parameter "handle"
    .parameter "outStorageFormatParent"
    .parameter "outName"
    .parameter "outSizeModified"

    .prologue
    .line 815
    const/4 v7, 0x0

    .line 817
    .local v7, c:Landroid/database/Cursor;
    :try_start_1
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v6

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 819
    if-eqz v7, :cond_77

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 820
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, p2, v1

    .line 821
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, p2, v1

    .line 822
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, p2, v1

    .line 825
    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 826
    .local v11, path:Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v11, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 827
    .local v10, lastSlash:I
    if-ltz v10, :cond_75

    add-int/lit8 v12, v10, 0x1

    .line 828
    .local v12, start:I
    :goto_47
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v9

    .line 829
    .local v9, end:I
    sub-int v1, v9, v12

    const/16 v2, 0xff

    if-le v1, v2, :cond_53

    .line 830
    add-int/lit16 v9, v12, 0xff

    .line 832
    :cond_53
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v9, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 833
    sub-int v1, v9, v12

    const/4 v2, 0x0

    aput-char v2, p3, v1

    .line 835
    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, p4, v1

    .line 836
    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, p4, v1
    :try_end_6e
    .catchall {:try_start_1 .. :try_end_6e} :catchall_8c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6e} :catch_7e

    .line 837
    const/4 v1, 0x1

    .line 842
    if-eqz v7, :cond_74

    .line 843
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 846
    .end local v9           #end:I
    .end local v10           #lastSlash:I
    .end local v11           #path:Ljava/lang/String;
    .end local v12           #start:I
    :cond_74
    :goto_74
    return v1

    .line 827
    .restart local v10       #lastSlash:I
    .restart local v11       #path:Ljava/lang/String;
    :cond_75
    const/4 v12, 0x0

    goto :goto_47

    .line 842
    .end local v10           #lastSlash:I
    .end local v11           #path:Ljava/lang/String;
    :cond_77
    if-eqz v7, :cond_7c

    .line 843
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 846
    :cond_7c
    :goto_7c
    const/4 v1, 0x0

    goto :goto_74

    .line 839
    :catch_7e
    move-exception v8

    .line 840
    .local v8, e:Landroid/os/RemoteException;
    :try_start_7f
    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in getObjectInfo"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_8c

    .line 842
    if-eqz v7, :cond_7c

    .line 843
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_7c

    .line 842
    .end local v8           #e:Landroid/os/RemoteException;
    :catchall_8c
    move-exception v1

    if-eqz v7, :cond_92

    .line 843
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_92
    throw v1
.end method

.method private getObjectList(III)[I
    .registers 12
    .parameter "storageID"
    .parameter "format"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 440
    const/4 v0, 0x0

    .line 442
    .local v0, c:Landroid/database/Cursor;
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_42
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_34

    move-result-object v0

    .line 443
    if-nez v0, :cond_f

    .line 458
    if-eqz v0, :cond_d

    .line 459
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_d
    move-object v4, v5

    .line 462
    :cond_e
    :goto_e
    return-object v4

    .line 446
    :cond_f
    :try_start_f
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 447
    .local v1, count:I
    if-lez v1, :cond_2d

    .line 448
    new-array v4, v1, [I

    .line 449
    .local v4, result:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_18
    if-ge v3, v1, :cond_27

    .line 450
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 451
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    aput v6, v4, v3
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_42
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_24} :catch_34

    .line 449
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 458
    :cond_27
    if-eqz v0, :cond_e

    .line 459
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_e

    .line 458
    .end local v3           #i:I
    .end local v4           #result:[I
    :cond_2d
    if-eqz v0, :cond_32

    .line 459
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local v1           #count:I
    :cond_32
    :goto_32
    move-object v4, v5

    .line 462
    goto :goto_e

    .line 455
    :catch_34
    move-exception v2

    .line 456
    .local v2, e:Landroid/os/RemoteException;
    :try_start_35
    const-string v6, "MtpDatabase"

    const-string v7, "RemoteException in getObjectList"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_42

    .line 458
    if-eqz v0, :cond_32

    .line 459
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_32

    .line 458
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_42
    move-exception v5

    if-eqz v0, :cond_48

    .line 459
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_48
    throw v5
.end method

.method private getObjectPropertyList(JIJII)Landroid/mtp/MtpPropertyList;
    .registers 13
    .parameter "handle"
    .parameter "format"
    .parameter "property"
    .parameter "groupCode"
    .parameter "depth"

    .prologue
    const/4 v4, 0x0

    .line 671
    if-eqz p6, :cond_c

    .line 672
    new-instance v2, Landroid/mtp/MtpPropertyList;

    const v3, 0xa807

    invoke-direct {v2, v4, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 692
    :goto_b
    return-object v2

    .line 676
    :cond_c
    const-wide v2, 0xffffffffL

    cmp-long v2, p4, v2

    if-nez v2, :cond_40

    .line 677
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    .line 678
    .local v0, propertyGroup:Landroid/mtp/MtpPropertyGroup;
    if-nez v0, :cond_3a

    .line 679
    invoke-direct {p0, p3}, Landroid/mtp/MtpDatabase;->getSupportedObjectProperties(I)[I

    move-result-object v1

    .line 680
    .local v1, propertyList:[I
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    .end local v0           #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3, v1}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;[I)V

    .line 681
    .restart local v0       #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    .end local v1           #propertyList:[I
    :cond_3a
    :goto_3a
    long-to-int v2, p1

    invoke-virtual {v0, v2, p3, p7}, Landroid/mtp/MtpPropertyGroup;->getPropertyList(III)Landroid/mtp/MtpPropertyList;

    move-result-object v2

    goto :goto_b

    .line 684
    .end local v0           #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    :cond_40
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    .line 685
    .restart local v0       #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    if-nez v0, :cond_3a

    .line 686
    const/4 v2, 0x1

    new-array v1, v2, [I

    long-to-int v2, p4

    aput v2, v1, v4

    .line 687
    .restart local v1       #propertyList:[I
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    .end local v0           #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3, v1}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;[I)V

    .line 688
    .restart local v0       #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    long-to-int v4, p4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a
.end method

.method private getObjectReferences(I)[I
    .registers 14
    .parameter "handle"

    .prologue
    const/4 v11, 0x0

    .line 933
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 934
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 936
    .local v6, c:Landroid/database/Cursor;
    :try_start_9
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    sget-object v2, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_50
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_42

    move-result-object v6

    .line 937
    if-nez v6, :cond_1d

    .line 952
    if-eqz v6, :cond_1b

    .line 953
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1b
    move-object v10, v11

    .line 956
    :cond_1c
    :goto_1c
    return-object v10

    .line 940
    :cond_1d
    :try_start_1d
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 941
    .local v7, count:I
    if-lez v7, :cond_3b

    .line 942
    new-array v10, v7, [I

    .line 943
    .local v10, result:[I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_26
    if-ge v9, v7, :cond_35

    .line 944
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 945
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v10, v9
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_50
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_32} :catch_42

    .line 943
    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    .line 952
    :cond_35
    if-eqz v6, :cond_1c

    .line 953
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1c

    .line 952
    .end local v9           #i:I
    .end local v10           #result:[I
    :cond_3b
    if-eqz v6, :cond_40

    .line 953
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v7           #count:I
    :cond_40
    :goto_40
    move-object v10, v11

    .line 956
    goto :goto_1c

    .line 949
    :catch_42
    move-exception v8

    .line 950
    .local v8, e:Landroid/os/RemoteException;
    :try_start_43
    const-string v0, "MtpDatabase"

    const-string v2, "RemoteException in getObjectList"

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_50

    .line 952
    if-eqz v6, :cond_40

    .line 953
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_40

    .line 952
    .end local v8           #e:Landroid/os/RemoteException;
    :catchall_50
    move-exception v0

    if-eqz v6, :cond_56

    .line 953
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_56
    throw v0
.end method

.method private getSupportedCaptureFormats()[I
    .registers 2

    .prologue
    .line 516
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSupportedDeviceProperties()[I
    .registers 2

    .prologue
    .line 660
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 0x4
        0x1t 0xd4t 0x0t 0x0t
        0x2t 0xd4t 0x0t 0x0t
        0x3t 0x50t 0x0t 0x0t
    .end array-data
.end method

.method private getSupportedObjectProperties(I)[I
    .registers 3
    .parameter "format"

    .prologue
    .line 636
    sparse-switch p1, :sswitch_data_12

    .line 655
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    :goto_5
    return-object v0

    .line 642
    :sswitch_6
    sget-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    goto :goto_5

    .line 646
    :sswitch_9
    sget-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    goto :goto_5

    .line 651
    :sswitch_c
    sget-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    goto :goto_5

    .line 653
    :sswitch_f
    sget-object v0, Landroid/mtp/MtpDatabase;->ALL_PROPERTIES:[I

    goto :goto_5

    .line 636
    :sswitch_data_12
    .sparse-switch
        0x0 -> :sswitch_f
        0x3008 -> :sswitch_6
        0x3009 -> :sswitch_6
        0x300b -> :sswitch_9
        0x3801 -> :sswitch_c
        0x3804 -> :sswitch_c
        0x3807 -> :sswitch_c
        0x380b -> :sswitch_c
        0xb901 -> :sswitch_6
        0xb902 -> :sswitch_6
        0xb903 -> :sswitch_6
        0xb981 -> :sswitch_9
        0xb984 -> :sswitch_9
    .end sparse-switch
.end method

.method private getSupportedPlaybackFormats()[I
    .registers 2

    .prologue
    .line 483
    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 0x4
        0x0t 0x30t 0x0t 0x0t
        0x1t 0x30t 0x0t 0x0t
        0x4t 0x30t 0x0t 0x0t
        0x5t 0x30t 0x0t 0x0t
        0x8t 0x30t 0x0t 0x0t
        0x9t 0x30t 0x0t 0x0t
        0xbt 0x30t 0x0t 0x0t
        0x1t 0x38t 0x0t 0x0t
        0x2t 0x38t 0x0t 0x0t
        0x7t 0x38t 0x0t 0x0t
        0x8t 0x38t 0x0t 0x0t
        0xbt 0x38t 0x0t 0x0t
        0xdt 0x38t 0x0t 0x0t
        0x1t 0xb9t 0x0t 0x0t
        0x2t 0xb9t 0x0t 0x0t
        0x3t 0xb9t 0x0t 0x0t
        0x82t 0xb9t 0x0t 0x0t
        0x83t 0xb9t 0x0t 0x0t
        0x84t 0xb9t 0x0t 0x0t
        0x5t 0xbat 0x0t 0x0t
        0x10t 0xbat 0x0t 0x0t
        0x11t 0xbat 0x0t 0x0t
        0x14t 0xbat 0x0t 0x0t
        0x82t 0xbat 0x0t 0x0t
        0x6t 0xb9t 0x0t 0x0t
    .end array-data
.end method

.method private inStorageSubDirectory(Ljava/lang/String;)Z
    .registers 9
    .parameter "path"

    .prologue
    .line 230
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v5, :cond_6

    const/4 v0, 0x1

    .line 244
    :cond_5
    :goto_5
    return v0

    .line 231
    :cond_6
    if-nez p1, :cond_a

    const/4 v0, 0x0

    goto :goto_5

    .line 233
    :cond_a
    const/4 v0, 0x0

    .line 234
    .local v0, allowed:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 235
    .local v2, pathLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_5

    if-nez v0, :cond_5

    .line 236
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v3, v5, v1

    .line 237
    .local v3, subdir:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 238
    .local v4, subdirLength:I
    if-ge v4, v2, :cond_30

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_30

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 241
    const/4 v0, 0x1

    .line 235
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method private initDeviceProperties(Landroid/content/Context;)V
    .registers 16
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 193
    const-string v10, "device-properties"

    .line 194
    .local v10, devicePropertiesName:Ljava/lang/String;
    const-string v1, "device-properties"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    .line 195
    const-string v1, "device-properties"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 197
    .local v9, databaseFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 203
    .local v8, c:Landroid/database/Cursor;
    :try_start_19
    const-string v1, "device-properties"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_77

    .line 205
    const-string/jumbo v1, "properties"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "code"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 207
    if-eqz v8, :cond_77

    .line 208
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 209
    .local v11, e:Landroid/content/SharedPreferences$Editor;
    :goto_4a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 210
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 211
    .local v12, name:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 212
    .local v13, value:Ljava/lang/String;
    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_5d
    .catchall {:try_start_19 .. :try_end_5d} :catchall_82
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_5d} :catch_5e

    goto :goto_4a

    .line 217
    .end local v11           #e:Landroid/content/SharedPreferences$Editor;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #value:Ljava/lang/String;
    :catch_5e
    move-exception v11

    .line 218
    .local v11, e:Ljava/lang/Exception;
    :try_start_5f
    const-string v1, "MtpDatabase"

    const-string v2, "failed to migrate device properties"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_82

    .line 220
    if-eqz v8, :cond_6b

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 221
    :cond_6b
    if-eqz v0, :cond_70

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 223
    .end local v11           #e:Ljava/lang/Exception;
    :cond_70
    :goto_70
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 225
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #c:Landroid/database/Cursor;
    :cond_73
    return-void

    .line 214
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #c:Landroid/database/Cursor;
    .local v11, e:Landroid/content/SharedPreferences$Editor;
    :cond_74
    :try_start_74
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_82
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_5e

    .line 220
    .end local v11           #e:Landroid/content/SharedPreferences$Editor;
    :cond_77
    if-eqz v8, :cond_7c

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 221
    :cond_7c
    if-eqz v0, :cond_70

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_70

    .line 220
    :catchall_82
    move-exception v1

    if-eqz v8, :cond_88

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 221
    :cond_88
    if-eqz v0, :cond_8d

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8d
    throw v1
.end method

.method private isStorageSubDirectory(Ljava/lang/String;)Z
    .registers 5
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 250
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v2, :cond_6

    .line 256
    :cond_5
    :goto_5
    return v1

    .line 251
    :cond_6
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 252
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 253
    const/4 v1, 0x1

    goto :goto_5

    .line 251
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup()V
.end method

.method private renameFile(ILjava/lang/String;)I
    .registers 20
    .parameter "handle"
    .parameter "newName"

    .prologue
    .line 696
    const/4 v7, 0x0

    .line 699
    .local v7, c:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 700
    .local v13, path:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 702
    .local v5, whereArgs:[Ljava/lang/String;
    :try_start_c
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    const-string v4, "_id=?"

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 703
    if-eqz v7, :cond_2a

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 704
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_44
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_29} :catch_34

    move-result-object v13

    .line 710
    :cond_2a
    if-eqz v7, :cond_2f

    .line 711
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 714
    :cond_2f
    if-nez v13, :cond_4b

    .line 715
    const/16 v1, 0x2009

    .line 755
    :cond_33
    :goto_33
    return v1

    .line 706
    :catch_34
    move-exception v8

    .line 707
    .local v8, e:Landroid/os/RemoteException;
    :try_start_35
    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in getObjectFilePath"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_44

    .line 708
    const/16 v1, 0x2002

    .line 710
    if-eqz v7, :cond_33

    .line 711
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_33

    .line 710
    .end local v8           #e:Landroid/os/RemoteException;
    :catchall_44
    move-exception v1

    if-eqz v7, :cond_4a

    .line 711
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4a
    throw v1

    .line 719
    :cond_4b
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 720
    const/16 v1, 0x200d

    goto :goto_33

    .line 724
    :cond_56
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 725
    .local v12, oldFile:Ljava/io/File;
    const/16 v1, 0x2f

    invoke-virtual {v13, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 726
    .local v9, lastSlash:I
    const/4 v1, 0x1

    if-gt v9, v1, :cond_67

    .line 727
    const/16 v1, 0x2002

    goto :goto_33

    .line 729
    :cond_67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v13, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 730
    .local v11, newPath:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 731
    .local v10, newFile:Ljava/io/File;
    invoke-virtual {v12, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v14

    .line 732
    .local v14, success:Z
    if-nez v14, :cond_b9

    .line 733
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "renaming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/16 v1, 0x2002

    goto/16 :goto_33

    .line 738
    :cond_b9
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 739
    .local v16, values:Landroid/content/ContentValues;
    const-string v1, "_data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const/4 v15, 0x0

    .line 744
    .local v15, updated:I
    :try_start_c6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v3, "_id=?"

    move-object/from16 v0, v16

    invoke-interface {v1, v2, v0, v3, v5}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_d5
    .catch Landroid/os/RemoteException; {:try_start_c6 .. :try_end_d5} :catch_101

    move-result v15

    .line 748
    :goto_d6
    if-nez v15, :cond_10a

    .line 749
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to update path for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-virtual {v10, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 752
    const/16 v1, 0x2002

    goto/16 :goto_33

    .line 745
    :catch_101
    move-exception v8

    .line 746
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in mMediaProvider.update"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d6

    .line 755
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_10a
    const/16 v1, 0x2001

    goto/16 :goto_33
.end method

.method private sessionEnded()V
    .registers 4

    .prologue
    .line 984
    iget-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    if-eqz v0, :cond_13

    .line 985
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.action.MTP_SESSION_END"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 986
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 988
    :cond_13
    return-void
.end method

.method private sessionStarted()V
    .registers 2

    .prologue
    .line 980
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 981
    return-void
.end method

.method private setDeviceProperty(IJLjava/lang/String;)I
    .registers 7
    .parameter "property"
    .parameter "intValue"
    .parameter "stringValue"

    .prologue
    .line 800
    packed-switch p1, :pswitch_data_20

    .line 810
    const/16 v1, 0x200a

    :goto_5
    return v1

    .line 804
    :pswitch_6
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 805
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 806
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/16 v1, 0x2001

    goto :goto_5

    :cond_1c
    const/16 v1, 0x2002

    goto :goto_5

    .line 800
    nop

    :pswitch_data_20
    .packed-switch 0xd401
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private setObjectProperty(IIJLjava/lang/String;)I
    .registers 7
    .parameter "handle"
    .parameter "property"
    .parameter "intValue"
    .parameter "stringValue"

    .prologue
    .line 760
    packed-switch p2, :pswitch_data_c

    .line 765
    const v0, 0xa80a

    :goto_6
    return v0

    .line 762
    :pswitch_7
    invoke-direct {p0, p1, p5}, Landroid/mtp/MtpDatabase;->renameFile(ILjava/lang/String;)I

    move-result v0

    goto :goto_6

    .line 760
    :pswitch_data_c
    .packed-switch 0xdc07
        :pswitch_7
    .end packed-switch
.end method

.method private setObjectReferences(I[I)I
    .registers 12
    .parameter "handle"
    .parameter "references"

    .prologue
    .line 960
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 961
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v7, p1

    invoke-static {v6, v7, v8}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 962
    .local v3, uri:Landroid/net/Uri;
    array-length v0, p2

    .line 963
    .local v0, count:I
    new-array v5, v0, [Landroid/content/ContentValues;

    .line 964
    .local v5, valuesList:[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    if-ge v2, v0, :cond_25

    .line 965
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 966
    .local v4, values:Landroid/content/ContentValues;
    const-string v6, "_id"

    aget v7, p2, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 967
    aput-object v4, v5, v2

    .line 964
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 970
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_25
    :try_start_25
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-interface {v6, v3, v5}, Landroid/content/IContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_30

    move-result v6

    if-lez v6, :cond_38

    .line 971
    const/16 v6, 0x2001

    .line 976
    :goto_2f
    return v6

    .line 973
    :catch_30
    move-exception v1

    .line 974
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "MtpDatabase"

    const-string v7, "RemoteException in setObjectReferences"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 976
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_38
    const/16 v6, 0x2002

    goto :goto_2f
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .registers 4
    .parameter "storage"

    .prologue
    .line 185
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 178
    :try_start_0
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_finalize()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 180
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 182
    return-void

    .line 180
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .registers 4
    .parameter "storage"

    .prologue
    .line 189
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    return-void
.end method
