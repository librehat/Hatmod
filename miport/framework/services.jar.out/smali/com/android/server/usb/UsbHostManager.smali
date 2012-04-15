.class public Lcom/android/server/usb/UsbHostManager;
.super Ljava/lang/Object;
.source "UsbHostManager.java"


# static fields
.field private static final LOG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mHostBlacklist:[Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-class v0, Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbSettingsManager;)V
    .registers 5
    .parameter "context"
    .parameter "settingsManager"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    .line 67
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbHostManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->monitorUsbHostBus()V

    return-void
.end method

.method private isBlackListed(III)Z
    .registers 6
    .parameter "clazz"
    .parameter "subClass"
    .parameter "protocol"

    .prologue
    const/4 v0, 0x1

    .line 86
    const/16 v1, 0x9

    if-ne p1, v1, :cond_6

    .line 94
    :cond_5
    :goto_5
    return v0

    .line 89
    :cond_6
    const/4 v1, 0x3

    if-ne p1, v1, :cond_b

    if-eq p2, v0, :cond_5

    .line 94
    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isBlackListed(Ljava/lang/String;)Z
    .registers 5
    .parameter "deviceName"

    .prologue
    .line 74
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    array-length v0, v2

    .line 75
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    if-ge v1, v0, :cond_15

    .line 76
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 77
    const/4 v2, 0x1

    .line 80
    :goto_11
    return v2

    .line 75
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 80
    :cond_15
    const/4 v2, 0x0

    goto :goto_11
.end method

.method private native monitorUsbHostBus()V
.end method

