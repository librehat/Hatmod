.class Lcom/android/server/UiModeManagerService$7;
.super Ljava/lang/Object;
.source "UiModeManagerService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private hasMoved(Landroid/location/Location;)Z
    .registers 10
    .parameter "location"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 299
    if-nez p1, :cond_5

    .line 322
    :cond_4
    :goto_4
    return v3

    .line 302
    :cond_5
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$700(Lcom/android/server/UiModeManagerService;)Landroid/location/Location;

    move-result-object v4

    if-nez v4, :cond_f

    move v3, v2

    .line 303
    goto :goto_4

    .line 309
    :cond_f
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v6}, Lcom/android/server/UiModeManagerService;->access$700(Lcom/android/server/UiModeManagerService;)Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_4

    .line 314
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$700(Lcom/android/server/UiModeManagerService;)Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 317
    .local v0, distance:F
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$700(Lcom/android/server/UiModeManagerService;)Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    add-float v1, v4, v5

    .line 322
    .local v1, totalAccuracy:F
    cmpl-float v4, v0, v1

    if-ltz v4, :cond_41

    :goto_3f
    move v3, v2

    goto :goto_4

    :cond_41
    move v2, v3

    goto :goto_3f
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 7
    .parameter "location"

    .prologue
    const/4 v0, 0x0

    .line 271
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService$7;->hasMoved(Landroid/location/Location;)Z

    move-result v1

    .line 272
    .local v1, hasMoved:Z
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$700(Lcom/android/server/UiModeManagerService;)Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$700(Lcom/android/server/UiModeManagerService;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_20

    :cond_1f
    const/4 v0, 0x1

    .line 274
    .local v0, hasBetterAccuracy:Z
    :cond_20
    if-nez v1, :cond_24

    if-eqz v0, :cond_4b

    .line 275
    :cond_24
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 276
    :try_start_29
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2, p1}, Lcom/android/server/UiModeManagerService;->access$702(Lcom/android/server/UiModeManagerService;Landroid/location/Location;)Landroid/location/Location;

    .line 277
    if-eqz v1, :cond_4a

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v2}, Lcom/android/server/UiModeManagerService;->isDoingNightMode()Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result v2

    if-nez v2, :cond_4a

    .line 279
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$400(Lcom/android/server/UiModeManagerService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 281
    :cond_4a
    monitor-exit v3

    .line 283
    :cond_4b
    return-void

    .line 281
    :catchall_4c
    move-exception v2

    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_29 .. :try_end_4e} :catchall_4c

    throw v2
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 286
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 289
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 292
    return-void
.end method
