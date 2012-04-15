.class Lcom/android/server/UiModeManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService$1;->getResultCode()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    .line 204
    :goto_7
    return-void

    .line 137
    :cond_8
    const-string v1, "enableFlags"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 138
    .local v16, enableFlags:I
    const-string v1, "disableFlags"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 140
    .local v14, disableFlags:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v1, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 142
    const/4 v13, 0x0

    .line 143
    .local v13, category:Ljava/lang/String;
    :try_start_24
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 146
    and-int/lit8 v1, v16, 0x1

    if-eqz v1, :cond_36

    .line 148
    const-string v13, "android.intent.category.CAR_DOCK"

    .line 171
    :cond_36
    :goto_36
    if-eqz v13, :cond_77

    .line 174
    invoke-static {v13}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 183
    .local v3, homeIntent:Landroid/content/Intent;
    const/4 v12, 0x0

    .line 184
    .local v12, newConfig:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$000(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 185
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/UiModeManagerService;->access$002(Lcom/android/server/UiModeManagerService;Z)Z

    .line 186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked(Z)V

    .line 187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$100(Lcom/android/server/UiModeManagerService;)Landroid/content/res/Configuration;
    :try_end_5e
    .catchall {:try_start_24 .. :try_end_5e} :catchall_94

    move-result-object v12

    .line 190
    :cond_5f
    :try_start_5f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startActivityWithConfig(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZLandroid/content/res/Configuration;)I

    .line 193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/UiModeManagerService;->access$002(Lcom/android/server/UiModeManagerService;Z)Z
    :try_end_77
    .catchall {:try_start_5f .. :try_end_77} :catchall_94
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_77} :catch_b1

    .line 199
    .end local v3           #homeIntent:Landroid/content/Intent;
    .end local v12           #newConfig:Landroid/content/res/Configuration;
    :cond_77
    :goto_77
    :try_start_77
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$000(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/UiModeManagerService;->access$002(Lcom/android/server/UiModeManagerService;Z)Z

    .line 201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked(Z)V

    .line 203
    :cond_91
    monitor-exit v17

    goto/16 :goto_7

    :catchall_94
    move-exception v1

    monitor-exit v17
    :try_end_96
    .catchall {:try_start_77 .. :try_end_96} :catchall_94

    throw v1

    .line 150
    :cond_97
    :try_start_97
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 154
    and-int/lit8 v1, v16, 0x1

    if-eqz v1, :cond_36

    .line 156
    const-string v13, "android.intent.category.DESK_DOCK"

    goto :goto_36

    .line 160
    :cond_aa
    and-int/lit8 v1, v14, 0x1

    if-eqz v1, :cond_36

    .line 161
    const-string v13, "android.intent.category.HOME"

    goto :goto_36

    .line 194
    .restart local v3       #homeIntent:Landroid/content/Intent;
    .restart local v12       #newConfig:Landroid/content/res/Configuration;
    :catch_b1
    move-exception v15

    .line 195
    .local v15, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bd
    .catchall {:try_start_97 .. :try_end_bd} :catchall_94

    goto :goto_77
.end method
