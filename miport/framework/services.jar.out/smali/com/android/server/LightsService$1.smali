.class Lcom/android/server/LightsService$1;
.super Landroid/os/IHardwareService$Stub;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final FLASHLIGHT_FILE:Ljava/lang/String; = "/sys/class/leds/spotlight/brightness"


# instance fields
.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/LightsService;)V
    .registers 2
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    invoke-direct {p0}, Landroid/os/IHardwareService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlashlightEnabled()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 146
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    const-string v4, "/sys/class/leds/spotlight/brightness"

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, fis:Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    .line 148
    .local v2, result:I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_15

    .line 149
    const/16 v4, 0x30

    if-eq v2, v4, :cond_14

    const/4 v3, 0x1

    .line 151
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v2           #result:I
    :cond_14
    :goto_14
    return v3

    .line 150
    :catch_15
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/Exception;
    goto :goto_14
.end method

.method public setFlashlightEnabled(Z)V
    .registers 6
    .parameter "on"

    .prologue
    .line 156
    iget-object v2, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    invoke-static {v2}, Lcom/android/server/LightsService;->access$300(Lcom/android/server/LightsService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.FLASHLIGHT"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    invoke-static {v2}, Lcom/android/server/LightsService;->access$300(Lcom/android/server/LightsService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.HARDWARE_TEST"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_24

    .line 160
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FLASHLIGHT or HARDWARE_TEST permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    :cond_24
    :try_start_24
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/class/leds/spotlight/brightness"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 164
    .local v1, fos:Ljava/io/FileOutputStream;
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 165
    .local v0, bytes:[B
    const/4 v3, 0x0

    if-eqz p1, :cond_42

    const/16 v2, 0x31

    :goto_33
    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 166
    const/4 v2, 0x1

    const/16 v3, 0xa

    aput-byte v3, v0, v2

    .line 167
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 168
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_41} :catch_45

    .line 172
    .end local v0           #bytes:[B
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :goto_41
    return-void

    .line 165
    .restart local v0       #bytes:[B
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_42
    const/16 v2, 0x30

    goto :goto_33

    .line 169
    .end local v0           #bytes:[B
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :catch_45
    move-exception v2

    goto :goto_41
.end method
