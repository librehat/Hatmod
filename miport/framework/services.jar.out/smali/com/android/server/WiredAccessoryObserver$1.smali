.class Lcom/android/server/WiredAccessoryObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "WiredAccessoryObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WiredAccessoryObserver;


# direct methods
.method constructor <init>(Lcom/android/server/WiredAccessoryObserver;)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/server/WiredAccessoryObserver$1;->this$0:Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 113
    iget-object v1, p0, Lcom/android/server/WiredAccessoryObserver$1;->this$0:Lcom/android/server/WiredAccessoryObserver;

    const-string v2, "state"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/WiredAccessoryObserver;->access$302(Lcom/android/server/WiredAccessoryObserver;Z)Z

    .line 117
    iget-object v1, p0, Lcom/android/server/WiredAccessoryObserver$1;->this$0:Lcom/android/server/WiredAccessoryObserver;

    iget-object v2, p0, Lcom/android/server/WiredAccessoryObserver$1;->this$0:Lcom/android/server/WiredAccessoryObserver;

    invoke-static {v2}, Lcom/android/server/WiredAccessoryObserver;->access$300(Lcom/android/server/WiredAccessoryObserver;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v0, 0x1

    :cond_17
    invoke-static {v1, v0}, Lcom/android/server/WiredAccessoryObserver;->access$400(Lcom/android/server/WiredAccessoryObserver;I)V

    .line 118
    return-void
.end method
