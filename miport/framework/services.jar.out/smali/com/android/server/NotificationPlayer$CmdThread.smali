.class final Lcom/android/server/NotificationPlayer$CmdThread;
.super Ljava/lang/Thread;
.source "NotificationPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CmdThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationPlayer;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationPlayer;)V
    .registers 4
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationPlayer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/NotificationPlayer;->access$200(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 156
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 160
    :goto_1
    const/4 v1, 0x0

    .line 162
    .local v1, cmd:Lcom/android/server/NotificationPlayer$Command;
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$400(Lcom/android/server/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 164
    :try_start_9
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$400(Lcom/android/server/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/NotificationPlayer$Command;

    move-object v1, v0

    .line 165
    monitor-exit v5
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_3d

    .line 167
    iget v4, v1, Lcom/android/server/NotificationPlayer$Command;->code:I

    packed-switch v4, :pswitch_data_dc

    .line 194
    :cond_1d
    :goto_1d
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$400(Lcom/android/server/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 195
    :try_start_24
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$400(Lcom/android/server/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-nez v4, :cond_d5

    .line 200
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/server/NotificationPlayer;->access$602(Lcom/android/server/NotificationPlayer;Lcom/android/server/NotificationPlayer$CmdThread;)Lcom/android/server/NotificationPlayer$CmdThread;

    .line 201
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$700(Lcom/android/server/NotificationPlayer;)V

    .line 202
    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_24 .. :try_end_3c} :catchall_d8

    return-void

    .line 165
    :catchall_3d
    move-exception v4

    :try_start_3e
    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v4

    .line 170
    :pswitch_40
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    invoke-static {v4, v1}, Lcom/android/server/NotificationPlayer;->access$500(Lcom/android/server/NotificationPlayer;Lcom/android/server/NotificationPlayer$Command;)V

    goto :goto_1d

    .line 174
    :pswitch_46
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    if-eqz v4, :cond_c8

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/android/server/NotificationPlayer$Command;->requestTime:J

    sub-long v2, v4, v6

    .line 176
    .local v2, delay:J
    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-lez v4, :cond_7e

    .line 177
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$200(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notification stop delayed by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "msecs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_7e
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->stop()V

    .line 180
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 181
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    invoke-static {v4, v8}, Lcom/android/server/NotificationPlayer;->access$102(Lcom/android/server/NotificationPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 182
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$300(Lcom/android/server/NotificationPlayer;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 183
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    invoke-static {v4, v8}, Lcom/android/server/NotificationPlayer;->access$302(Lcom/android/server/NotificationPlayer;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 184
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$000(Lcom/android/server/NotificationPlayer;)Landroid/os/Looper;

    move-result-object v4

    if-eqz v4, :cond_1d

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$000(Lcom/android/server/NotificationPlayer;)Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v4

    sget-object v5, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v4, v5, :cond_1d

    .line 186
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$000(Lcom/android/server/NotificationPlayer;)Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->quit()V

    goto/16 :goto_1d

    .line 189
    .end local v2           #delay:J
    :cond_c8
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$200(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "STOP command without a player"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 204
    :cond_d5
    :try_start_d5
    monitor-exit v5

    goto/16 :goto_1

    :catchall_d8
    move-exception v4

    monitor-exit v5
    :try_end_da
    .catchall {:try_start_d5 .. :try_end_da} :catchall_d8

    throw v4

    .line 167
    nop

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_40
        :pswitch_46
    .end packed-switch
.end method
