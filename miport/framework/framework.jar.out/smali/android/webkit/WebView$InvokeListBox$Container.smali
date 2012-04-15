.class Landroid/webkit/WebView$InvokeListBox$Container;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView$InvokeListBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Container"
.end annotation


# static fields
.field static final OPTGROUP:I = -0x1

.field static final OPTION_DISABLED:I = 0x0

.field static final OPTION_ENABLED:I = 0x1


# instance fields
.field mEnabled:I

.field mId:I

.field mString:Ljava/lang/String;

.field final synthetic this$1:Landroid/webkit/WebView$InvokeListBox;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView$InvokeListBox;)V
    .registers 2
    .parameter

    .prologue
    .line 8933
    iput-object p1, p0, Landroid/webkit/WebView$InvokeListBox$Container;->this$1:Landroid/webkit/WebView$InvokeListBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8933
    invoke-direct {p0, p1}, Landroid/webkit/WebView$InvokeListBox$Container;-><init>(Landroid/webkit/WebView$InvokeListBox;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8948
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$Container;->mString:Ljava/lang/String;

    return-object v0
.end method
