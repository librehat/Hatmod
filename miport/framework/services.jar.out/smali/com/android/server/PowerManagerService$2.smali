.class Lcom/android/server/PowerManagerService$2;
.super Landroid/os/HandlerThread;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/server/PowerManagerService$2;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .registers 4

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/server/PowerManagerService$2;->this$0:Lcom/android/server/PowerManagerService;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$1902(Lcom/android/server/PowerManagerService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 539
    iget-object v0, p0, Lcom/android/server/PowerManagerService$2;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)Landroid/os/HandlerThread;

    move-result-object v1

    monitor-enter v1

    .line 540
    :try_start_11
    iget-object v0, p0, Lcom/android/server/PowerManagerService$2;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/PowerManagerService;->access$2102(Lcom/android/server/PowerManagerService;Z)Z

    .line 541
    iget-object v0, p0, Lcom/android/server/PowerManagerService$2;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 542
    monitor-exit v1

    .line 543
    return-void

    .line 542
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_22

    throw v0
.end method
