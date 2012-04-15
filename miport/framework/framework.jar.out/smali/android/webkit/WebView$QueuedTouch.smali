.class Landroid/webkit/WebView$QueuedTouch;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueuedTouch"
.end annotation


# instance fields
.field mEvent:Landroid/view/MotionEvent;

.field mNext:Landroid/webkit/WebView$QueuedTouch;

.field mSequence:J

.field mTed:Landroid/webkit/WebViewCore$TouchEventData;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 7847
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 7847
    invoke-direct {p0}, Landroid/webkit/WebView$QueuedTouch;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Landroid/webkit/WebView$QueuedTouch;)Landroid/webkit/WebView$QueuedTouch;
    .registers 7
    .parameter "other"

    .prologue
    .line 7871
    iget-wide v1, p1, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    iget-wide v3, p0, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_b

    .line 7872
    iput-object p0, p1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 7882
    .end local p1
    :goto_a
    return-object p1

    .line 7876
    .restart local p1
    :cond_b
    move-object v0, p0

    .line 7877
    .local v0, insertAt:Landroid/webkit/WebView$QueuedTouch;
    :goto_c
    iget-object v1, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    if-eqz v1, :cond_1d

    iget-object v1, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iget-wide v1, v1, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    iget-wide v3, p1, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1d

    .line 7878
    iget-object v0, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    goto :goto_c

    .line 7880
    :cond_1d
    iget-object v1, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iput-object v1, p1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 7881
    iput-object p1, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    move-object p1, p0

    .line 7882
    goto :goto_a
.end method

.method public set(Landroid/view/MotionEvent;J)Landroid/webkit/WebView$QueuedTouch;
    .registers 6
    .parameter "ev"
    .parameter "sequence"

    .prologue
    const/4 v1, 0x0

    .line 7863
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView$QueuedTouch;->mEvent:Landroid/view/MotionEvent;

    .line 7864
    iput-wide p2, p0, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    .line 7865
    iput-object v1, p0, Landroid/webkit/WebView$QueuedTouch;->mTed:Landroid/webkit/WebViewCore$TouchEventData;

    .line 7866
    iput-object v1, p0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 7867
    return-object p0
.end method

.method public set(Landroid/webkit/WebViewCore$TouchEventData;)Landroid/webkit/WebView$QueuedTouch;
    .registers 5
    .parameter "ted"

    .prologue
    const/4 v2, 0x0

    .line 7855
    iget-wide v0, p1, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    iput-wide v0, p0, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    .line 7856
    iput-object p1, p0, Landroid/webkit/WebView$QueuedTouch;->mTed:Landroid/webkit/WebViewCore$TouchEventData;

    .line 7857
    iput-object v2, p0, Landroid/webkit/WebView$QueuedTouch;->mEvent:Landroid/view/MotionEvent;

    .line 7858
    iput-object v2, p0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 7859
    return-object p0
.end method
