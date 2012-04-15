.class Landroid/webkit/HTML5VideoFullScreen$2;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Landroid/webkit/WebChromeClient$CustomViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoFullScreen;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoFullScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen$2;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomViewHidden()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 231
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$2;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-object v0, v0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnStopFullScreen()V

    .line 232
    invoke-static {}, Landroid/webkit/HTML5VideoFullScreen;->access$700()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen$2;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-static {v1}, Landroid/webkit/HTML5VideoFullScreen;->access$600(Landroid/webkit/HTML5VideoFullScreen;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 234
    invoke-static {}, Landroid/webkit/HTML5VideoFullScreen;->access$800()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 235
    invoke-static {}, Landroid/webkit/HTML5VideoFullScreen;->access$700()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {}, Landroid/webkit/HTML5VideoFullScreen;->access$800()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 236
    invoke-static {v2}, Landroid/webkit/HTML5VideoFullScreen;->access$802(Landroid/view/View;)Landroid/view/View;

    .line 238
    :cond_29
    invoke-static {v2}, Landroid/webkit/HTML5VideoFullScreen;->access$702(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 240
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$2;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-object v0, v0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/ViewManager;->showAll()V

    .line 242
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$2;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iput-object v2, v0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 245
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$2;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-static {v0, v2}, Landroid/webkit/HTML5VideoFullScreen;->access$202(Landroid/webkit/HTML5VideoFullScreen;Landroid/widget/MediaController;)Landroid/widget/MediaController;

    .line 246
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$2;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    const/4 v1, 0x4

    iput v1, v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    .line 247
    return-void
.end method
