.class Lcom/android/server/EthernetService$3;
.super Ljava/lang/Thread;
.source "EthernetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/EthernetService;->setEthState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EthernetService;


# direct methods
.method constructor <init>(Lcom/android/server/EthernetService;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 207
    .local p0, this:Lcom/android/server/EthernetService$3;,"Lcom/android/server/EthernetService.3;"
    iput-object p1, p0, Lcom/android/server/EthernetService$3;->this$0:Lcom/android/server/EthernetService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 210
    .local p0, this:Lcom/android/server/EthernetService$3;,"Lcom/android/server/EthernetService.3;"
    iget-object v0, p0, Lcom/android/server/EthernetService$3;->this$0:Lcom/android/server/EthernetService;

    invoke-static {v0}, Lcom/android/server/EthernetService;->access$000(Lcom/android/server/EthernetService;)Landroid/net/ethernet/EthernetStateTracker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ethernet/EthernetStateTracker;->stopInterface(Z)Z

    .line 211
    return-void
.end method
