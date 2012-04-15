.class Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpellCheckerBindGroup"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field public mBound:Z

.field public mConnected:Z

.field private final mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field public mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$InternalServiceConnection;Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)V
    .registers 14
    .parameter
    .parameter "connection"
    .parameter "listener"
    .parameter "locale"
    .parameter "scListener"
    .parameter "uid"
    .parameter "bundle"

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 583
    const-class v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    .line 585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/ArrayList;

    .line 594
    iput-object p2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mBound:Z

    .line 596
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object v5, p7

    .line 597
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->addListener(Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    .line 598
    return-void
.end method

.method static synthetic access$700(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private cleanLocked()V
    .registers 5

    .prologue
    .line 686
    iget-boolean v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mBound:Z

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 687
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mBound:Z

    .line 688
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    invoke-static {v2}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->access$1000(Lcom/android/server/TextServicesManagerService$InternalServiceConnection;)Ljava/lang/String;

    move-result-object v1

    .line 689
    .local v1, sciId:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->access$1100(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 690
    .local v0, cur:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    if-ne v0, p0, :cond_2c

    .line 694
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->access$1100(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    :cond_2c
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->access$200(Lcom/android/server/TextServicesManagerService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 698
    .end local v0           #cur:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v1           #sciId:Ljava/lang/String;
    :cond_37
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .registers 18
    .parameter "tsListener"
    .parameter "locale"
    .parameter "scListener"
    .parameter "uid"
    .parameter "bundle"

    .prologue
    .line 627
    const/4 v9, 0x0

    .line 628
    .local v9, recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v1}, Lcom/android/server/TextServicesManagerService;->access$100(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v11

    monitor-enter v11

    .line 630
    :try_start_8
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 631
    .local v10, size:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_f
    if-ge v8, v10, :cond_27

    .line 632
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    invoke-virtual {v1, p3}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->hasSpellCheckerListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_49
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1c} :catch_4f

    move-result v1

    if-eqz v1, :cond_24

    .line 634
    const/4 v0, 0x0

    :try_start_20
    monitor-exit v11
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_49

    move-object v1, v0

    move-object v0, v9

    .line 646
    .end local v8           #i:I
    .end local v9           #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .end local v10           #size:I
    .local v0, recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :goto_23
    return-object v1

    .line 631
    .end local v0           #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .restart local v8       #i:I
    .restart local v9       #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .restart local v10       #size:I
    :cond_24
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 637
    :cond_27
    :try_start_27
    new-instance v0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;-><init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)V
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_49
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_36} :catch_4f

    .line 639
    .end local v9           #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .restart local v0       #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :try_start_36
    invoke-interface {p3}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 640
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catchall {:try_start_36 .. :try_end_43} :catchall_4d
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_43} :catch_52

    .line 644
    .end local v8           #i:I
    .end local v10           #size:I
    :goto_43
    :try_start_43
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 645
    monitor-exit v11

    move-object v1, v0

    .line 646
    goto :goto_23

    .line 645
    .end local v0           #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .restart local v9       #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :catchall_49
    move-exception v1

    move-object v0, v9

    .end local v9           #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .restart local v0       #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :goto_4b
    monitor-exit v11
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_4d

    throw v1

    :catchall_4d
    move-exception v1

    goto :goto_4b

    .line 641
    .end local v0           #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .restart local v9       #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :catch_4f
    move-exception v1

    move-object v0, v9

    .end local v9           #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .restart local v0       #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    goto :goto_43

    .restart local v8       #i:I
    .restart local v10       #size:I
    :catch_52
    move-exception v1

    goto :goto_43
.end method

.method public onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerService;)V
    .registers 10
    .parameter "spellChecker"

    .prologue
    .line 604
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v4}, Lcom/android/server/TextServicesManagerService;->access$100(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 605
    :try_start_7
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_3d

    .line 607
    .local v2, listener:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :try_start_19
    iget-object v4, v2, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScLocale:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    iget-object v7, v2, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mBundle:Landroid/os/Bundle;

    invoke-interface {p1, v4, v6, v7}, Lcom/android/internal/textservice/ISpellCheckerService;->getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)Lcom/android/internal/textservice/ISpellCheckerSession;

    move-result-object v3

    .line 609
    .local v3, session:Lcom/android/internal/textservice/ISpellCheckerSession;
    iget-object v4, v2, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    invoke-interface {v4, v3}, Lcom/android/internal/textservice/ITextServicesSessionListener;->onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_3d
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_28} :catch_29

    goto :goto_d

    .line 610
    .end local v3           #session:Lcom/android/internal/textservice/ISpellCheckerSession;
    :catch_29
    move-exception v0

    .line 611
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2a
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    const-string v6, "Exception in getting the spell checker session.Reconnect to the spellchecker. "

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    invoke-virtual {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V

    .line 614
    monitor-exit v5

    .line 620
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #listener:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :goto_35
    return-void

    .line 617
    :cond_36
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    .line 618
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    .line 619
    monitor-exit v5

    goto :goto_35

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_3d
    move-exception v4

    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_2a .. :try_end_3f} :catchall_3d

    throw v4
.end method

.method public removeAll()V
    .registers 7

    .prologue
    .line 701
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    const-string v4, "Remove the spell checker bind unexpectedly."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v3}, Lcom/android/server/TextServicesManagerService;->access$100(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 703
    :try_start_e
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 704
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    if-ge v0, v2, :cond_2c

    .line 705
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    .line 706
    .local v1, idr:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    iget-object v3, v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-interface {v3}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v1, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 704
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 708
    .end local v1           #idr:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :cond_2c
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 709
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 710
    monitor-exit v4

    .line 711
    return-void

    .line 710
    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_36
    move-exception v3

    monitor-exit v4
    :try_end_38
    .catchall {:try_start_e .. :try_end_38} :catchall_36

    throw v3
.end method

.method public removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .registers 11
    .parameter "listener"

    .prologue
    .line 653
    iget-object v6, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v6}, Lcom/android/server/TextServicesManagerService;->access$100(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    .line 654
    :try_start_7
    iget-object v6, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 655
    .local v4, size:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 657
    .local v2, removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    if-ge v0, v4, :cond_29

    .line 658
    iget-object v6, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    .line 659
    .local v5, tempRecipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    invoke-virtual {v5, p1}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->hasSpellCheckerListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 663
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 666
    .end local v5           #tempRecipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :cond_29
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 667
    .local v3, removeSize:I
    const/4 v0, 0x0

    :goto_2e
    if-ge v0, v3, :cond_48

    .line 671
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    .line 672
    .local v1, idr:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    iget-object v6, v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-interface {v6}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v1, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 673
    iget-object v6, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 667
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 675
    .end local v1           #idr:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :cond_48
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 676
    monitor-exit v7

    .line 677
    return-void

    .line 676
    .end local v0           #i:I
    .end local v2           #removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;>;"
    .end local v3           #removeSize:I
    .end local v4           #size:I
    :catchall_4d
    move-exception v6

    monitor-exit v7
    :try_end_4f
    .catchall {:try_start_7 .. :try_end_4f} :catchall_4d

    throw v6
.end method
