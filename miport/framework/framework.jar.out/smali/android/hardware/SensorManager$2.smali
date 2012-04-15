.class Landroid/hardware/SensorManager$2;
.super Ljava/lang/Thread;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 2133
    iput-object p1, p0, Landroid/hardware/SensorManager$2;->this$0:Landroid/hardware/SensorManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 2135
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/SensorManager$2;->this$0:Landroid/hardware/SensorManager;

    invoke-static {v14}, Landroid/hardware/SensorManager;->access$300(Landroid/hardware/SensorManager;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 2136
    const-string v14, "SensorManager"

    const-string v15, "RC, connect to remote_control_sensor socket ok"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    :cond_11
    const/4 v14, 0x4

    new-array v4, v14, [B

    .line 2142
    .local v4, data:[B
    :cond_14
    :goto_14
    const/4 v2, 0x0

    .line 2143
    .local v2, bytesLeft:I
    const/4 v3, 0x0

    .line 2144
    .local v3, bytesRead:I
    const/4 v8, 0x0

    .line 2146
    .local v8, inStream:[B
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/SensorManager$2;->this$0:Landroid/hardware/SensorManager;

    invoke-static {v14}, Landroid/hardware/SensorManager;->access$400(Landroid/hardware/SensorManager;)Landroid/net/LocalSocket;

    move-result-object v14

    if-eqz v14, :cond_35

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/SensorManager$2;->this$0:Landroid/hardware/SensorManager;

    invoke-static {v14}, Landroid/hardware/SensorManager;->access$500(Landroid/hardware/SensorManager;)Ljava/io/InputStream;

    move-result-object v14

    if-eqz v14, :cond_35

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/SensorManager$2;->this$0:Landroid/hardware/SensorManager;

    invoke-static {v14}, Landroid/hardware/SensorManager;->access$600(Landroid/hardware/SensorManager;)Ljava/io/OutputStream;

    move-result-object v14

    if-nez v14, :cond_3d

    .line 2209
    :cond_35
    :goto_35
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/SensorManager$2;->this$0:Landroid/hardware/SensorManager;

    invoke-static {v14}, Landroid/hardware/SensorManager;->access$800(Landroid/hardware/SensorManager;)V

    .line 2210
    return-void

    .line 2151
    :cond_3d
    :try_start_3d
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/SensorManager$2;->this$0:Landroid/hardware/SensorManager;

    invoke-static {v14}, Landroid/hardware/SensorManager;->access$500(Landroid/hardware/SensorManager;)Ljava/io/InputStream;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v14, v4, v15, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v14

    const/4 v15, 0x4

    if-ge v14, v15, :cond_58

    .line 2152
    const-string v14, "SensorManager"

    const-string v15, "RC, read data length fail"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_58} :catch_68

    .line 2159
    :cond_58
    const/4 v5, 0x0

    .line 2160
    .local v5, dataLen:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_5a
    const/4 v14, 0x4

    if-ge v7, v14, :cond_82

    .line 2161
    aget-byte v14, v4, v7

    and-int/lit16 v14, v14, 0xff

    mul-int/lit8 v15, v7, 0x8

    shl-int/2addr v14, v15

    add-int/2addr v5, v14

    .line 2160
    add-int/lit8 v7, v7, 0x1

    goto :goto_5a

    .line 2154
    .end local v5           #dataLen:I
    .end local v7           #i:I
    :catch_68
    move-exception v6

    .line 2155
    .local v6, ex:Ljava/io/IOException;
    const-string v14, "SensorManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RC, read length exception"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 2166
    .end local v6           #ex:Ljava/io/IOException;
    .restart local v5       #dataLen:I
    .restart local v7       #i:I
    :cond_82
    move v2, v5

    .line 2167
    new-array v8, v5, [B

    .line 2168
    :goto_85
    if-lez v2, :cond_ae

    .line 2170
    :try_start_87
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/SensorManager$2;->this$0:Landroid/hardware/SensorManager;

    invoke-static {v14}, Landroid/hardware/SensorManager;->access$500(Landroid/hardware/SensorManager;)Ljava/io/InputStream;

    move-result-object v14

    invoke-virtual {v14, v8, v3, v2}, Ljava/io/InputStream;->read([BII)I
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_92} :catch_95

    move-result v3

    .line 2171
    sub-int/2addr v2, v3

    goto :goto_85

    .line 2172
    :catch_95
    move-exception v6

    .line 2173
    .restart local v6       #ex:Ljava/io/IOException;
    const-string v14, "SensorManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RC, read data exception"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    .end local v6           #ex:Ljava/io/IOException;
    :cond_ae
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/SensorManager$2;->this$0:Landroid/hardware/SensorManager;

    invoke-static {v14}, Landroid/hardware/SensorManager;->access$700(Landroid/hardware/SensorManager;)Z

    move-result v14

    if-nez v14, :cond_c1

    .line 2179
    const-string v14, "SensorManager"

    const-string v15, "RC, application not registerListener!!!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 2183
    :cond_c1
    const/4 v14, 0x4

    const/4 v15, 0x0

    aget-byte v15, v8, v15

    if-ne v14, v15, :cond_14

    .line 2185
    const/4 v14, 0x3

    new-array v13, v14, [F

    .line 2186
    .local v13, values:[F
    const/4 v14, 0x1

    new-array v12, v14, [J

    .line 2188
    .local v12, timestamp:[J
    const/4 v14, 0x1

    aget-byte v14, v8, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x18

    const/4 v15, 0x2

    aget-byte v15, v8, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v14, v15

    const/4 v15, 0x3

    aget-byte v15, v8, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    const/4 v15, 0x4

    aget-byte v15, v8, v15

    and-int/lit16 v15, v15, 0xff

    or-int v9, v14, v15

    .line 2189
    .local v9, intBits:I
    const/4 v14, 0x0

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v15

    aput v15, v13, v14

    .line 2190
    const/4 v14, 0x5

    aget-byte v14, v8, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x18

    const/4 v15, 0x6

    aget-byte v15, v8, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v14, v15

    const/4 v15, 0x7

    aget-byte v15, v8, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    const/16 v15, 0x8

    aget-byte v15, v8, v15

    and-int/lit16 v15, v15, 0xff

    or-int v9, v14, v15

    .line 2191
    const/4 v14, 0x1

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v15

    aput v15, v13, v14

    .line 2192
    const/16 v14, 0x9

    aget-byte v14, v8, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x18

    const/16 v15, 0xa

    aget-byte v15, v8, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v14, v15

    const/16 v15, 0xb

    aget-byte v15, v8, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    const/16 v15, 0xc

    aget-byte v15, v8, v15

    and-int/lit16 v15, v15, 0xff

    or-int v9, v14, v15

    .line 2193
    const/4 v14, 0x2

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v15

    aput v15, v13, v14

    .line 2194
    const/16 v14, 0xd

    aget-byte v14, v8, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x18

    const/16 v15, 0xe

    aget-byte v15, v8, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v14, v15

    const/16 v15, 0xf

    aget-byte v15, v8, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    const/16 v15, 0x10

    aget-byte v15, v8, v15

    and-int/lit16 v15, v15, 0xff

    or-int v1, v14, v15

    .line 2196
    .local v1, accuracy:I
    const-string v14, "SensorManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RC, [x:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v13, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",y:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget v16, v13, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",z:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    aget v16, v13, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], accuracy = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    const/4 v14, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    aput-wide v15, v12, v14

    .line 2199
    sget-object v15, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v15

    .line 2200
    :try_start_1af
    sget-object v14, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 2201
    .local v11, size:I
    const/4 v7, 0x0

    :goto_1b6
    if-ge v7, v11, :cond_1f9

    .line 2202
    sget-object v14, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 2203
    .local v10, listener:Landroid/hardware/SensorManager$ListenerDelegate;
    const-string v14, "SensorManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "RC, listen size:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",get listener:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v10}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    new-instance v14, Landroid/hardware/Sensor;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v14, v0}, Landroid/hardware/Sensor;-><init>(Z)V

    invoke-virtual {v10, v14, v13, v12, v1}, Landroid/hardware/SensorManager$ListenerDelegate;->onSensorChangedLocked(Landroid/hardware/Sensor;[F[JI)V

    .line 2201
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b6

    .line 2206
    .end local v10           #listener:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_1f9
    monitor-exit v15

    goto/16 :goto_14

    .end local v11           #size:I
    :catchall_1fc
    move-exception v14

    monitor-exit v15
    :try_end_1fe
    .catchall {:try_start_1af .. :try_end_1fe} :catchall_1fc

    throw v14
.end method
