.class public Landroid/hardware/SensorManager;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorManager$LmsFilter;,
        Landroid/hardware/SensorManager$LegacyListener;,
        Landroid/hardware/SensorManager$ListenerDelegate;,
        Landroid/hardware/SensorManager$SensorThread;,
        Landroid/hardware/SensorManager$SensorEventPool;
    }
.end annotation


# static fields
.field public static final AXIS_MINUS_X:I = 0x81

.field public static final AXIS_MINUS_Y:I = 0x82

.field public static final AXIS_MINUS_Z:I = 0x83

.field public static final AXIS_X:I = 0x1

.field public static final AXIS_Y:I = 0x2

.field public static final AXIS_Z:I = 0x3

.field public static final DATA_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Z:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final EVENT_TYPE_SENSOR:I = 0x4

.field public static final GRAVITY_DEATH_STAR_I:F = 3.5303614E-7f

.field public static final GRAVITY_EARTH:F = 9.80665f

.field public static final GRAVITY_JUPITER:F = 23.12f

.field public static final GRAVITY_MARS:F = 3.71f

.field public static final GRAVITY_MERCURY:F = 3.7f

.field public static final GRAVITY_MOON:F = 1.6f

.field public static final GRAVITY_NEPTUNE:F = 11.0f

.field public static final GRAVITY_PLUTO:F = 0.6f

.field public static final GRAVITY_SATURN:F = 8.96f

.field public static final GRAVITY_SUN:F = 275.0f

.field public static final GRAVITY_THE_ISLAND:F = 4.815162f

.field public static final GRAVITY_URANUS:F = 8.69f

.field public static final GRAVITY_VENUS:F = 8.87f

.field public static final LIGHT_CLOUDY:F = 100.0f

.field public static final LIGHT_FULLMOON:F = 0.25f

.field public static final LIGHT_NO_MOON:F = 0.001f

.field public static final LIGHT_OVERCAST:F = 10000.0f

.field public static final LIGHT_SHADE:F = 20000.0f

.field public static final LIGHT_SUNLIGHT:F = 110000.0f

.field public static final LIGHT_SUNLIGHT_MAX:F = 120000.0f

.field public static final LIGHT_SUNRISE:F = 400.0f

.field public static final MAGNETIC_FIELD_EARTH_MAX:F = 60.0f

.field public static final MAGNETIC_FIELD_EARTH_MIN:F = 30.0f

.field public static final PRESSURE_STANDARD_ATMOSPHERE:F = 1013.25f

.field public static final RAW_DATA_INDEX:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_X:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Y:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Z:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ACCELEROMETER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ALL:I = 0x7f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_DELAY_FASTEST:I = 0x0

.field public static final SENSOR_DELAY_GAME:I = 0x1

.field public static final SENSOR_DELAY_NORMAL:I = 0x3

.field public static final SENSOR_DELAY_UI:I = 0x2

.field private static final SENSOR_DISABLE:I = -0x1

.field public static final SENSOR_LIGHT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAGNETIC_FIELD:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAX:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MIN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION_RAW:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_PROXIMITY:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_STATUS_ACCURACY_HIGH:I = 0x3

.field public static final SENSOR_STATUS_ACCURACY_LOW:I = 0x1

.field public static final SENSOR_STATUS_ACCURACY_MEDIUM:I = 0x2

.field public static final SENSOR_STATUS_UNRELIABLE:I = 0x0

.field public static final SENSOR_TEMPERATURE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_TRICORDER:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDARD_GRAVITY:F = 9.80665f

.field private static final TAG:Ljava/lang/String; = "SensorManager"

.field private static final hasAccelerometer:Z

.field private static final mTempMatrix:[F

.field private static sFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field static sHandleToSensor:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field static final sListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/SensorManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private static sPool:Landroid/hardware/SensorManager$SensorEventPool;

.field private static sQueue:I

.field private static sRotation:I

.field private static sSensorListByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sSensorModuleInitialized:Z

.field private static sSensorThread:Landroid/hardware/SensorManager$SensorThread;

.field private static sWindowManager:Landroid/view/IWindowManager;


# instance fields
.field private mIn:Ljava/io/InputStream;

.field private mLegacyListenersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/SensorListener;",
            "Landroid/hardware/SensorManager$LegacyListener;",
            ">;"
        }
    .end annotation
.end field

.field mMainLooper:Landroid/os/Looper;

.field private mOut:Ljava/io/OutputStream;

.field private mRCThread:Ljava/lang/Thread;

.field private mRegisterListener:Z

.field private mSocket:Landroid/net/LocalSocket;

.field private mThreadStart:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 97
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/hardware/SensorManager;->mTempMatrix:[F

    .line 374
    sput-boolean v1, Landroid/hardware/SensorManager;->sSensorModuleInitialized:Z

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 376
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sSensorListByType:Landroid/util/SparseArray;

    .line 378
    sput v1, Landroid/hardware/SensorManager;->sRotation:I

    .line 385
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    .line 390
    const-string v0, "hw.has.accelerometer"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/SensorManager;->hasAccelerometer:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 8
    .parameter "mainLooper"

    .prologue
    const/4 v4, 0x0

    .line 637
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 367
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    .line 2131
    iput-boolean v4, p0, Landroid/hardware/SensorManager;->mThreadStart:Z

    .line 2132
    iput-boolean v4, p0, Landroid/hardware/SensorManager;->mRegisterListener:Z

    .line 2133
    new-instance v3, Landroid/hardware/SensorManager$2;

    const-string v4, "RemoteControlSensorReader"

    invoke-direct {v3, p0, v4}, Landroid/hardware/SensorManager$2;-><init>(Landroid/hardware/SensorManager;Ljava/lang/String;)V

    iput-object v3, p0, Landroid/hardware/SensorManager;->mRCThread:Ljava/lang/Thread;

    .line 638
    iput-object p1, p0, Landroid/hardware/SensorManager;->mMainLooper:Landroid/os/Looper;

    .line 641
    sget-object v4, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 642
    :try_start_1d
    sget-boolean v3, Landroid/hardware/SensorManager;->sSensorModuleInitialized:Z

    if-nez v3, :cond_85

    .line 643
    const/4 v3, 0x1

    sput-boolean v3, Landroid/hardware/SensorManager;->sSensorModuleInitialized:Z

    .line 645
    invoke-static {}, Landroid/hardware/SensorManager;->nativeClassInit()V

    .line 647
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    sput-object v3, Landroid/hardware/SensorManager;->sWindowManager:Landroid/view/IWindowManager;

    .line 649
    sget-object v3, Landroid/hardware/SensorManager;->sWindowManager:Landroid/view/IWindowManager;
    :try_end_36
    .catchall {:try_start_1d .. :try_end_36} :catchall_87

    if-eqz v3, :cond_45

    .line 653
    :try_start_38
    sget-object v3, Landroid/hardware/SensorManager;->sWindowManager:Landroid/view/IWindowManager;

    new-instance v5, Landroid/hardware/SensorManager$1;

    invoke-direct {v5, p0}, Landroid/hardware/SensorManager$1;-><init>(Landroid/hardware/SensorManager;)V

    invoke-interface {v3, v5}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v3

    sput v3, Landroid/hardware/SensorManager;->sRotation:I
    :try_end_45
    .catchall {:try_start_38 .. :try_end_45} :catchall_87
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_45} :catch_8a

    .line 665
    :cond_45
    :goto_45
    :try_start_45
    invoke-static {}, Landroid/hardware/SensorManager;->sensors_module_init()I

    .line 666
    sget-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 667
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .line 669
    .local v1, i:I
    :cond_4b
    new-instance v2, Landroid/hardware/Sensor;

    invoke-direct {v2}, Landroid/hardware/Sensor;-><init>()V

    .line 670
    .local v2, sensor:Landroid/hardware/Sensor;
    invoke-static {v2, v1}, Landroid/hardware/SensorManager;->sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I

    move-result v1

    .line 672
    if-ltz v1, :cond_6d

    .line 675
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/hardware/SensorManager;->getLegacySensorType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/Sensor;->setLegacyType(I)V

    .line 676
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    sget-object v3, Landroid/hardware/SensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    invoke-virtual {v3, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 679
    :cond_6d
    if-gtz v1, :cond_4b

    .line 681
    new-instance v3, Landroid/hardware/SensorManager$SensorEventPool;

    sget-object v5, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v3, p0, v5}, Landroid/hardware/SensorManager$SensorEventPool;-><init>(Landroid/hardware/SensorManager;I)V

    sput-object v3, Landroid/hardware/SensorManager;->sPool:Landroid/hardware/SensorManager$SensorEventPool;

    .line 682
    new-instance v3, Landroid/hardware/SensorManager$SensorThread;

    invoke-direct {v3}, Landroid/hardware/SensorManager$SensorThread;-><init>()V

    sput-object v3, Landroid/hardware/SensorManager;->sSensorThread:Landroid/hardware/SensorManager$SensorThread;

    .line 684
    .end local v0           #fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    .end local v1           #i:I
    .end local v2           #sensor:Landroid/hardware/Sensor;
    :cond_85
    monitor-exit v4

    .line 685
    return-void

    .line 684
    :catchall_87
    move-exception v3

    monitor-exit v4
    :try_end_89
    .catchall {:try_start_45 .. :try_end_89} :catchall_87

    throw v3

    .line 660
    :catch_8a
    move-exception v3

    goto :goto_45
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 94
    sget v0, Landroid/hardware/SensorManager;->sQueue:I

    return v0
