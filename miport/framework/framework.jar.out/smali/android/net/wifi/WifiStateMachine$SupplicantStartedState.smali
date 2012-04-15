.class Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 2279
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 7

    .prologue
    .line 2283
    const v2, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2285
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$4902(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 2287
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$5000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 2289
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_supplicant_scan_interval_ms"

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$5100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 2292
    .local v0, supplicantScanIntervalMs:J
    long-to-int v2, v0

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Landroid/net/wifi/WifiNative;->setScanIntervalCommand(I)V

    .line 2293
    return-void
.end method

.method public exit()V
    .registers 3

    .prologue
    .line 2396
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$5000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 2397
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 14
    .parameter "message"

    .prologue
    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2298
    const/4 v1, 0x1

    .line 2299
    .local v1, eventLoggingEnabled:Z
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_178

    .line 2391
    :goto_9
    return v8

    .line 2301
    :sswitch_a
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$5200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$5300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 2388
    :cond_15
    :goto_15
    if-eqz v1, :cond_1f

    .line 2389
    const v6, 0xc366

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-static {v6, v8}, Landroid/util/EventLog;->writeEvent(II)I

    :cond_1f
    move v8, v7

    .line 2391
    goto :goto_9

    .line 2304
    :sswitch_21
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v9, "Connection lost, restart supplicant"

    invoke-static {v6, v9}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 2305
    invoke-static {}, Landroid/net/wifi/WifiNative;->killSupplicant()Z

    .line 2306
    invoke-static {}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V

    .line 2307
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$5000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 2308
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$5400(Landroid/net/wifi/WifiStateMachine;)V

    .line 2309
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;Z)V

    .line 2310
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v6

    const v8, 0x2006f

    invoke-virtual {v6, v8}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 2311
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WpsStateMachine;

    move-result-object v6

    const v8, 0x2007a

    invoke-virtual {v6, v8}, Landroid/net/wifi/WpsStateMachine;->sendMessage(I)V

    .line 2312
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$5500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 2313
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v8, 0x2000b

    const-wide/16 v9, 0x1388

    invoke-virtual {v6, v8, v9, v10}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_15

    .line 2316
    :sswitch_6f
    const/4 v1, 0x0

    .line 2317
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {}, Landroid/net/wifi/WifiNative;->scanResultsCommand()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/net/wifi/WifiStateMachine;->access$5600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 2318
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$5700(Landroid/net/wifi/WifiStateMachine;)V

    .line 2319
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$5802(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_15

    .line 2322
    :sswitch_84
    invoke-static {}, Landroid/net/wifi/WifiNative;->pingCommand()Z

    move-result v3

    .line 2323
    .local v3, ok:Z
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    if-eqz v3, :cond_93

    move v6, v7

    :cond_93
    invoke-virtual {v8, p1, v9, v6}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_15

    .line 2326
    .end local v3           #ok:Z
    :sswitch_98
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2327
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v6

    const v8, 0x20034

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v9

    invoke-virtual {v6, p1, v8, v9}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_15

    .line 2331
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :sswitch_ae
    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8}, Landroid/net/wifi/WifiConfigStore;->removeNetwork(I)Z

    move-result v3

    .line 2332
    .restart local v3       #ok:Z
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    if-eqz v3, :cond_bf

    move v6, v7

    :cond_bf
    invoke-virtual {v8, p1, v9, v6}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_15

    .line 2335
    .end local v3           #ok:Z
    :sswitch_c4
    iget v9, p1, Landroid/os/Message;->arg1:I

    iget v10, p1, Landroid/os/Message;->arg2:I

    if-ne v10, v7, :cond_cb

    move v8, v7

    :cond_cb
    invoke-static {v9, v8}, Landroid/net/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    move-result v3

    .line 2336
    .restart local v3       #ok:Z
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    if-eqz v3, :cond_da

    move v6, v7

    :cond_da
    invoke-virtual {v8, p1, v9, v6}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_15

    .line 2339
    .end local v3           #ok:Z
    :sswitch_df
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2340
    .local v4, time:J
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$5900(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v8

    sub-long v8, v4, v8

    const-wide/32 v10, 0x927c0

    cmp-long v6, v8, v10

    if-lez v6, :cond_15

    .line 2341
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 2342
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6, v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$5902(Landroid/net/wifi/WifiStateMachine;J)J

    goto/16 :goto_15

    .line 2346
    .end local v4           #time:J
    :sswitch_fc
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-static {v8, v9}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v3

    .line 2347
    .restart local v3       #ok:Z
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    if-eqz v3, :cond_10f

    move v6, v7

    :cond_10f
    invoke-virtual {v8, p1, v9, v6}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_15

    .line 2350
    .end local v3           #ok:Z
    :sswitch_114
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/net/wifi/WifiNative;->addToBlacklistCommand(Ljava/lang/String;)Z

    goto/16 :goto_15

    .line 2353
    :sswitch_11d
    invoke-static {}, Landroid/net/wifi/WifiNative;->clearBlacklistCommand()Z

    goto/16 :goto_15

    .line 2356
    :sswitch_122
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    move-result v3

    .line 2357
    .restart local v3       #ok:Z
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v8

    const v9, 0x2003b

    if-eqz v3, :cond_132

    move v6, v7

    :cond_132
    invoke-virtual {v8, p1, v9, v6}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 2360
    const-string v6, "backup"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    .line 2362
    .local v2, ibm:Landroid/app/backup/IBackupManager;
    if-eqz v2, :cond_15

    .line 2364
    :try_start_141
    const-string v6, "com.android.providers.settings"

    invoke-interface {v2, v6}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_146} :catch_148

    goto/16 :goto_15

    .line 2365
    :catch_148
    move-exception v6

    goto/16 :goto_15

    .line 2372
    .end local v2           #ibm:Landroid/app/backup/IBackupManager;
    .end local v3           #ok:Z
    :sswitch_14b
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v8, "Failed to start soft AP with a running supplicant"

    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 2373
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v8, 0xe

    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$1800(Landroid/net/wifi/WifiStateMachine;I)V

    goto/16 :goto_15

    .line 2376
    :sswitch_15b
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v9, p1, Landroid/os/Message;->arg1:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_163

    move v8, v7

    :cond_163
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$4902(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_15

    .line 2379
    :sswitch_168
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2380
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    goto/16 :goto_15

    .line 2383
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :sswitch_171
    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6}, Landroid/net/wifi/WifiConfigStore;->forgetNetwork(I)V

    goto/16 :goto_15

    .line 2299
    :sswitch_data_178
    .sparse-switch
        0x2000c -> :sswitch_a
        0x20015 -> :sswitch_14b
        0x20033 -> :sswitch_84
        0x20034 -> :sswitch_98
        0x20035 -> :sswitch_ae
        0x20036 -> :sswitch_c4
        0x20037 -> :sswitch_df
        0x20038 -> :sswitch_fc
        0x20039 -> :sswitch_114
        0x2003a -> :sswitch_11d
        0x2003b -> :sswitch_122
        0x20048 -> :sswitch_15b
        0x20057 -> :sswitch_168
        0x20058 -> :sswitch_171
        0x24002 -> :sswitch_21
        0x24005 -> :sswitch_6f
    .end sparse-switch
.end method
