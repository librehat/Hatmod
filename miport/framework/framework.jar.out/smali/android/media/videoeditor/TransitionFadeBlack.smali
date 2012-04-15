.class public Landroid/media/videoeditor/TransitionFadeBlack;
.super Landroid/media/videoeditor/Transition;
.source "TransitionFadeBlack.java"


# direct methods
.method private constructor <init>()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 33
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    invoke-direct/range {v0 .. v6}, Landroid/media/videoeditor/TransitionFadeBlack;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V
    .registers 7
    .parameter "transitionId"
    .parameter "afterMediaItem"
    .parameter "beforeMediaItem"
    .parameter "durationMs"
    .parameter "behavior"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p6}, Landroid/media/videoeditor/Transition;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V

    .line 53
    return-void
.end method


# virtual methods
.method generate()V
    .registers 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/media/videoeditor/Transition;->generate()V

    .line 61
    return-void
.end method
