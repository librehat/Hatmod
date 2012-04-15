.class Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen$1;->onSimLockChangedResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen$1;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->val$success:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 230
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 232
    :cond_15
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->val$success:Z

    if-eqz v0, :cond_58

    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$202(Lcom/android/internal/policy/impl/SimUnlockScreen;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 240
    :cond_36
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$300(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 247
    :goto_4c
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 248
    return-void

    .line 243
    :cond_58
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x10402d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$702(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    goto :goto_4c
.end method