.end method

.method static synthetic access$002(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    sput p0, Landroid/hardware/SensorManager;->sQueue:I

    return p0
.end method

.method static synthetic access$200()Landroid/hardware/SensorManager$SensorEventPool;
    .registers 1

    .prologue
    .line 94
    sget-object v0, Landroid/hardware/SensorManager;->sPool:Landroid/hardware/SensorManager$SensorEventPool;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/SensorManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/hardware/SensorManager;->connect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/hardware/SensorManager;)Landroid/net/LocalSocket;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Landroid/hardware/SensorManager;->mSocket:Landroid/net/LocalSocket;

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/SensorManager;)Ljava/io/InputStream;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Landroid/hardware/SensorManager;->mIn:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$600(Landroid/hardware/SensorManager;)Ljava/io/OutputStream;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Landroid/hardware/SensorManager;->mOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$700(Landroid/hardware/SensorManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Landroid/hardware/SensorManager;->mRegisterListener:Z

    return v0
.end method

.method static synthetic access$800(Landroid/hardware/SensorManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/hardware/SensorManager;->disconnect()V

    return-void
.end method

.method private connect()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 2214
    iget-object v3, p0, Landroid/hardware/SensorManager;->mSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_6

    .line 2233
    :goto_5
    return v2

    .line 2217
    :cond_6
    const-string v3, "SensorManager"

    const-string v4, "RC, connecting..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    :try_start_d
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, Landroid/hardware/SensorManager;->mSocket:Landroid/net/LocalSocket;

    .line 2221
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string/jumbo v3, "remote_control_sensor"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 2224
    .local v0, address:Landroid/net/LocalSocketAddress;
    iget-object v3, p0, Landroid/hardware/SensorManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 2226
    iget-object v3, p0, Landroid/hardware/SensorManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/SensorManager;->mIn:Ljava/io/InputStream;

    .line 2227
    iget-object v3, p0, Landroid/hardware/SensorManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/SensorManager;->mOut:Ljava/io/OutputStream;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_33} :catch_34

    goto :goto_5

    .line 2228
    .end local v0           #address:Landroid/net/LocalSocketAddress;
    :catch_34
    move-exception v1

    .line 2229
    .local v1, ex:Ljava/io/IOException;
    const-string v2, "SensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RC, connect exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    invoke-direct {p0}, Landroid/hardware/SensorManager;->disconnect()V

    .line 2231
    const/4 v2, 0x0

    goto :goto_5
.end method

.method private disableSensorLocked(Landroid/hardware/Sensor;)Z
    .registers 8
    .parameter "sensor"

    .prologue
    .line 1053
    sget-object v4, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1054
    .local v1, i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1056
    const/4 v4, 0x1

    .line 1061
    .end local v1           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    :goto_19
    return v4

    .line 1059
    :cond_1a
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1060
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 1061
    .local v0, handle:I
    sget v4, Landroid/hardware/SensorManager;->sQueue:I

    const/4 v5, -0x1

    invoke-static {v4, v3, v0, v5}, Landroid/hardware/SensorManager;->sensors_enable_sensor(ILjava/lang/String;II)Z

    move-result v4

    goto :goto_19
.end method

.method private disconnect()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2237
    const-string v0, "SensorManager"

    const-string v1, "RC, disconnecting..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    :try_start_8
    iget-object v0, p0, Landroid/hardware/SensorManager;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/hardware/SensorManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_11} :catch_2e

    .line 2242
    :cond_11
    :goto_11
    :try_start_11
    iget-object v0, p0, Landroid/hardware/SensorManager;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/hardware/SensorManager;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_2c

    .line 2245
    :cond_1a
    :goto_1a
    :try_start_1a
    iget-object v0, p0, Landroid/hardware/SensorManager;->mOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/hardware/SensorManager;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_23} :catch_2a

    .line 2247
    :cond_23
    :goto_23
    iput-object v2, p0, Landroid/hardware/SensorManager;->mSocket:Landroid/net/LocalSocket;

    .line 2248
    iput-object v2, p0, Landroid/hardware/SensorManager;->mIn:Ljava/io/InputStream;

    .line 2249
    iput-object v2, p0, Landroid/hardware/SensorManager;->mOut:Ljava/io/OutputStream;

    .line 2250
    return-void

    .line 2246
    :catch_2a
    move-exception v0

    goto :goto_23

    .line 2243
    :catch_2c
    move-exception v0

    goto :goto_1a

    .line 2240
    :catch_2e
    move-exception v0

    goto :goto_11
.end method

.method private enableSensorLocked(Landroid/hardware/Sensor;I)Z
    .registers 9
    .parameter "sensor"
    .parameter "delay"

    .prologue
    .line 1040
    const/4 v4, 0x0

    .line 1041
    .local v4, result:Z
    sget-object v5, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1042
    .local v1, i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1043
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1044
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 1045
    .local v0, handle:I
    sget v5, Landroid/hardware/SensorManager;->sQueue:I

    invoke-static {v5, v3, v0, p2}, Landroid/hardware/SensorManager;->sensors_enable_sensor(ILjava/lang/String;II)Z

    move-result v4

    .line 1049
    .end local v0           #handle:I
    .end local v1           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v3           #name:Ljava/lang/String;
    :cond_27
    return v4
.end method

.method public static getAltitude(FF)F
    .registers 9
    .parameter "p0"
    .parameter "p"

    .prologue
    .line 1705
    const v0, 0x3e42dcae

    .line 1706
    .local v0, coef:F
    const v1, 0x472d2a00

    const/high16 v2, 0x3f80

    div-float v3, p1, p0

    float-to-double v3, v3

    const-wide v5, 0x3fc85b95c0000000L

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    return v1
.end method

