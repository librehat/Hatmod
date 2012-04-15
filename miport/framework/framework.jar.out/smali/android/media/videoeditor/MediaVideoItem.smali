.class public Landroid/media/videoeditor/MediaVideoItem;
.super Landroid/media/videoeditor/MediaItem;
.source "MediaVideoItem.java"


# instance fields
.field private final mAspectRatio:I

.field private final mAudioBitrate:I

.field private final mAudioChannels:I

.field private final mAudioSamplingFrequency:I

.field private final mAudioType:I

.field private mAudioWaveformFilename:Ljava/lang/String;

.field private mBeginBoundaryTimeMs:J

.field private final mDurationMs:J

.field private mEndBoundaryTimeMs:J

.field private final mFileType:I

.field private final mFps:I

.field private final mHeight:I

.field private mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

.field private mMuted:Z

.field private final mVideoBitrate:I

.field private mVideoEditor:Landroid/media/videoeditor/VideoEditorImpl;

.field private final mVideoLevel:I

.field private final mVideoProfile:I

.field private final mVideoRotationDegree:I

.field private final mVideoType:I

.field private mVolumePercentage:I

.field private mWaveformData:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/media/videoeditor/WaveformData;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidth:I


# direct methods
.method private constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v1, v0}, Landroid/media/videoeditor/MediaVideoItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 17
    .parameter "editor"
    .parameter "mediaItemId"
    .parameter "filename"
    .parameter "renderingMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    const/16 v9, 0x64

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v11}, Landroid/media/videoeditor/MediaVideoItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;IJJIZLjava/lang/String;)V

    .line 87
    return-void
.end method

