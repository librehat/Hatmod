.class Landroid/webkit/WebView$InnerScrollChangedListener;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerScrollChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;)V
    .registers 2
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Landroid/webkit/WebView$InnerScrollChangedListener;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 342
    invoke-direct {p0, p1}, Landroid/webkit/WebView$InnerScrollChangedListener;-><init>(Landroid/webkit/WebView;)V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Landroid/webkit/WebView$InnerScrollChangedListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 345
    iget-object v0, p0, Landroid/webkit/WebView$InnerScrollChangedListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->setGLRectViewport()V

    .line 347
    :cond_d
    return-void
.end method
