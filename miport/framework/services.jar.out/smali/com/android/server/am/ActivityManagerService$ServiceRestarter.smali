.class Lcom/android/server/am/ActivityManagerService$ServiceRestarter;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceRestarter"
.end annotation


# instance fields
.field private mService:Lcom/android/server/am/ServiceRecord;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 10465
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ServiceRestarter;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityManagerService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10465
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$ServiceRestarter;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 10473
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$ServiceRestarter;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 10474
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ServiceRestarter;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ServiceRestarter;->mService:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->performServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 10475
    monitor-exit v1

    .line 10476
    return-void

    .line 10475
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method setService(Lcom/android/server/am/ServiceRecord;)V
    .registers 2
    .parameter "service"

    .prologue
    .line 10469
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ServiceRestarter;->mService:Lcom/android/server/am/ServiceRecord;

    .line 10470
    return-void
.end method
