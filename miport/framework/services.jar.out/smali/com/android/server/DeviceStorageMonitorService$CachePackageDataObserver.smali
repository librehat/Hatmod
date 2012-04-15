.class Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CachePackageDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceStorageMonitorService;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .registers 7
    .parameter "packageName"
    .parameter "succeeded"

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    invoke-static {v0, p2}, Lcom/android/server/DeviceStorageMonitorService;->access$102(Lcom/android/server/DeviceStorageMonitorService;Z)Z

    .line 122
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    invoke-static {v0, v3}, Lcom/android/server/DeviceStorageMonitorService;->access$202(Lcom/android/server/DeviceStorageMonitorService;Z)Z

    .line 125
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    const-wide/16 v1, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/android/server/DeviceStorageMonitorService;->access$300(Lcom/android/server/DeviceStorageMonitorService;ZJ)V

    .line 126
    return-void
.end method
