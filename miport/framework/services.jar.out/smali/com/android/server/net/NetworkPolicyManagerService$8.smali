.class Lcom/android/server/net/NetworkPolicyManagerService$8;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 1409
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 15
    .parameter "msg"

    .prologue
    const/4 v11, 0x1

    .line 1412
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_110

    .line 1499
    const/4 v10, 0x0

    :goto_7
    return v10

    .line 1414
    :pswitch_8
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 1415
    .local v8, uid:I
    iget v9, p1, Landroid/os/Message;->arg2:I

    .line 1416
    .local v9, uidRules:I
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 1417
    .local v3, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_17
    if-ge v1, v3, :cond_2d

    .line 1418
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/net/INetworkPolicyListener;

    .line 1419
    .local v4, listener:Landroid/net/INetworkPolicyListener;
    if-eqz v4, :cond_2a

    .line 1421
    :try_start_27
    invoke-interface {v4, v8, v9}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_108

    .line 1417
    :cond_2a
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1426
    .end local v4           #listener:Landroid/net/INetworkPolicyListener;
    :cond_2d
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    move v10, v11

    .line 1427
    goto :goto_7

    .line 1430
    .end local v1           #i:I
    .end local v3           #length:I
    .end local v8           #uid:I
    .end local v9           #uidRules:I
    :pswitch_38
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/String;

    move-object v5, v10

    check-cast v5, [Ljava/lang/String;

    .line 1431
    .local v5, meteredIfaces:[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 1432
    .restart local v3       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4a
    if-ge v1, v3, :cond_60

    .line 1433
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/net/INetworkPolicyListener;

    .line 1434
    .restart local v4       #listener:Landroid/net/INetworkPolicyListener;
    if-eqz v4, :cond_5d

    .line 1436
    :try_start_5a
    invoke-interface {v4, v5}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5d} :catch_10b

    .line 1432
    :cond_5d
    :goto_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 1441
    .end local v4           #listener:Landroid/net/INetworkPolicyListener;
    :cond_60
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    move v10, v11

    .line 1442
    goto :goto_7

    .line 1445
    .end local v1           #i:I
    .end local v3           #length:I
    .end local v5           #meteredIfaces:[Ljava/lang/String;
    :pswitch_6b
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 1446
    .local v6, pid:I
    iget v8, p1, Landroid/os/Message;->arg2:I

    .line 1447
    .restart local v8       #uid:I
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1449
    .local v0, foregroundActivities:Z
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 1454
    :try_start_7e
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseBooleanArray;

    .line 1455
    .local v7, pidForeground:Landroid/util/SparseBooleanArray;
    if-nez v7, :cond_9b

    .line 1456
    new-instance v7, Landroid/util/SparseBooleanArray;

    .end local v7           #pidForeground:Landroid/util/SparseBooleanArray;
    const/4 v10, 0x2

    invoke-direct {v7, v10}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1457
    .restart local v7       #pidForeground:Landroid/util/SparseBooleanArray;
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1459
    :cond_9b
    invoke-virtual {v7, v6, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1460
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v10, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 1461
    monitor-exit v12

    move v10, v11

    .line 1462
    goto/16 :goto_7

    .line 1461
    .end local v7           #pidForeground:Landroid/util/SparseBooleanArray;
    :catchall_a7
    move-exception v10

    monitor-exit v12
    :try_end_a9
    .catchall {:try_start_7e .. :try_end_a9} :catchall_a7

    throw v10

    .line 1465
    .end local v0           #foregroundActivities:Z
    .end local v6           #pid:I
    .end local v8           #uid:I
    :pswitch_aa
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 1466
    .restart local v6       #pid:I
    iget v8, p1, Landroid/os/Message;->arg2:I

    .line 1468
    .restart local v8       #uid:I
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 1470
    :try_start_b5
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseBooleanArray;

    .line 1471
    .restart local v7       #pidForeground:Landroid/util/SparseBooleanArray;
    if-eqz v7, :cond_cb

    .line 1472
    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1473
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v10, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 1475
    :cond_cb
    monitor-exit v12

    move v10, v11

    .line 1476
    goto/16 :goto_7

    .line 1475
    .end local v7           #pidForeground:Landroid/util/SparseBooleanArray;
    :catchall_cf
    move-exception v10

    monitor-exit v12
    :try_end_d1
    .catchall {:try_start_b5 .. :try_end_d1} :catchall_cf

    throw v10

    .line 1479
    .end local v6           #pid:I
    .end local v8           #uid:I
    :pswitch_d2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1481
    .local v2, iface:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$600(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 1482
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 1483
    :try_start_e2
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1500(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/HashSet;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_eb
    .catchall {:try_start_e2 .. :try_end_eb} :catchall_105

    move-result v10

    if-eqz v10, :cond_101

    .line 1487
    :try_start_ee
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v10

    invoke-interface {v10}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_f7
    .catchall {:try_start_ee .. :try_end_f7} :catchall_105
    .catch Landroid/os/RemoteException; {:try_start_ee .. :try_end_f7} :catch_10e

    .line 1492
    :goto_f7
    :try_start_f7
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$700(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 1493
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$800(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 1495
    :cond_101
    monitor-exit v12

    move v10, v11

    .line 1496
    goto/16 :goto_7

    .line 1495
    :catchall_105
    move-exception v10

    monitor-exit v12
    :try_end_107
    .catchall {:try_start_f7 .. :try_end_107} :catchall_105

    throw v10

    .line 1422
    .end local v2           #iface:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v3       #length:I
    .restart local v4       #listener:Landroid/net/INetworkPolicyListener;
    .restart local v8       #uid:I
    .restart local v9       #uidRules:I
    :catch_108
    move-exception v10

    goto/16 :goto_2a

    .line 1437
    .end local v8           #uid:I
    .end local v9           #uidRules:I
    .restart local v5       #meteredIfaces:[Ljava/lang/String;
    :catch_10b
    move-exception v10

    goto/16 :goto_5d

    .line 1488
    .end local v1           #i:I
    .end local v3           #length:I
    .end local v4           #listener:Landroid/net/INetworkPolicyListener;
    .end local v5           #meteredIfaces:[Ljava/lang/String;
    .restart local v2       #iface:Ljava/lang/String;
    :catch_10e
    move-exception v10

    goto :goto_f7

    .line 1412
    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_8
        :pswitch_38
        :pswitch_6b
        :pswitch_aa
        :pswitch_d2
    .end packed-switch
.end method
