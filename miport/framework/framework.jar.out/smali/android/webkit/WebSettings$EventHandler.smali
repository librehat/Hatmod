.class Landroid/webkit/WebSettings$EventHandler;
.super Ljava/lang/Object;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field static final PRIORITY:I = 0x1

.field static final SET_DOUBLE_TAP_TOAST_COUNT:I = 0x2

.field static final SYNC:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/webkit/WebSettings;


# direct methods
.method private constructor <init>(Landroid/webkit/WebSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebSettings;Landroid/webkit/WebSettings$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 291
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings$EventHandler;-><init>(Landroid/webkit/WebSettings;)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/WebSettings$EventHandler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 291
    invoke-direct {p0}, Landroid/webkit/WebSettings$EventHandler;->setRenderPriority()V

    return-void
.end method

.method static synthetic access$800(Landroid/webkit/WebSettings$EventHandler;Landroid/os/Message;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 291
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings$EventHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/webkit/WebSettings$EventHandler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 291
    invoke-direct {p0}, Landroid/webkit/WebSettings$EventHandler;->createHandler()V

    return-void
.end method

.method private declared-synchronized createHandler()V
    .registers 2

    .prologue
    .line 303
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/webkit/WebSettings$EventHandler;->setRenderPriority()V

    .line 306
    new-instance v0, Landroid/webkit/WebSettings$EventHandler$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebSettings$EventHandler$1;-><init>(Landroid/webkit/WebSettings$EventHandler;)V

    iput-object v0, p0, Landroid/webkit/WebSettings$EventHandler;->mHandler:Landroid/os/Handler;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 336
    monitor-exit p0

    return-void

    .line 303
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized sendMessage(Landroid/os/Message;)Z
    .registers 3
    .parameter "msg"

    .prologue
    .line 358
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettings$EventHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 359
    iget-object v0, p0, Landroid/webkit/WebSettings$EventHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    .line 360
    const/4 v0, 0x1

    .line 362
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    .line 358
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setRenderPriority()V
    .registers 4

    .prologue
    .line 339
    iget-object v1, p0, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    monitor-enter v1

    .line 340
    :try_start_3
    iget-object v0, p0, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    invoke-static {v0}, Landroid/webkit/WebSettings;->access$600(Landroid/webkit/WebSettings;)Landroid/webkit/WebSettings$RenderPriority;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    if-ne v0, v2, :cond_13

    .line 341
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 351
    :cond_11
    :goto_11
    monitor-exit v1

    .line 352
    return-void

    .line 343
    :cond_13
    iget-object v0, p0, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    invoke-static {v0}, Landroid/webkit/WebSettings;->access$600(Landroid/webkit/WebSettings;)Landroid/webkit/WebSettings$RenderPriority;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    if-ne v0, v2, :cond_25

    .line 344
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_11

    .line 351
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v0

    .line 347
    :cond_25
    :try_start_25
    iget-object v0, p0, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    invoke-static {v0}, Landroid/webkit/WebSettings;->access$600(Landroid/webkit/WebSettings;)Landroid/webkit/WebSettings$RenderPriority;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->LOW:Landroid/webkit/WebSettings$RenderPriority;

    if-ne v0, v2, :cond_11

    .line 348
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_22

    goto :goto_11
.end method
