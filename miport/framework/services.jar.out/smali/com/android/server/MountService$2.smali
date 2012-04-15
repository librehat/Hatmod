.class Lcom/android/server/MountService$2;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onDaemonConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .registers 2
    .parameter

    .prologue
    .line 728
    iput-object p1, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 734
    const/4 v6, 0x0

    .line 737
    .local v6, path:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-static {v12}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v12

    const-string v13, "volume list"

    const/16 v14, 0x6e

    invoke-virtual {v12, v13, v14}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 739
    .local v10, vols:[Ljava/lang/String;
    move-object v1, v10

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_14
    if-ge v3, v5, :cond_6e

    aget-object v11, v1, v3

    .line 740
    .local v11, volstr:Ljava/lang/String;
    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 742
    .local v9, tok:[Ljava/lang/String;
    const-string v8, "removed"

    .line 743
    .local v8, state:Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v4, v9, v12

    .line 744
    .local v4, label:Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v6, v9, v12

    .line 745
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-static {v12}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    const/4 v12, 0x2

    aget-object v12, v9, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 747
    .local v7, st:I
    if-nez v7, :cond_48

    .line 748
    const-string v8, "removed"

    .line 761
    :goto_3c
    if-eqz v8, :cond_45

    .line 763
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-static {v12, v6, v8}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 749
    :cond_48
    const/4 v12, 0x1

    if-ne v7, v12, :cond_4e

    .line 750
    const-string v8, "unmounted"

    goto :goto_3c

    .line 751
    :cond_4e
    const/4 v12, 0x4

    if-ne v7, v12, :cond_77

    .line 752
    const-string v8, "mounted"

    .line 753
    const-string v12, "MountService"

    const-string v13, "Media already mounted on daemon connection"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5a} :catch_5b

    goto :goto_3c

    .line 766
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #label:Ljava/lang/String;
    .end local v5           #len$:I
    .end local v7           #st:I
    .end local v8           #state:Ljava/lang/String;
    .end local v9           #tok:[Ljava/lang/String;
    .end local v10           #vols:[Ljava/lang/String;
    .end local v11           #volstr:Ljava/lang/String;
    :catch_5b
    move-exception v2

    .line 767
    .local v2, e:Ljava/lang/Exception;
    const-string v12, "MountService"

    const-string v13, "Error processing initial volume state"

    invoke-static {v12, v13, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 768
    if-eqz v6, :cond_6e

    .line 769
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const-string v13, "removed"

    invoke-static {v12, v6, v13}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    .end local v2           #e:Ljava/lang/Exception;
    :cond_6e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/server/MountService;->access$2002(Lcom/android/server/MountService;Z)Z

    .line 777
    return-void

    .line 754
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #label:Ljava/lang/String;
    .restart local v5       #len$:I
    .restart local v7       #st:I
    .restart local v8       #state:Ljava/lang/String;
    .restart local v9       #tok:[Ljava/lang/String;
    .restart local v10       #vols:[Ljava/lang/String;
    .restart local v11       #volstr:Ljava/lang/String;
    :cond_77
    const/4 v12, 0x7

    if-ne v7, v12, :cond_84

    .line 755
    :try_start_7a
    const-string v8, "shared"

    .line 756
    const-string v12, "MountService"

    const-string v13, "Media shared on daemon connection"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 758
    :cond_84
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "Unexpected state %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_9a} :catch_5b
.end method
