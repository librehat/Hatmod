.class public final Lcom/android/server/wm/InputApplicationHandle;
.super Ljava/lang/Object;
.source "InputApplicationHandle.java"


# instance fields
.field public final appWindowToken:Lcom/android/server/wm/AppWindowToken;

.field public dispatchingTimeoutNanos:J

.field public name:Ljava/lang/String;

.field private ptr:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWindowToken;)V
    .registers 2
    .parameter "appWindowToken"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/wm/InputApplicationHandle;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 45
    return-void
.end method

.method private native nativeDispose()V
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 50
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/InputApplicationHandle;->nativeDispose()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 52
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 54
    return-void

    .line 52
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
