.class Lcom/android/server/MountService$4;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V
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
    .line 1148
    iput-object p1, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 1151
    const/4 v9, 0x0

    .line 1152
    .local v9, timeouts:I
    :goto_1
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-static {v10}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;)Z

    move-result v10

    if-eqz v10, :cond_32

    .line 1153
    const-string v10, "MountService"

    const-string v11, "UMS disconnected. Waiting until done sharing before unsharing..."

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-static {v10}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v11

    monitor-enter v11

    .line 1156
    :try_start_17
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-static {v10}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v10

    const-wide/16 v12, 0x2710

    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V

    .line 1157
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-static {v10}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;)Z

    move-result v10

    if-nez v10, :cond_78

    .line 1158
    const-string v10, "MountService"

    const-string v12, "done waiting for all volumes to become shared"

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_87
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_31} :catch_8a

    .line 1159
    :try_start_31
    monitor-exit v11
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_87

    .line 1168
    :cond_32
    :goto_32
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-static {v10}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v11

    monitor-enter v11

    .line 1170
    :try_start_39
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-static {v10}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1171
    monitor-exit v11
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_8e

    .line 1175
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-static {v10}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v11

    monitor-enter v11

    .line 1176
    :try_start_4a
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-static {v10}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1177
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    .line 1178
    .local v0, count:I
    new-array v10, v0, [Ljava/lang/String;

    invoke-interface {v3, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 1179
    .local v5, paths:[Ljava/lang/String;
    new-array v8, v0, [Ljava/lang/String;

    .line 1180
    .local v8, states:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_63
    if-ge v2, v0, :cond_91

    .line 1181
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-static {v10}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v10

    aget-object v12, v5, v2

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v8, v2
    :try_end_75
    .catchall {:try_start_4a .. :try_end_75} :catchall_a6

    .line 1180
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 1160
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #paths:[Ljava/lang/String;
    .end local v8           #states:[Ljava/lang/String;
    :cond_78
    add-int/lit8 v9, v9, 0x1

    const/16 v10, 0x8

    if-le v9, v10, :cond_8b

    .line 1161
    :try_start_7e
    const-string v10, "MountService"

    const-string v12, "timed out waiting for all volumes to become shared. continuing"

    invoke-static {v10, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_7e .. :try_end_85} :catchall_87
    .catch Ljava/lang/InterruptedException; {:try_start_7e .. :try_end_85} :catch_8a

    .line 1162
    :try_start_85
    monitor-exit v11

    goto :goto_32

    .line 1166
    :catchall_87
    move-exception v10

    monitor-exit v11
    :try_end_89
    .catchall {:try_start_85 .. :try_end_89} :catchall_87

    throw v10

    .line 1164
    :catch_8a
    move-exception v10

    .line 1166
    :cond_8b
    :try_start_8b
    monitor-exit v11
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_87

    goto/16 :goto_1

    .line 1171
    :catchall_8e
    move-exception v10

    :try_start_8f
    monitor-exit v11
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw v10

    .line 1183
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v3       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5       #paths:[Ljava/lang/String;
    .restart local v8       #states:[Ljava/lang/String;
    :cond_91
    :try_start_91
    monitor-exit v11
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_a6

    .line 1184
    const/4 v2, 0x0

    :goto_93
    if-ge v2, v0, :cond_ea

    .line 1185
    aget-object v4, v5, v2

    .line 1186
    .local v4, path:Ljava/lang/String;
    aget-object v7, v8, v2

    .line 1187
    .local v7, state:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountService;->access$300()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a9

    .line 1184
    :cond_a3
    :goto_a3
    add-int/lit8 v2, v2, 0x1

    goto :goto_93

    .line 1183
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #paths:[Ljava/lang/String;
    .end local v7           #state:Ljava/lang/String;
    .end local v8           #states:[Ljava/lang/String;
    :catchall_a6
    move-exception v10

    :try_start_a7
    monitor-exit v11
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    throw v10

    .line 1190
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v3       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4       #path:Ljava/lang/String;
    .restart local v5       #paths:[Ljava/lang/String;
    .restart local v7       #state:Ljava/lang/String;
    .restart local v8       #states:[Ljava/lang/String;
    :cond_a9
    const-string v10, "shared"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a3

    .line 1193
    :try_start_b1
    const-string v10, "MountService"

    const-string v11, "Disabling UMS after cable disconnect"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    const-string v11, "ums"

    const/4 v12, 0x0

    invoke-static {v10, v4, v11, v12}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1195
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-static {v10, v4}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v6

    .local v6, rc:I
    if-eqz v6, :cond_a3

    .line 1196
    const-string v10, "MountService"

    const-string v11, "Failed to remount {%s} on UMS enabled-disconnect (%d)"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const/4 v13, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_e0} :catch_e1

    goto :goto_a3

    .line 1200
    .end local v6           #rc:I
    :catch_e1
    move-exception v1

    .line 1201
    .local v1, ex:Ljava/lang/Exception;
    const-string v10, "MountService"

    const-string v11, "Failed to mount media on UMS enabled-disconnect"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a3

    .line 1205
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v4           #path:Ljava/lang/String;
    .end local v7           #state:Ljava/lang/String;
    :cond_ea
    const/4 v2, 0x0

    :goto_eb
    if-ge v2, v0, :cond_13f

    .line 1206
    aget-object v4, v5, v2

    .line 1207
    .restart local v4       #path:Ljava/lang/String;
    aget-object v7, v8, v2

    .line 1208
    .restart local v7       #state:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountService;->access$300()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_fe

    .line 1205
    :cond_fb
    :goto_fb
    add-int/lit8 v2, v2, 0x1

    goto :goto_eb

    .line 1210
    :cond_fe
    const-string v10, "shared"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_fb

    .line 1213
    :try_start_106
    const-string v10, "MountService"

    const-string v11, "Disabling UMS after cable disconnect"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    const-string v11, "ums"

    const/4 v12, 0x0

    invoke-static {v10, v4, v11, v12}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1215
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-static {v10, v4}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v6

    .restart local v6       #rc:I
    if-eqz v6, :cond_fb

    .line 1216
    const-string v10, "MountService"

    const-string v11, "Failed to remount {%s} on UMS enabled-disconnect (%d)"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const/4 v13, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_135} :catch_136

    goto :goto_fb

    .line 1220
    .end local v6           #rc:I
    :catch_136
    move-exception v1

    .line 1221
    .restart local v1       #ex:Ljava/lang/Exception;
    const-string v10, "MountService"

    const-string v11, "Failed to mount media on UMS enabled-disconnect"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_fb

    .line 1225
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v4           #path:Ljava/lang/String;
    .end local v7           #state:Ljava/lang/String;
    :cond_13f
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-static {v10}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v10

    if-eqz v10, :cond_154

    .line 1226
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-static {v10}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1228
    :cond_154
    return-void
.end method
