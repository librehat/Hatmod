.class final Landroid/app/ContextImpl$33;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 452
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 6
    .parameter "ctx"

    .prologue
    .line 454
    const-string v2, "ethernet"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 455
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/ethernet/IEthernetManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ethernet/IEthernetManager;

    move-result-object v1

    .line 456
    .local v1, service:Landroid/net/ethernet/IEthernetManager;
    new-instance v2, Landroid/net/ethernet/EthernetManager;

    iget-object v3, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/net/ethernet/EthernetManager;-><init>(Landroid/net/ethernet/IEthernetManager;Landroid/os/Handler;)V

    return-object v2
.end method
