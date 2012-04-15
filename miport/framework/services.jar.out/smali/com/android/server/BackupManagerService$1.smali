.class Lcom/android/server/BackupManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1274
    const-string v10, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received broadcast "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1277
    .local v0, action:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1278
    .local v8, replacing:Z
    const/4 v1, 0x0

    .line 1279
    .local v1, added:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1280
    .local v3, extras:Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 1281
    .local v6, pkgList:[Ljava/lang/String;
    const-string v10, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3b

    const-string v10, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3b

    const-string v10, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_83

    .line 1284
    :cond_3b
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 1285
    .local v9, uri:Landroid/net/Uri;
    if-nez v9, :cond_42

    .line 1334
    .end local v1           #added:Z
    .end local v9           #uri:Landroid/net/Uri;
    :cond_41
    :goto_41
    return-void

    .line 1288
    .restart local v1       #added:Z
    .restart local v9       #uri:Landroid/net/Uri;
    :cond_42
    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    .line 1289
    .local v7, pkgName:Ljava/lang/String;
    if-eqz v7, :cond_4e

    .line 1290
    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/String;

    .end local v6           #pkgList:[Ljava/lang/String;
    const/4 v10, 0x0

    aput-object v7, v6, v10

    .line 1292
    .restart local v6       #pkgList:[Ljava/lang/String;
    :cond_4e
    const-string v10, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_75

    .line 1295
    const/4 v8, 0x1

    move v1, v8

    .line 1308
    .end local v1           #added:Z
    .end local v7           #pkgName:Ljava/lang/String;
    .end local v9           #uri:Landroid/net/Uri;
    :cond_58
    :goto_58
    if-eqz v6, :cond_41

    array-length v10, v6

    if-eqz v10, :cond_41

    .line 1311
    if-eqz v1, :cond_ae

    .line 1312
    iget-object v10, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v11, v10, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v11

    .line 1313
    move-object v2, v6

    .local v2, arr$:[Ljava/lang/String;
    :try_start_65
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_67
    if-ge v4, v5, :cond_ac

    aget-object v7, v2, v4

    .line 1314
    .restart local v7       #pkgName:Ljava/lang/String;
    if-eqz v8, :cond_a3

    .line 1316
    iget-object v10, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v10, v7}, Lcom/android/server/BackupManagerService;->updatePackageParticipantsLocked(Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_65 .. :try_end_72} :catchall_a9

    .line 1313
    :goto_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    .line 1297
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .restart local v1       #added:Z
    .restart local v9       #uri:Landroid/net/Uri;
    :cond_75
    const-string v10, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1298
    const-string v10, "android.intent.extra.REPLACING"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    goto :goto_58

    .line 1300
    .end local v7           #pkgName:Ljava/lang/String;
    .end local v9           #uri:Landroid/net/Uri;
    :cond_83
    const-string v10, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_93

    .line 1301
    const/4 v1, 0x1

    .line 1302
    const-string v10, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_58

    .line 1303
    :cond_93
    const-string v10, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_58

    .line 1304
    const/4 v1, 0x0

    .line 1305
    const-string v10, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_58

    .line 1319
    .end local v1           #added:Z
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v7       #pkgName:Ljava/lang/String;
    :cond_a3
    :try_start_a3
    iget-object v10, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v10, v7}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLocked(Ljava/lang/String;)V

    goto :goto_72

    .line 1322
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #pkgName:Ljava/lang/String;
    :catchall_a9
    move-exception v10

    monitor-exit v11
    :try_end_ab
    .catchall {:try_start_a3 .. :try_end_ab} :catchall_a9

    throw v10

    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_ac
    :try_start_ac
    monitor-exit v11
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_a9

    goto :goto_41

    .line 1324
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_ae
    if-nez v8, :cond_41

    .line 1327
    iget-object v10, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v11, v10, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v11

    .line 1328
    move-object v2, v6

    .restart local v2       #arr$:[Ljava/lang/String;
    :try_start_b6
    array-length v5, v2

    .restart local v5       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_b8
    if-ge v4, v5, :cond_c4

    aget-object v7, v2, v4

    .line 1329
    .restart local v7       #pkgName:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v10, v7}, Lcom/android/server/BackupManagerService;->removePackageParticipantsLocked(Ljava/lang/String;)V

    .line 1328
    add-int/lit8 v4, v4, 0x1

    goto :goto_b8

    .line 1331
    .end local v7           #pkgName:Ljava/lang/String;
    :cond_c4
    monitor-exit v11

    goto/16 :goto_41

    .end local v4           #i$:I
    .end local v5           #len$:I
    :catchall_c7
    move-exception v10

    monitor-exit v11
    :try_end_c9
    .catchall {:try_start_b6 .. :try_end_c9} :catchall_c7

    throw v10
.end method
