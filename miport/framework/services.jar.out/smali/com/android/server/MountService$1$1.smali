.class Lcom/android/server/MountService$1$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$1;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$1;)V
    .registers 2
    .parameter

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 545
    :try_start_0
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-static {v9}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v10

    monitor-enter v10
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_53

    .line 546
    :try_start_9
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-static {v9}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 547
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    .line 548
    .local v0, count:I
    new-array v9, v0, [Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 549
    .local v5, paths:[Ljava/lang/String;
    new-array v8, v0, [Ljava/lang/String;

    .line 550
    .local v8, states:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_24
    if-ge v2, v0, :cond_3b

    .line 551
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-static {v9}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v9

    aget-object v11, v5, v2

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v8, v2

    .line 550
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 553
    :cond_3b
    monitor-exit v10
    :try_end_3c
    .catchall {:try_start_9 .. :try_end_3c} :catchall_50

    .line 555
    const/4 v2, 0x0

    :goto_3d
    if-ge v2, v0, :cond_97

    .line 556
    :try_start_3f
    aget-object v4, v5, v2

    .line 557
    .local v4, path:Ljava/lang/String;
    aget-object v7, v8, v2

    .line 558
    .local v7, state:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountService;->access$300()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_4a} :catch_53

    move-result v9

    if-nez v9, :cond_5c

    .line 555
    :cond_4d
    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 553
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #paths:[Ljava/lang/String;
    .end local v7           #state:Ljava/lang/String;
    .end local v8           #states:[Ljava/lang/String;
    :catchall_50
    move-exception v9

    :try_start_51
    monitor-exit v10
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    :try_start_52
    throw v9
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_53} :catch_53

    .line 613
    :catch_53
    move-exception v1

    .line 614
    .local v1, ex:Ljava/lang/Exception;
    const-string v9, "MountService"

    const-string v10, "Boot-time mount exception"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 616
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_5b
    :goto_5b
    return-void

    .line 560
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v3       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4       #path:Ljava/lang/String;
    .restart local v5       #paths:[Ljava/lang/String;
    .restart local v7       #state:Ljava/lang/String;
    .restart local v8       #states:[Ljava/lang/String;
    :cond_5c
    :try_start_5c
    const-string v9, "unmounted"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_84

    .line 561
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-static {v9, v4}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v6

    .line 562
    .local v6, rc:I
    if-eqz v6, :cond_4d

    .line 563
    const-string v9, "MountService"

    const-string v10, "Boot-time mount failed (%d)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 566
    .end local v6           #rc:I
    :cond_84
    const-string v9, "shared"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 571
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x7

    invoke-static {v9, v10, v4, v11, v12}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_4d

    .line 576
    .end local v4           #path:Ljava/lang/String;
    .end local v7           #state:Ljava/lang/String;
    :cond_97
    const/4 v2, 0x0

    :goto_98
    if-ge v2, v0, :cond_e6

    .line 577
    aget-object v4, v5, v2

    .line 578
    .restart local v4       #path:Ljava/lang/String;
    aget-object v7, v8, v2

    .line 579
    .restart local v7       #state:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountService;->access$300()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ab

    .line 576
    :cond_a8
    :goto_a8
    add-int/lit8 v2, v2, 0x1

    goto :goto_98

    .line 582
    :cond_ab
    const-string v9, "unmounted"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d3

    .line 583
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-static {v9, v4}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v6

    .line 584
    .restart local v6       #rc:I
    if-eqz v6, :cond_a8

    .line 585
    const-string v9, "MountService"

    const-string v10, "Boot-time mount failed (%d)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 588
    .end local v6           #rc:I
    :cond_d3
    const-string v9, "shared"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a8

    .line 593
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x7

    invoke-static {v9, v10, v4, v11, v12}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_a8

    .line 599
    .end local v4           #path:Ljava/lang/String;
    .end local v7           #state:Ljava/lang/String;
    :cond_e6
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-static {v9}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;)Z

    move-result v9

    if-eqz v9, :cond_102

    .line 600
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-static {v9, v10, v11, v12, v13}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 609
    :cond_102
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-static {v9}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Z

    move-result v9

    if-eqz v9, :cond_5b

    .line 610
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;Z)V

    .line 611
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/server/MountService;->access$1302(Lcom/android/server/MountService;Z)Z
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_11c} :catch_53

    goto/16 :goto_5b
.end method
