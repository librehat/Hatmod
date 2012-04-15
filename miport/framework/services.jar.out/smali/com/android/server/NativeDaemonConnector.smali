.class final Lcom/android/server/NativeDaemonConnector;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NativeDaemonConnector$ResponseCode;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGD:Z


# instance fields
.field private final BUFFER_SIZE:I

.field private TAG:Ljava/lang/String;

.field private mCallbackHandler:Landroid/os/Handler;

.field private mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

.field private mDaemonLock:Ljava/lang/Object;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mResponseQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSocket:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .parameter "callbacks"
    .parameter "socket"
    .parameter "responseQueueSize"
    .parameter "logTag"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "NativeDaemonConnector"

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    .line 52
    const/16 v0, 0x1000

    iput v0, p0, Lcom/android/server/NativeDaemonConnector;->BUFFER_SIZE:I

    .line 73
    iput-object p1, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    .line 74
    if-eqz p4, :cond_18

    .line 75
    iput-object p4, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    .line 76
    :cond_18
    iput-object p2, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    .line 78
    return-void
.end method

.method private doCommandLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 13
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 246
    iget-object v7, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 247
    invoke-direct {p0, p1}, Lcom/android/server/NativeDaemonConnector;->sendCommandLocked(Ljava/lang/String;)V

    .line 249
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v5, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 251
    .local v1, complete:Z
    const/4 v0, -0x1

    .line 253
    .local v0, code:I
    :goto_f
    if-nez v1, :cond_4f

    .line 256
    :try_start_11
    iget-object v7, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 258
    .local v3, line:Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_1e} :catch_33

    move-result-object v6

    .line 260
    .local v6, tokens:[Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_20
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_25} :catch_3c
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_25} :catch_33

    move-result v0

    .line 266
    const/16 v7, 0xc8

    if-lt v0, v7, :cond_2f

    const/16 v7, 0x258

    if-ge v0, v7, :cond_2f

    .line 267
    const/4 v1, 0x1

    .line 269
    :cond_2f
    :try_start_2f
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_f

    .line 270
    .end local v3           #line:Ljava/lang/String;
    .end local v6           #tokens:[Ljava/lang/String;
    :catch_33
    move-exception v2

    .line 271
    .local v2, ex:Ljava/lang/InterruptedException;
    iget-object v7, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v8, "Failed to process response"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 261
    .end local v2           #ex:Ljava/lang/InterruptedException;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v6       #tokens:[Ljava/lang/String;
    :catch_3c
    move-exception v4

    .line 262
    .local v4, nfe:Ljava/lang/NumberFormatException;
    :try_start_3d
    new-instance v7, Lcom/android/server/NativeDaemonConnectorException;

    const-string v8, "Invalid response from daemon (%s)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_4f} :catch_33

    .line 275
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #nfe:Ljava/lang/NumberFormatException;
    .end local v6           #tokens:[Ljava/lang/String;
    :cond_4f
    const/16 v7, 0x190

    if-lt v0, v7, :cond_6e

    const/16 v7, 0x257

    if-gt v0, v7, :cond_6e

    .line 281
    new-instance v8, Lcom/android/server/NativeDaemonConnectorException;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v0, p1, v7}, Lcom/android/server/NativeDaemonConnectorException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v8

    .line 284
    :cond_6e
    return-object v5
.end method

