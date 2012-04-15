.class public Landroid/hardware/Sensor;
.super Ljava/lang/Object;
.source "Sensor.java"


# static fields
.field public static final TYPE_ACCELEROMETER:I = 0x1

.field public static final TYPE_ALL:I = -0x1

.field public static final TYPE_AMBIENT_TEMPERATURE:I = 0xd

.field public static final TYPE_GRAVITY:I = 0x9

.field public static final TYPE_GYROSCOPE:I = 0x4

.field public static final TYPE_LIGHT:I = 0x5

.field public static final TYPE_LINEAR_ACCELERATION:I = 0xa

.field public static final TYPE_MAGNETIC_FIELD:I = 0x2

.field public static final TYPE_ORIENTATION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PRESSURE:I = 0x6

.field public static final TYPE_PROXIMITY:I = 0x8

.field public static final TYPE_RELATIVE_HUMIDITY:I = 0xc

.field public static final TYPE_ROTATION_VECTOR:I = 0xb

.field public static final TYPE_TEMPERATURE:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mHandle:I

.field private mLegacyType:I

.field private mMaxRange:F

.field private mMinDelay:I

.field private mName:Ljava/lang/String;

.field private mPower:F

.field private mResolution:F

.field private mType:I

.field private mVendor:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 152
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 153
    return-void
.end method

.method constructor <init>(Z)V
    .registers 5
    .parameter "accelerometerSensor"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 139
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 140
    if-eqz p1, :cond_25

    .line 141
    const-string v0, "MXC622X"

    iput-object v0, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    .line 142
    const-string v0, "MEMSIC"

    iput-object v0, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    .line 143
    iput v2, p0, Landroid/hardware/Sensor;->mVersion:I

    .line 144
    iput v1, p0, Landroid/hardware/Sensor;->mHandle:I

    .line 145
    iput v2, p0, Landroid/hardware/Sensor;->mType:I

    .line 146
    const/high16 v0, 0x4000

    iput v0, p0, Landroid/hardware/Sensor;->mMaxRange:F

    .line 147
    const v0, 0x3e1ce80a

    iput v0, p0, Landroid/hardware/Sensor;->mResolution:F

    .line 148
    const v0, 0x3ba3d70a

    iput v0, p0, Landroid/hardware/Sensor;->mPower:F

    .line 149
    iput v1, p0, Landroid/hardware/Sensor;->mLegacyType:I

    .line 151
    :cond_25
    return-void
.end method


# virtual methods
.method getHandle()I
    .registers 2

    .prologue
    .line 214
    iget v0, p0, Landroid/hardware/Sensor;->mHandle:I

    return v0
.end method

.method getLegacyType()I
    .registers 2

    .prologue
    .line 227
    iget v0, p0, Landroid/hardware/Sensor;->mLegacyType:I

    return v0
.end method

.method public getMaximumRange()F
    .registers 2

    .prologue
    .line 187
    iget v0, p0, Landroid/hardware/Sensor;->mMaxRange:F

    return v0
.end method

.method public getMinDelay()I
    .registers 2

    .prologue
    .line 210
    iget v0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()F
    .registers 2

    .prologue
    .line 201
    iget v0, p0, Landroid/hardware/Sensor;->mPower:F

    return v0
.end method

.method public getResolution()F
    .registers 2

    .prologue
    .line 194
    iget v0, p0, Landroid/hardware/Sensor;->mResolution:F

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 173
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    return v0
.end method

.method public getVendor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 180
    iget v0, p0, Landroid/hardware/Sensor;->mVersion:I

    return v0
.end method

.method setLegacyType(I)V
    .registers 2
    .parameter "legacyType"

    .prologue
    .line 223
    iput p1, p0, Landroid/hardware/Sensor;->mLegacyType:I

    .line 224
    return-void
.end method

.method setRange(FF)V
    .registers 3
    .parameter "max"
    .parameter "res"

    .prologue
    .line 218
    iput p1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    .line 219
    iput p2, p0, Landroid/hardware/Sensor;->mResolution:F

    .line 220
    return-void
.end method
