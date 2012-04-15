.class public Landroid/webkit/WebHistoryItem;
.super Ljava/lang/Object;
.source "WebHistoryItem.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static sNextId:I


# instance fields
.field private mCustomData:Ljava/lang/Object;

.field private mFavicon:Landroid/graphics/Bitmap;

.field private mFlattenedData:[B

.field private final mId:I

.field private mOriginalUrl:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTouchIconUrlFromLink:Ljava/lang/String;

.field private mTouchIconUrlServerDefault:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput v0, Landroid/webkit/WebHistoryItem;->sNextId:I

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-class v1, Landroid/webkit/WebHistoryItem;

    monitor-enter v1

    .line 60
    :try_start_6
    sget v0, Landroid/webkit/WebHistoryItem;->sNextId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Landroid/webkit/WebHistoryItem;->sNextId:I

    iput v0, p0, Landroid/webkit/WebHistoryItem;->mId:I

    .line 61
    monitor-exit v1

    .line 62
    return-void

    .line 61
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private constructor <init>(Landroid/webkit/WebHistoryItem;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iget-object v0, p1, Landroid/webkit/WebHistoryItem;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Landroid/webkit/WebHistoryItem;->mUrl:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Landroid/webkit/WebHistoryItem;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Landroid/webkit/WebHistoryItem;->mTitle:Ljava/lang/String;

    .line 83
    iget-object v0, p1, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    iput-object v0, p0, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    .line 84
    iget-object v0, p1, Landroid/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    .line 85
    iget v0, p1, Landroid/webkit/WebHistoryItem;->mId:I

    iput v0, p0, Landroid/webkit/WebHistoryItem;->mId:I

    .line 86
    return-void
.end method

.method constructor <init>([B)V
    .registers 5
    .parameter "data"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebHistoryItem;->mUrl:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    .line 71
    const-class v1, Landroid/webkit/WebHistoryItem;

    monitor-enter v1

    .line 72
    :try_start_b
    sget v0, Landroid/webkit/WebHistoryItem;->sNextId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Landroid/webkit/WebHistoryItem;->sNextId:I

    iput v0, p0, Landroid/webkit/WebHistoryItem;->mId:I

    .line 73
    monitor-exit v1

    .line 74
    return-void

    .line 73
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw v0
.end method

.method private native inflate(I[B)V
.end method

.method private update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B)V
    .registers 6
    .parameter "url"
    .parameter "originalUrl"
    .parameter "title"
    .parameter "favicon"
    .parameter "data"

    .prologue
    .line 243
    iput-object p1, p0, Landroid/webkit/WebHistoryItem;->mUrl:Ljava/lang/String;

    .line 244
    iput-object p2, p0, Landroid/webkit/WebHistoryItem;->mOriginalUrl:Ljava/lang/String;

    .line 245
    iput-object p3, p0, Landroid/webkit/WebHistoryItem;->mTitle:Ljava/lang/String;

    .line 246
    iput-object p4, p0, Landroid/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    .line 247
    iput-object p5, p0, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    .line 248
    return-void
.end method


# virtual methods
.method protected declared-synchronized clone()Landroid/webkit/WebHistoryItem;
    .registers 2

    .prologue
    .line 233
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkit/WebHistoryItem;

    invoke-direct {v0, p0}, Landroid/webkit/WebHistoryItem;-><init>(Landroid/webkit/WebHistoryItem;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/webkit/WebHistoryItem;->clone()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getCustomData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mCustomData:Ljava/lang/Object;

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getFlattenedData()[B
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    return-object v0
.end method

.method public getId()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 97
    iget v0, p0, Landroid/webkit/WebHistoryItem;->mId:I

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mOriginalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .registers 8

    .prologue
    .line 152
    iget-object v2, p0, Landroid/webkit/WebHistoryItem;->mTouchIconUrlFromLink:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 153
    iget-object v2, p0, Landroid/webkit/WebHistoryItem;->mTouchIconUrlFromLink:Ljava/lang/String;

    .line 165
    :goto_6
    return-object v2

    .line 154
    :cond_7
    iget-object v2, p0, Landroid/webkit/WebHistoryItem;->mTouchIconUrlServerDefault:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 155
    iget-object v2, p0, Landroid/webkit/WebHistoryItem;->mTouchIconUrlServerDefault:Ljava/lang/String;

    goto :goto_6

    .line 159
    :cond_e
    :try_start_e
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Landroid/webkit/WebHistoryItem;->mOriginalUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 160
    .local v1, url:Ljava/net/URL;
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v5

    const-string v6, "/apple-touch-icon.png"

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebHistoryItem;->mTouchIconUrlServerDefault:Ljava/lang/String;
    :try_end_2e
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_2e} :catch_31

    .line 165
    iget-object v2, p0, Landroid/webkit/WebHistoryItem;->mTouchIconUrlServerDefault:Ljava/lang/String;

    goto :goto_6

    .line 162
    .end local v1           #url:Ljava/net/URL;
    :catch_31
    move-exception v0

    .line 163
    .local v0, e:Ljava/net/MalformedURLException;
    const/4 v2, 0x0

    goto :goto_6
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method inflate(I)V
    .registers 3
    .parameter "nativeFrame"

    .prologue
    .line 226
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebHistoryItem;->inflate(I[B)V

    .line 227
    return-void
.end method

.method public setCustomData(Ljava/lang/Object;)V
    .registers 2
    .parameter "data"

    .prologue
    .line 187
    iput-object p1, p0, Landroid/webkit/WebHistoryItem;->mCustomData:Ljava/lang/Object;

    .line 188
    return-void
.end method

.method setFavicon(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "icon"

    .prologue
    .line 197
    iput-object p1, p0, Landroid/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    .line 198
    return-void
.end method

.method setTouchIconUrl(Ljava/lang/String;Z)V
    .registers 4
    .parameter "url"
    .parameter "precomposed"

    .prologue
    .line 206
    if-nez p2, :cond_6

    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mTouchIconUrlFromLink:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 207
    :cond_6
    iput-object p1, p0, Landroid/webkit/WebHistoryItem;->mTouchIconUrlFromLink:Ljava/lang/String;

    .line 209
    :cond_8
    return-void
.end method