.method private listenToSocket()V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v13, 0x0

    .line 115
    .local v13, socket:Landroid/net/LocalSocket;
    :try_start_1
    new-instance v14, Landroid/net/LocalSocket;

    invoke-direct {v14}, Landroid/net/LocalSocket;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_fd
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_186

    .line 116
    .end local v13           #socket:Landroid/net/LocalSocket;
    .local v14, socket:Landroid/net/LocalSocket;
    :try_start_6
    new-instance v2, Landroid/net/LocalSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    move-object/from16 v17, v0

    sget-object v18, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 119
    .local v2, address:Landroid/net/LocalSocketAddress;
    invoke-virtual {v14, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 121
    invoke-virtual {v14}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 122
    .local v10, inputStream:Ljava/io/InputStream;
    invoke-virtual {v14}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onDaemonConnected()V

    .line 126
    const/16 v17, 0x1000

    move/from16 v0, v17

    new-array v3, v0, [B

    .line 127
    .local v3, buffer:[B
    const/4 v15, 0x0

    .line 130
    .local v15, start:I
    :goto_38
    rsub-int v0, v15, 0x1000

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v10, v3, v15, v0}, Ljava/io/InputStream;->read([BII)I
    :try_end_41
    .catchall {:try_start_6 .. :try_end_41} :catchall_182
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_41} :catch_eb

    move-result v5

    .line 131
    .local v5, count:I
    if-gez v5, :cond_6b

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 178
    :try_start_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v17, v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_15b

    if-eqz v17, :cond_64

    .line 180
    :try_start_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_15b
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_5c} :catch_170

    .line 184
    :goto_5c
    const/16 v17, 0x0

    :try_start_5e
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 186
    :cond_64
    monitor-exit v18
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_15b

    .line 189
    if-eqz v14, :cond_6a

    .line 190
    :try_start_67
    invoke-virtual {v14}, Landroid/net/LocalSocket;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_15e

    .line 196
    :cond_6a
    :goto_6a
    return-void

    .line 134
    :cond_6b
    add-int/2addr v5, v15

    .line 135
    const/4 v15, 0x0

    .line 137
    const/4 v9, 0x0

    .local v9, i:I
    :goto_6e
    if-ge v9, v5, :cond_125

    .line 138
    :try_start_70
    aget-byte v17, v3, v9

    if-nez v17, :cond_ae

    .line 139
    new-instance v7, Ljava/lang/String;

    sub-int v17, v9, v15

    move/from16 v0, v17

    invoke-direct {v7, v3, v15, v0}, Ljava/lang/String;-><init>([BII)V

    .line 142
    .local v7, event:Ljava/lang/String;
    const-string v17, " "

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_88
    .catchall {:try_start_70 .. :try_end_88} :catchall_182
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_88} :catch_eb

    move-result-object v16

    .line 144
    .local v16, tokens:[Ljava/lang/String;
    const/16 v17, 0x0

    :try_start_8b
    aget-object v17, v16, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 146
    .local v4, code:I
    const/16 v17, 0x258

    move/from16 v0, v17

    if-lt v4, v0, :cond_b1

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_ac
    .catchall {:try_start_8b .. :try_end_ac} :catchall_182
    .catch Ljava/lang/NumberFormatException; {:try_start_8b .. :try_end_ac} :catch_ce
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_ac} :catch_eb

    .line 159
    .end local v4           #code:I
    :goto_ac
    add-int/lit8 v15, v9, 0x1

    .line 137
    .end local v7           #event:Ljava/lang/String;
    .end local v16           #tokens:[Ljava/lang/String;
    :cond_ae
    add-int/lit8 v9, v9, 0x1

    goto :goto_6e

    .line 151
    .restart local v4       #code:I
    .restart local v7       #event:Ljava/lang/String;
    .restart local v16       #tokens:[Ljava/lang/String;
    :cond_b1
    :try_start_b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_bc
    .catchall {:try_start_b1 .. :try_end_bc} :catchall_182
    .catch Ljava/lang/InterruptedException; {:try_start_b1 .. :try_end_bc} :catch_bd
    .catch Ljava/lang/NumberFormatException; {:try_start_b1 .. :try_end_bc} :catch_ce
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_bc} :catch_eb

    goto :goto_ac

    .line 152
    :catch_bd
    move-exception v8

    .line 153
    .local v8, ex:Ljava/lang/InterruptedException;
    :try_start_be
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "Failed to put response onto queue"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cd
    .catchall {:try_start_be .. :try_end_cd} :catchall_182
    .catch Ljava/lang/NumberFormatException; {:try_start_be .. :try_end_cd} :catch_ce
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_cd} :catch_eb

    goto :goto_ac

    .line 156
    .end local v4           #code:I
    .end local v8           #ex:Ljava/lang/InterruptedException;
    :catch_ce
    move-exception v11

    .line 157
    .local v11, nfe:Ljava/lang/NumberFormatException;
    :try_start_cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "Bad msg (%s)"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v7, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ea
    .catchall {:try_start_cf .. :try_end_ea} :catchall_182
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_ea} :catch_eb

    goto :goto_ac

    .line 173
    .end local v2           #address:Landroid/net/LocalSocketAddress;
    .end local v3           #buffer:[B
    .end local v5           #count:I
    .end local v7           #event:Ljava/lang/String;
    .end local v9           #i:I
    .end local v10           #inputStream:Ljava/io/InputStream;
    .end local v11           #nfe:Ljava/lang/NumberFormatException;
    .end local v15           #start:I
    .end local v16           #tokens:[Ljava/lang/String;
    :catch_eb
    move-exception v8

    move-object v13, v14

    .line 174
    .end local v14           #socket:Landroid/net/LocalSocket;
    .local v8, ex:Ljava/io/IOException;
    .restart local v13       #socket:Landroid/net/LocalSocket;
    :goto_ed
    :try_start_ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "Communications error"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    throw v8
    :try_end_fd
    .catchall {:try_start_ed .. :try_end_fd} :catchall_fd

    .line 177
    .end local v8           #ex:Ljava/io/IOException;
    :catchall_fd
    move-exception v17

    :goto_fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 178
    :try_start_105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v19, v0
    :try_end_10b
    .catchall {:try_start_105 .. :try_end_10b} :catchall_136

    if-eqz v19, :cond_11e

    .line 180
    :try_start_10d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_116
    .catchall {:try_start_10d .. :try_end_116} :catchall_136
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_116} :catch_14a

    .line 184
    :goto_116
    const/16 v19, 0x0

    :try_start_118
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 186
    :cond_11e
    monitor-exit v18
    :try_end_11f
    .catchall {:try_start_118 .. :try_end_11f} :catchall_136

    .line 189
    if-eqz v13, :cond_124

    .line 190
    :try_start_121
    invoke-virtual {v13}, Landroid/net/LocalSocket;->close()V
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_124} :catch_139

    .line 177
    :cond_124
    :goto_124
    throw v17

    .line 165
    .end local v13           #socket:Landroid/net/LocalSocket;
    .restart local v2       #address:Landroid/net/LocalSocketAddress;
    .restart local v3       #buffer:[B
    .restart local v5       #count:I
    .restart local v9       #i:I
    .restart local v10       #inputStream:Ljava/io/InputStream;
    .restart local v14       #socket:Landroid/net/LocalSocket;
    .restart local v15       #start:I
    :cond_125
    if-eq v15, v5, :cond_133

    .line 166
    rsub-int v12, v15, 0x1000

    .line 167
    .local v12, remaining:I
    const/16 v17, 0x0

    :try_start_12b
    move/from16 v0, v17

    invoke-static {v3, v15, v3, v0, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_130
    .catchall {:try_start_12b .. :try_end_130} :catchall_182
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_130} :catch_eb

    .line 168
    move v15, v12

    .line 169
    goto/16 :goto_38

    .line 170
    .end local v12           #remaining:I
    :cond_133
    const/4 v15, 0x0

    goto/16 :goto_38

    .line 186
    .end local v2           #address:Landroid/net/LocalSocketAddress;
    .end local v3           #buffer:[B
    .end local v5           #count:I
    .end local v9           #i:I
    .end local v10           #inputStream:Ljava/io/InputStream;
    .end local v14           #socket:Landroid/net/LocalSocket;
    .end local v15           #start:I
    .restart local v13       #socket:Landroid/net/LocalSocket;
    :catchall_136
    move-exception v17

    :try_start_137
    monitor-exit v18
    :try_end_138
    .catchall {:try_start_137 .. :try_end_138} :catchall_136

    throw v17

    .line 192
    :catch_139
    move-exception v8

    .line 193
    .restart local v8       #ex:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Failed closing socket"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_124

    .line 181
    .end local v8           #ex:Ljava/io/IOException;
    :catch_14a
    move-exception v6

    .line 182
    .local v6, e:Ljava/io/IOException;
    :try_start_14b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "Failed closing output stream"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15a
    .catchall {:try_start_14b .. :try_end_15a} :catchall_136

    goto :goto_116

    .line 186
    .end local v6           #e:Ljava/io/IOException;
    .end local v13           #socket:Landroid/net/LocalSocket;
    .restart local v2       #address:Landroid/net/LocalSocketAddress;
    .restart local v3       #buffer:[B
    .restart local v5       #count:I
    .restart local v10       #inputStream:Ljava/io/InputStream;
    .restart local v14       #socket:Landroid/net/LocalSocket;
    .restart local v15       #start:I
    :catchall_15b
    move-exception v17

    :try_start_15c
    monitor-exit v18
    :try_end_15d
    .catchall {:try_start_15c .. :try_end_15d} :catchall_15b

    throw v17

    .line 192
    :catch_15e
    move-exception v8

    .line 193
    .restart local v8       #ex:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "Failed closing socket"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6a

    .line 181
    .end local v8           #ex:Ljava/io/IOException;
    :catch_170
    move-exception v6

    .line 182
    .restart local v6       #e:Ljava/io/IOException;
    :try_start_171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v19, "Failed closing output stream"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_180
    .catchall {:try_start_171 .. :try_end_180} :catchall_15b

    goto/16 :goto_5c

    .line 177
    .end local v2           #address:Landroid/net/LocalSocketAddress;
    .end local v3           #buffer:[B
    .end local v5           #count:I
    .end local v6           #e:Ljava/io/IOException;
    .end local v10           #inputStream:Ljava/io/InputStream;
    .end local v15           #start:I
    :catchall_182
    move-exception v17

    move-object v13, v14

    .end local v14           #socket:Landroid/net/LocalSocket;
    .restart local v13       #socket:Landroid/net/LocalSocket;
    goto/16 :goto_fe

    .line 173
    :catch_186
    move-exception v8

    goto/16 :goto_ed
