.class Lcom/android/server/EthernetService$2;
.super Landroid/content/BroadcastReceiver;
.source "EthernetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EthernetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EthernetService;


# direct methods
.method constructor <init>(Lcom/android/server/EthernetService;)V
    .registers 2
    .parameter

    .prologue
    .line 182
    .local p0, this:Lcom/android/server/EthernetService$2;,"Lcom/android/server/EthernetService.2;"
    iput-object p1, p0, Lcom/android/server/EthernetService$2;->this$0:Lcom/android/server/EthernetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 185
    .local p0, this:Lcom/android/server/EthernetService$2;,"Lcom/android/server/EthernetService.2;"
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 188
    const-string v1, "EthernetService"

    const-string v2, "ACTION_SCREEN_ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p0, Lcom/android/server/EthernetService$2;->this$0:Lcom/android/server/EthernetService;

    invoke-static {v1}, Lcom/android/server/EthernetService;->access$200(Lcom/android/server/EthernetService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EthernetService$2;->this$0:Lcom/android/server/EthernetService;

    invoke-static {v2}, Lcom/android/server/EthernetService;->access$100(Lcom/android/server/EthernetService;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 196
    :cond_24
    :goto_24
    return-void

    .line 191
    :cond_25
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 192
    const-string v1, "EthernetService"

    const-string v2, "ACTION_SCREEN_OFF"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Lcom/android/server/EthernetService$2;->this$0:Lcom/android/server/EthernetService;

    invoke-static {v1}, Lcom/android/server/EthernetService;->access$200(Lcom/android/server/EthernetService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EthernetService$2;->this$0:Lcom/android/server/EthernetService;

    invoke-static {v2}, Lcom/android/server/EthernetService;->access$100(Lcom/android/server/EthernetService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 194
    iget-object v1, p0, Lcom/android/server/EthernetService$2;->this$0:Lcom/android/server/EthernetService;

    invoke-static {v1}, Lcom/android/server/EthernetService;->access$000(Lcom/android/server/EthernetService;)Landroid/net/ethernet/EthernetStateTracker;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetStateTracker;->stopInterface(Z)Z

    goto :goto_24
.end method
