.class Landroid/webkit/HttpAuthHandlerImpl;
.super Landroid/webkit/HttpAuthHandler;
.source "HttpAuthHandlerImpl.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final AUTH_CANCEL:I = 0xc8

.field private static final AUTH_PROCEED:I = 0x64

.field private static final LOGTAG:Ljava/lang/String; = "network"


# instance fields
.field private mLoaderQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/webkit/LoadListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNetwork:Landroid/webkit/Network;

.field mPassword:Ljava/lang/String;

.field mRequestInFlight:Z

.field mRequestInFlightLock:Ljava/lang/Object;

.field mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Landroid/webkit/HttpAuthHandlerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/webkit/HttpAuthHandlerImpl;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Landroid/webkit/Network;)V
    .registers 3
    .parameter "network"

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/webkit/HttpAuthHandler;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/HttpAuthHandlerImpl;->mRequestInFlightLock:Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Landroid/webkit/HttpAuthHandlerImpl;->mNetwork:Landroid/webkit/Network;

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    .line 73
    return-void
.end method

.method private handleResponseForSynchronousRequest(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "username"
    .parameter "password"

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, loader:Landroid/webkit/LoadListener;
    iget-object v3, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    monitor-enter v3

    .line 113
    :try_start_4
    iget-object v2, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/webkit/LoadListener;

    move-object v1, v0

    .line 114
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_1b

    .line 115
    invoke-virtual {v1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 116
    iput-object p1, p0, Landroid/webkit/HttpAuthHandlerImpl;->mUsername:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Landroid/webkit/HttpAuthHandlerImpl;->mPassword:Ljava/lang/String;

    .line 118
    const/4 v2, 0x1

    .line 120
    :goto_1a
    return v2

    .line 114
    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v2

    .line 120
    :cond_1e
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public static onReceivedCredentials(Landroid/webkit/LoadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "loader"
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 277
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->getFrame()Landroid/webkit/BrowserFrame;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v0

    .line 278
    .local v0, proxy:Landroid/webkit/CallbackProxy;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/CallbackProxy;->onReceivedHttpAuthCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method private processNextLoader()V
    .registers 8

    .prologue
    .line 250
    const/4 v2, 0x0

    .line 251
    .local v2, loader:Landroid/webkit/LoadListener;
    iget-object v6, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    monitor-enter v6

    .line 252
    :try_start_4
    iget-object v5, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/webkit/LoadListener;

    move-object v2, v0

    .line 253
    monitor-exit v6
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_25

    .line 254
    if-eqz v2, :cond_47

    .line 255
    iget-object v6, p0, Landroid/webkit/HttpAuthHandlerImpl;->mRequestInFlightLock:Ljava/lang/Object;

    monitor-enter v6

    .line 256
    :try_start_14
    sget-boolean v5, Landroid/webkit/HttpAuthHandlerImpl;->$assertionsDisabled:Z

    if-nez v5, :cond_28

    iget-boolean v5, p0, Landroid/webkit/HttpAuthHandlerImpl;->mRequestInFlight:Z

    if-eqz v5, :cond_28

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 258
    :catchall_22
    move-exception v5

    monitor-exit v6
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_22

    throw v5

    .line 253
    :catchall_25
    move-exception v5

    :try_start_26
    monitor-exit v6
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v5

    .line 257
    :cond_28
    const/4 v5, 0x1

    :try_start_29
    iput-boolean v5, p0, Landroid/webkit/HttpAuthHandlerImpl;->mRequestInFlight:Z

    .line 258
    monitor-exit v6
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_22

    .line 260
    invoke-virtual {v2}, Landroid/webkit/LoadListener;->getFrame()Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v3

    .line 262
    .local v3, proxy:Landroid/webkit/CallbackProxy;
    invoke-virtual {v2}, Landroid/webkit/LoadListener;->proxyAuthenticate()Z

    move-result v5

    if-eqz v5, :cond_48

    iget-object v5, p0, Landroid/webkit/HttpAuthHandlerImpl;->mNetwork:Landroid/webkit/Network;

    invoke-virtual {v5}, Landroid/webkit/Network;->getProxyHostname()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, hostname:Ljava/lang/String;
    :goto_40
    invoke-virtual {v2}, Landroid/webkit/LoadListener;->realm()Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, realm:Ljava/lang/String;
    invoke-virtual {v3, p0, v1, v4}, Landroid/webkit/CallbackProxy;->onReceivedHttpAuthRequest(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .end local v1           #hostname:Ljava/lang/String;
    .end local v3           #proxy:Landroid/webkit/CallbackProxy;
    .end local v4           #realm:Ljava/lang/String;
    :cond_47
    return-void

    .line 262
    .restart local v3       #proxy:Landroid/webkit/CallbackProxy;
    :cond_48
    invoke-virtual {v2}, Landroid/webkit/LoadListener;->host()Ljava/lang/String;

    move-result-object v1

    goto :goto_40
.end method

.method private signalRequestComplete()V
    .registers 3

    .prologue
    .line 124
    iget-object v1, p0, Landroid/webkit/HttpAuthHandlerImpl;->mRequestInFlightLock:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_3
    sget-boolean v0, Landroid/webkit/HttpAuthHandlerImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Landroid/webkit/HttpAuthHandlerImpl;->mRequestInFlight:Z

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 128
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0

    .line 126
    :cond_14
    const/4 v0, 0x0

    :try_start_15
    iput-boolean v0, p0, Landroid/webkit/HttpAuthHandlerImpl;->mRequestInFlight:Z

    .line 127
    iget-object v0, p0, Landroid/webkit/HttpAuthHandlerImpl;->mRequestInFlightLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 128
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_11

    .line 129
    return-void
.end method

.method private waitForRequestToComplete()V
    .registers 5

    .prologue
    .line 235
    iget-object v2, p0, Landroid/webkit/HttpAuthHandlerImpl;->mRequestInFlightLock:Ljava/lang/Object;

    monitor-enter v2

    .line 236
    :goto_3
    :try_start_3
    iget-boolean v1, p0, Landroid/webkit/HttpAuthHandlerImpl;->mRequestInFlight:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_17

    if-eqz v1, :cond_1a

    .line 238
    :try_start_7
    iget-object v1, p0, Landroid/webkit/HttpAuthHandlerImpl;->mRequestInFlightLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_17
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_3

    .line 239
    :catch_d
    move-exception v0

    .line 240
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_e
    const-string/jumbo v1, "network"

    const-string v3, "Interrupted while waiting for request to complete"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 243
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_17
    move-exception v1

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_17

    throw v1

    :cond_1a
    :try_start_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_17

    .line 244
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, v0, v0}, Landroid/webkit/HttpAuthHandlerImpl;->handleResponseForSynchronousRequest(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 159
    invoke-direct {p0}, Landroid/webkit/HttpAuthHandlerImpl;->signalRequestComplete()V

    .line 164
    :goto_a
    return-void

    .line 162
    :cond_b
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Landroid/webkit/HttpAuthHandlerImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HttpAuthHandlerImpl;->sendMessage(Landroid/os/Message;)Z

    .line 163
    invoke-direct {p0}, Landroid/webkit/HttpAuthHandlerImpl;->signalRequestComplete()V

    goto :goto_a
.end method

.method handleAuthRequest(Landroid/webkit/LoadListener;)V
    .registers 6
    .parameter "loader"

    .prologue
    const/4 v1, 0x1

    .line 193
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 196
    invoke-direct {p0}, Landroid/webkit/HttpAuthHandlerImpl;->waitForRequestToComplete()V

    .line 200
    iget-object v2, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 201
    :try_start_d
    iget-object v1, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 202
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_31

    .line 203
    invoke-direct {p0}, Landroid/webkit/HttpAuthHandlerImpl;->processNextLoader()V

    .line 205
    invoke-direct {p0}, Landroid/webkit/HttpAuthHandlerImpl;->waitForRequestToComplete()V

    .line 207
    iget-object v2, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 208
    :try_start_1c
    sget-boolean v1, Landroid/webkit/HttpAuthHandlerImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_34

    iget-object v1, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_34

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 210
    :catchall_2e
    move-exception v1

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_1c .. :try_end_30} :catchall_2e

    throw v1

    .line 202
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1

    .line 209
    :cond_34
    :try_start_34
    iget-object v1, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 210
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_2e

    .line 212
    iget-object v1, p0, Landroid/webkit/HttpAuthHandlerImpl;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/HttpAuthHandlerImpl;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/webkit/LoadListener;->handleAuthResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_41
    :goto_41
    return-void

    .line 218
    :cond_42
    const/4 v0, 0x0

    .line 220
    .local v0, processNext:Z
    iget-object v2, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 221
    :try_start_46
    iget-object v3, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 222
    iget-object v3, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ne v3, v1, :cond_5b

    move v0, v1

    .line 224
    :goto_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_46 .. :try_end_55} :catchall_5d

    .line 226
    if-eqz v0, :cond_41

    .line 227
    invoke-direct {p0}, Landroid/webkit/HttpAuthHandlerImpl;->processNextLoader()V

    goto :goto_41

    .line 222
    :cond_5b
    const/4 v0, 0x0

    goto :goto_54

    .line 224
    :catchall_5d
    move-exception v1

    :try_start_5e
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, loader:Landroid/webkit/LoadListener;
    iget-object v5, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    monitor-enter v5

    .line 80
    :try_start_5
    iget-object v4, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/webkit/LoadListener;

    move-object v1, v0

    .line 81
    monitor-exit v5
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_20

    .line 82
    sget-boolean v4, Landroid/webkit/HttpAuthHandlerImpl;->$assertionsDisabled:Z

    if-nez v4, :cond_23

    invoke-virtual {v1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v4

    if-eqz v4, :cond_23

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 81
    :catchall_20
    move-exception v4

    :try_start_21
    monitor-exit v5
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v4

    .line 84
    :cond_23
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_4a

    .line 97
    :goto_28
    invoke-direct {p0}, Landroid/webkit/HttpAuthHandlerImpl;->processNextLoader()V

    .line 98
    return-void

    .line 86
    :sswitch_2c
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "username"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, username:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "password"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, password:Ljava/lang/String;
    invoke-virtual {v1, v3, v2}, Landroid/webkit/LoadListener;->handleAuthResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 93
    .end local v2           #password:Ljava/lang/String;
    .end local v3           #username:Ljava/lang/String;
    :sswitch_46
    invoke-virtual {v1, v6, v6}, Landroid/webkit/LoadListener;->handleAuthResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 84
    :sswitch_data_4a
    .sparse-switch
        0x64 -> :sswitch_2c
        0xc8 -> :sswitch_46
    .end sparse-switch
.end method

.method public proceed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "username"
    .parameter "password"

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Landroid/webkit/HttpAuthHandlerImpl;->handleResponseForSynchronousRequest(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 141
    invoke-direct {p0}, Landroid/webkit/HttpAuthHandlerImpl;->signalRequestComplete()V

    .line 149
    :goto_9
    return-void

    .line 144
    :cond_a
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/webkit/HttpAuthHandlerImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 145
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "username"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0, v0}, Landroid/webkit/HttpAuthHandlerImpl;->sendMessage(Landroid/os/Message;)Z

    .line 148
    invoke-direct {p0}, Landroid/webkit/HttpAuthHandlerImpl;->signalRequestComplete()V

    goto :goto_9
.end method

.method public useHttpAuthUsernamePassword()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, loader:Landroid/webkit/LoadListener;
    iget-object v4, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    monitor-enter v4

    .line 173
    :try_start_5
    iget-object v2, p0, Landroid/webkit/HttpAuthHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/webkit/LoadListener;

    move-object v1, v0

    .line 174
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_1a

    .line 175
    if-eqz v1, :cond_1f

    .line 176
    invoke-virtual {v1}, Landroid/webkit/LoadListener;->authCredentialsInvalid()Z

    move-result v2

    if-nez v2, :cond_1d

    const/4 v2, 0x1

    .line 179
    :goto_19
    return v2

    .line 174
    :catchall_1a
    move-exception v2

    :try_start_1b
    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v2

    :cond_1d
    move v2, v3

    .line 176
    goto :goto_19

    :cond_1f
    move v2, v3

    .line 179
    goto :goto_19
.end method
