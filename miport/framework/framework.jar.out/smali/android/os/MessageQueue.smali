.class public Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$IdleHandler;
    }
.end annotation


# instance fields
.field private mBlocked:Z

.field private final mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field mMessages:Landroid/os/Message;

.field private mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private mPtr:I

.field mQuitAllowed:Z

.field private mQuiting:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    .line 98
    invoke-direct {p0}, Landroid/os/MessageQueue;->nativeInit()V

    .line 99
    return-void
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeInit()V
.end method

.method private native nativePollOnce(II)V
.end method

.method private native nativeWake(I)V
.end method


# virtual methods
.method public final addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 4
    .parameter "handler"

    .prologue
    .line 76
    if-nez p1, :cond_a

    .line 77
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t add a null IdleHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_a
    monitor-enter p0

    .line 80
    :try_start_b
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    monitor-exit p0

    .line 82
    return-void

    .line 81
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    throw v0
.end method

.method final enqueueMessage(Landroid/os/Message;J)Z
    .registers 11
    .parameter "msg"
    .parameter "when"

    .prologue
    const/4 v4, 0x1

    .line 186
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 187
    new-instance v4, Landroid/util/AndroidRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " This message is already in use."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 190
    :cond_20
    iget-object v5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v5, :cond_30

    iget-boolean v5, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-nez v5, :cond_30

    .line 191
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Main thread not allowed to quit"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 194
    :cond_30
    monitor-enter p0

    .line 195
    :try_start_31
    iget-boolean v5, p0, Landroid/os/MessageQueue;->mQuiting:Z

    if-eqz v5, :cond_5b

    .line 196
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sending message to a Handler on a dead thread"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "MessageQueue"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    const/4 v4, 0x0

    monitor-exit p0

    .line 225
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_5a
    :goto_5a
    return v4

    .line 200
    :cond_5b
    iget-object v5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v5, :cond_62

    .line 201
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/os/MessageQueue;->mQuiting:Z

    .line 204
    :cond_62
    iput-wide p2, p1, Landroid/os/Message;->when:J

    .line 206
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 207
    .local v2, p:Landroid/os/Message;
    if-eqz v2, :cond_74

    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-eqz v5, :cond_74

    iget-wide v5, v2, Landroid/os/Message;->when:J

    cmp-long v5, p2, v5

    if-gez v5, :cond_83

    .line 208
    :cond_74
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 209
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 210
    iget-boolean v1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 221
    .local v1, needWake:Z
    :goto_7a
    monitor-exit p0
    :try_end_7b
    .catchall {:try_start_31 .. :try_end_7b} :catchall_98

    .line 222
    if-eqz v1, :cond_5a

    .line 223
    iget v5, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-direct {p0, v5}, Landroid/os/MessageQueue;->nativeWake(I)V

    goto :goto_5a

    .line 212
    .end local v1           #needWake:Z
    :cond_83
    const/4 v3, 0x0

    .line 213
    .local v3, prev:Landroid/os/Message;
    :goto_84
    if-eqz v2, :cond_90

    :try_start_86
    iget-wide v5, v2, Landroid/os/Message;->when:J

    cmp-long v5, v5, p2

    if-gtz v5, :cond_90

    .line 214
    move-object v3, v2

    .line 215
    iget-object v2, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_84

    .line 217
    :cond_90
    iget-object v5, v3, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v5, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 218
    iput-object p1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 219
    const/4 v1, 0x0

    .restart local v1       #needWake:Z
    goto :goto_7a

    .line 221
    .end local v1           #needWake:Z
    .end local v2           #p:Landroid/os/Message;
    .end local v3           #prev:Landroid/os/Message;
    :catchall_98
    move-exception v4

    monitor-exit p0
    :try_end_9a
    .catchall {:try_start_86 .. :try_end_9a} :catchall_98

    throw v4
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 104
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->nativeDestroy()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 106
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 108
    return-void

    .line 106
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method final next()Landroid/os/Message;
    .registers 16

    .prologue
    .line 111
    const/4 v7, -0x1

    .line 112
    .local v7, pendingIdleHandlerCount:I
    const/4 v4, 0x0

    .line 115
    .local v4, nextPollTimeoutMillis:I
    :goto_2
    if-eqz v4, :cond_7

    .line 116
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 118
    :cond_7
    iget v11, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-direct {p0, v11, v4}, Landroid/os/MessageQueue;->nativePollOnce(II)V

    .line 120
    monitor-enter p0

    .line 122
    :try_start_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 123
    .local v5, now:J
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 124
    .local v3, msg:Landroid/os/Message;
    if-eqz v3, :cond_46

    .line 125
    iget-wide v9, v3, Landroid/os/Message;->when:J

    .line 126
    .local v9, when:J
    cmp-long v11, v5, v9

    if-ltz v11, :cond_2a

    .line 127
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 128
    iget-object v11, v3, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v11, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 129
    const/4 v11, 0x0

    iput-object v11, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 131
    invoke-virtual {v3}, Landroid/os/Message;->markInUse()V

    .line 132
    monitor-exit p0

    return-object v3

    .line 134
    :cond_2a
    sub-long v11, v9, v5

    const-wide/32 v13, 0x7fffffff

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v4, v11

    .line 141
    .end local v9           #when:J
    :goto_34
    if-gez v7, :cond_3c

    .line 142
    iget-object v11, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 144
    :cond_3c
    if-nez v7, :cond_48

    .line 146
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 147
    monitor-exit p0

    goto :goto_2

    .line 154
    .end local v3           #msg:Landroid/os/Message;
    .end local v5           #now:J
    :catchall_43
    move-exception v11

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_d .. :try_end_45} :catchall_43

    throw v11

    .line 137
    .restart local v3       #msg:Landroid/os/Message;
    .restart local v5       #now:J
    :cond_46
    const/4 v4, -0x1

    goto :goto_34

    .line 150
    :cond_48
    :try_start_48
    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v11, :cond_55

    .line 151
    const/4 v11, 0x4

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    new-array v11, v11, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 153
    :cond_55
    iget-object v11, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iget-object v12, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 154
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_48 .. :try_end_62} :catchall_43

    .line 158
    const/4 v0, 0x0

    .local v0, i:I
    :goto_63
    if-ge v0, v7, :cond_8b

    .line 159
    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v1, v11, v0

    .line 160
    .local v1, idler:Landroid/os/MessageQueue$IdleHandler;
    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    const/4 v12, 0x0

    aput-object v12, v11, v0

    .line 162
    const/4 v2, 0x0

    .line 164
    .local v2, keep:Z
    :try_start_6f
    invoke-interface {v1}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_72} :catch_7f

    move-result v2

    .line 169
    :goto_73
    if-nez v2, :cond_7c

    .line 170
    monitor-enter p0

    .line 171
    :try_start_76
    iget-object v11, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 172
    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_76 .. :try_end_7c} :catchall_88

    .line 158
    :cond_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 165
    :catch_7f
    move-exception v8

    .line 166
    .local v8, t:Ljava/lang/Throwable;
    const-string v11, "MessageQueue"

    const-string v12, "IdleHandler threw exception"

    invoke-static {v11, v12, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_73

    .line 172
    .end local v8           #t:Ljava/lang/Throwable;
    :catchall_88
    move-exception v11

    :try_start_89
    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw v11

    .line 177
    .end local v1           #idler:Landroid/os/MessageQueue$IdleHandler;
    .end local v2           #keep:Z
    :cond_8b
    const/4 v7, 0x0

    .line 181
    const/4 v4, 0x0

    goto/16 :goto_2
.end method

.method final removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 7
    .parameter "h"
    .parameter "object"

    .prologue
    .line 301
    monitor-enter p0

    .line 302
    :try_start_1
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 306
    .local v2, p:Landroid/os/Message;
    :goto_3
    if-eqz v2, :cond_18

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_18

    if-eqz p2, :cond_f

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_18

    .line 307
    :cond_f
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 308
    .local v0, n:Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 309
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 310
    move-object v2, v0

    .line 311
    goto :goto_3

    .line 314
    .end local v0           #n:Landroid/os/Message;
    :cond_18
    :goto_18
    if-eqz v2, :cond_35

    .line 315
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 316
    .restart local v0       #n:Landroid/os/Message;
    if-eqz v0, :cond_33

    .line 317
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_33

    if-eqz p2, :cond_28

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_33

    .line 318
    :cond_28
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 319
    .local v1, nn:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 320
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_18

    .line 326
    .end local v0           #n:Landroid/os/Message;
    .end local v1           #nn:Landroid/os/Message;
    .end local v2           #p:Landroid/os/Message;
    :catchall_30
    move-exception v3

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_30

    throw v3

    .line 324
    .restart local v0       #n:Landroid/os/Message;
    .restart local v2       #p:Landroid/os/Message;
    :cond_33
    move-object v2, v0

    .line 325
    goto :goto_18

    .line 326
    .end local v0           #n:Landroid/os/Message;
    :cond_35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_30

    .line 327
    return-void
.end method

.method public final removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 92
    monitor-enter p0

    .line 93
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 94
    monitor-exit p0

    .line 95
    return-void

    .line 94
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method final removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 8
    .parameter "h"
    .parameter "r"
    .parameter "object"

    .prologue
    .line 267
    if-nez p2, :cond_3

    .line 298
    :goto_2
    return-void

    .line 271
    :cond_3
    monitor-enter p0

    .line 272
    :try_start_4
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 276
    .local v2, p:Landroid/os/Message;
    :goto_6
    if-eqz v2, :cond_1f

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_1f

    iget-object v3, v2, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_1f

    if-eqz p3, :cond_16

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_1f

    .line 277
    :cond_16
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 278
    .local v0, n:Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 279
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 280
    move-object v2, v0

    .line 281
    goto :goto_6

    .line 284
    .end local v0           #n:Landroid/os/Message;
    :cond_1f
    :goto_1f
    if-eqz v2, :cond_40

    .line 285
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 286
    .restart local v0       #n:Landroid/os/Message;
    if-eqz v0, :cond_3e

    .line 287
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_3e

    iget-object v3, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_3e

    if-eqz p3, :cond_33

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_3e

    .line 289
    :cond_33
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 290
    .local v1, nn:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 291
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1f

    .line 297
    .end local v0           #n:Landroid/os/Message;
    .end local v1           #nn:Landroid/os/Message;
    .end local v2           #p:Landroid/os/Message;
    :catchall_3b
    move-exception v3

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_4 .. :try_end_3d} :catchall_3b

    throw v3

    .line 295
    .restart local v0       #n:Landroid/os/Message;
    .restart local v2       #p:Landroid/os/Message;
    :cond_3e
    move-object v2, v0

    .line 296
    goto :goto_1f

    .line 297
    .end local v0           #n:Landroid/os/Message;
    :cond_40
    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3b

    goto :goto_2
