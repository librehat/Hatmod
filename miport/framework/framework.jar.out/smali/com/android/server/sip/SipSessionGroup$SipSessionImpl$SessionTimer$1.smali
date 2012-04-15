.class Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    iput p2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;->val$timeout:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    iget v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;->val$timeout:I

    invoke-static {v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->access$900(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;I)V

    .line 547
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->access$1000(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->access$1100(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;)V

    .line 548
    :cond_14
    return-void
.end method
