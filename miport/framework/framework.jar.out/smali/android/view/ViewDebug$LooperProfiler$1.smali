.class Landroid/view/ViewDebug$LooperProfiler$1;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug$LooperProfiler;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewDebug$LooperProfiler;


# direct methods
.method constructor <init>(Landroid/view/ViewDebug$LooperProfiler;)V
    .registers 2
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Landroid/view/ViewDebug$LooperProfiler$1;->this$0:Landroid/view/ViewDebug$LooperProfiler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 524
    iget-object v0, p0, Landroid/view/ViewDebug$LooperProfiler$1;->this$0:Landroid/view/ViewDebug$LooperProfiler;

    invoke-static {v0}, Landroid/view/ViewDebug$LooperProfiler;->access$000(Landroid/view/ViewDebug$LooperProfiler;)V

    .line 525
    return-void
.end method
