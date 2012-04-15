.class Lcom/android/server/WifiService$NotificationEnabledSettingObserver;
.super Landroid/database/ContentObserver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationEnabledSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method public constructor <init>(Lcom/android/server/WifiService;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "handler"

    .prologue
    .line 1730
    iput-object p1, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    .line 1731
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1732
    return-void
.end method

.method private getValue()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1750
    iget-object v1, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_networks_available_notification_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_14

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .parameter "selfChange"

    .prologue
    .line 1743
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1745
    iget-object v0, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->getValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$4002(Lcom/android/server/WifiService;Z)Z

    .line 1746
    iget-object v0, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    invoke-static {v0}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;)V

    .line 1747
    return-void
.end method

.method public register()V
    .registers 4

    .prologue
    .line 1735
    iget-object v1, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1736
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "wifi_networks_available_notification_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1738
    iget-object v1, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->getValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/WifiService;->access$4002(Lcom/android/server/WifiService;Z)Z

    .line 1739
    return-void
.end method
