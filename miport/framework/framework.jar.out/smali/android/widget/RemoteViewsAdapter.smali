.class public Landroid/widget/RemoteViewsAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;,
        Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteViewsAdapter"

.field private static final sDefaultCacheSize:I = 0x28

.field private static final sDefaultLoadingViewHeight:I = 0x32

.field private static final sDefaultMessageType:I = 0x0

.field private static final sUnbindServiceDelay:I = 0x1388

.field private static final sUnbindServiceMessageType:I = 0x1


# instance fields
.field private final mAppWidgetId:I

.field private mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

.field private mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMainQueue:Landroid/os/Handler;

.field private mNotifyDataSetChangedAfterOnServiceConnected:Z

.field private mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

.field private mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

.field private mWorkerQueue:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V
    .registers 6
    .parameter "context"
    .parameter "intent"
    .parameter "callback"

    .prologue
    .line 714
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    .line 715
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    .line 716
    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    .line 717
    const-string/jumbo v0, "remoteAdapterAppWidgetId"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    .line 718
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 719
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_26

    .line 720
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null Intent must be specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :cond_26
    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    .line 725
    const-string/jumbo v0, "remoteAdapterAppWidgetId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 726
    const-string/jumbo v0, "remoteAdapterAppWidgetId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 730
    :cond_3c
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RemoteViewsCache-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    .line 731
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 732
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    .line 733
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    .line 736
    new-instance v0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    const/16 v1, 0x28

    invoke-direct {v0, p0, v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;-><init>(Landroid/widget/RemoteViewsAdapter;I)V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    .line 737
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCallback:Ljava/lang/ref/WeakReference;

    .line 738
    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    .line 739
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->requestBindService()Z

    .line 740
    return-void
.end method

.method static synthetic access$000(Landroid/widget/RemoteViewsAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Landroid/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/RemoteViewsAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->onNotifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/RemoteViewsAdapter;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/RemoteViewsAdapter;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/RemoteViewsAdapter;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->updateRemoteViews(IZ)V

    return-void
.end method

.method static synthetic access$1400(Landroid/widget/RemoteViewsAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V

    return-void
.end method

.method static synthetic access$1500(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/RemoteViewsAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->updateTemporaryMetaData()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/RemoteViewsAdapter;)Ljava/lang/ref/WeakReference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCallback:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/RemoteViewsAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->enqueueDeferredUnbindServiceMessage()V

    return-void
.end method

.method private enqueueDeferredUnbindServiceMessage()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1125
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1126
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1127
    return-void
.end method

.method private getConvertViewTypeId(Landroid/view/View;)I
    .registers 5
    .parameter "convertView"

    .prologue
    .line 922
    const/4 v1, -0x1

    .line 923
    .local v1, typeId:I
    if-eqz p1, :cond_12

    .line 924
    const v2, 0x102022e

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 925
    .local v0, tag:Ljava/lang/Object;
    if-eqz v0, :cond_12

    .line 926
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 929
    :cond_12
    return v1
.end method

.method private loadNextIndexInBackground()V
    .registers 3

    .prologue
    .line 754
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    new-instance v1, Landroid/widget/RemoteViewsAdapter$1;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViewsAdapter$1;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 779
    return-void
.end method

.method private onNotifyDataSetChanged()V
    .registers 6

    .prologue
    .line 1040
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v1

    .line 1042
    .local v1, factory:Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_start_6
    invoke-interface {v1}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDataSetChanged()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_23
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_9} :catch_41

    .line 1055
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v3

    .line 1056
    :try_start_c
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->reset()V

    .line 1057
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_5f

    .line 1060
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->updateTemporaryMetaData()V

    .line 1063
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    new-instance v3, Landroid/widget/RemoteViewsAdapter$4;

    invoke-direct {v3, p0}, Landroid/widget/RemoteViewsAdapter$4;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1076
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    .line 1077
    :goto_22
    return-void

    .line 1043
    :catch_23
    move-exception v0

    .line 1044
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "RemoteViewsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in updateNotifyDataSetChanged(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 1049
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_41
    move-exception v0

    .line 1050
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "RemoteViewsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in updateNotifyDataSetChanged(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 1057
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_5f
    move-exception v2

    :try_start_60
    monitor-exit v3
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v2
.end method

.method private processException(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 7
    .parameter "method"
    .parameter "e"

    .prologue
    .line 782
    const-string v1, "RemoteViewsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 787
    .local v0, metaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 788
    :try_start_2d
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->reset()V

    .line 789
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_45

    .line 790
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v2

    .line 791
    :try_start_34
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->reset()V

    .line 792
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_48

    .line 793
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    new-instance v2, Landroid/widget/RemoteViewsAdapter$2;

    invoke-direct {v2, p0}, Landroid/widget/RemoteViewsAdapter$2;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 799
    return-void

    .line 789
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1

    .line 792
    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method private requestBindService()Z
    .registers 5

    .prologue
    .line 1131
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1132
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->bind(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 1136
    :cond_13
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1137
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v0

    return v0
.end method

.method private updateRemoteViews(IZ)V
    .registers 14
    .parameter "position"
    .parameter "isRequested"

    .prologue
    .line 831
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_9

    .line 874
    :goto_8
    return-void

    .line 832
    :cond_9
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v7

    .line 835
    .local v7, factory:Lcom/android/internal/widget/IRemoteViewsFactory;
    const/4 v2, 0x0

    .line 836
    .local v2, remoteViews:Landroid/widget/RemoteViews;
    const-wide/16 v3, 0x0

    .line 838
    .local v3, itemId:J
    :try_start_12
    invoke-interface {v7, p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 839
    invoke-interface {v7, p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->getItemId(I)J
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_48
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_19} :catch_70

    move-result-wide v3

    .line 851
    if-nez v2, :cond_99

    .line 855
    const-string v0, "RemoteViewsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in updateRemoteViews("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "): "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " null RemoteViews "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "returned from RemoteViewsFactory."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 840
    :catch_48
    move-exception v6

    .line 841
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "RemoteViewsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in updateRemoteViews("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "): "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 846
    .end local v6           #e:Landroid/os/RemoteException;
    :catch_70
    move-exception v6

    .line 847
    .local v6, e:Ljava/lang/RuntimeException;
    const-string v0, "RemoteViewsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in updateRemoteViews("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "): "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 859
    .end local v6           #e:Ljava/lang/RuntimeException;
    :cond_99
    iget-object v10, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v10

    .line 861
    :try_start_9c
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->insert(ILandroid/widget/RemoteViews;JZ)V

    .line 865
    move-object v8, v2

    .line 866
    .local v8, rv:Landroid/widget/RemoteViews;
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v0

    iget v9, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    .line 867
    .local v9, typeId:I
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    new-instance v1, Landroid/widget/RemoteViewsAdapter$3;

    invoke-direct {v1, p0, p1, v8, v9}, Landroid/widget/RemoteViewsAdapter$3;-><init>(Landroid/widget/RemoteViewsAdapter;ILandroid/widget/RemoteViews;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 873
    monitor-exit v10

    goto/16 :goto_8

    .end local v8           #rv:Landroid/widget/RemoteViews;
    .end local v9           #typeId:I
    :catchall_b9
    move-exception v0

    monitor-exit v10
    :try_end_bb
    .catchall {:try_start_9c .. :try_end_bb} :catchall_b9

    throw v0
.end method

.method private updateTemporaryMetaData()V
    .registers 10

    .prologue
    .line 802
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v8}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v2

    .line 807
    .local v2, factory:Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_start_6
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->hasStableIds()Z

    move-result v4

    .line 808
    .local v4, hasStableIds:Z
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewTypeCount()I

    move-result v7

    .line 809
    .local v7, viewTypeCount:I
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->getCount()I

    move-result v0

    .line 810
    .local v0, count:I
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v5

    .line 811
    .local v5, loadingView:Landroid/widget/RemoteViews;
    const/4 v3, 0x0

    .line 812
    .local v3, firstView:Landroid/widget/RemoteViews;
    if-lez v0, :cond_20

    if-nez v5, :cond_20

    .line 813
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 815
    :cond_20
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v8}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v6

    .line 816
    .local v6, tmpMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v6
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_27} :catch_37
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_27} :catch_3f

    .line 817
    :try_start_27
    iput-boolean v4, v6, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    .line 819
    add-int/lit8 v8, v7, 0x1

    iput v8, v6, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    .line 820
    iput v0, v6, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 821
    invoke-virtual {v6, v5, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->setLoadingViewTemplates(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 822
    monitor-exit v6

    .line 828
    .end local v0           #count:I
    .end local v3           #firstView:Landroid/widget/RemoteViews;
    .end local v4           #hasStableIds:Z
    .end local v5           #loadingView:Landroid/widget/RemoteViews;
    .end local v6           #tmpMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .end local v7           #viewTypeCount:I
    :goto_33
    return-void

    .line 822
    .restart local v0       #count:I
    .restart local v3       #firstView:Landroid/widget/RemoteViews;
    .restart local v4       #hasStableIds:Z
    .restart local v5       #loadingView:Landroid/widget/RemoteViews;
    .restart local v6       #tmpMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .restart local v7       #viewTypeCount:I
    :catchall_34
    move-exception v8

    monitor-exit v6
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_34

    :try_start_36
    throw v8
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_37} :catch_37
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_37} :catch_3f

    .line 823
    .end local v0           #count:I
    .end local v3           #firstView:Landroid/widget/RemoteViews;
    .end local v4           #hasStableIds:Z
    .end local v5           #loadingView:Landroid/widget/RemoteViews;
    .end local v6           #tmpMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .end local v7           #viewTypeCount:I
    :catch_37
    move-exception v1

    .line 824
    .local v1, e:Landroid/os/RemoteException;
    const-string/jumbo v8, "updateMetaData"

    invoke-direct {p0, v8, v1}, Landroid/widget/RemoteViewsAdapter;->processException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_33

    .line 825
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_3f
    move-exception v1

    .line 826
    .local v1, e:Ljava/lang/RuntimeException;
    const-string/jumbo v8, "updateMetaData"

    invoke-direct {p0, v8, v1}, Landroid/widget/RemoteViewsAdapter;->processException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_33
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 745
    :try_start_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_9

    .line 746
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    .line 749
    :cond_9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 751
    return-void

    .line 749
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 881
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 882
    .local v0, metaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 883
    :try_start_7
    iget v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    monitor-exit v0

    return v1

    .line 884
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 889
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 893
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v2

    .line 894
    :try_start_3
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsMetaDataAt(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 895
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v0

    iget-wide v0, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->itemId:J

    monitor-exit v2

    .line 897
    :goto_14
    return-wide v0

    :cond_15
    const-wide/16 v0, 0x0

    monitor-exit v2

    goto :goto_14

    .line 898
    :catchall_19
    move-exception v0

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getItemViewType(I)I
    .registers 6
    .parameter "position"

    .prologue
    .line 902
    const/4 v1, 0x0

    .line 903
    .local v1, typeId:I
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v3

    .line 904
    :try_start_4
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsMetaDataAt(I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 905
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v2

    iget v1, v2, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    .line 909
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_25

    .line 911
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 912
    .local v0, metaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 913
    :try_start_1c
    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->getMappedViewType(I)I

    move-result v2

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_28

    .end local v0           #metaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    :goto_21
    return v2

    .line 907
    :cond_22
    const/4 v2, 0x0

    :try_start_23
    monitor-exit v3

    goto :goto_21

    .line 909
    :catchall_25
    move-exception v2

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v2

    .line 914
    .restart local v0       #metaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public getRemoteViewsServiceIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 877
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 26
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 936
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsRemoteViewAt(I)Z

    move-result v10

    .line 937
    .local v10, isInCache:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v9

    .line 938
    .local v9, isConnected:Z
    const/4 v7, 0x0

    .line 940
    .local v7, hasNewItems:Z
    if-nez v10, :cond_85

    if-nez v9, :cond_85

    .line 943
    invoke-direct/range {p0 .. p0}, Landroid/widget/RemoteViewsAdapter;->requestBindService()Z

    .line 949
    :goto_27
    if-eqz v10, :cond_126

    .line 950
    const/4 v4, 0x0

    .line 951
    .local v4, convertViewChild:Landroid/view/View;
    const/4 v5, 0x0

    .line 952
    .local v5, convertViewTypeId:I
    const/4 v11, 0x0

    .line 954
    .local v11, layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    move/from16 v18, v0

    if-eqz v18, :cond_166

    .line 955
    move-object/from16 v0, p2

    check-cast v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    move-object v11, v0

    .line 956
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 957
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/RemoteViewsAdapter;->getConvertViewTypeId(Landroid/view/View;)I

    move-result v5

    move-object v12, v11

    .line 962
    .end local v11           #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .local v12, layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :goto_48
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 963
    .local v3, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getRemoteViewsAt(I)Landroid/widget/RemoteViews;

    move-result-object v16

    .line 964
    .local v16, rv:Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v8

    .line 965
    .local v8, indexMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v8, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->isRequested:Z

    .line 966
    iget v0, v8, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    move/from16 v17, v0
    :try_end_72
    .catchall {:try_start_7 .. :try_end_72} :catchall_119

    .line 970
    .local v17, typeId:I
    if-eqz v12, :cond_be

    .line 971
    move/from16 v0, v17

    if-ne v5, v0, :cond_94

    .line 972
    :try_start_78
    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_160
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7d} :catch_c6

    .line 1000
    if-eqz v7, :cond_82

    :try_start_7f
    invoke-direct/range {p0 .. p0}, Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V

    :cond_82
    monitor-exit v19

    move-object v13, v12

    .line 1015
    .end local v3           #context:Landroid/content/Context;
    .end local v4           #convertViewChild:Landroid/view/View;
    .end local v5           #convertViewTypeId:I
    .end local v8           #indexMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v12           #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v16           #rv:Landroid/widget/RemoteViews;
    .end local v17           #typeId:I
    :goto_84
    return-object v13

    .line 946
    :cond_85
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->queuePositionsToBePreloadedFromRequestedPosition(I)Z
    :try_end_92
    .catchall {:try_start_7f .. :try_end_92} :catchall_119

    move-result v7

    goto :goto_27

    .line 975
    .restart local v3       #context:Landroid/content/Context;
    .restart local v4       #convertViewChild:Landroid/view/View;
    .restart local v5       #convertViewTypeId:I
    .restart local v8       #indexMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .restart local v12       #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v16       #rv:Landroid/widget/RemoteViews;
    .restart local v17       #typeId:I
    :cond_94
    :try_start_94
    invoke-virtual {v12}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->removeAllViews()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_160
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_97} :catch_c6

    move-object v11, v12

    .line 981
    .end local v12           #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v11       #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :goto_98
    :try_start_98
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 982
    .local v15, newView:Landroid/view/View;
    const v18, 0x102022e

    new-instance v20, Ljava/lang/Integer;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 984
    invoke-virtual {v11, v15}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->addView(Landroid/view/View;)V
    :try_end_b6
    .catchall {:try_start_98 .. :try_end_b6} :catchall_11f
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_b6} :catch_163

    .line 1000
    if-eqz v7, :cond_bb

    :try_start_b8
    invoke-direct/range {p0 .. p0}, Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V

    :cond_bb
    monitor-exit v19
    :try_end_bc
    .catchall {:try_start_b8 .. :try_end_bc} :catchall_119

    move-object v13, v11

    goto :goto_84

    .line 977
    .end local v11           #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v15           #newView:Landroid/view/View;
    .restart local v12       #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :cond_be
    :try_start_be
    new-instance v11, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;-><init>(Landroid/widget/RemoteViewsAdapter;Landroid/content/Context;)V
    :try_end_c5
    .catchall {:try_start_be .. :try_end_c5} :catchall_160
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c5} :catch_c6

    .end local v12           #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v11       #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    goto :goto_98

    .line 987
    .end local v11           #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v12       #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :catch_c6
    move-exception v6

    move-object v11, v12

    .line 990
    .end local v12           #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .local v6, e:Ljava/lang/Exception;
    .restart local v11       #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :goto_c8
    :try_start_c8
    const-string v18, "RemoteViewsAdapter"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error inflating RemoteViews at position: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", using"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "loading view instead"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const/4 v13, 0x0

    .line 994
    .local v13, loadingView:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v14

    .line 995
    .local v14, metaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v14
    :try_end_106
    .catchall {:try_start_c8 .. :try_end_106} :catchall_11f

    .line 996
    :try_start_106
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v14, v0, v1, v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->access$1600(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    move-result-object v13

    .line 997
    monitor-exit v14
    :try_end_111
    .catchall {:try_start_106 .. :try_end_111} :catchall_11c

    .line 1000
    if-eqz v7, :cond_116

    :try_start_113
    invoke-direct/range {p0 .. p0}, Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V

    :cond_116
    monitor-exit v19

    goto/16 :goto_84

    .line 1017
    .end local v3           #context:Landroid/content/Context;
    .end local v4           #convertViewChild:Landroid/view/View;
    .end local v5           #convertViewTypeId:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #hasNewItems:Z
    .end local v8           #indexMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v9           #isConnected:Z
    .end local v10           #isInCache:Z
    .end local v11           #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v13           #loadingView:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v14           #metaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .end local v16           #rv:Landroid/widget/RemoteViews;
    .end local v17           #typeId:I
    :catchall_119
    move-exception v18

    monitor-exit v19
    :try_end_11b
    .catchall {:try_start_113 .. :try_end_11b} :catchall_119

    throw v18

    .line 997
    .restart local v3       #context:Landroid/content/Context;
    .restart local v4       #convertViewChild:Landroid/view/View;
    .restart local v5       #convertViewTypeId:I
    .restart local v6       #e:Ljava/lang/Exception;
    .restart local v7       #hasNewItems:Z
    .restart local v8       #indexMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .restart local v9       #isConnected:Z
    .restart local v10       #isInCache:Z
    .restart local v11       #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v13       #loadingView:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v14       #metaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .restart local v16       #rv:Landroid/widget/RemoteViews;
    .restart local v17       #typeId:I
    :catchall_11c
    move-exception v18

    :try_start_11d
    monitor-exit v14
    :try_end_11e
    .catchall {:try_start_11d .. :try_end_11e} :catchall_11c

    :try_start_11e
    throw v18
    :try_end_11f
    .catchall {:try_start_11e .. :try_end_11f} :catchall_11f

    .line 1000
    .end local v6           #e:Ljava/lang/Exception;
    .end local v13           #loadingView:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v14           #metaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    :catchall_11f
    move-exception v18

    :goto_120
    if-eqz v7, :cond_125

    :try_start_122
    invoke-direct/range {p0 .. p0}, Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V

    :cond_125
    throw v18

    .line 1005
    .end local v3           #context:Landroid/content/Context;
    .end local v4           #convertViewChild:Landroid/view/View;
    .end local v5           #convertViewTypeId:I
    .end local v8           #indexMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v11           #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v16           #rv:Landroid/widget/RemoteViews;
    .end local v17           #typeId:I
    :cond_126
    const/4 v13, 0x0

    .line 1006
    .restart local v13       #loadingView:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v14

    .line 1007
    .restart local v14       #metaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v14
    :try_end_132
    .catchall {:try_start_122 .. :try_end_132} :catchall_119

    .line 1008
    :try_start_132
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v14, v0, v1, v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->access$1600(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    move-result-object v13

    .line 1009
    monitor-exit v14
    :try_end_13d
    .catchall {:try_start_132 .. :try_end_13d} :catchall_15d

    .line 1011
    :try_start_13d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->add(ILandroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->queueRequestedPositionToLoad(I)V

    .line 1013
    invoke-direct/range {p0 .. p0}, Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V

    .line 1015
    monitor-exit v19
    :try_end_15b
    .catchall {:try_start_13d .. :try_end_15b} :catchall_119

    goto/16 :goto_84

    .line 1009
    :catchall_15d
    move-exception v18

    :try_start_15e
    monitor-exit v14
    :try_end_15f
    .catchall {:try_start_15e .. :try_end_15f} :catchall_15d

    :try_start_15f
    throw v18
    :try_end_160
    .catchall {:try_start_15f .. :try_end_160} :catchall_119

    .line 1000
    .end local v13           #loadingView:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v14           #metaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .restart local v3       #context:Landroid/content/Context;
    .restart local v4       #convertViewChild:Landroid/view/View;
    .restart local v5       #convertViewTypeId:I
    .restart local v8       #indexMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .restart local v12       #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v16       #rv:Landroid/widget/RemoteViews;
    .restart local v17       #typeId:I
    :catchall_160
    move-exception v18

    move-object v11, v12

    .end local v12           #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v11       #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    goto :goto_120

    .line 987
    :catch_163
    move-exception v6

    goto/16 :goto_c8

    .end local v3           #context:Landroid/content/Context;
    .end local v8           #indexMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v16           #rv:Landroid/widget/RemoteViews;
    .end local v17           #typeId:I
    :cond_166
    move-object v12, v11

    .end local v11           #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v12       #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    goto/16 :goto_48
.end method

.method public getViewTypeCount()I
    .registers 3

    .prologue
    .line 1021
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 1022
    .local v0, metaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 1023
    :try_start_7
    iget v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    monitor-exit v0

    return v1

    .line 1024
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 7
    .parameter "msg"

    .prologue
    .line 1109
    const/4 v0, 0x0

    .line 1110
    .local v0, result:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1c

    .line 1120
    :goto_6
    return v0

    .line 1112
    :pswitch_7
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1113
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->unbind(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 1115
    :cond_1a
    const/4 v0, 0x1

    .line 1116
    goto :goto_6

    .line 1110
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method public hasStableIds()Z
    .registers 3

    .prologue
    .line 1028
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 1029
    .local v0, metaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 1030
    :try_start_7
    iget-boolean v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    monitor-exit v0

    return v1

    .line 1031
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1035
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public notifyDataSetChanged()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1081
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1085
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1086
    iget-boolean v0, p0, Landroid/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    if-eqz v0, :cond_13

    .line 1101
    :goto_12
    return-void

    .line 1090
    :cond_13
    iput-boolean v1, p0, Landroid/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    .line 1091
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->requestBindService()Z

    goto :goto_12

    .line 1095
    :cond_19
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    new-instance v1, Landroid/widget/RemoteViewsAdapter$5;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViewsAdapter$5;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_12
.end method

.method superNotifyDataSetChanged()V
    .registers 1

    .prologue
    .line 1104
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1105
    return-void
.end method
