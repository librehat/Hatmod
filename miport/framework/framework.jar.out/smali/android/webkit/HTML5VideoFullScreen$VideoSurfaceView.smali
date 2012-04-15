.class Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;
.super Landroid/view/SurfaceView;
.source "HTML5VideoFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoSurfaceView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoFullScreen;


# direct methods
.method public constructor <init>(Landroid/webkit/HTML5VideoFullScreen;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 32
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    .line 33
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 38
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-static {v2}, Landroid/webkit/HTML5VideoFullScreen;->access$000(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v2

    invoke-static {v2, p1}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->getDefaultSize(II)I

    move-result v1

    .line 39
    .local v1, width:I
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-static {v2}, Landroid/webkit/HTML5VideoFullScreen;->access$100(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v2

    invoke-static {v2, p2}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->getDefaultSize(II)I

    move-result v0

    .line 40
    .local v0, height:I
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-object v2, v2, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-object v2, v2, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    const/16 v3, 0x7d2

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->getIntParameter(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2b

    .line 54
    :cond_27
    :goto_27
    invoke-virtual {p0, v1, v0}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->setMeasuredDimension(II)V

    .line 55
    return-void

    .line 46
    :cond_2b
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-static {v2}, Landroid/webkit/HTML5VideoFullScreen;->access$000(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v2

    if-lez v2, :cond_27

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-static {v2}, Landroid/webkit/HTML5VideoFullScreen;->access$100(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v2

    if-lez v2, :cond_27

    .line 47
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-static {v2}, Landroid/webkit/HTML5VideoFullScreen;->access$000(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-static {v3}, Landroid/webkit/HTML5VideoFullScreen;->access$100(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v3

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_5b

    .line 48
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-static {v2}, Landroid/webkit/HTML5VideoFullScreen;->access$100(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v2

    mul-int/2addr v2, v1

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-static {v3}, Landroid/webkit/HTML5VideoFullScreen;->access$000(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v3

    div-int v0, v2, v3

    goto :goto_27

    .line 49
    :cond_5b
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-static {v2}, Landroid/webkit/HTML5VideoFullScreen;->access$000(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-static {v3}, Landroid/webkit/HTML5VideoFullScreen;->access$100(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v3

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_27

    .line 50
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-static {v2}, Landroid/webkit/HTML5VideoFullScreen;->access$000(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-static {v3}, Landroid/webkit/HTML5VideoFullScreen;->access$100(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v3

    div-int v1, v2, v3

    goto :goto_27
.end method