.method public static getAngleChange([F[F[F)V
    .registers 33
    .parameter "angleChange"
    .parameter "R"
    .parameter "prevR"

    .prologue
    .line 1953
    const/4 v11, 0x0

    .local v11, rd1:F
    const/4 v12, 0x0

    .local v12, rd4:F
    const/4 v13, 0x0

    .local v13, rd6:F
    const/4 v14, 0x0

    .local v14, rd7:F
    const/4 v15, 0x0

    .line 1954
    .local v15, rd8:F
    const/16 v16, 0x0

    .local v16, ri0:F
    const/16 v17, 0x0

    .local v17, ri1:F
    const/16 v18, 0x0

    .local v18, ri2:F
    const/16 v19, 0x0

    .local v19, ri3:F
    const/16 v20, 0x0

    .local v20, ri4:F
    const/16 v21, 0x0

    .local v21, ri5:F
    const/16 v22, 0x0

    .local v22, ri6:F
    const/16 v23, 0x0

    .local v23, ri7:F
    const/16 v24, 0x0

    .line 1955
    .local v24, ri8:F
    const/4 v2, 0x0

    .local v2, pri0:F
    const/4 v3, 0x0

    .local v3, pri1:F
    const/4 v4, 0x0

    .local v4, pri2:F
    const/4 v5, 0x0

    .local v5, pri3:F
    const/4 v6, 0x0

    .local v6, pri4:F
    const/4 v7, 0x0

    .local v7, pri5:F
    const/4 v8, 0x0

    .local v8, pri6:F
    const/4 v9, 0x0

    .local v9, pri7:F
    const/4 v10, 0x0

    .line 1958
    .local v10, pri8:F
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x9

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_f5

    .line 1959
    const/16 v25, 0x0

    aget v16, p1, v25

    .line 1960
    const/16 v25, 0x1

    aget v17, p1, v25

    .line 1961
    const/16 v25, 0x2

    aget v18, p1, v25

    .line 1962
    const/16 v25, 0x3

    aget v19, p1, v25

    .line 1963
    const/16 v25, 0x4

    aget v20, p1, v25

    .line 1964
    const/16 v25, 0x5

    aget v21, p1, v25

    .line 1965
    const/16 v25, 0x6

    aget v22, p1, v25

    .line 1966
    const/16 v25, 0x7

    aget v23, p1, v25

    .line 1967
    const/16 v25, 0x8

    aget v24, p1, v25

    .line 1980
    :cond_51
    :goto_51
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x9

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_128

    .line 1981
    const/16 v25, 0x0

    aget v2, p2, v25

    .line 1982
    const/16 v25, 0x1

    aget v3, p2, v25

    .line 1983
    const/16 v25, 0x2

    aget v4, p2, v25

    .line 1984
    const/16 v25, 0x3

    aget v5, p2, v25

    .line 1985
    const/16 v25, 0x4

    aget v6, p2, v25

    .line 1986
    const/16 v25, 0x5

    aget v7, p2, v25

    .line 1987
    const/16 v25, 0x6

    aget v8, p2, v25

    .line 1988
    const/16 v25, 0x7

    aget v9, p2, v25

    .line 1989
    const/16 v25, 0x8

    aget v10, p2, v25

    .line 2005
    :cond_82
    :goto_82
    mul-float v25, v2, v17

    mul-float v26, v5, v20

    add-float v25, v25, v26

    mul-float v26, v8, v23

    add-float v11, v25, v26

    .line 2006
    mul-float v25, v3, v17

    mul-float v26, v6, v20

    add-float v25, v25, v26

    mul-float v26, v9, v23

    add-float v12, v25, v26

    .line 2007
    mul-float v25, v4, v16

    mul-float v26, v7, v19

    add-float v25, v25, v26

    mul-float v26, v10, v22

    add-float v13, v25, v26

    .line 2008
    mul-float v25, v4, v17

    mul-float v26, v7, v20

    add-float v25, v25, v26

    mul-float v26, v10, v23

    add-float v14, v25, v26

    .line 2009
    mul-float v25, v4, v18

    mul-float v26, v7, v21

    add-float v25, v25, v26

    mul-float v26, v10, v24

    add-float v15, v25, v26

    .line 2011
    const/16 v25, 0x0

    float-to-double v0, v11

    move-wide/from16 v26, v0

    float-to-double v0, v12

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, p0, v25

    .line 2012
    const/16 v25, 0x1

    neg-float v0, v14

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->asin(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, p0, v25

    .line 2013
    const/16 v25, 0x2

    neg-float v0, v13

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    float-to-double v0, v15

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, p0, v25

    .line 2015
    return-void

    .line 1968
    :cond_f5
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_51

    .line 1969
    const/16 v25, 0x0

    aget v16, p1, v25

    .line 1970
    const/16 v25, 0x1

    aget v17, p1, v25

    .line 1971
    const/16 v25, 0x2

    aget v18, p1, v25

    .line 1972
    const/16 v25, 0x4

    aget v19, p1, v25

    .line 1973
    const/16 v25, 0x5

    aget v20, p1, v25

    .line 1974
    const/16 v25, 0x6

    aget v21, p1, v25

    .line 1975
    const/16 v25, 0x8

    aget v22, p1, v25

    .line 1976
    const/16 v25, 0x9

    aget v23, p1, v25

    .line 1977
    const/16 v25, 0xa

    aget v24, p1, v25

    goto/16 :goto_51

    .line 1990
    :cond_128
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_82

    .line 1991
    const/16 v25, 0x0

    aget v2, p2, v25

    .line 1992
    const/16 v25, 0x1

    aget v3, p2, v25

    .line 1993
    const/16 v25, 0x2

    aget v4, p2, v25

    .line 1994
    const/16 v25, 0x4

    aget v5, p2, v25

    .line 1995
    const/16 v25, 0x5

    aget v6, p2, v25

    .line 1996
    const/16 v25, 0x6

    aget v7, p2, v25

    .line 1997
    const/16 v25, 0x8

    aget v8, p2, v25

    .line 1998
    const/16 v25, 0x9

    aget v9, p2, v25

    .line 1999
    const/16 v25, 0xa

    aget v10, p2, v25

    goto/16 :goto_82
.end method

.method public static getInclination([F)F
    .registers 5
    .parameter "I"

    .prologue
    const/4 v2, 0x5

    .line 1450
    array-length v0, p0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_13

    .line 1451
    aget v0, p0, v2

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1453
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x6

    aget v0, p0, v0

    float-to-double v0, v0

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_12
.end method

.method private getLegacySensorType(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 688
    packed-switch p1, :pswitch_data_10

    .line 698
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 690
    :pswitch_5
    const/4 v0, 0x2

    goto :goto_4

    .line 692
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_4

    .line 694
    :pswitch_a
    const/16 v0, 0x80

    goto :goto_4

    .line 696
    :pswitch_d
    const/4 v0, 0x4

    goto :goto_4

    .line 688
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_d
    .end packed-switch
.end method

.method public static getOrientation([F[F)[F
    .registers 11
    .parameter "R"
    .parameter "values"

    .prologue
    const/16 v8, 0x9

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1663
    array-length v0, p0

    if-ne v0, v8, :cond_34

    .line 1664
    aget v0, p0, v4

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 1665
    const/4 v0, 0x7

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 1666
    const/4 v0, 0x6

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    aget v2, p0, v7

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    .line 1672
    :goto_33
    return-object p1

    .line 1668
    :cond_34
    aget v0, p0, v4

    float-to-double v0, v0

    const/4 v2, 0x5

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 1669
    aget v0, p0, v8

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 1670
    aget v0, p0, v7

    neg-float v0, v0

    float-to-double v0, v0

    const/16 v2, 0xa

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    goto :goto_33
.end method

.method public static getQuaternionFromVector([F[F)V
    .registers 10
    .parameter "Q"
    .parameter "rv"

    .prologue
    const/4 v7, 0x3

    const/4 v0, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2100
    array-length v1, p1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    .line 2101
    aget v0, p1, v7

    aput v0, p0, v4

    .line 2106
    :goto_d
    aget v0, p1, v4

    aput v0, p0, v5

    .line 2107
    aget v0, p1, v5

    aput v0, p0, v6

    .line 2108
    aget v0, p1, v6

    aput v0, p0, v7

    .line 2109
    return-void

    .line 2103
    :cond_1a
    const/high16 v1, 0x3f80

    aget v2, p1, v4

    aget v3, p1, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aget v2, p1, v5

    aget v3, p1, v5

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aget v2, p1, v6

    aget v3, p1, v6

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, p0, v4

    .line 2104
    aget v1, p0, v4

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3e

    aget v0, p0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    :cond_3e
    aput v0, p0, v4

    goto :goto_d
.end method

.method static getRotation()I
    .registers 2

    .prologue
    .line 1720
    sget-object v1, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1721
    :try_start_3
    sget v0, Landroid/hardware/SensorManager;->sRotation:I

    monitor-exit v1

    return v0

    .line 1722
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public static getRotationMatrix([F[F[F[F)Z
    .registers 31
    .parameter "R"
    .parameter "I"
    .parameter "gravity"
    .parameter "geomagnetic"

    .prologue
    .line 1375
    const/16 v20, 0x0

    aget v2, p2, v20

    .line 1376
    .local v2, Ax:F
    const/16 v20, 0x1

    aget v3, p2, v20

    .line 1377
    .local v3, Ay:F
    const/16 v20, 0x2

    aget v4, p2, v20

    .line 1378
    .local v4, Az:F
    const/16 v20, 0x0

    aget v5, p3, v20

    .line 1379
    .local v5, Ex:F
    const/16 v20, 0x1

    aget v6, p3, v20

    .line 1380
    .local v6, Ey:F
    const/16 v20, 0x2

    aget v7, p3, v20

    .line 1381
    .local v7, Ez:F
    mul-float v20, v6, v4

    mul-float v21, v7, v3

    sub-float v8, v20, v21

    .line 1382
    .local v8, Hx:F
    mul-float v20, v7, v2

    mul-float v21, v5, v4

    sub-float v9, v20, v21

    .line 1383
    .local v9, Hy:F
    mul-float v20, v5, v3

    mul-float v21, v6, v2

    sub-float v10, v20, v21

    .line 1384
    .local v10, Hz:F
    mul-float v20, v8, v8

    mul-float v21, v9, v9

    add-float v20, v20, v21

    mul-float v21, v10, v10

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v18, v0

    .line 1385
    .local v18, normH:F
    const v20, 0x3dcccccd

    cmpg-float v20, v18, v20

    if-gez v20, :cond_4c

    .line 1388
    const/16 v20, 0x0

    .line 1432
    :goto_4b
    return v20

    .line 1390
    :cond_4c
    const/high16 v20, 0x3f80

    div-float v17, v20, v18

    .line 1391
    .local v17, invH:F
    mul-float v8, v8, v17

    .line 1392
    mul-float v9, v9, v17

    .line 1393
    mul-float v10, v10, v17

    .line 1394
    const/high16 v20, 0x3f80

    mul-float v21, v2, v2

    mul-float v22, v3, v3

    add-float v21, v21, v22

    mul-float v22, v4, v4

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    div-float v15, v20, v21

    .line 1395
    .local v15, invA:F
    mul-float/2addr v2, v15

    .line 1396
    mul-float/2addr v3, v15

    .line 1397
    mul-float/2addr v4, v15

    .line 1398
    mul-float v20, v3, v10

    mul-float v21, v4, v9

    sub-float v11, v20, v21

    .line 1399
    .local v11, Mx:F
    mul-float v20, v4, v8

    mul-float v21, v2, v10

    sub-float v12, v20, v21

    .line 1400
    .local v12, My:F
    mul-float v20, v2, v9

    mul-float v21, v3, v8

    sub-float v13, v20, v21

    .line 1401
    .local v13, Mz:F
    if-eqz p0, :cond_ba

    .line 1402
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_134

    .line 1403
    const/16 v20, 0x0

    aput v8, p0, v20

    const/16 v20, 0x1

    aput v9, p0, v20

    const/16 v20, 0x2

    aput v10, p0, v20

    .line 1404
    const/16 v20, 0x3

    aput v11, p0, v20

    const/16 v20, 0x4

    aput v12, p0, v20

    const/16 v20, 0x5

    aput v13, p0, v20

    .line 1405
    const/16 v20, 0x6

    aput v2, p0, v20

    const/16 v20, 0x7

    aput v3, p0, v20

    const/16 v20, 0x8

    aput v4, p0, v20

    .line 1413
    :cond_ba
    :goto_ba
    if-eqz p1, :cond_130

    .line 1417
    const/high16 v20, 0x3f80

    mul-float v21, v5, v5

    mul-float v22, v6, v6

    add-float v21, v21, v22

    mul-float v22, v7, v7

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    div-float v16, v20, v21

    .line 1418
    .local v16, invE:F
    mul-float v20, v5, v11

    mul-float v21, v6, v12

    add-float v20, v20, v21

    mul-float v21, v7, v13

    add-float v20, v20, v21

    mul-float v14, v20, v16

    .line 1419
    .local v14, c:F
    mul-float v20, v5, v2

    mul-float v21, v6, v3

    add-float v20, v20, v21

    mul-float v21, v7, v4

    add-float v20, v20, v21

    mul-float v19, v20, v16

    .line 1420
    .local v19, s:F
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_191

    .line 1421
    const/16 v20, 0x0

    const/high16 v21, 0x3f80

    aput v21, p1, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x2

    const/16 v21, 0x0

    aput v21, p1, v20

    .line 1422
    const/16 v20, 0x3

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x4

    aput v14, p1, v20

    const/16 v20, 0x5

    aput v19, p1, v20

    .line 1423
    const/16 v20, 0x6

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x7

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v21, v0

    aput v21, p1, v20

    const/16 v20, 0x8

    aput v14, p1, v20

    .line 1432
    .end local v14           #c:F
    .end local v16           #invE:F
    .end local v19           #s:F
    :cond_130
    :goto_130
    const/16 v20, 0x1

    goto/16 :goto_4b

    .line 1406
    :cond_134
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_ba

    .line 1407
    const/16 v20, 0x0

    aput v8, p0, v20

    const/16 v20, 0x1

    aput v9, p0, v20

    const/16 v20, 0x2

    aput v10, p0, v20

    const/16 v20, 0x3

    const/16 v21, 0x0

    aput v21, p0, v20

    .line 1408
    const/16 v20, 0x4

    aput v11, p0, v20

    const/16 v20, 0x5

    aput v12, p0, v20

    const/16 v20, 0x6

    aput v13, p0, v20

    const/16 v20, 0x7

    const/16 v21, 0x0

    aput v21, p0, v20

    .line 1409
    const/16 v20, 0x8

    aput v2, p0, v20

    const/16 v20, 0x9

    aput v3, p0, v20

    const/16 v20, 0xa

    aput v4, p0, v20

    const/16 v20, 0xb

    const/16 v21, 0x0

    aput v21, p0, v20

    .line 1410
    const/16 v20, 0xc

    const/16 v21, 0x0

    aput v21, p0, v20

    const/16 v20, 0xd

    const/16 v21, 0x0

    aput v21, p0, v20

    const/16 v20, 0xe

    const/16 v21, 0x0

    aput v21, p0, v20

    const/16 v20, 0xf

    const/high16 v21, 0x3f80

    aput v21, p0, v20

    goto/16 :goto_ba

    .line 1424
    .restart local v14       #c:F
    .restart local v16       #invE:F
    .restart local v19       #s:F
    :cond_191
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_130

    .line 1425
    const/16 v20, 0x0

    const/high16 v21, 0x3f80

    aput v21, p1, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x2

    const/16 v21, 0x0

    aput v21, p1, v20

    .line 1426
    const/16 v20, 0x4

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x5

    aput v14, p1, v20

    const/16 v20, 0x6

    aput v19, p1, v20

    .line 1427
    const/16 v20, 0x8

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x9

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v21, v0

    aput v21, p1, v20

    const/16 v20, 0xa

    aput v14, p1, v20

    .line 1428
    const/16 v20, 0x3

    const/16 v21, 0x7

    const/16 v22, 0xb

    const/16 v23, 0xc

    const/16 v24, 0xd

    const/16 v25, 0xe

    const/16 v26, 0x0

    aput v26, p1, v25

    aput v26, p1, v24

    aput v26, p1, v23

    aput v26, p1, v22

    aput v26, p1, v21

    aput v26, p1, v20

    .line 1429
    const/16 v20, 0xf

    const/high16 v21, 0x3f80

    aput v21, p1, v20

    goto/16 :goto_130
.end method

.method public static getRotationMatrixFromVector([F[F)V
    .registers 20
    .parameter "R"
    .parameter "rotationVector"

    .prologue
    .line 2039
    const/4 v14, 0x0

    aget v2, p1, v14

    .line 2040
    .local v2, q1:F
    const/4 v14, 0x1

    aget v6, p1, v14

    .line 2041
    .local v6, q2:F
    const/4 v14, 0x2

    aget v9, p1, v14

    .line 2043
    .local v9, q3:F
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x4

    if-ne v14, v15, :cond_7b

    .line 2044
    const/4 v14, 0x3

    aget v1, p1, v14

    .line 2050
    .local v1, q0:F
    :goto_12
    const/high16 v14, 0x4000

    mul-float/2addr v14, v2

    mul-float v11, v14, v2

    .line 2051
    .local v11, sq_q1:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v6

    mul-float v12, v14, v6

    .line 2052
    .local v12, sq_q2:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v9

    mul-float v13, v14, v9

    .line 2053
    .local v13, sq_q3:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v2

    mul-float v4, v14, v6

    .line 2054
    .local v4, q1_q2:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v9

    mul-float v10, v14, v1

    .line 2055
    .local v10, q3_q0:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v2

    mul-float v5, v14, v9

    .line 2056
    .local v5, q1_q3:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v6

    mul-float v7, v14, v1

    .line 2057
    .local v7, q2_q0:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v6

    mul-float v8, v14, v9

    .line 2058
    .local v8, q2_q3:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v2

    mul-float v3, v14, v1

    .line 2060
    .local v3, q1_q0:F
    move-object/from16 v0, p0

    array-length v14, v0

    const/16 v15, 0x9

    if-ne v14, v15, :cond_95

    .line 2061
    const/4 v14, 0x0

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v12

    sub-float/2addr v15, v13

    aput v15, p0, v14

    .line 2062
    const/4 v14, 0x1

    sub-float v15, v4, v10

    aput v15, p0, v14

    .line 2063
    const/4 v14, 0x2

    add-float v15, v5, v7

    aput v15, p0, v14

    .line 2065
    const/4 v14, 0x3

    add-float v15, v4, v10

    aput v15, p0, v14

    .line 2066
    const/4 v14, 0x4

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v11

    sub-float/2addr v15, v13

    aput v15, p0, v14

    .line 2067
    const/4 v14, 0x5

    sub-float v15, v8, v3

    aput v15, p0, v14

    .line 2069
    const/4 v14, 0x6

    sub-float v15, v5, v7

    aput v15, p0, v14

    .line 2070
    const/4 v14, 0x7

    add-float v15, v8, v3

    aput v15, p0, v14

    .line 2071
    const/16 v14, 0x8

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v11

    sub-float/2addr v15, v12

    aput v15, p0, v14

    .line 2091
    :cond_7a
    :goto_7a
    return-void

    .line 2046
    .end local v1           #q0:F
    .end local v3           #q1_q0:F
    .end local v4           #q1_q2:F
    .end local v5           #q1_q3:F
    .end local v7           #q2_q0:F
    .end local v8           #q2_q3:F
    .end local v10           #q3_q0:F
    .end local v11           #sq_q1:F
    .end local v12           #sq_q2:F
    .end local v13           #sq_q3:F
    :cond_7b
    const/high16 v14, 0x3f80

    mul-float v15, v2, v2

    sub-float/2addr v14, v15

    mul-float v15, v6, v6

    sub-float/2addr v14, v15

    mul-float v15, v9, v9

    sub-float v1, v14, v15

    .line 2047
    .restart local v1       #q0:F
    const/4 v14, 0x0

    cmpl-float v14, v1, v14

    if-lez v14, :cond_93

    float-to-double v14, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v1, v14

    :goto_92
    goto :goto_12

    :cond_93
    const/4 v1, 0x0

    goto :goto_92

    .line 2072
    .restart local v3       #q1_q0:F
    .restart local v4       #q1_q2:F
    .restart local v5       #q1_q3:F
    .restart local v7       #q2_q0:F
    .restart local v8       #q2_q3:F
    .restart local v10       #q3_q0:F
    .restart local v11       #sq_q1:F
    .restart local v12       #sq_q2:F
    .restart local v13       #sq_q3:F
    :cond_95
    move-object/from16 v0, p0

    array-length v14, v0

    const/16 v15, 0x10

    if-ne v14, v15, :cond_7a

    .line 2073
    const/4 v14, 0x0

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v12

    sub-float/2addr v15, v13

    aput v15, p0, v14

    .line 2074
    const/4 v14, 0x1

    sub-float v15, v4, v10

    aput v15, p0, v14

    .line 2075
    const/4 v14, 0x2

    add-float v15, v5, v7

    aput v15, p0, v14

    .line 2076
    const/4 v14, 0x3

    const/4 v15, 0x0

    aput v15, p0, v14

    .line 2078
    const/4 v14, 0x4

    add-float v15, v4, v10

    aput v15, p0, v14

    .line 2079
    const/4 v14, 0x5

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v11

    sub-float/2addr v15, v13

    aput v15, p0, v14

    .line 2080
    const/4 v14, 0x6

    sub-float v15, v8, v3

    aput v15, p0, v14

    .line 2081
    const/4 v14, 0x7

    const/4 v15, 0x0

    aput v15, p0, v14

    .line 2083
    const/16 v14, 0x8

    sub-float v15, v5, v7

    aput v15, p0, v14

    .line 2084
    const/16 v14, 0x9

    add-float v15, v8, v3

    aput v15, p0, v14

    .line 2085
    const/16 v14, 0xa

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v11

    sub-float/2addr v15, v12

    aput v15, p0, v14

    .line 2086
    const/16 v14, 0xb

    const/4 v15, 0x0

    aput v15, p0, v14

    .line 2088
    const/16 v14, 0xc

    const/16 v15, 0xd

    const/16 v16, 0xe

    const/16 v17, 0x0

    aput v17, p0, v16

    aput v17, p0, v15

    aput v17, p0, v14

    .line 2089
    const/16 v14, 0xf

    const/high16 v15, 0x3f80

    aput v15, p0, v14

    goto :goto_7a
.end method

.method private static native nativeClassInit()V
.end method

.method private registerLegacyListener(IILandroid/hardware/SensorListener;II)Z
    .registers 13
    .parameter "legacyType"
    .parameter "type"
    .parameter "listener"
    .parameter "sensors"
    .parameter "rate"

    .prologue
    .line 858
    if-nez p3, :cond_4

    .line 859
    const/4 v3, 0x0

    .line 886
    :cond_3
    :goto_3
    return v3

    .line 861
    :cond_4
    const/4 v3, 0x0

    .line 863
    .local v3, result:Z
    and-int v5, p4, p1

    if-eqz v5, :cond_3

    .line 865
    invoke-virtual {p0, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    .line 866
    .local v4, sensor:Landroid/hardware/Sensor;
    if-eqz v4, :cond_3

    .line 870
    const/4 v1, 0x0

    .line 871
    .local v1, legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    iget-object v6, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 872
    :try_start_13
    iget-object v5, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v5, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/hardware/SensorManager$LegacyListener;

    move-object v1, v0

    .line 873
    if-nez v1, :cond_2a

    .line 876
    new-instance v2, Landroid/hardware/SensorManager$LegacyListener;

    invoke-direct {v2, p0, p3}, Landroid/hardware/SensorManager$LegacyListener;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorListener;)V
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_33

    .line 877
    .end local v1           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .local v2, legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    :try_start_24
    iget-object v5, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v5, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_36

    move-object v1, v2

    .line 879
    .end local v2           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .restart local v1       #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    :cond_2a
    :try_start_2a
    monitor-exit v6
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_33

    .line 881
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager$LegacyListener;->registerSensor(I)V

    .line 883
    invoke-virtual {p0, v1, v4, p5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v3

    goto :goto_3

    .line 879
    :catchall_33
    move-exception v5

    :goto_34
    :try_start_34
    monitor-exit v6
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v5

    .end local v1           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .restart local v2       #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    :catchall_36
    move-exception v5

    move-object v1, v2

    .end local v2           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .restart local v1       #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    goto :goto_34
.end method

.method private registerRemote()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2253
    iget-boolean v0, p0, Landroid/hardware/SensorManager;->mThreadStart:Z

    if-nez v0, :cond_c

    .line 2254
    iget-object v0, p0, Landroid/hardware/SensorManager;->mRCThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2255
    iput-boolean v1, p0, Landroid/hardware/SensorManager;->mThreadStart:Z

    .line 2258
    :cond_c
    iput-boolean v1, p0, Landroid/hardware/SensorManager;->mRegisterListener:Z

    .line 2259
    return-void
.end method

.method public static remapCoordinateSystem([FII[F)Z
    .registers 8
    .parameter "inR"
    .parameter "X"
    .parameter "Y"
    .parameter "outR"

    .prologue
    .line 1535
    if-ne p0, p3, :cond_1a

    .line 1536
    sget-object v2, Landroid/hardware/SensorManager;->mTempMatrix:[F

    .line 1537
    .local v2, temp:[F
    monitor-enter v2

    .line 1539
    :try_start_5
    invoke-static {p0, p1, p2, v2}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1540
    array-length v1, p3

    .line 1541
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v1, :cond_16

    .line 1542
    aget v3, v2, v0

    aput v3, p3, v0

    .line 1541
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1543
    :cond_16
    const/4 v3, 0x1

    monitor-exit v2

    .line 1547
    .end local v0           #i:I
    .end local v1           #size:I
    .end local v2           #temp:[F
    :goto_18
    return v3

    .line 1545
    .restart local v2       #temp:[F
    :cond_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1f

    .line 1547
    .end local v2           #temp:[F
    :cond_1a
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v3

    goto :goto_18

    .line 1545
    .restart local v2       #temp:[F
    :catchall_1f
    move-exception v3

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v3
.end method

.method private static remapCoordinateSystemImpl([FII[F)Z
    .registers 26
    .parameter "inR"
    .parameter "X"
    .parameter "Y"
    .parameter "outR"

    .prologue
    .line 1564
    move-object/from16 v0, p3

    array-length v6, v0

    .line 1565
    .local v6, length:I
    move-object/from16 v0, p0

    array-length v15, v0

    if-eq v15, v6, :cond_a

    .line 1566
    const/4 v15, 0x0

    .line 1608
    :goto_9
    return v15

    .line 1567
    :cond_a
    and-int/lit8 v15, p1, 0x7c

    if-nez v15, :cond_12

    and-int/lit8 v15, p2, 0x7c

    if-eqz v15, :cond_14

    .line 1568
    :cond_12
    const/4 v15, 0x0

    goto :goto_9

    .line 1569
    :cond_14
    and-int/lit8 v15, p1, 0x3

    if-eqz v15, :cond_1c

    and-int/lit8 v15, p2, 0x3

    if-nez v15, :cond_1e

    .line 1570
    :cond_1c
    const/4 v15, 0x0

    goto :goto_9

    .line 1571
    :cond_1e
    and-int/lit8 v15, p1, 0x3

    and-int/lit8 v16, p2, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_28

    .line 1572
    const/4 v15, 0x0

    goto :goto_9

    .line 1577
    :cond_28
    xor-int v1, p1, p2

    .line 1580
    .local v1, Z:I
    and-int/lit8 v15, p1, 0x3

    add-int/lit8 v12, v15, -0x1

    .line 1581
    .local v12, x:I
    and-int/lit8 v15, p2, 0x3

    add-int/lit8 v13, v15, -0x1

    .line 1582
    .local v13, y:I
    and-int/lit8 v15, v1, 0x3

    add-int/lit8 v14, v15, -0x1

    .line 1585
    .local v14, z:I
    add-int/lit8 v15, v14, 0x1

    rem-int/lit8 v2, v15, 0x3

    .line 1586
    .local v2, axis_y:I
    add-int/lit8 v15, v14, 0x2

    rem-int/lit8 v3, v15, 0x3

    .line 1587
    .local v3, axis_z:I
    xor-int v15, v12, v2

    xor-int v16, v13, v3

    or-int v15, v15, v16

    if-eqz v15, :cond_48

    .line 1588
    xor-int/lit16 v1, v1, 0x80

    .line 1590
    :cond_48
    const/16 v15, 0x80

    move/from16 v0, p1

    if-lt v0, v15, :cond_94

    const/4 v9, 0x1

    .line 1591
    .local v9, sx:Z
    :goto_4f
    const/16 v15, 0x80

    move/from16 v0, p2

    if-lt v0, v15, :cond_96

    const/4 v10, 0x1

    .line 1592
    .local v10, sy:Z
    :goto_56
    const/16 v15, 0x80

    if-lt v1, v15, :cond_98

    const/4 v11, 0x1

    .line 1595
    .local v11, sz:Z
    :goto_5b
    const/16 v15, 0x10

    if-ne v6, v15, :cond_9a

    const/4 v8, 0x4

    .line 1596
    .local v8, rowLength:I
    :goto_60
    const/4 v5, 0x0

    .local v5, j:I
    :goto_61
    const/4 v15, 0x3

    if-ge v5, v15, :cond_ae

    .line 1597
    mul-int v7, v5, v8

    .line 1598
    .local v7, offset:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_67
    const/4 v15, 0x3

    if-ge v4, v15, :cond_ab

    .line 1599
    if-ne v12, v4, :cond_77

    add-int v16, v7, v4

    if-eqz v9, :cond_9c

    add-int/lit8 v15, v7, 0x0

    aget v15, p0, v15

    neg-float v15, v15

    :goto_75
    aput v15, p3, v16

    .line 1600
    :cond_77
    if-ne v13, v4, :cond_84

    add-int v16, v7, v4

    if-eqz v10, :cond_a1

    add-int/lit8 v15, v7, 0x1

    aget v15, p0, v15

    neg-float v15, v15

    :goto_82
    aput v15, p3, v16

    .line 1601
    :cond_84
    if-ne v14, v4, :cond_91

    add-int v16, v7, v4

    if-eqz v11, :cond_a6

    add-int/lit8 v15, v7, 0x2

    aget v15, p0, v15

    neg-float v15, v15

    :goto_8f
    aput v15, p3, v16

    .line 1598
    :cond_91
    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    .line 1590
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v7           #offset:I
    .end local v8           #rowLength:I
    .end local v9           #sx:Z
    .end local v10           #sy:Z
    .end local v11           #sz:Z
    :cond_94
    const/4 v9, 0x0

    goto :goto_4f

    .line 1591
    .restart local v9       #sx:Z
    :cond_96
    const/4 v10, 0x0

    goto :goto_56

    .line 1592
    .restart local v10       #sy:Z
    :cond_98
    const/4 v11, 0x0

    goto :goto_5b

    .line 1595
    .restart local v11       #sz:Z
    :cond_9a
    const/4 v8, 0x3

    goto :goto_60

    .line 1599
    .restart local v4       #i:I
    .restart local v5       #j:I
    .restart local v7       #offset:I
    .restart local v8       #rowLength:I
    :cond_9c
    add-int/lit8 v15, v7, 0x0

    aget v15, p0, v15

    goto :goto_75

    .line 1600
    :cond_a1
    add-int/lit8 v15, v7, 0x1

    aget v15, p0, v15

    goto :goto_82

    .line 1601
    :cond_a6
    add-int/lit8 v15, v7, 0x2

    aget v15, p0, v15

    goto :goto_8f

    .line 1596
    :cond_ab
    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    .line 1604
    .end local v4           #i:I
    .end local v7           #offset:I
    :cond_ae
    const/16 v15, 0x10

    if-ne v6, v15, :cond_d1

    .line 1605
    const/4 v15, 0x3

    const/16 v16, 0x7

    const/16 v17, 0xb

    const/16 v18, 0xc

    const/16 v19, 0xd

    const/16 v20, 0xe

    const/16 v21, 0x0

    aput v21, p3, v20

    aput v21, p3, v19

    aput v21, p3, v18

    aput v21, p3, v17

    aput v21, p3, v16

    aput v21, p3, v15

    .line 1606
    const/16 v15, 0xf

    const/high16 v16, 0x3f80

    aput v16, p3, v15

    .line 1608
    :cond_d1
    const/4 v15, 0x1

    goto/16 :goto_9
.end method

.method static native sensors_create_queue()I
.end method

.method static native sensors_data_poll(I[F[I[J)I
.end method

.method static native sensors_destroy_queue(I)V
.end method

.method static native sensors_enable_sensor(ILjava/lang/String;II)Z
.end method

.method private static native sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I
.end method

.method private static native sensors_module_init()I
.end method

.method private unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V
    .registers 14
    .parameter "legacyType"
    .parameter "type"
    .parameter "listener"
    .parameter "sensors"

    .prologue
    .line 920
    if-nez p3, :cond_3

    .line 959
    :cond_2
    :goto_2
    return-void

    .line 924
    :cond_3
    const/4 v4, 0x0

    .line 925
    .local v4, legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    iget-object v7, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 926
    :try_start_7
    iget-object v6, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v6, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/hardware/SensorManager$LegacyListener;

    move-object v4, v0

    .line 927
    monitor-exit v7
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_54

    .line 928
    if-eqz v4, :cond_2

    .line 930
    and-int v6, p4, p1

    if-eqz v6, :cond_2

    .line 932
    invoke-virtual {p0, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    .line 933
    .local v5, sensor:Landroid/hardware/Sensor;
    if-eqz v5, :cond_2

    .line 936
    invoke-virtual {v4, p1}, Landroid/hardware/SensorManager$LegacyListener;->unregisterSensor(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 938
    invoke-virtual {p0, v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 941
    sget-object v7, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 942
    const/4 v1, 0x0

    .line 943
    .local v1, found:Z
    :try_start_2b
    sget-object v6, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 944
    .local v2, i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_31

    .line 945
    const/4 v1, 0x1

    .line 949
    .end local v2           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_44
    if-nez v1, :cond_4f

    .line 950
    iget-object v8, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_49
    .catchall {:try_start_2b .. :try_end_49} :catchall_51

    .line 951
    :try_start_49
    iget-object v6, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v6, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    monitor-exit v8
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_57

    .line 954
    :cond_4f
    :try_start_4f
    monitor-exit v7

    goto :goto_2

    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_51
    move-exception v6

    monitor-exit v7
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_51

    throw v6

    .line 927
    .end local v1           #found:Z
    .end local v5           #sensor:Landroid/hardware/Sensor;
    :catchall_54
    move-exception v6

    :try_start_55
    monitor-exit v7
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v6

    .line 952
    .restart local v1       #found:Z
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #sensor:Landroid/hardware/Sensor;
    :catchall_57
    move-exception v6

    :try_start_58
    monitor-exit v8
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    :try_start_59
    throw v6
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_51
.end method

.method private unregisterListener(Ljava/lang/Object;)V
    .registers 10
    .parameter "listener"

    .prologue
    .line 1213
    if-nez p1, :cond_3

    .line 1237
    :goto_2
    return-void

    .line 1217
    :cond_3
    sget-object v6, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1218
    :try_start_6
    sget-object v5, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1219
    .local v4, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v4, :cond_4f

    .line 1220
    sget-object v5, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1221
    .local v2, l:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_4c

    .line 1222
    sget-object v5, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1224
    invoke-virtual {v2}, Landroid/hardware/SensorManager$ListenerDelegate;->getSensors()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 1225
    .local v3, sensor:Landroid/hardware/Sensor;
    sget-boolean v5, Landroid/hardware/SensorManager;->hasAccelerometer:Z

    if-nez v5, :cond_48

    .line 1226
    const/4 v5, 0x1

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    if-ne v5, v7, :cond_48

    .line 1227
    invoke-direct {p0}, Landroid/hardware/SensorManager;->unregisterRemote()V

    goto :goto_2a

    .line 1236
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v3           #sensor:Landroid/hardware/Sensor;
    .end local v4           #size:I
    :catchall_45
    move-exception v5

    monitor-exit v6
    :try_end_47
    .catchall {:try_start_6 .. :try_end_47} :catchall_45

    throw v5

    .line 1231
    .restart local v0       #i:I
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v3       #sensor:Landroid/hardware/Sensor;
    .restart local v4       #size:I
    :cond_48
    :try_start_48
    invoke-direct {p0, v3}, Landroid/hardware/SensorManager;->disableSensorLocked(Landroid/hardware/Sensor;)Z

    goto :goto_2a

    .line 1219
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #sensor:Landroid/hardware/Sensor;
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1236
    .end local v2           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_4f
    monitor-exit v6
    :try_end_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_45

    goto :goto_2
.end method

.method private unregisterListener(Ljava/lang/Object;Landroid/hardware/Sensor;)V
    .registers 9
    .parameter "listener"
    .parameter "sensor"

    .prologue
    .line 1185
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 1210
    :cond_4
    :goto_4
    return-void

    .line 1189
    :cond_5
    sget-object v4, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1190
    :try_start_8
    sget-object v3, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1191
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    if-ge v0, v2, :cond_40

    .line 1192
    sget-object v3, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1193
    .local v1, l:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v1}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_3d

    .line 1194
    invoke-virtual {v1, p2}, Landroid/hardware/SensorManager$ListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)I

    move-result v3

    if-nez v3, :cond_40

    .line 1197
    sget-object v3, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1198
    sget-boolean v3, Landroid/hardware/SensorManager;->hasAccelerometer:Z

    if-nez v3, :cond_40

    .line 1199
    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    if-ne v3, v5, :cond_40

    .line 1200
    invoke-direct {p0}, Landroid/hardware/SensorManager;->unregisterRemote()V

    .line 1201
    monitor-exit v4

    goto :goto_4

    .line 1209
    .end local v0           #i:I
    .end local v1           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v2           #size:I
    :catchall_3a
    move-exception v3

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_3a

    throw v3

    .line 1191
    .restart local v0       #i:I
    .restart local v1       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v2       #size:I
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1208
    .end local v1           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_40
    :try_start_40
    invoke-direct {p0, p2}, Landroid/hardware/SensorManager;->disableSensorLocked(Landroid/hardware/Sensor;)Z

    .line 1209
    monitor-exit v4
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_3a

    goto :goto_4
.end method

.method private unregisterRemote()V
    .registers 2

    .prologue
    .line 2262
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/SensorManager;->mRegisterListener:Z

    .line 2263
    return-void
.end method


# virtual methods
.method public getDefaultSensor(I)Landroid/hardware/Sensor;
    .registers 5
    .parameter "type"

    .prologue
    const/4 v2, 0x1

    .line 780
    sget-boolean v1, Landroid/hardware/SensorManager;->hasAccelerometer:Z

    if-nez v1, :cond_d

    .line 781
    if-ne v2, p1, :cond_d

    .line 783
    new-instance v1, Landroid/hardware/Sensor;

    invoke-direct {v1, v2}, Landroid/hardware/Sensor;-><init>(Z)V

    .line 788
    :goto_c
    return-object v1

    .line 787
    :cond_d
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 788
    .local v0, l:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x0

    goto :goto_c

    :cond_19
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    goto :goto_c
.end method

.method public getSensorList(I)Ljava/util/List;
    .registers 7
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 744
    sget-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 745
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    monitor-enter v0

    .line 746
    :try_start_3
    sget-object v4, Landroid/hardware/SensorManager;->sSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 747
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-nez v3, :cond_1a

    .line 748
    const/4 v4, -0x1

    if-ne p1, v4, :cond_1c

    .line 749
    move-object v3, v0

    .line 757
    :cond_11
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 758
    sget-object v4, Landroid/hardware/SensorManager;->sSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 760
    :cond_1a
    monitor-exit v0

    .line 761
    return-object v3

    .line 751
    :cond_1c
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 752
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 753
    .local v1, i:Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, p1, :cond_25

    .line 754
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 760
    .end local v1           #i:Landroid/hardware/Sensor;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    :catchall_3b
    move-exception v4

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v4
.end method

.method public getSensors()I
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 708
    const/4 v3, 0x0

    .line 709
    .local v3, result:I
    sget-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 710
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 711
    .local v1, i:Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_26

    goto :goto_7

    .line 713
    :pswitch_1b
    or-int/lit8 v3, v3, 0x2

    .line 714
    goto :goto_7

    .line 716
    :pswitch_1e
    or-int/lit8 v3, v3, 0x8

    .line 717
    goto :goto_7

    .line 719
    :pswitch_21
    or-int/lit16 v3, v3, 0x81

    goto :goto_7

    .line 724
    .end local v1           #i:Landroid/hardware/Sensor;
    :cond_24
    return v3

    .line 711
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
    .end packed-switch
.end method

.method public onRotationChanged(I)V
    .registers 4
    .parameter "rotation"

    .prologue
    .line 1714
    sget-object v1, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1715
    :try_start_3
    sput p1, Landroid/hardware/SensorManager;->sRotation:I

    .line 1716
    monitor-exit v1

    .line 1717
    return-void

    .line 1716
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    .registers 5
    .parameter "listener"
    .parameter "sensor"
    .parameter "rate"

    .prologue
    .line 1036
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .registers 18
    .parameter "listener"
    .parameter "sensor"
    .parameter "rate"
    .parameter "handler"

    .prologue
    .line 1098
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 1099
    :cond_4
    const/4 v8, 0x0

    .line 1181
    :goto_5
    return v8

    .line 1101
    :cond_6
    const/4 v8, 0x1

    .line 1102
    .local v8, result:Z
    const/4 v1, -0x1

    .line 1103
    .local v1, delay:I
    packed-switch p3, :pswitch_data_f6

    .line 1117
    move/from16 v1, p3

    .line 1121
    :goto_d
    sget-object v10, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v10

    .line 1123
    const/4 v5, 0x0

    .line 1124
    .local v5, l:Landroid/hardware/SensorManager$ListenerDelegate;
    :try_start_11
    sget-object v9, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1125
    .local v3, i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v3}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_d2

    move-result-object v9

    if-ne v9, p1, :cond_17

    .line 1126
    move-object v5, v3

    move-object v6, v5

    .line 1130
    .end local v3           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v5           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .local v6, l:Landroid/hardware/SensorManager$ListenerDelegate;
    :goto_2b
    :try_start_2b
    sget-boolean v9, Landroid/hardware/SensorManager;->hasAccelerometer:Z

    if-nez v9, :cond_a5

    .line 1131
    const/4 v9, 0x1

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v11

    if-ne v9, v11, :cond_a5

    .line 1132
    const-string v9, "SensorManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "registerListener, listener: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",sListeners size:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", SensorEventListener:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1135
    .local v7, name:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    .line 1136
    .local v2, handle:I
    if-nez v6, :cond_a0

    .line 1137
    new-instance v5, Landroid/hardware/SensorManager$ListenerDelegate;

    move-object/from16 v0, p4

    invoke-direct {v5, p0, p1, p2, v0}, Landroid/hardware/SensorManager$ListenerDelegate;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
    :try_end_7a
    .catchall {:try_start_2b .. :try_end_7a} :catchall_ed

    .line 1138
    .end local v6           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v5       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :try_start_7a
    sget-object v9, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1139
    sget-object v9, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8a

    .line 1140
    invoke-direct {p0}, Landroid/hardware/SensorManager;->registerRemote()V

    .line 1145
    :cond_8a
    :goto_8a
    const/4 v9, 0x1

    monitor-exit v10
    :try_end_8c
    .catchall {:try_start_7a .. :try_end_8c} :catchall_d2

    move v8, v9

    goto/16 :goto_5

    .line 1105
    .end local v2           #handle:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v7           #name:Ljava/lang/String;
    :pswitch_8f
    const/4 v1, 0x0

    .line 1106
    goto/16 :goto_d

    .line 1108
    :pswitch_92
    const/16 v1, 0x4e20

    .line 1109
    goto/16 :goto_d

    .line 1111
    :pswitch_96
    const v1, 0x1046b

    .line 1112
    goto/16 :goto_d

    .line 1114
    :pswitch_9b
    const v1, 0x30d40

    .line 1115
    goto/16 :goto_d

    .line 1143
    .restart local v2       #handle:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v7       #name:Ljava/lang/String;
    :cond_a0
    :try_start_a0
    invoke-virtual {v6, p2}, Landroid/hardware/SensorManager$ListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V

    move-object v5, v6

    .end local v6           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v5       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto :goto_8a

    .line 1151
    .end local v2           #handle:I
    .end local v5           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v7           #name:Ljava/lang/String;
    .restart local v6       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_a5
    if-nez v6, :cond_de

    .line 1152
    new-instance v5, Landroid/hardware/SensorManager$ListenerDelegate;

    move-object/from16 v0, p4

    invoke-direct {v5, p0, p1, p2, v0}, Landroid/hardware/SensorManager$ListenerDelegate;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
    :try_end_ae
    .catchall {:try_start_a0 .. :try_end_ae} :catchall_ed

    .line 1153
    .end local v6           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v5       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :try_start_ae
    sget-object v9, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1155
    sget-object v9, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_dc

    .line 1156
    sget-object v9, Landroid/hardware/SensorManager;->sSensorThread:Landroid/hardware/SensorManager$SensorThread;

    invoke-virtual {v9}, Landroid/hardware/SensorManager$SensorThread;->startLocked()Z

    move-result v9

    if-eqz v9, :cond_d5

    .line 1157
    invoke-direct {p0, p2, v1}, Landroid/hardware/SensorManager;->enableSensorLocked(Landroid/hardware/Sensor;I)Z

    move-result v9

    if-nez v9, :cond_cf

    .line 1159
    sget-object v9, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1160
    const/4 v8, 0x0

    .line 1179
    :cond_cf
    :goto_cf
    monitor-exit v10

    goto/16 :goto_5

    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_d2
    move-exception v9

    :goto_d3
    monitor-exit v10
    :try_end_d4
    .catchall {:try_start_ae .. :try_end_d4} :catchall_d2

    throw v9

    .line 1164
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_d5
    :try_start_d5
    sget-object v9, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_da
    .catchall {:try_start_d5 .. :try_end_da} :catchall_d2

    .line 1165
    const/4 v8, 0x0

    goto :goto_cf

    .line 1169
    :cond_dc
    const/4 v8, 0x0

    goto :goto_cf

    .line 1172
    .end local v5           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v6       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_de
    :try_start_de
    invoke-virtual {v6, p2}, Landroid/hardware/SensorManager$ListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V

    .line 1173
    invoke-direct {p0, p2, v1}, Landroid/hardware/SensorManager;->enableSensorLocked(Landroid/hardware/Sensor;I)Z

    move-result v9

    if-nez v9, :cond_f0

    .line 1175
    invoke-virtual {v6, p2}, Landroid/hardware/SensorManager$ListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)I
    :try_end_ea
    .catchall {:try_start_de .. :try_end_ea} :catchall_ed

    .line 1176
    const/4 v8, 0x0

    move-object v5, v6

    .end local v6           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v5       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto :goto_cf

    .line 1179
    .end local v5           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v6       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :catchall_ed
    move-exception v9

    move-object v5, v6

    .end local v6           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v5       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto :goto_d3

    .end local v5           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v6       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_f0
    move-object v5, v6

    .end local v6           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v5       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto :goto_cf

    :cond_f2
    move-object v6, v5

    .end local v5           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v6       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto/16 :goto_2b

    .line 1103
    nop

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_8f
        :pswitch_92
        :pswitch_96
        :pswitch_9b
    .end packed-switch
.end method

.method public registerListener(Landroid/hardware/SensorListener;I)Z
    .registers 4
    .parameter "listener"
    .parameter "sensors"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 809
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorListener;II)Z
    .registers 16
    .parameter "listener"
    .parameter "sensors"
    .parameter "rate"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v1, 0x2

    const/4 v10, 0x0

    const/4 v2, 0x1

    .line 837
    if-nez p1, :cond_7

    .line 851
    :goto_6
    return v10

    .line 840
    :cond_7
    const/4 v9, 0x0

    .local v9, result:Z
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 841
    invoke-direct/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_14

    if-eqz v9, :cond_54

    :cond_14
    move v9, v2

    .line 843
    :goto_15
    const/16 v4, 0x8

    move-object v3, p0

    move v5, v1

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_24

    if-eqz v9, :cond_56

    :cond_24
    move v9, v2

    .line 845
    :goto_25
    const/16 v4, 0x80

    move-object v3, p0

    move v5, v11

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_34

    if-eqz v9, :cond_58

    :cond_34
    move v9, v2

    :goto_35
    move-object v1, p0

    move v3, v11

    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 847
    invoke-direct/range {v1 .. v6}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_42

    if-eqz v9, :cond_5a

    :cond_42
    move v9, v2

    .line 849
    :goto_43
    const/4 v4, 0x4

    const/4 v5, 0x7

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_51

    if-eqz v9, :cond_5c

    :cond_51
    move v9, v2

    :goto_52
    move v10, v9

    .line 851
    goto :goto_6

    :cond_54
    move v9, v10

    .line 841
    goto :goto_15

    :cond_56
    move v9, v10

    .line 843
    goto :goto_25

    :cond_58
    move v9, v10

    .line 845
    goto :goto_35

    :cond_5a
    move v9, v10

    .line 847
    goto :goto_43

    :cond_5c
    move v9, v10

    .line 849
    goto :goto_52
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1004
    invoke-direct {p0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Ljava/lang/Object;)V

    .line 1005
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .registers 3
    .parameter "listener"
    .parameter "sensor"

    .prologue
    .line 990
    invoke-direct {p0, p1, p2}, Landroid/hardware/SensorManager;->unregisterListener(Ljava/lang/Object;Landroid/hardware/Sensor;)V

    .line 991
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;)V
    .registers 3
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 973
    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 974
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;I)V
    .registers 7
    .parameter "listener"
    .parameter "sensors"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 904
    invoke-direct {p0, v2, v1, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 906
    const/16 v0, 0x8

    invoke-direct {p0, v0, v2, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 908
    const/16 v0, 0x80

    invoke-direct {p0, v0, v3, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 910
    invoke-direct {p0, v1, v3, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 912
    const/4 v0, 0x4

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 914
    return-void
.end method
