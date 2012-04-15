.class Lcom/android/server/pm/PackageManagerService$2;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->freeStorage(JLandroid/content/IntentSender;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$freeStorageSize:J

.field final synthetic val$pi:Landroid/content/IntentSender;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;JLandroid/content/IntentSender;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1729
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-wide p2, p0, Lcom/android/server/pm/PackageManagerService$2;->val$freeStorageSize:J

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$2;->val$pi:Landroid/content/IntentSender;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1732
    const/4 v7, -0x1

    .line 1733
    .local v7, retCode:I
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-wide v3, p0, Lcom/android/server/pm/PackageManagerService$2;->val$freeStorageSize:J

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/Installer;->freeCache(J)I

    move-result v7

    .line 1734
    if-gez v7, :cond_1b

    .line 1735
    const-string v0, "PackageManager"

    const-string v1, "Couldn\'t clear application caches"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    :cond_1b
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$2;->val$pi:Landroid/content/IntentSender;

    if-eqz v0, :cond_2b

    .line 1740
    if-ltz v7, :cond_2c

    const/4 v2, 0x1

    .line 1741
    .local v2, code:I
    :goto_22
    :try_start_22
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$2;->val$pi:Landroid/content/IntentSender;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_2b
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_22 .. :try_end_2b} :catch_2e

    .line 1747
    .end local v2           #code:I
    :cond_2b
    :goto_2b
    return-void

    .line 1740
    :cond_2c
    const/4 v2, 0x0

    goto :goto_22

    .line 1743
    .restart local v2       #code:I
    :catch_2e
    move-exception v6

    .line 1744
    .local v6, e1:Landroid/content/IntentSender$SendIntentException;
    const-string v0, "PackageManager"

    const-string v1, "Failed to send pending intent"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method
