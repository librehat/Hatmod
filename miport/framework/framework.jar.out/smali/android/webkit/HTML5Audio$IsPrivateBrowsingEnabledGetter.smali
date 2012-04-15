.class Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;
.super Ljava/lang/Object;
.source "HTML5Audio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IsPrivateBrowsingEnabledGetter"
.end annotation


# instance fields
.field private mIsPrivateBrowsingEnabled:Z

.field private mIsReady:Z

.field final synthetic this$0:Landroid/webkit/HTML5Audio;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5Audio;Landroid/os/Looper;Landroid/webkit/WebView;)V
    .registers 6
    .parameter
    .parameter "uiThreadLooper"
    .parameter "webView"

    .prologue
    .line 95
    iput-object p1, p0, Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;->this$0:Landroid/webkit/HTML5Audio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter$1;

    invoke-direct {v1, p0, p1, p3}, Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter$1;-><init>(Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;Landroid/webkit/HTML5Audio;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method

.method static synthetic access$002(Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;->mIsPrivateBrowsingEnabled:Z

    return p1
.end method

.method static synthetic access$102(Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;->mIsReady:Z

    return p1
.end method


# virtual methods
.method declared-synchronized get()Z
    .registers 2

    .prologue
    .line 108
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;->mIsReady:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_b

    .line 110
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_f
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_1

    .line 111
    :catch_9
    move-exception v0

    goto :goto_1

    .line 114
    :cond_b
    :try_start_b
    iget-boolean v0, p0, Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;->mIsPrivateBrowsingEnabled:Z
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_f

    monitor-exit p0

    return v0

    .line 108
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
