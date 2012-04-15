.class Lcom/android/server/StatusBarManagerService$4;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StatusBarManagerService;->updateUiVisibilityLocked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StatusBarManagerService;

.field final synthetic val$vis:I


# direct methods
.method constructor <init>(Lcom/android/server/StatusBarManagerService;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService$4;->this$0:Lcom/android/server/StatusBarManagerService;

    iput p2, p0, Lcom/android/server/StatusBarManagerService$4;->val$vis:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService$4;->this$0:Lcom/android/server/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_f

    .line 320
    :try_start_6
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService$4;->this$0:Lcom/android/server/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    iget v1, p0, Lcom/android/server/StatusBarManagerService$4;->val$vis:I

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBar;->setSystemUiVisibility(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 324
    :cond_f
    :goto_f
    return-void

    .line 321
    :catch_10
    move-exception v0

    goto :goto_f
.end method