.method private native nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method private usbDeviceAdded(Ljava/lang/String;IIIII[I[I)V
    .registers 41
    .parameter "deviceName"
    .parameter "vendorID"
    .parameter "productID"
    .parameter "deviceClass"
    .parameter "deviceSubclass"
    .parameter "deviceProtocol"
    .parameter "interfaceValues"
    .parameter "endpointValues"

    .prologue
    .line 107
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(III)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 159
    :cond_14
    :goto_14
    return-void

    .line 112
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    move-object/from16 v31, v0

    monitor-enter v31

    .line 113
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_47

    .line 114
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "device already on mDevices list: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    monitor-exit v31

    goto :goto_14

    .line 158
    :catchall_44
    move-exception v4

    monitor-exit v31
    :try_end_46
    .catchall {:try_start_1c .. :try_end_46} :catchall_44

    throw v4

    .line 118
    :cond_47
    :try_start_47
    move-object/from16 v0, p7

    array-length v4, v0

    div-int/lit8 v30, v4, 0x5

    .line 119
    .local v30, numInterfaces:I
    move/from16 v0, v30

    new-array v0, v0, [Landroid/hardware/usb/UsbInterface;

    move-object/from16 v17, v0
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_44

    .line 122
    .local v17, interfaces:[Landroid/os/Parcelable;
    const/16 v26, 0x0

    .local v26, ival:I
    const/16 v22, 0x0

    .line 123
    .local v22, eval:I
    const/16 v25, 0x0

    .local v25, intf:I
    move/from16 v27, v26

    .end local v26           #ival:I
    .local v27, ival:I
    :goto_5a
    move/from16 v0, v25

    move/from16 v1, v30

    if-ge v0, v1, :cond_ca

    .line 124
    add-int/lit8 v26, v27, 0x1

    .end local v27           #ival:I
    .restart local v26       #ival:I
    :try_start_62
    aget v5, p7, v27
    :try_end_64
    .catchall {:try_start_62 .. :try_end_64} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_64} :catch_bd

    .line 125
    .local v5, interfaceId:I
    add-int/lit8 v27, v26, 0x1

    .end local v26           #ival:I
    .restart local v27       #ival:I
    :try_start_66
    aget v6, p7, v26
    :try_end_68
    .catchall {:try_start_66 .. :try_end_68} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_68} :catch_ee

    .line 126
    .local v6, interfaceClass:I
    add-int/lit8 v26, v27, 0x1

    .end local v27           #ival:I
    .restart local v26       #ival:I
    :try_start_6a
    aget v7, p7, v27
    :try_end_6c
    .catchall {:try_start_6a .. :try_end_6c} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6c} :catch_bd

    .line 127
    .local v7, interfaceSubclass:I
    add-int/lit8 v27, v26, 0x1

    .end local v26           #ival:I
    .restart local v27       #ival:I
    :try_start_6e
    aget v8, p7, v26
    :try_end_70
    .catchall {:try_start_6e .. :try_end_70} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_70} :catch_ee

    .line 128
    .local v8, interfaceProtocol:I
    add-int/lit8 v26, v27, 0x1

    .end local v27           #ival:I
    .restart local v26       #ival:I
    :try_start_72
    aget v29, p7, v27

    .line 130
    .local v29, numEndpoints:I
    move/from16 v0, v29

    new-array v9, v0, [Landroid/hardware/usb/UsbEndpoint;

    .line 131
    .local v9, endpoints:[Landroid/os/Parcelable;
    const/16 v21, 0x0

    .local v21, endp:I
    move/from16 v23, v22

    .end local v22           #eval:I
    .local v23, eval:I
    :goto_7c
    move/from16 v0, v21

    move/from16 v1, v29

    if-ge v0, v1, :cond_a4

    .line 132
    add-int/lit8 v22, v23, 0x1

    .end local v23           #eval:I
    .restart local v22       #eval:I
    aget v18, p8, v23
    :try_end_86
    .catchall {:try_start_72 .. :try_end_86} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_86} :catch_bd

    .line 133
    .local v18, address:I
    add-int/lit8 v23, v22, 0x1

    .end local v22           #eval:I
    .restart local v23       #eval:I
    :try_start_88
    aget v19, p8, v22
    :try_end_8a
    .catchall {:try_start_88 .. :try_end_8a} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8a} :catch_f2

    .line 134
    .local v19, attributes:I
    add-int/lit8 v22, v23, 0x1

    .end local v23           #eval:I
    .restart local v22       #eval:I
    :try_start_8c
    aget v28, p8, v23
    :try_end_8e
    .catchall {:try_start_8c .. :try_end_8e} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8e} :catch_bd

    .line 135
    .local v28, maxPacketSize:I
    add-int/lit8 v23, v22, 0x1

    .end local v22           #eval:I
    .restart local v23       #eval:I
    :try_start_90
    aget v24, p8, v22

    .line 136
    .local v24, interval:I
    new-instance v4, Landroid/hardware/usb/UsbEndpoint;

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v28

    move/from16 v3, v24

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/hardware/usb/UsbEndpoint;-><init>(IIII)V

    aput-object v4, v9, v21

    .line 131
    add-int/lit8 v21, v21, 0x1

    goto :goto_7c

    .line 141
    .end local v18           #address:I
    .end local v19           #attributes:I
    .end local v24           #interval:I
    .end local v28           #maxPacketSize:I
    :cond_a4
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(III)Z
    :try_end_a9
    .catchall {:try_start_90 .. :try_end_a9} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_a9} :catch_f2

    move-result v4

    if-eqz v4, :cond_af

    .line 142
    :try_start_ac
    monitor-exit v31
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_44

    goto/16 :goto_14

    .line 144
    :cond_af
    :try_start_af
    new-instance v4, Landroid/hardware/usb/UsbInterface;

    invoke-direct/range {v4 .. v9}, Landroid/hardware/usb/UsbInterface;-><init>(IIII[Landroid/os/Parcelable;)V

    aput-object v4, v17, v25
    :try_end_b6
    .catchall {:try_start_af .. :try_end_b6} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b6} :catch_f2

    .line 123
    add-int/lit8 v25, v25, 0x1

    move/from16 v22, v23

    .end local v23           #eval:I
    .restart local v22       #eval:I
    move/from16 v27, v26

    .end local v26           #ival:I
    .restart local v27       #ival:I
    goto :goto_5a

    .line 147
    .end local v5           #interfaceId:I
    .end local v6           #interfaceClass:I
    .end local v7           #interfaceSubclass:I
    .end local v8           #interfaceProtocol:I
    .end local v9           #endpoints:[Landroid/os/Parcelable;
    .end local v21           #endp:I
    .end local v27           #ival:I
    .end local v29           #numEndpoints:I
    .restart local v26       #ival:I
    :catch_bd
    move-exception v20

    .line 150
    .local v20, e:Ljava/lang/Exception;
    :goto_be
    :try_start_be
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v11, "error parsing USB descriptors"

    move-object/from16 v0, v20

    invoke-static {v4, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    monitor-exit v31

    goto/16 :goto_14

    .line 154
    .end local v20           #e:Ljava/lang/Exception;
    .end local v26           #ival:I
    .restart local v27       #ival:I
    :cond_ca
    new-instance v10, Landroid/hardware/usb/UsbDevice;

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    invoke-direct/range {v10 .. v17}, Landroid/hardware/usb/UsbDevice;-><init>(Ljava/lang/String;IIIII[Landroid/os/Parcelable;)V

    .line 156
    .local v10, device:Landroid/hardware/usb/UsbDevice;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v4, v10}, Lcom/android/server/usb/UsbSettingsManager;->deviceAttached(Landroid/hardware/usb/UsbDevice;)V

    .line 158
    monitor-exit v31
    :try_end_ec
    .catchall {:try_start_be .. :try_end_ec} :catchall_44

    goto/16 :goto_14

    .line 147
    .end local v10           #device:Landroid/hardware/usb/UsbDevice;
    .restart local v5       #interfaceId:I
    :catch_ee
    move-exception v20

    move/from16 v26, v27

    .end local v27           #ival:I
    .restart local v26       #ival:I
    goto :goto_be

    .end local v22           #eval:I
    .restart local v6       #interfaceClass:I
    .restart local v7       #interfaceSubclass:I
    .restart local v8       #interfaceProtocol:I
    .restart local v9       #endpoints:[Landroid/os/Parcelable;
    .restart local v21       #endp:I
    .restart local v23       #eval:I
    .restart local v29       #numEndpoints:I
    :catch_f2
    move-exception v20

    move/from16 v22, v23

    .end local v23           #eval:I
    .restart local v22       #eval:I
    goto :goto_be
.end method

.method private usbDeviceRemoved(Ljava/lang/String;)V
    .registers 5
    .parameter "deviceName"

    .prologue
    .line 163
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 164
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 165
    .local v0, device:Landroid/hardware/usb/UsbDevice;
    if-eqz v0, :cond_12

    .line 166
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->deviceDetached(Landroid/hardware/usb/UsbDevice;)V

    .line 168
    :cond_12
    monitor-exit v2

    .line 169
    return-void

    .line 168
    .end local v0           #device:Landroid/hardware/usb/UsbDevice;
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 8
    .parameter "fd"
    .parameter "pw"

    .prologue
    .line 211
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 212
    :try_start_3
    const-string v2, "  USB Host State:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 214
    .local v1, name:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 216
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #name:Ljava/lang/String;
    :catchall_45
    move-exception v2

    monitor-exit v3
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_48
    :try_start_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_45

    .line 217
    return-void
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .registers 6
    .parameter "devices"

    .prologue
    .line 186
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 187
    :try_start_3
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 188
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_d

    .line 190
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #name:Ljava/lang/String;
    :catchall_25
    move-exception v2

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_28
    :try_start_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_25

    .line 191
    return-void
.end method

.method public openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .parameter "deviceName"

    .prologue
    .line 195
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 196
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 197
    new-instance v1, Ljava/lang/SecurityException;

    const-string v3, "USB device is on a restricted bus"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1

    .line 199
    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 200
    .local v0, device:Landroid/hardware/usb/UsbDevice;
    if-nez v0, :cond_3d

    .line 202
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist or is restricted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_3d
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->checkPermission(Landroid/hardware/usb/UsbDevice;)V

    .line 206
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    monitor-exit v2
    :try_end_47
    .catchall {:try_start_14 .. :try_end_47} :catchall_11

    return-object v1
.end method

.method public systemReady()V
    .registers 6

    .prologue
    .line 172
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 175
    :try_start_3
    new-instance v0, Lcom/android/server/usb/UsbHostManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostManager$1;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    .line 180
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const/4 v3, 0x0

    const-string v4, "UsbService host thread"

    invoke-direct {v1, v3, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 181
    monitor-exit v2

    .line 182
    return-void

    .line 181
    .end local v0           #runnable:Ljava/lang/Runnable;
    :catchall_15
    move-exception v1

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method