.end method

.method final removeMessages(Landroid/os/Handler;ILjava/lang/Object;Z)Z
    .registers 11
    .parameter "h"
    .parameter "what"
    .parameter "object"
    .parameter "doRemove"

    .prologue
    const/4 v4, 0x1

    .line 230
    monitor-enter p0

    .line 231
    :try_start_2
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 232
    .local v3, p:Landroid/os/Message;
    const/4 v0, 0x0

    .line 236
    .local v0, found:Z
    :goto_5
    if-eqz v3, :cond_2b

    iget-object v5, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v5, p1, :cond_2b

    iget v5, v3, Landroid/os/Message;->what:I

    if-ne v5, p2, :cond_2b

    if-eqz p3, :cond_15

    iget-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v5, p3, :cond_2b

    .line 237
    :cond_15
    if-nez p4, :cond_19

    monitor-exit p0

    .line 262
    :goto_18
    return v4

    .line 238
    :cond_19
    const/4 v0, 0x1

    .line 239
    iget-object v1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 240
    .local v1, n:Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 241
    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    .line 242
    move-object v3, v1

    .line 243
    goto :goto_5

    .line 252
    :cond_23
    const/4 v0, 0x1

    .line 253
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 254
    .local v2, nn:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 255
    iput-object v2, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 246
    .end local v1           #n:Landroid/os/Message;
    .end local v2           #nn:Landroid/os/Message;
    :cond_2b
    :goto_2b
    if-eqz v3, :cond_48

    .line 247
    iget-object v1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 248
    .restart local v1       #n:Landroid/os/Message;
    if-eqz v1, :cond_46

    .line 249
    iget-object v5, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v5, p1, :cond_46

    iget v5, v1, Landroid/os/Message;->what:I

    if-ne v5, p2, :cond_46

    if-eqz p3, :cond_3f

    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v5, p3, :cond_46

    .line 251
    :cond_3f
    if-nez p4, :cond_23

    monitor-exit p0

    goto :goto_18

    .line 263
    .end local v0           #found:Z
    .end local v1           #n:Landroid/os/Message;
    .end local v3           #p:Landroid/os/Message;
    :catchall_43
    move-exception v4

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_2 .. :try_end_45} :catchall_43

    throw v4

    .line 259
    .restart local v0       #found:Z
    .restart local v1       #n:Landroid/os/Message;
    .restart local v3       #p:Landroid/os/Message;
    :cond_46
    move-object v3, v1

    .line 260
    goto :goto_2b

    .line 262
    .end local v1           #n:Landroid/os/Message;
    :cond_48
    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_43

    move v4, v0

    goto :goto_18
.end method
