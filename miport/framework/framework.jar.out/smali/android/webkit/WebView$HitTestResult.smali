.class public Landroid/webkit/WebView$HitTestResult;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HitTestResult"
.end annotation


# static fields
.field public static final ANCHOR_TYPE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EDIT_TEXT_TYPE:I = 0x9

.field public static final EMAIL_TYPE:I = 0x4

.field public static final GEO_TYPE:I = 0x3

.field public static final IMAGE_ANCHOR_TYPE:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMAGE_TYPE:I = 0x5

.field public static final PHONE_TYPE:I = 0x2

.field public static final SRC_ANCHOR_TYPE:I = 0x7

.field public static final SRC_IMAGE_ANCHOR_TYPE:I = 0x8

.field public static final UNKNOWN_TYPE:I


# instance fields
.field private mExtra:Ljava/lang/String;

.field private mType:I

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .registers 3
    .parameter

    .prologue
    .line 1014
    iput-object p1, p0, Landroid/webkit/WebView$HitTestResult;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1015
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView$HitTestResult;->mType:I

    .line 1016
    return-void
.end method

.method static synthetic access$1000(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 967
    invoke-direct {p0, p1}, Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Landroid/webkit/WebView$HitTestResult;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 967
    iget v0, p0, Landroid/webkit/WebView$HitTestResult;->mType:I

    return v0
.end method

.method static synthetic access$900(Landroid/webkit/WebView$HitTestResult;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 967
    invoke-direct {p0, p1}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    return-void
.end method

.method private setExtra(Ljava/lang/String;)V
    .registers 2
    .parameter "extra"

    .prologue
    .line 1023
    iput-object p1, p0, Landroid/webkit/WebView$HitTestResult;->mExtra:Ljava/lang/String;

    .line 1024
    return-void
.end method

.method private setType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 1019
    iput p1, p0, Landroid/webkit/WebView$HitTestResult;->mType:I

    .line 1020
    return-void
.end method


# virtual methods
.method public getExtra()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1031
    iget-object v0, p0, Landroid/webkit/WebView$HitTestResult;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 1027
    iget v0, p0, Landroid/webkit/WebView$HitTestResult;->mType:I

    return v0
.end method
