.class Landroid/hardware/CameraSound$CameraSoundPlayer;
.super Ljava/lang/Object;
.source "CameraSound.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/CameraSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraSoundPlayer"
.end annotation


# static fields
.field private static final mFocusSound:Ljava/lang/String; = "/system/media/audio/ui/camera_focus.ogg"

.field private static final mShutterSound:Ljava/lang/String; = "/system/media/audio/ui/camera_click.ogg"

.field private static final mVideoStartSound:Ljava/lang/String; = "/system/media/audio/ui/VideoRecord.ogg"

.field private static final mVideoStopSound:Ljava/lang/String; = "/system/media/audio/ui/VideoRecord.ogg"


# instance fields
.field private mAudioStreamType:I

.field private mExit:Z

.field private mPlayCount:I

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mSoundId:I

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .parameter "soundId"

    .prologue
    .line 180
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput p1, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mSoundId:I

    .line 182
    const-string/jumbo v0, "ro.camera.sound.forced"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 183
    const/4 v0, 0x3

    iput v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mAudioStreamType:I

    .line 187
    :goto_19
    return-void

    .line 185
    :cond_1a
    const/4 v0, 0x7

    iput v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mAudioStreamType:I

    goto :goto_19
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .prologue
    .line 220
    invoke-virtual {p0}, Landroid/hardware/CameraSound$CameraSoundPlayer;->release()V

    .line 221
    return-void
.end method

.method public play()V
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_10

    .line 191
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    .line 192
    iget-object v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 194
    :cond_10
    monitor-enter p0

    .line 195
    :try_start_11
    iget v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayCount:I

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 197
    monitor-exit p0

    .line 198
    return-void

    .line 197
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public release()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_14

    .line 202
    monitor-enter p0

    .line 203
    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mExit:Z

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 205
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_20

    .line 207
    :try_start_d
    iget-object v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_12} :catch_23

    .line 210
    :goto_12
    iput-object v1, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    .line 212
    :cond_14
    iget-object v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1f

    .line 213
    iget-object v0, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 214
    iput-object v1, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 216
    :cond_1f
    return-void

    .line 205
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0

    .line 208
    :catch_23
    move-exception v0

    goto :goto_12
.end method

.method public run()V
    .registers 6

    .prologue
    .line 131
    iget v2, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mSoundId:I

    packed-switch v2, :pswitch_data_a6

    .line 145
    const-string v2, "CameraSound"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown sound "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mSoundId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requested."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_25
    return-void

    .line 133
    :pswitch_26
    const-string v1, "/system/media/audio/ui/camera_click.ogg"

    .line 148
    .local v1, soundFilePath:Ljava/lang/String;
    :goto_28
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 150
    :try_start_2f
    iget-object v2, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget v3, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mAudioStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 151
    iget-object v2, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 153
    iget-object v2, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_46} :catch_75

    .line 161
    :goto_46
    :try_start_46
    monitor-enter p0
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_47} :catch_50

    .line 163
    :goto_47
    :try_start_47
    iget-boolean v2, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mExit:Z

    if-eqz v2, :cond_91

    .line 164
    monitor-exit p0

    goto :goto_25

    .line 172
    :catchall_4d
    move-exception v2

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_4d

    :try_start_4f
    throw v2
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_50} :catch_50

    .line 174
    :catch_50
    move-exception v0

    .line 175
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CameraSound"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error playing sound "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mSoundId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46

    .line 136
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #soundFilePath:Ljava/lang/String;
    :pswitch_6c
    const-string v1, "/system/media/audio/ui/camera_focus.ogg"

    .line 137
    .restart local v1       #soundFilePath:Ljava/lang/String;
    goto :goto_28

    .line 139
    .end local v1           #soundFilePath:Ljava/lang/String;
    :pswitch_6f
    const-string v1, "/system/media/audio/ui/VideoRecord.ogg"

    .line 140
    .restart local v1       #soundFilePath:Ljava/lang/String;
    goto :goto_28

    .line 142
    .end local v1           #soundFilePath:Ljava/lang/String;
    :pswitch_72
    const-string v1, "/system/media/audio/ui/VideoRecord.ogg"

    .line 143
    .restart local v1       #soundFilePath:Ljava/lang/String;
    goto :goto_28

    .line 154
    :catch_75
    move-exception v0

    .line 155
    .local v0, e:Ljava/io/IOException;
    const-string v2, "CameraSound"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error setting up sound "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mSoundId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 165
    .end local v0           #e:Ljava/io/IOException;
    :cond_91
    :try_start_91
    iget v2, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayCount:I

    if-gtz v2, :cond_99

    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_47

    .line 168
    :cond_99
    iget v2, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayCount:I

    .line 172
    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_91 .. :try_end_a0} :catchall_4d

    .line 173
    :try_start_a0
    iget-object v2, p0, Landroid/hardware/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a5} :catch_50

    goto :goto_46

    .line 131
    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_26
        :pswitch_6c
        :pswitch_6f
        :pswitch_72
    .end packed-switch
.end method
