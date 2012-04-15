.class final Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;
.super Landroid/database/ContentObserver;
.source "CursorToBulkCursorAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/CursorToBulkCursorAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContentObserverProxy"
.end annotation


# instance fields
.field protected mRemote:Landroid/database/IContentObserver;


# direct methods
.method public constructor <init>(Landroid/database/IContentObserver;Landroid/os/IBinder$DeathRecipient;)V
    .registers 5
    .parameter "remoteObserver"
    .parameter "recipient"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 62
    iput-object p1, p0, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;->mRemote:Landroid/database/IContentObserver;

    .line 64
    :try_start_6
    invoke-interface {p1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    .line 68
    :goto_e
    return-void

    .line 65
    :catch_f
    move-exception v0

    goto :goto_e
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;->mRemote:Landroid/database/IContentObserver;

    invoke-interface {v0, p1}, Landroid/database/IContentObserver;->onChange(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 87
    :goto_5
    return-void

    .line 84
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)Z
    .registers 4
    .parameter "recipient"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;->mRemote:Landroid/database/IContentObserver;

    invoke-interface {v0}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    return v0
.end method
