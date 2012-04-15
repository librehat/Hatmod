.class Lcom/android/server/PowerManagerService$TimeoutTask;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutTask"
.end annotation


# instance fields
.field nextState:I

.field remainingTimeoutOverride:J

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 1314
    iput-object p1, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1314
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$TimeoutTask;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$600(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v6

    monitor-enter v6

    .line 1324
    :try_start_7
    iget v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_e

    .line 1325
    monitor-exit v6

    .line 1349
    :goto_d
    return-void

    .line 1328
    :cond_e
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$200(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "tv.powermanager.nevertimeout"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1329
    :cond_1f
    monitor-exit v6

    goto :goto_d

    .line 1348
    :catchall_21
    move-exception v0

    monitor-exit v6
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v0

    .line 1332
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    invoke-static {v0, v3}, Lcom/android/server/PowerManagerService;->access$2702(Lcom/android/server/PowerManagerService;I)I

    .line 1333
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    iget-object v4, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$2800(Lcom/android/server/PowerManagerService;)I

    move-result v4

    or-int/2addr v3, v4

    invoke-static {v0, v3}, Lcom/android/server/PowerManagerService;->access$2900(Lcom/android/server/PowerManagerService;I)V

    .line 1335
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1337
    .local v1, now:J
    iget v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    packed-switch v0, :pswitch_data_5e

    .line 1348
    :goto_42
    :pswitch_42
    monitor-exit v6

    goto :goto_d

    .line 1340
    :pswitch_44
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$3000(Lcom/android/server/PowerManagerService;)I

    move-result v0

    if-ltz v0, :cond_55

    .line 1341
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget-wide v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->remainingTimeoutOverride:J

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->access$3100(Lcom/android/server/PowerManagerService;JJI)V

    goto :goto_42

    .line 1345
    :cond_55
    :pswitch_55
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget-wide v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->remainingTimeoutOverride:J

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->access$3100(Lcom/android/server/PowerManagerService;JJI)V
    :try_end_5d
    .catchall {:try_start_24 .. :try_end_5d} :catchall_21

    goto :goto_42

    .line 1337
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_55
        :pswitch_42
        :pswitch_44
    .end packed-switch
.end method
