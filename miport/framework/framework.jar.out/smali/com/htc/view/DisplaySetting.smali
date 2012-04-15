.class public Lcom/htc/view/DisplaySetting;
.super Ljava/lang/Object;
.source "DisplaySetting.java"


# static fields
.field public static final STEREOSCOPIC_3D_FORMAT_INTERLEAVED:I = 0x4

.field public static final STEREOSCOPIC_3D_FORMAT_OFF:I = 0x0

.field public static final STEREOSCOPIC_3D_FORMAT_SIDE_BY_SIDE:I = 0x1

.field public static final STEREOSCOPIC_3D_FORMAT_TOP_BOTTOM:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static setStereoscopic3DFormat(Landroid/view/Surface;I)Z
    .registers 6
    .parameter "surface"
    .parameter "format"

    .prologue
    .line 22
    :try_start_0
    const-string/jumbo v1, "yjf DisplaySetting1"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {}, Landroid/view/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/Surface;->getIdentity()I

    move-result v2

    invoke-interface {v1, v2, p1}, Landroid/view/IWindowManager;->setSformat(II)V

    .line 24
    const-string/jumbo v1, "yjf DisplaySetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/Surface;->getIdentity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_30} :catch_32

    .line 28
    :goto_30
    const/4 v1, 0x1

    return v1

    .line 25
    :catch_32
    move-exception v0

    .line 26
    .local v0, e:Landroid/os/RemoteException;
    const-string/jumbo v1, "yjf DisplaySetting err"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/Surface;->getIdentity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method