.method constructor <init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;IJJIZLjava/lang/String;)V
    .registers 22
    .parameter "editor"
    .parameter "mediaItemId"
    .parameter "filename"
    .parameter "renderingMode"
    .parameter "beginMs"
    .parameter "endMs"
    .parameter "volumePercent"
    .parameter "muted"
    .parameter "audioWaveformFilename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/videoeditor/MediaItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    instance-of v7, p1, Landroid/media/videoeditor/VideoEditorImpl;

    if-eqz v7, :cond_14

    move-object v7, p1

    .line 113
    check-cast v7, Landroid/media/videoeditor/VideoEditorImpl;

    invoke-virtual {v7}, Landroid/media/videoeditor/VideoEditorImpl;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v7

    iput-object v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    .line 114
    check-cast p1, Landroid/media/videoeditor/VideoEditorImpl;

    .end local p1
    iput-object p1, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoEditor:Landroid/media/videoeditor/VideoEditorImpl;

    .line 119
    :cond_14
    :try_start_14
    iget-object v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v7, p3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_28

    move-result-object v5

    .line 125
    .local v5, properties:Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    invoke-static {}, Landroid/media/videoeditor/VideoEditorProfile;->get()Landroid/media/videoeditor/VideoEditorProfile;

    move-result-object v6

    .line 126
    .local v6, veProfile:Landroid/media/videoeditor/VideoEditorProfile;
    if-nez v6, :cond_4a

    .line 127
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Can\'t get the video editor profile"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 120
    .end local v5           #properties:Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    .end local v6           #veProfile:Landroid/media/videoeditor/VideoEditorProfile;
    :catch_28
    move-exception v2

    .line 121
    .local v2, e:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 129
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v5       #properties:Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    .restart local v6       #veProfile:Landroid/media/videoeditor/VideoEditorProfile;
    :cond_4a
    iget v4, v6, Landroid/media/videoeditor/VideoEditorProfile;->maxInputVideoFrameWidth:I

    .line 130
    .local v4, maxInputWidth:I
    iget v3, v6, Landroid/media/videoeditor/VideoEditorProfile;->maxInputVideoFrameHeight:I

    .line 131
    .local v3, maxInputHeight:I
    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    if-gt v7, v4, :cond_56

    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    if-le v7, v3, :cond_91

    .line 133
    :cond_56
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported import resolution. Supported maximum width:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " height:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", current width:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " height:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 140
    :cond_91
    iget-boolean v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->profileSupported:Z

    if-nez v7, :cond_b0

    .line 141
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported video profile "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->profile:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 144
    :cond_b0
    iget-boolean v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->levelSupported:Z

    if-nez v7, :cond_cf

    .line 145
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported video level "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->level:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 148
    :cond_cf
    iget-object v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v8, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    invoke-virtual {v7, v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getFileType(I)I

    move-result v7

    sparse-switch v7, :sswitch_data_17e

    .line 155
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Unsupported Input File Type"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 158
    :sswitch_e2
    iget-object v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v8, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoFormat:I

    invoke-virtual {v7, v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getVideoCodecType(I)I

    move-result v7

    packed-switch v7, :pswitch_data_18c

    .line 165
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Unsupported Video Codec Format in Input File"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 168
    :pswitch_f5
    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mWidth:I

    .line 169
    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mHeight:I

    .line 170
    iget-object v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v8, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    iget v9, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    invoke-virtual {v7, v8, v9}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAspectRatio(II)I

    move-result v7

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mAspectRatio:I

    .line 172
    iget-object v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v8, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    invoke-virtual {v7, v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getFileType(I)I

    move-result v7

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mFileType:I

    .line 173
    iget-object v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v8, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoFormat:I

    invoke-virtual {v7, v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getVideoCodecType(I)I

    move-result v7

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoType:I

    .line 174
    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->profile:I

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoProfile:I

    .line 175
    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->level:I

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoLevel:I

    .line 176
    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    int-to-long v7, v7

    iput-wide v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mDurationMs:J

    .line 177
    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoBitrate:I

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoBitrate:I

    .line 178
    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioBitrate:I

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioBitrate:I

    .line 179
    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->averageFrameRate:F

    float-to-int v7, v7

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mFps:I

    .line 180
    iget-object v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v8, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioFormat:I

    invoke-virtual {v7, v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAudioCodecType(I)I

    move-result v7

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioType:I

    .line 181
    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioChannels:I

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioChannels:I

    .line 182
    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioSamplingFrequency:I

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioSamplingFrequency:I

    .line 183
    iput-wide p5, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    .line 184
    const-wide/16 v7, -0x1

    cmp-long v7, p7, v7

    if-nez v7, :cond_155

    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mDurationMs:J

    move-wide/from16 p7, v0

    .end local p7
    :cond_155
    move-wide/from16 v0, p7

    iput-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    .line 185
    move/from16 v0, p9

    iput v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVolumePercentage:I

    .line 186
    move/from16 v0, p10

    iput-boolean v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMuted:Z

    .line 187
    move-object/from16 v0, p11

    iput-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    .line 188
    if-eqz p11, :cond_17a

    .line 189
    new-instance v7, Ljava/lang/ref/SoftReference;

    new-instance v8, Landroid/media/videoeditor/WaveformData;

    move-object/from16 v0, p11

    invoke-direct {v8, v0}, Landroid/media/videoeditor/WaveformData;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mWaveformData:Ljava/lang/ref/SoftReference;

    .line 194
    :goto_175
    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoRotation:I

    iput v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoRotationDegree:I

    .line 195
    return-void

    .line 192
    :cond_17a
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/media/videoeditor/MediaVideoItem;->mWaveformData:Ljava/lang/ref/SoftReference;

    goto :goto_175

    .line 148
    :sswitch_data_17e
    .sparse-switch
        0x0 -> :sswitch_e2
        0x1 -> :sswitch_e2
        0xa -> :sswitch_e2
    .end sparse-switch

    .line 158
    :pswitch_data_18c
    .packed-switch 0x1
        :pswitch_f5
        :pswitch_f5
        :pswitch_f5
    .end packed-switch
.end method


# virtual methods
.method public addEffect(Landroid/media/videoeditor/Effect;)V
    .registers 4
    .parameter "effect"

    .prologue
    .line 273
    instance-of v0, p1, Landroid/media/videoeditor/EffectKenBurns;

    if-eqz v0, :cond_c

    .line 274
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ken Burns effects cannot be applied to MediaVideoItem"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_c
    invoke-super {p0, p1}, Landroid/media/videoeditor/MediaItem;->addEffect(Landroid/media/videoeditor/Effect;)V

    .line 277
    return-void
.end method

.method public extractAudioWaveform(Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;)V
    .registers 12
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    .line 533
    const/4 v4, 0x0

    .line 534
    .local v4, frameDuration:I
    const/4 v6, 0x0

    .line 535
    .local v6, sampleCount:I
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getProjectPath()Ljava/lang/String;

    move-result-object v9

    .line 539
    .local v9, projectPath:Ljava/lang/String;
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    if-nez v0, :cond_58

    .line 543
    const/4 v3, 0x0

    .line 545
    .local v3, mAudioWaveFileName:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "audioWaveformFile-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 551
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v1, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioType:I

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAudioCodecType(I)I

    move-result v0

    if-ne v0, v8, :cond_67

    .line 553
    const/4 v4, 0x5

    .line 555
    const/16 v6, 0xa0

    .line 568
    :cond_4a
    :goto_4a
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mFilename:Ljava/lang/String;

    move-object v7, p1

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateAudioGraph(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/media/videoeditor/ExtractAudioWaveformProgressListener;Z)V

    .line 579
    iput-object v3, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    .line 581
    .end local v3           #mAudioWaveFileName:Ljava/lang/String;
    :cond_58
    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v1, Landroid/media/videoeditor/WaveformData;

    iget-object v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/media/videoeditor/WaveformData;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mWaveformData:Ljava/lang/ref/SoftReference;

    .line 583
    return-void

    .line 556
    .restart local v3       #mAudioWaveFileName:Ljava/lang/String;
    :cond_67
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v1, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioType:I

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAudioCodecType(I)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_78

    .line 558
    const/16 v4, 0xa

    .line 560
    const/16 v6, 0x140

    goto :goto_4a

    .line 561
    :cond_78
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v1, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioType:I

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAudioCodecType(I)I

    move-result v0

    if-ne v0, v5, :cond_4a

    .line 563
    const/16 v4, 0x20

    .line 565
    const/16 v6, 0x400

    goto :goto_4a
.end method

.method public getAspectRatio()I
    .registers 2

    .prologue
    .line 428
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAspectRatio:I

    return v0
.end method

.method public getAudioBitrate()I
    .registers 2

    .prologue
    .line 712
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioBitrate:I

    return v0
.end method

.method public getAudioChannels()I
    .registers 2

    .prologue
    .line 733
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioChannels:I

    return v0
.end method

.method public getAudioSamplingFrequency()I
    .registers 2

    .prologue
    .line 740
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioSamplingFrequency:I

    return v0
.end method

.method public getAudioType()I
    .registers 2

    .prologue
    .line 726
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioType:I

    return v0
.end method

.method getAudioWaveformFilename()Ljava/lang/String;
    .registers 2

    .prologue
    .line 597
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getBoundaryBeginTime()J
    .registers 3

    .prologue
    .line 258
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    return-wide v0
.end method

.method public getBoundaryEndTime()J
    .registers 3

    .prologue
    .line 265
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 470
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mDurationMs:J

    return-wide v0
.end method

.method public getFileType()I
    .registers 2

    .prologue
    .line 436
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mFileType:I

    return v0
.end method

.method public getFps()I
    .registers 2

    .prologue
    .line 719
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mFps:I

    return v0
.end method

.method public getHeight()I
    .registers 3

    .prologue
    .line 457
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoRotationDegree:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_c

    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoRotationDegree:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_f

    .line 459
    :cond_c
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mWidth:I

    .line 461
    :goto_e
    return v0

    :cond_f
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mHeight:I

    goto :goto_e
.end method

.method public getThumbnail(IIJ)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "width"
    .parameter "height"
    .parameter "timeMs"

    .prologue
    .line 284
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mDurationMs:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_e

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Time Exceeds duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_e
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_1c

    .line 289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Time duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_1c
    if-lez p1, :cond_20

    if-gtz p2, :cond_28

    .line 293
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_28
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoRotationDegree:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_34

    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoRotationDegree:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_37

    .line 297
    :cond_34
    move v7, p1

    .line 298
    .local v7, temp:I
    move p1, p2

    .line 299
    move p2, v7

    .line 302
    .end local v7           #temp:I
    :cond_37
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getFilename()Ljava/lang/String;

    move-result-object v1

    iget v6, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoRotationDegree:I

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getPixels(Ljava/lang/String;IIJI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailList(IIJJI[ILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;)V
    .registers 23
    .parameter "width"
    .parameter "height"
    .parameter "startMs"
    .parameter "endMs"
    .parameter "thumbnailCount"
    .parameter "indices"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    cmp-long v0, p3, p5

    if-lez v0, :cond_c

    .line 317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Start time is greater than end time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_c
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mDurationMs:J

    cmp-long v0, p5, v0

    if-lez v0, :cond_1a

    .line 321
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "End time is greater than file duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_1a
    if-lez p2, :cond_1e

    if-gtz p1, :cond_26

    .line 325
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid dimension"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_26
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoRotationDegree:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_32

    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoRotationDegree:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_35

    .line 329
    :cond_32
    move v12, p1

    .line 330
    .local v12, temp:I
    move p1, p2

    .line 331
    move p2, v12

    .line 334
    .end local v12           #temp:I
    :cond_35
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getFilename()Ljava/lang/String;

    move-result-object v1

    iget v11, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoRotationDegree:I

    move v2, p1

    move v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v11}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getPixelsList(Ljava/lang/String;IIJJI[ILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;I)V

    .line 337
    return-void
.end method

.method public getTimelineDuration()J
    .registers 5

    .prologue
    .line 478
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    iget-wide v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getVideoBitrate()I
    .registers 2

    .prologue
    .line 705
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoBitrate:I

    return v0
.end method

.method getVideoClipProperties()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    .registers 4

    .prologue
    .line 748
    new-instance v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    .line 749
    .local v0, clipSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getFilename()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 750
    iget-object v1, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getFileType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaItemFileType(I)I

    move-result v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 751
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryBeginTime()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 752
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryEndTime()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 753
    iget-object v1, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getRenderingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaItemRenderingMode(I)I

    move-result v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    .line 754
    iget v1, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoRotationDegree:I

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rotationDegree:I

    .line 756
    return-object v0
.end method

.method public getVideoLevel()I
    .registers 2

    .prologue
    .line 698
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoLevel:I

    return v0
.end method

.method public getVideoProfile()I
    .registers 2

    .prologue
    .line 691
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoProfile:I

    return v0
.end method

.method public getVideoType()I
    .registers 2

    .prologue
    .line 684
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoType:I

    return v0
.end method

.method public getVolume()I
    .registers 2

    .prologue
    .line 656
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVolumePercentage:I

    return v0
.end method

.method public getWaveformData()Landroid/media/videoeditor/WaveformData;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 614
    iget-object v3, p0, Landroid/media/videoeditor/MediaVideoItem;->mWaveformData:Ljava/lang/ref/SoftReference;

    if-nez v3, :cond_7

    move-object v1, v2

    .line 630
    :cond_6
    :goto_6
    return-object v1

    .line 618
    :cond_7
    iget-object v3, p0, Landroid/media/videoeditor/MediaVideoItem;->mWaveformData:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/WaveformData;

    .line 619
    .local v1, waveformData:Landroid/media/videoeditor/WaveformData;
    if-nez v1, :cond_6

    .line 621
    iget-object v3, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    if-eqz v3, :cond_26

    .line 623
    :try_start_15
    new-instance v1, Landroid/media/videoeditor/WaveformData;

    .end local v1           #waveformData:Landroid/media/videoeditor/WaveformData;
    iget-object v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/media/videoeditor/WaveformData;-><init>(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1c} :catch_24

    .line 627
    .restart local v1       #waveformData:Landroid/media/videoeditor/WaveformData;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mWaveformData:Ljava/lang/ref/SoftReference;

    goto :goto_6

    .line 624
    .end local v1           #waveformData:Landroid/media/videoeditor/WaveformData;
    :catch_24
    move-exception v0

    .line 625
    .local v0, e:Ljava/io/IOException;
    throw v0

    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #waveformData:Landroid/media/videoeditor/WaveformData;
    :cond_26
    move-object v1, v2

    .line 630
    goto :goto_6
.end method

.method public getWidth()I
    .registers 3

    .prologue
    .line 444
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoRotationDegree:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_c

    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoRotationDegree:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_f

    .line 446
    :cond_c
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mHeight:I

    .line 448
    :goto_e
    return v0

    :cond_f
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mWidth:I

    goto :goto_e
.end method

.method invalidate()V
    .registers 3

    .prologue
    .line 604
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 605
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 606
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    .line 608
    :cond_11
    return-void
.end method

.method invalidateTransitions(JJ)V
    .registers 14
    .parameter "startTimeMs"
    .parameter "durationMs"

    .prologue
    .line 347
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_1a

    .line 348
    iget-wide v5, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaVideoItem;->isOverlapping(JJJJ)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 350
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 354
    :cond_1a
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_36

    .line 355
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    .line 356
    .local v7, transitionDurationMs:J
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    sub-long v5, v0, v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaVideoItem;->isOverlapping(JJJJ)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 358
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 361
    .end local v7           #transitionDurationMs:J
    :cond_36
    return-void
.end method

.method invalidateTransitions(JJJJ)V
    .registers 20
    .parameter "oldStartTimeMs"
    .parameter "oldDurationMs"
    .parameter "newStartTimeMs"
    .parameter "newDurationMs"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_25

    .line 373
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    .line 374
    .local v7, transitionDurationMs:J
    iget-wide v5, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaVideoItem;->isOverlapping(JJJJ)Z

    move-result v10

    .line 376
    .local v10, oldOverlap:Z
    iget-wide v5, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    move-object v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, p7

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaVideoItem;->isOverlapping(JJJJ)Z

    move-result v9

    .line 386
    .local v9, newOverlap:Z
    if-eq v9, v10, :cond_4f

    .line 387
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 397
    .end local v7           #transitionDurationMs:J
    .end local v9           #newOverlap:Z
    .end local v10           #oldOverlap:Z
    :cond_25
    :goto_25
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_4e

    .line 398
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    .line 399
    .restart local v7       #transitionDurationMs:J
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    sub-long v5, v0, v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaVideoItem;->isOverlapping(JJJJ)Z

    move-result v10

    .line 401
    .restart local v10       #oldOverlap:Z
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    sub-long v5, v0, v7

    move-object v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, p7

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaVideoItem;->isOverlapping(JJJJ)Z

    move-result v9

    .line 411
    .restart local v9       #newOverlap:Z
    if-eq v9, v10, :cond_67

    .line 412
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 421
    .end local v7           #transitionDurationMs:J
    .end local v9           #newOverlap:Z
    .end local v10           #oldOverlap:Z
    :cond_4e
    :goto_4e
    return-void

    .line 388
    .restart local v7       #transitionDurationMs:J
    .restart local v9       #newOverlap:Z
    .restart local v10       #oldOverlap:Z
    :cond_4f
    if-eqz v9, :cond_25

    .line 389
    cmp-long v0, p1, p5

    if-nez v0, :cond_61

    add-long v0, p1, p3

    cmp-long v0, v0, v7

    if-lez v0, :cond_61

    add-long v0, p5, p7

    cmp-long v0, v0, v7

    if-gtz v0, :cond_25

    .line 392
    :cond_61
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    goto :goto_25

    .line 413
    :cond_67
    if-eqz v9, :cond_4e

    .line 414
    add-long v0, p1, p3

    add-long v2, p5, p7

    cmp-long v0, v0, v2

    if-nez v0, :cond_7f

    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    sub-long/2addr v0, v7

    cmp-long v0, p1, v0

    if-gtz v0, :cond_7f

    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    sub-long/2addr v0, v7

    cmp-long v0, p5, v0

    if-lez v0, :cond_4e

    .line 417
    :cond_7f
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    goto :goto_4e
.end method

.method public isMuted()Z
    .registers 2

    .prologue
    .line 677
    iget-boolean v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMuted:Z

    return v0
.end method

.method public renderFrame(Landroid/view/SurfaceHolder;J)J
    .registers 11
    .parameter "surfaceHolder"
    .parameter "timeMs"

    .prologue
    const-wide/16 v2, 0x0

    .line 497
    if-nez p1, :cond_c

    .line 498
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface Holder is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_c
    iget-wide v4, p0, Landroid/media/videoeditor/MediaVideoItem;->mDurationMs:J

    cmp-long v0, p2, v4

    if-gtz v0, :cond_16

    cmp-long v0, p2, v2

    if-gez v0, :cond_1f

    .line 502
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "requested time not correct"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_1f
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 506
    .local v1, surface:Landroid/view/Surface;
    if-nez v1, :cond_2d

    .line 507
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Surface could not be retrieved from Surface holder"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_2d
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_3e

    .line 511
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mFilename:Ljava/lang/String;

    iget v5, p0, Landroid/media/videoeditor/MediaVideoItem;->mWidth:I

    iget v6, p0, Landroid/media/videoeditor/MediaVideoItem;->mHeight:I

    move-wide v3, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/videoeditor/MediaArtistNativeHelper;->renderMediaItemPreviewFrame(Landroid/view/Surface;Ljava/lang/String;JII)J

    move-result-wide v2

    .line 514
    :cond_3e
    return-wide v2
.end method

.method public setExtractBoundaries(JJ)V
    .registers 11
    .parameter "beginMs"
    .parameter "endMs"

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    .line 213
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mDurationMs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_13

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setExtractBoundaries: Invalid start time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_13
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mDurationMs:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_22

    .line 218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setExtractBoundaries: Invalid end time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_22
    cmp-long v0, p3, v2

    if-eqz v0, :cond_33

    cmp-long v0, p1, p3

    if-ltz v0, :cond_33

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setExtractBoundaries: Start time is greater than end time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_33
    cmp-long v0, p1, v4

    if-ltz v0, :cond_3f

    cmp-long v0, p3, v2

    if-eqz v0, :cond_48

    cmp-long v0, p3, v4

    if-gez v0, :cond_48

    .line 226
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setExtractBoundaries: Start time or end time is negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_48
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 231
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_5d

    .line 232
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_5d

    .line 233
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 237
    :cond_5d
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    cmp-long v0, p3, v0

    if-eqz v0, :cond_6c

    .line 238
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_6c

    .line 239
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 243
    :cond_6c
    iput-wide p1, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    .line 244
    iput-wide p3, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    .line 245
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->adjustTransitions()V

    .line 246
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoEditor:Landroid/media/videoeditor/VideoEditorImpl;

    invoke-virtual {v0}, Landroid/media/videoeditor/VideoEditorImpl;->updateTimelineDuration()V

    .line 252
    return-void
.end method

.method public setMute(Z)V
    .registers 4
    .parameter "muted"

    .prologue
    .line 663
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 664
    iput-boolean p1, p0, Landroid/media/videoeditor/MediaVideoItem;->mMuted:Z

    .line 665
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_11

    .line 666
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 668
    :cond_11
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_1a

    .line 669
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 671
    :cond_1a
    return-void
.end method

.method public setVolume(I)V
    .registers 4
    .parameter "volumePercent"

    .prologue
    .line 642
    if-ltz p1, :cond_6

    const/16 v0, 0x64

    if-le p1, v0, :cond_e

    .line 643
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid volume"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_e
    iput p1, p0, Landroid/media/videoeditor/MediaVideoItem;->mVolumePercentage:I

    .line 647
    return-void
.end method
