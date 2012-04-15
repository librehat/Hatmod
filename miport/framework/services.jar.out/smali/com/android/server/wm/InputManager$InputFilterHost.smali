.class final Lcom/android/server/wm/InputManager$InputFilterHost;
.super Ljava/lang/Object;
.source "InputManager.java"

# interfaces
.implements Lcom/android/server/wm/InputFilter$Host;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputFilterHost"
.end annotation


# instance fields
.field private mDisconnected:Z

.field final synthetic this$0:Lcom/android/server/wm/InputManager;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/InputManager;)V
    .registers 2
    .parameter

    .prologue
    .line 516
    iput-object p1, p0, Lcom/android/server/wm/InputManager$InputFilterHost;->this$0:Lcom/android/server/wm/InputManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/InputManager;Lcom/android/server/wm/InputManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 516
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputManager$InputFilterHost;-><init>(Lcom/android/server/wm/InputManager;)V

    return-void
.end method


# virtual methods
.method public disconnectLocked()V
    .registers 2

    .prologue
    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputManager$InputFilterHost;->mDisconnected:Z

    .line 521
    return-void
.end method

.method public sendInputEvent(Landroid/view/InputEvent;I)V
    .registers 10
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 524
    if-nez p1, :cond_a

    .line 525
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/InputManager$InputFilterHost;->this$0:Lcom/android/server/wm/InputManager;

    iget-object v6, v0, Lcom/android/server/wm/InputManager;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v6

    .line 529
    :try_start_f
    iget-boolean v0, p0, Lcom/android/server/wm/InputManager$InputFilterHost;->mDisconnected:Z

    if-nez v0, :cond_1f

    .line 530
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v0, 0x400

    or-int v5, p2, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/InputManager;->access$200(Landroid/view/InputEvent;IIIII)I

    .line 533
    :cond_1f
    monitor-exit v6

    .line 534
    return-void

    .line 533
    :catchall_21
    move-exception v0

    monitor-exit v6
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_21

    throw v0
.end method
