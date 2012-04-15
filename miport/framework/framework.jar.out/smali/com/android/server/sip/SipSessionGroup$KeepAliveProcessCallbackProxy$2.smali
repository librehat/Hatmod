.class Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->onError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1815
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;->this$0:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

    iput p2, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;->val$errorCode:I

    iput-object p3, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;->val$description:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1818
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;->this$0:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->access$3100(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;)Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    move-result-object v1

    iget v2, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;->val$errorCode:I

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;->val$description:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;->onError(ILjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    .line 1822
    :goto_d
    return-void

    .line 1819
    :catch_e
    move-exception v0

    .line 1820
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "SipSession"

    const-string/jumbo v2, "onError"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method
