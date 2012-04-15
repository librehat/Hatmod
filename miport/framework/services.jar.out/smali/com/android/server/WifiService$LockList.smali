.class Lcom/android/server/WifiService$LockList;
.super Ljava/lang/Object;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockList"
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WifiService$WifiLock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method private constructor <init>(Lcom/android/server/WifiService;)V
    .registers 3
    .parameter

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/android/server/WifiService$LockList;->this$0:Lcom/android/server/WifiService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    .line 1225
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/WifiService;Lcom/android/server/WifiService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1220
    invoke-direct {p0, p1}, Lcom/android/server/WifiService$LockList;-><init>(Lcom/android/server/WifiService;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/WifiService$LockList;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/WifiService$LockList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 1220
    invoke-direct {p0}, Lcom/android/server/WifiService$LockList;->hasLocks()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/WifiService$LockList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1220
    invoke-direct {p0}, Lcom/android/server/WifiService$LockList;->getStrongestLockMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/WifiService$LockList;Ljava/io/PrintWriter;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1220
    invoke-direct {p0, p1}, Lcom/android/server/WifiService$LockList;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/WifiService$LockList;Lcom/android/server/WifiService$WifiLock;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1220
    invoke-direct {p0, p1}, Lcom/android/server/WifiService$LockList;->addLock(Lcom/android/server/WifiService$WifiLock;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1220
    invoke-direct {p0, p1}, Lcom/android/server/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1220
    invoke-direct {p0, p1}, Lcom/android/server/WifiService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;

    move-result-object v0

    return-object v0
.end method

.method private addLock(Lcom/android/server/WifiService$WifiLock;)V
    .registers 3
    .parameter "lock"

    .prologue
    .line 1248
    iget-object v0, p1, Lcom/android/server/WifiService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    move-result v0

    if-gez v0, :cond_d

    .line 1249
    iget-object v0, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1251
    :cond_d
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .registers 5
    .parameter "pw"

    .prologue
    .line 1273
    iget-object v2, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$WifiLock;

    .line 1274
    .local v1, l:Lcom/android/server/WifiService$WifiLock;
    const-string v2, "    "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1275
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_6

    .line 1277
    .end local v1           #l:Lcom/android/server/WifiService$WifiLock;
    :cond_1b
    return-void
.end method

.method private findLockByBinder(Landroid/os/IBinder;)I
    .registers 5
    .parameter "binder"

    .prologue
    .line 1265
    iget-object v2, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1266
    .local v1, size:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_8
    if-ltz v0, :cond_1a

    .line 1267
    iget-object v2, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WifiService$WifiLock;

    iget-object v2, v2, Lcom/android/server/WifiService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_17

    .line 1269
    .end local v0           #i:I
    :goto_16
    return v0

    .line 1266
    .restart local v0       #i:I
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1269
    :cond_1a
    const/4 v0, -0x1

    goto :goto_16
.end method

.method private declared-synchronized getStrongestLockMode()I
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1232
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_2c

    move-result v1

    if-eqz v1, :cond_c

    .line 1244
    :cond_a
    :goto_a
    monitor-exit p0

    return v0

    .line 1236
    :cond_c
    :try_start_c
    iget-object v1, p0, Lcom/android/server/WifiService$LockList;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$3100(Lcom/android/server/WifiService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/WifiService$LockList;->this$0:Lcom/android/server/WifiService;

    invoke-static {v2}, Lcom/android/server/WifiService;->access$3200(Lcom/android/server/WifiService;)I

    move-result v2

    if-le v1, v2, :cond_1c

    .line 1237
    const/4 v0, 0x3

    goto :goto_a

    .line 1240
    :cond_1c
    iget-object v1, p0, Lcom/android/server/WifiService$LockList;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$3300(Lcom/android/server/WifiService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/WifiService$LockList;->this$0:Lcom/android/server/WifiService;

    invoke-static {v2}, Lcom/android/server/WifiService;->access$3400(Lcom/android/server/WifiService;)I
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2c

    move-result v2

    if-gt v1, v2, :cond_a

    .line 1244
    const/4 v0, 0x2

    goto :goto_a

    .line 1232
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized hasLocks()Z
    .registers 2

    .prologue
    .line 1228
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeLock(Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;
    .registers 5
    .parameter "binder"

    .prologue
    .line 1254
    invoke-direct {p0, p1}, Lcom/android/server/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    move-result v0

    .line 1255
    .local v0, index:I
    if-ltz v0, :cond_12

    .line 1256
    iget-object v2, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$WifiLock;

    .line 1257
    .local v1, ret:Lcom/android/server/WifiService$WifiLock;
    invoke-virtual {v1}, Lcom/android/server/WifiService$WifiLock;->unlinkDeathRecipient()V

    .line 1260
    .end local v1           #ret:Lcom/android/server/WifiService$WifiLock;
    :goto_11
    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method