.end method

.method private sendCommandLocked(Ljava/lang/String;)V
    .registers 3
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/NativeDaemonConnector;->sendCommandLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method private sendCommandLocked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "command"
    .parameter "argument"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 210
    if-eqz p1, :cond_22

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_22

    .line 211
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 213
    :cond_22
    if-eqz p2, :cond_43

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_43

    .line 214
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 218
    :cond_43
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    if-nez v2, :cond_5b

    .line 219
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v3, "No connection to daemon"

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    new-instance v2, Lcom/android/server/NativeDaemonConnectorException;

    const-string v3, "No output stream!"

    invoke-direct {v2, v3}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    :cond_5b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, builder:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_65

    .line 224
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    :try_start_68
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_75} :catch_76

    .line 234
    :goto_75
    return-void

    .line 230
    :catch_76
    move-exception v1

    .line 231
    .local v1, ex:Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v3, "IOException in sendCommand"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_75
.end method


# virtual methods
.method public doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/NativeDaemonConnector;->doCommandLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 242
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public doListCommand(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 20
    .parameter "cmd"
    .parameter "expectedResponseCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 294
    .local v10, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    new-array v9, v12, [Ljava/lang/String;

    .line 295
    .local v9, rdata:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 297
    .local v3, idx:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_b5

    .line 298
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 300
    .local v7, line:Ljava/lang/String;
    :try_start_1a
    const-string v12, " "

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 301
    .local v11, tok:[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_26} :catch_a2

    move-result v1

    .line 302
    .local v1, code:I
    move/from16 v0, p2

    if-ne v1, v0, :cond_40

    .line 303
    add-int/lit8 v4, v3, 0x1

    .end local v3           #idx:I
    .local v4, idx:I
    const/4 v12, 0x0

    :try_start_2e
    aget-object v12, v11, v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v3
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_3c} :catch_be

    .line 297
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    .end local v4           #idx:I
    .restart local v3       #idx:I
    goto :goto_e

    .line 304
    :cond_40
    const/16 v12, 0xc8

    if-ne v1, v12, :cond_85

    .line 306
    :try_start_44
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .line 307
    .local v6, last:I
    if-eq v2, v6, :cond_bd

    .line 308
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v13, "Recv\'d %d lines after end of list {%s}"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    sub-int v16, v6, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object p1, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    move v5, v2

    .local v5, j:I
    :goto_69
    if-gt v5, v6, :cond_bd

    .line 310
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v13, "ExtraData <%s>"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    add-int/lit8 v5, v5, 0x1

    goto :goto_69

    .line 315
    .end local v5           #j:I
    .end local v6           #last:I
    :cond_85
    new-instance v12, Lcom/android/server/NativeDaemonConnectorException;

    const-string v13, "Expected list response %d, but got %d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_a2
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_a2} :catch_a2

    .line 319
    .end local v1           #code:I
    .end local v11           #tok:[Ljava/lang/String;
    :catch_a2
    move-exception v8

    .line 320
    .local v8, nfe:Ljava/lang/NumberFormatException;
    :goto_a3
    new-instance v12, Lcom/android/server/NativeDaemonConnectorException;

    const-string v13, "Error reading code \'%s\'"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 324
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #nfe:Ljava/lang/NumberFormatException;
    :cond_b5
    new-instance v12, Lcom/android/server/NativeDaemonConnectorException;

    const-string v13, "Got an empty response"

    invoke-direct {v12, v13}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 313
    .restart local v1       #code:I
    .restart local v6       #last:I
    .restart local v7       #line:Ljava/lang/String;
    .restart local v11       #tok:[Ljava/lang/String;
    :cond_bd
    return-object v9

    .line 319
    .end local v3           #idx:I
    .end local v6           #last:I
    .restart local v4       #idx:I
    :catch_be
    move-exception v8

    move v3, v4

    .end local v4           #idx:I
    .restart local v3       #idx:I
    goto :goto_a3
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 98
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 100
    .local v1, event:Ljava/lang/String;
    :try_start_6
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget v3, p1, Landroid/os/Message;->what:I

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 101
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v3, "Unhandled event \'%s\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_27} :catch_28

    .line 108
    :cond_27
    :goto_27
    return v6

    .line 104
    :catch_28
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v3, "Error handling \'%s\'"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27
.end method

.method public monitor()V
    .registers 3

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    monitor-exit v1

    .line 330
    return-void

    .line 329
    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public run()V
    .registers 5

    .prologue
    .line 82
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".CallbackHandler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 83
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 84
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    .line 88
    :goto_28
    :try_start_28
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->listenToSocket()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_28

    .line 89
    :catch_2c
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v3, "Error in NativeDaemonConnector"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_28
.end method
