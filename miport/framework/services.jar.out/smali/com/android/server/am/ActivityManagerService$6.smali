.class Lcom/android/server/am/ActivityManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->finishBooting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 4009
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4012
    const-string v0, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 4013
    .local v10, pkgs:[Ljava/lang/String;
    if-eqz v10, :cond_24

    .line 4014
    move-object v7, v10

    .local v7, arr$:[Ljava/lang/String;
    array-length v9, v7

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_b
    if-ge v8, v9, :cond_24

    aget-object v1, v7, v8

    .line 4015
    .local v1, pkg:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 4016
    :try_start_12
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZ)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 4017
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService$6;->setResultCode(I)V

    .line 4018
    monitor-exit v11

    .line 4023
    .end local v1           #pkg:Ljava/lang/String;
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    :cond_24
    return-void

    .line 4020
    .restart local v1       #pkg:Ljava/lang/String;
    .restart local v7       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v9       #len$:I
    :cond_25
    monitor-exit v11

    .line 4014
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 4020
    :catchall_29
    move-exception v0

    monitor-exit v11
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_29

    throw v0
.end method
