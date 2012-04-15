.class Lcom/android/server/InputMethodManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 16
    .parameter "intent"
    .parameter "packages"
    .parameter "uid"
    .parameter "doit"

    .prologue
    .line 412
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v8, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 413
    :try_start_5
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v8, v8, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "default_input_method"

    invoke-static {v8, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, curInputMethodId:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v8, v8, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 416
    .local v0, N:I
    if-eqz v2, :cond_62

    .line 417
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1e
    if-ge v3, v0, :cond_62

    .line 418
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v8, v8, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 419
    .local v5, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    .line 420
    move-object v1, p2

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_37
    if-ge v4, v6, :cond_5f

    aget-object v7, v1, v4

    .line 421
    .local v7, pkg:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 422
    if-nez p4, :cond_4a

    .line 423
    const/4 v8, 0x1

    monitor-exit v9

    .line 434
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #i$:I
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #len$:I
    .end local v7           #pkg:Ljava/lang/String;
    :goto_49
    return v8

    .line 425
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v4       #i$:I
    .restart local v5       #imi:Landroid/view/inputmethod/InputMethodInfo;
    .restart local v6       #len$:I
    .restart local v7       #pkg:Ljava/lang/String;
    :cond_4a
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    const-string v10, ""

    invoke-static {v8, v10}, Lcom/android/server/InputMethodManagerService;->access$200(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V

    .line 426
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v8}, Lcom/android/server/InputMethodManagerService;->access$300(Lcom/android/server/InputMethodManagerService;)Z

    .line 427
    const/4 v8, 0x1

    monitor-exit v9

    goto :goto_49

    .line 433
    .end local v0           #N:I
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #curInputMethodId:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #i$:I
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #len$:I
    .end local v7           #pkg:Ljava/lang/String;
    :catchall_59
    move-exception v8

    monitor-exit v9
    :try_end_5b
    .catchall {:try_start_5 .. :try_end_5b} :catchall_59

    throw v8

    .line 420
    .restart local v0       #N:I
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #curInputMethodId:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v4       #i$:I
    .restart local v5       #imi:Landroid/view/inputmethod/InputMethodInfo;
    .restart local v6       #len$:I
    .restart local v7       #pkg:Ljava/lang/String;
    :cond_5c
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 417
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v7           #pkg:Ljava/lang/String;
    :cond_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 433
    .end local v3           #i:I
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_62
    :try_start_62
    monitor-exit v9
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_59

    .line 434
    const/4 v8, 0x0

    goto :goto_49
.end method

.method public onSomePackagesChanged()V
    .registers 16

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    .line 439
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v10, v9, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 440
    const/4 v3, 0x0

    .line 441
    .local v3, curIm:Landroid/view/inputmethod/InputMethodInfo;
    :try_start_8
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "default_input_method"

    invoke-static {v9, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 443
    .local v4, curInputMethodId:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 444
    .local v0, N:I
    if-eqz v4, :cond_80

    .line 445
    const/4 v5, 0x0

    .local v5, i:I
    :goto_21
    if-ge v5, v0, :cond_80

    .line 446
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 447
    .local v6, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    .line 448
    .local v7, imiId:Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_38

    .line 449
    move-object v3, v6

    .line 452
    :cond_38
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v1

    .line 453
    .local v1, change:I
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_53

    .line 454
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v9}, Lcom/android/server/InputMethodManagerService;->access$400(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    move-result-object v9

    invoke-static {v9, v7}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->access$500(Lcom/android/server/InputMethodManagerService$InputMethodFileManager;Ljava/lang/String;)V

    .line 456
    :cond_53
    if-eq v1, v13, :cond_57

    if-ne v1, v14, :cond_7d

    .line 458
    :cond_57
    const-string v9, "InputManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Input method uninstalled, disabling: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 445
    :cond_7d
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 465
    .end local v1           #change:I
    .end local v5           #i:I
    .end local v6           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v7           #imiId:Ljava/lang/String;
    :cond_80
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v11, v11, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v12, v12, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v9, v11, v12}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 467
    const/4 v2, 0x0

    .line 469
    .local v2, changed:Z
    if-eqz v3, :cond_e5

    .line 470
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_8 .. :try_end_97} :catchall_f6

    move-result v1

    .line 471
    .restart local v1       #change:I
    if-eq v1, v13, :cond_9c

    if-ne v1, v14, :cond_e5

    .line 473
    :cond_9c
    const/4 v8, 0x0

    .line 475
    .local v8, si:Landroid/content/pm/ServiceInfo;
    :try_start_9d
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_ad
    .catchall {:try_start_9d .. :try_end_ad} :catchall_f6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9d .. :try_end_ad} :catch_f9

    move-result-object v8

    .line 479
    :goto_ae
    if-nez v8, :cond_e5

    .line 482
    :try_start_b0
    const-string v9, "InputManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Current input method removed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v9}, Lcom/android/server/InputMethodManagerService;->access$100(Lcom/android/server/InputMethodManagerService;)V

    .line 484
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v9}, Lcom/android/server/InputMethodManagerService;->access$300(Lcom/android/server/InputMethodManagerService;)Z

    move-result v9

    if-nez v9, :cond_e5

    .line 485
    const/4 v2, 0x1

    .line 486
    const/4 v3, 0x0

    .line 487
    const-string v9, "InputManagerService"

    const-string v11, "Unsetting current input method"

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    const-string v11, ""

    invoke-static {v9, v11}, Lcom/android/server/InputMethodManagerService;->access$200(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V

    .line 494
    .end local v1           #change:I
    .end local v8           #si:Landroid/content/pm/ServiceInfo;
    :cond_e5
    if-nez v3, :cond_ed

    .line 497
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v9}, Lcom/android/server/InputMethodManagerService;->access$300(Lcom/android/server/InputMethodManagerService;)Z

    move-result v2

    .line 500
    :cond_ed
    if-eqz v2, :cond_f4

    .line 501
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v9}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked()V

    .line 503
    :cond_f4
    monitor-exit v10

    .line 504
    return-void

    .line 503
    .end local v0           #N:I
    .end local v2           #changed:Z
    .end local v4           #curInputMethodId:Ljava/lang/String;
    :catchall_f6
    move-exception v9

    monitor-exit v10
    :try_end_f8
    .catchall {:try_start_b0 .. :try_end_f8} :catchall_f6

    throw v9

    .line 477
    .restart local v0       #N:I
    .restart local v1       #change:I
    .restart local v2       #changed:Z
    .restart local v4       #curInputMethodId:Ljava/lang/String;
    .restart local v8       #si:Landroid/content/pm/ServiceInfo;
    :catch_f9
    move-exception v9

    goto :goto_ae
.end method
