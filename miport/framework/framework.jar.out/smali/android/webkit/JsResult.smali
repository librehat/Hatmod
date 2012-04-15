.class public Landroid/webkit/JsResult;
.super Ljava/lang/Object;
.source "JsResult.java"


# instance fields
.field private final mDefaultValue:Z

.field protected final mProxy:Landroid/webkit/CallbackProxy;

.field private mReady:Z

.field protected mResult:Z

.field private mTriedToNotifyBeforeReady:Z


# direct methods
.method constructor <init>(Landroid/webkit/CallbackProxy;Z)V
    .registers 3
    .parameter "proxy"
    .parameter "defaultVal"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/webkit/JsResult;->mProxy:Landroid/webkit/CallbackProxy;

    .line 55
    iput-boolean p2, p0, Landroid/webkit/JsResult;->mDefaultValue:Z

    .line 56
    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/JsResult;->mResult:Z

    .line 42
    invoke-virtual {p0}, Landroid/webkit/JsResult;->wakeUp()V

    .line 43
    return-void
.end method

.method public final confirm()V
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/JsResult;->mResult:Z

    .line 50
    invoke-virtual {p0}, Landroid/webkit/JsResult;->wakeUp()V

    .line 51
    return-void
.end method

.method final getResult()Z
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, Landroid/webkit/JsResult;->mResult:Z

    return v0
.end method

.method handleDefault()V
    .registers 2

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/webkit/JsResult;->setReady()V

    .line 71
    iget-boolean v0, p0, Landroid/webkit/JsResult;->mDefaultValue:Z

    iput-boolean v0, p0, Landroid/webkit/JsResult;->mResult:Z

    .line 72
    invoke-virtual {p0}, Landroid/webkit/JsResult;->wakeUp()V

    .line 73
    return-void
.end method

.method final setReady()V
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/JsResult;->mReady:Z

    .line 64
    iget-boolean v0, p0, Landroid/webkit/JsResult;->mTriedToNotifyBeforeReady:Z

    if-eqz v0, :cond_a

    .line 65
    invoke-virtual {p0}, Landroid/webkit/JsResult;->wakeUp()V

    .line 67
    :cond_a
    return-void
.end method

.method protected final wakeUp()V
    .registers 3

    .prologue
    .line 77
    iget-boolean v0, p0, Landroid/webkit/JsResult;->mReady:Z

    if-eqz v0, :cond_11

    .line 78
    iget-object v1, p0, Landroid/webkit/JsResult;->mProxy:Landroid/webkit/CallbackProxy;

    monitor-enter v1

    .line 79
    :try_start_7
    iget-object v0, p0, Landroid/webkit/JsResult;->mProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 80
    monitor-exit v1

    .line 84
    :goto_d
    return-void

    .line 80
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v0

    .line 82
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/JsResult;->mTriedToNotifyBeforeReady:Z

    goto :goto_d
.end method
