.class public Landroid/database/ContentObservable;
.super Landroid/database/Observable;
.source "ContentObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Landroid/database/ContentObserver;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchChange(Z)V
    .registers 6
    .parameter "selfChange"

    .prologue
    .line 36
    iget-object v3, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 37
    :try_start_3
    iget-object v2, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    .line 38
    .local v1, observer:Landroid/database/ContentObserver;
    if-eqz p1, :cond_1d

    invoke-virtual {v1}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 39
    :cond_1d
    invoke-virtual {v1, p1}, Landroid/database/ContentObserver;->dispatchChange(Z)V

    goto :goto_9

    .line 42
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Landroid/database/ContentObserver;
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_24
    :try_start_24
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_21

    .line 43
    return-void
.end method

.method public notifyChange(Z)V
    .registers 6
    .parameter "selfChange"

    .prologue
    .line 50
    iget-object v3, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 51
    :try_start_3
    iget-object v2, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    .line 52
    .local v1, observer:Landroid/database/ContentObserver;
    invoke-virtual {v1, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    goto :goto_9

    .line 54
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Landroid/database/ContentObserver;
    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 55
    return-void
.end method

.method public registerObserver(Landroid/database/ContentObserver;)V
    .registers 2
    .parameter "observer"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public bridge synthetic registerObserver(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    check-cast p1, Landroid/database/ContentObserver;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
