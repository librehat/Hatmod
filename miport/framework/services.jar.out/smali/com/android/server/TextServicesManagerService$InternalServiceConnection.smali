.class Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalServiceConnection"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private final mLocale:Ljava/lang/String;

.field private final mSciId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .parameter
    .parameter "id"
    .parameter "locale"
    .parameter "bundle"

    .prologue
    .line 719
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 720
    iput-object p2, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    .line 721
    iput-object p3, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mLocale:Ljava/lang/String;

    .line 722
    iput-object p4, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mBundle:Landroid/os/Bundle;

    .line 723
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/TextServicesManagerService$InternalServiceConnection;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .parameter "name"
    .parameter "service"

    .prologue
    .line 727
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->access$100(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 731
    :try_start_7
    invoke-static {p2}, Lcom/android/internal/textservice/ISpellCheckerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ISpellCheckerService;

    move-result-object v1

    .line 732
    .local v1, spellChecker:Lcom/android/internal/textservice/ISpellCheckerService;
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->access$1100(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 733
    .local v0, group:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    if-eqz v0, :cond_24

    invoke-static {v0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->access$700(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    move-result-object v2

    if-ne p0, v2, :cond_24

    .line 734
    invoke-virtual {v0, v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerService;)V

    .line 736
    :cond_24
    monitor-exit v3

    .line 737
    return-void

    .line 736
    .end local v0           #group:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v1           #spellChecker:Lcom/android/internal/textservice/ISpellCheckerService;
    :catchall_26
    move-exception v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .parameter "name"

    .prologue
    .line 741
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v1}, Lcom/android/server/TextServicesManagerService;->access$100(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 742
    :try_start_7
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v1}, Lcom/android/server/TextServicesManagerService;->access$1100(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 743
    .local v0, group:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    if-eqz v0, :cond_28

    invoke-static {v0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->access$700(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    move-result-object v1

    if-ne p0, v1, :cond_28

    .line 744
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v1}, Lcom/android/server/TextServicesManagerService;->access$1100(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    :cond_28
    monitor-exit v2

    .line 747
    return-void

    .line 746
    .end local v0           #group:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2a

    throw v1
.end method
