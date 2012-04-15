.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String; = null

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1


# instance fields
.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "none"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "poor"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "moderate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "good"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "great"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 224
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 90
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 91
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 92
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 93
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 94
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 95
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 96
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 97
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 98
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 99
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 100
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 102
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .registers 14
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "gsm"

    .prologue
    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 115
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 116
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 117
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 118
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 119
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 120
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 121
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 122
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 123
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 124
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 125
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 126
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 127
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .registers 23
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "gsm"

    .prologue
    .line 138
    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-direct/range {v0 .. v13}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZ)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 177
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_55

    const/4 v0, 0x1

    :goto_52
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 191
    return-void

    .line 190
    :cond_55
    const/4 v0, 0x0

    goto :goto_52
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 149
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 151
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 720
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    return-void
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .registers 2
    .parameter "m"

    .prologue
    .line 78
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 79
    .local v0, ret:Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 80
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .registers 3
    .parameter "m"

    .prologue
    .line 679
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 680
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 681
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 682
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 683
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 684
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 685
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 686
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 687
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 688
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 689
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 690
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 691
    const-string v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 692
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 157
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 158
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 159
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 160
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 161
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 162
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 163
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 164
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 165
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 166
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 167
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 168
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 169
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 170
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 627
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_8

    .line 632
    .local v2, s:Landroid/telephony/SignalStrength;
    if-nez p1, :cond_a

    .line 636
    .end local v2           #s:Landroid/telephony/SignalStrength;
    :cond_7
    :goto_7
    return v3

    .line 628
    :catch_8
    move-exception v1

    .line 629
    .local v1, ex:Ljava/lang/ClassCastException;
    goto :goto_7

    .line 636
    .end local v1           #ex:Ljava/lang/ClassCastException;
    .restart local v2       #s:Landroid/telephony/SignalStrength;
    :cond_a
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_7

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_7

    const/4 v3, 0x1

    goto :goto_7
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .registers 4
    .parameter "m"

    .prologue
    .line 701
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 702
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 703
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 704
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 705
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 706
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 707
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 708
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 709
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 710
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 711
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 712
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 713
    const-string v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 714
    return-void
.end method

.method public getAsuLevel()I
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 326
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_23

    .line 327
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v3, v4, :cond_1e

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v3, v4, :cond_1e

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v3, v4, :cond_1e

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v3, v4, :cond_1e

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v3, v4, :cond_1e

    .line 332
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 351
    .local v0, asuLevel:I
    :goto_1d
    return v0

    .line 334
    .end local v0           #asuLevel:I
    :cond_1e
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    .restart local v0       #asuLevel:I
    goto :goto_1d

    .line 337
    .end local v0           #asuLevel:I
    :cond_23
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 338
    .local v1, cdmaAsuLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 339
    .local v2, evdoAsuLevel:I
    if-nez v2, :cond_2f

    .line 341
    move v0, v1

    .restart local v0       #asuLevel:I
    goto :goto_1d

    .line 342
    .end local v0           #asuLevel:I
    :cond_2f
    if-nez v1, :cond_33

    .line 344
    move v0, v2

    .restart local v0       #asuLevel:I
    goto :goto_1d

    .line 347
    .end local v0           #asuLevel:I
    :cond_33
    if-ge v1, v2, :cond_37

    move v0, v1

    .restart local v0       #asuLevel:I
    :goto_36
    goto :goto_1d

    .end local v0           #asuLevel:I
    :cond_37
    move v0, v2

    goto :goto_36
.end method

.method public getCdmaAsuLevel()I
    .registers 9

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 470
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 471
    .local v1, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 475
    .local v2, cdmaEcio:I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_1a

    const/16 v0, 0x10

    .line 483
    .local v0, cdmaAsuLevel:I
    :goto_12
    if-lt v2, v7, :cond_32

    const/16 v3, 0x10

    .line 490
    .local v3, ecioAsuLevel:I
    :goto_16
    if-ge v0, v3, :cond_4c

    move v4, v0

    .line 492
    .local v4, level:I
    :goto_19
    return v4

    .line 476
    .end local v0           #cdmaAsuLevel:I
    .end local v3           #ecioAsuLevel:I
    .end local v4           #level:I
    :cond_1a
    const/16 v5, -0x52

    if-lt v1, v5, :cond_21

    const/16 v0, 0x8

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_12

    .line 477
    .end local v0           #cdmaAsuLevel:I
    :cond_21
    if-lt v1, v7, :cond_25

    const/4 v0, 0x4

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_12

    .line 478
    .end local v0           #cdmaAsuLevel:I
    :cond_25
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_2b

    const/4 v0, 0x2

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_12

    .line 479
    .end local v0           #cdmaAsuLevel:I
    :cond_2b
    if-lt v1, v6, :cond_2f

    const/4 v0, 0x1

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_12

    .line 480
    .end local v0           #cdmaAsuLevel:I
    :cond_2f
    const/16 v0, 0x63

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_12

    .line 484
    :cond_32
    if-lt v2, v6, :cond_37

    const/16 v3, 0x8

    .restart local v3       #ecioAsuLevel:I
    goto :goto_16

    .line 485
    .end local v3           #ecioAsuLevel:I
    :cond_37
    const/16 v5, -0x73

    if-lt v2, v5, :cond_3d

    const/4 v3, 0x4

    .restart local v3       #ecioAsuLevel:I
    goto :goto_16

    .line 486
    .end local v3           #ecioAsuLevel:I
    :cond_3d
    const/16 v5, -0x82

    if-lt v2, v5, :cond_43

    const/4 v3, 0x2

    .restart local v3       #ecioAsuLevel:I
    goto :goto_16

    .line 487
    .end local v3           #ecioAsuLevel:I
    :cond_43
    const/16 v5, -0x96

    if-lt v2, v5, :cond_49

    const/4 v3, 0x1

    .restart local v3       #ecioAsuLevel:I
    goto :goto_16

    .line 488
    .end local v3           #ecioAsuLevel:I
    :cond_49
    const/16 v3, 0x63

    .restart local v3       #ecioAsuLevel:I
    goto :goto_16

    :cond_4c
    move v4, v3

    .line 490
    goto :goto_19
.end method

.method public getCdmaDbm()I
    .registers 2

    .prologue
    .line 252
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .registers 2

    .prologue
    .line 259
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .registers 7

    .prologue
    .line 441
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 442
    .local v0, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 446
    .local v1, cdmaEcio:I
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_16

    const/4 v3, 0x4

    .line 453
    .local v3, levelDbm:I
    :goto_d
    const/16 v5, -0x5a

    if-lt v1, v5, :cond_2a

    const/4 v4, 0x4

    .line 459
    .local v4, levelEcio:I
    :goto_12
    if-ge v3, v4, :cond_3e

    move v2, v3

    .line 461
    .local v2, level:I
    :goto_15
    return v2

    .line 447
    .end local v2           #level:I
    .end local v3           #levelDbm:I
    .end local v4           #levelEcio:I
    :cond_16
    const/16 v5, -0x55

    if-lt v0, v5, :cond_1c

    const/4 v3, 0x3

    .restart local v3       #levelDbm:I
    goto :goto_d

    .line 448
    .end local v3           #levelDbm:I
    :cond_1c
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_22

    const/4 v3, 0x2

    .restart local v3       #levelDbm:I
    goto :goto_d

    .line 449
    .end local v3           #levelDbm:I
    :cond_22
    const/16 v5, -0x64

    if-lt v0, v5, :cond_28

    const/4 v3, 0x1

    .restart local v3       #levelDbm:I
    goto :goto_d

    .line 450
    .end local v3           #levelDbm:I
    :cond_28
    const/4 v3, 0x0

    .restart local v3       #levelDbm:I
    goto :goto_d

    .line 454
    :cond_2a
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_30

    const/4 v4, 0x3

    .restart local v4       #levelEcio:I
    goto :goto_12

    .line 455
    .end local v4           #levelEcio:I
    :cond_30
    const/16 v5, -0x82

    if-lt v1, v5, :cond_36

    const/4 v4, 0x2

    .restart local v4       #levelEcio:I
    goto :goto_12

    .line 456
    .end local v4           #levelEcio:I
    :cond_36
    const/16 v5, -0x96

    if-lt v1, v5, :cond_3c

    const/4 v4, 0x1

    .restart local v4       #levelEcio:I
    goto :goto_12

    .line 457
    .end local v4           #levelEcio:I
    :cond_3c
    const/4 v4, 0x0

    .restart local v4       #levelEcio:I
    goto :goto_12

    :cond_3e
    move v2, v4

    .line 459
    goto :goto_15
.end method

.method public getDbm()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 362
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 363
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v1, v2, :cond_20

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v1, v2, :cond_20

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v1, v2, :cond_20

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v1, v2, :cond_20

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v1, v2, :cond_20

    .line 368
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v0

    .line 376
    .local v0, dBm:I
    :goto_1f
    return v0

    .line 370
    .end local v0           #dBm:I
    :cond_20
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v0

    .restart local v0       #dBm:I
    goto :goto_1f

    .line 373
    .end local v0           #dBm:I
    :cond_25
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .restart local v0       #dBm:I
    goto :goto_1f
.end method

.method public getEvdoAsuLevel()I
    .registers 7

    .prologue
    .line 529
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 530
    .local v0, evdoDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 534
    .local v1, evdoSnr:I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_17

    const/16 v3, 0x10

    .line 541
    .local v3, levelEvdoDbm:I
    :goto_e
    const/4 v5, 0x7

    if-lt v1, v5, :cond_33

    const/16 v4, 0x10

    .line 548
    .local v4, levelEvdoSnr:I
    :goto_13
    if-ge v3, v4, :cond_4b

    move v2, v3

    .line 550
    .local v2, level:I
    :goto_16
    return v2

    .line 535
    .end local v2           #level:I
    .end local v3           #levelEvdoDbm:I
    .end local v4           #levelEvdoSnr:I
    :cond_17
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1e

    const/16 v3, 0x8

    .restart local v3       #levelEvdoDbm:I
    goto :goto_e

    .line 536
    .end local v3           #levelEvdoDbm:I
    :cond_1e
    const/16 v5, -0x55

    if-lt v0, v5, :cond_24

    const/4 v3, 0x4

    .restart local v3       #levelEvdoDbm:I
    goto :goto_e

    .line 537
    .end local v3           #levelEvdoDbm:I
    :cond_24
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_2a

    const/4 v3, 0x2

    .restart local v3       #levelEvdoDbm:I
    goto :goto_e

    .line 538
    .end local v3           #levelEvdoDbm:I
    :cond_2a
    const/16 v5, -0x69

    if-lt v0, v5, :cond_30

    const/4 v3, 0x1

    .restart local v3       #levelEvdoDbm:I
    goto :goto_e

    .line 539
    .end local v3           #levelEvdoDbm:I
    :cond_30
    const/16 v3, 0x63

    .restart local v3       #levelEvdoDbm:I
    goto :goto_e

    .line 542
    :cond_33
    const/4 v5, 0x6

    if-lt v1, v5, :cond_39

    const/16 v4, 0x8

    .restart local v4       #levelEvdoSnr:I
    goto :goto_13

    .line 543
    .end local v4           #levelEvdoSnr:I
    :cond_39
    const/4 v5, 0x5

    if-lt v1, v5, :cond_3e

    const/4 v4, 0x4

    .restart local v4       #levelEvdoSnr:I
    goto :goto_13

    .line 544
    .end local v4           #levelEvdoSnr:I
    :cond_3e
    const/4 v5, 0x3

    if-lt v1, v5, :cond_43

    const/4 v4, 0x2

    .restart local v4       #levelEvdoSnr:I
    goto :goto_13

    .line 545
    .end local v4           #levelEvdoSnr:I
    :cond_43
    const/4 v5, 0x1

    if-lt v1, v5, :cond_48

    const/4 v4, 0x1

    .restart local v4       #levelEvdoSnr:I
    goto :goto_13

    .line 546
    .end local v4           #levelEvdoSnr:I
    :cond_48
    const/16 v4, 0x63

    .restart local v4       #levelEvdoSnr:I
    goto :goto_13

    :cond_4b
    move v2, v4

    .line 548
    goto :goto_16
.end method

.method public getEvdoDbm()I
    .registers 2

    .prologue
    .line 266
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .registers 2

    .prologue
    .line 273
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .registers 7

    .prologue
    .line 501
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 502
    .local v0, evdoDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 506
    .local v1, evdoSnr:I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_15

    const/4 v3, 0x4

    .line 512
    .local v3, levelEvdoDbm:I
    :goto_d
    const/4 v5, 0x7

    if-lt v1, v5, :cond_29

    const/4 v4, 0x4

    .line 518
    .local v4, levelEvdoSnr:I
    :goto_11
    if-ge v3, v4, :cond_3a

    move v2, v3

    .line 520
    .local v2, level:I
    :goto_14
    return v2

    .line 507
    .end local v2           #level:I
    .end local v3           #levelEvdoDbm:I
    .end local v4           #levelEvdoSnr:I
    :cond_15
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1b

    const/4 v3, 0x3

    .restart local v3       #levelEvdoDbm:I
    goto :goto_d

    .line 508
    .end local v3           #levelEvdoDbm:I
    :cond_1b
    const/16 v5, -0x5a

    if-lt v0, v5, :cond_21

    const/4 v3, 0x2

    .restart local v3       #levelEvdoDbm:I
    goto :goto_d

    .line 509
    .end local v3           #levelEvdoDbm:I
    :cond_21
    const/16 v5, -0x69

    if-lt v0, v5, :cond_27

    const/4 v3, 0x1

    .restart local v3       #levelEvdoDbm:I
    goto :goto_d

    .line 510
    .end local v3           #levelEvdoDbm:I
    :cond_27
    const/4 v3, 0x0

    .restart local v3       #levelEvdoDbm:I
    goto :goto_d

    .line 513
    :cond_29
    const/4 v5, 0x5

    if-lt v1, v5, :cond_2e

    const/4 v4, 0x3

    .restart local v4       #levelEvdoSnr:I
    goto :goto_11

    .line 514
    .end local v4           #levelEvdoSnr:I
    :cond_2e
    const/4 v5, 0x3

    if-lt v1, v5, :cond_33

    const/4 v4, 0x2

    .restart local v4       #levelEvdoSnr:I
    goto :goto_11

    .line 515
    .end local v4           #levelEvdoSnr:I
    :cond_33
    const/4 v5, 0x1

    if-lt v1, v5, :cond_38

    const/4 v4, 0x1

    .restart local v4       #levelEvdoSnr:I
    goto :goto_11

    .line 516
    .end local v4           #levelEvdoSnr:I
    :cond_38
    const/4 v4, 0x0

    .restart local v4       #levelEvdoSnr:I
    goto :goto_11

    :cond_3a
    move v2, v4

    .line 518
    goto :goto_14
.end method

.method public getEvdoSnr()I
    .registers 2

    .prologue
    .line 280
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .registers 2

    .prologue
    .line 430
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 432
    .local v0, level:I
    return v0
.end method

.method public getGsmBitErrorRate()I
    .registers 2

    .prologue
    .line 245
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .registers 6

    .prologue
    const/4 v3, -0x1

    .line 387
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 388
    .local v2, gsmSignalStrength:I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_11

    move v0, v3

    .line 389
    .local v0, asu:I
    :goto_a
    if-eq v0, v3, :cond_13

    .line 390
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .line 395
    .local v1, dBm:I
    :goto_10
    return v1

    .end local v0           #asu:I
    .end local v1           #dBm:I
    :cond_11
    move v0, v2

    .line 388
    goto :goto_a

    .line 392
    .restart local v0       #asu:I
    :cond_13
    const/4 v1, -0x1

    .restart local v1       #dBm:I
    goto :goto_10
.end method

.method public getGsmLevel()I
    .registers 4

    .prologue
    .line 410
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 411
    .local v0, asu:I
    const/4 v2, 0x2

    if-le v0, v2, :cond_b

    const/16 v2, 0x63

    if-ne v0, v2, :cond_d

    :cond_b
    const/4 v1, 0x0

    .line 417
    .local v1, level:I
    :goto_c
    return v1

    .line 412
    .end local v1           #level:I
    :cond_d
    const/16 v2, 0xc

    if-lt v0, v2, :cond_13

    const/4 v1, 0x4

    .restart local v1       #level:I
    goto :goto_c

    .line 413
    .end local v1           #level:I
    :cond_13
    const/16 v2, 0x8

    if-lt v0, v2, :cond_19

    const/4 v1, 0x3

    .restart local v1       #level:I
    goto :goto_c

    .line 414
    .end local v1           #level:I
    :cond_19
    const/4 v2, 0x5

    if-lt v0, v2, :cond_1e

    const/4 v1, 0x2

    .restart local v1       #level:I
    goto :goto_c

    .line 415
    .end local v1           #level:I
    :cond_1e
    const/4 v1, 0x1

    .restart local v1       #level:I
    goto :goto_c
.end method

.method public getGsmSignalStrength()I
    .registers 2

    .prologue
    .line 238
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getLevel()I
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 291
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_23

    .line 292
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v3, v4, :cond_1e

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v3, v4, :cond_1e

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v3, v4, :cond_1e

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v3, v4, :cond_1e

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v3, v4, :cond_1e

    .line 297
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    .line 316
    .local v2, level:I
    :goto_1d
    return v2

    .line 299
    .end local v2           #level:I
    :cond_1e
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .restart local v2       #level:I
    goto :goto_1d

    .line 302
    .end local v2           #level:I
    :cond_23
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 303
    .local v0, cdmaLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 304
    .local v1, evdoLevel:I
    if-nez v1, :cond_32

    .line 306
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v2

    .restart local v2       #level:I
    goto :goto_1d

    .line 307
    .end local v2           #level:I
    :cond_32
    if-nez v0, :cond_39

    .line 309
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v2

    .restart local v2       #level:I
    goto :goto_1d

    .line 312
    .end local v2           #level:I
    :cond_39
    if-ge v0, v1, :cond_3d

    move v2, v0

    .restart local v2       #level:I
    :goto_3c
    goto :goto_1d

    .end local v2           #level:I
    :cond_3d
    move v2, v1

    goto :goto_3c
.end method

.method public getLteAsuLevel()I
    .registers 4

    .prologue
    .line 588
    const/16 v0, 0x63

    .line 589
    .local v0, lteAsuLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 590
    .local v1, lteDbm:I
    const/16 v2, -0x8c

    if-gt v1, v2, :cond_c

    const/4 v0, 0x0

    .line 594
    :goto_b
    return v0

    .line 591
    :cond_c
    const/16 v2, -0x2b

    if-lt v1, v2, :cond_13

    const/16 v0, 0x61

    goto :goto_b

    .line 592
    :cond_13
    add-int/lit16 v0, v1, 0x8c

    goto :goto_b
.end method

.method public getLteDbm()I
    .registers 2

    .prologue
    .line 559
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .registers 4

    .prologue
    .line 568
    const/4 v0, 0x0

    .line 570
    .local v0, levelLteRsrp:I
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    const/4 v0, 0x0

    .line 578
    :goto_7
    return v0

    .line 571
    :cond_8
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x55

    if-lt v1, v2, :cond_10

    const/4 v0, 0x4

    goto :goto_7

    .line 572
    :cond_10
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x5f

    if-lt v1, v2, :cond_18

    const/4 v0, 0x3

    goto :goto_7

    .line 573
    :cond_18
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x69

    if-lt v1, v2, :cond_20

    const/4 v0, 0x2

    goto :goto_7

    .line 574
    :cond_20
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x73

    if-lt v1, v2, :cond_28

    const/4 v0, 0x1

    goto :goto_7

    .line 575
    :cond_28
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 609
    const/16 v0, 0x1f

    .line 610
    .local v0, primeNum:I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_38

    const/4 v1, 0x1

    :goto_36
    add-int/2addr v1, v2

    return v1

    :cond_38
    const/4 v1, 0x0

    goto :goto_36
.end method

.method public isGsm()Z
    .registers 2

    .prologue
    .line 601
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_aa

    const-string v0, "gsm|lte"

    :goto_a1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_aa
    const-string v0, "cdma"

    goto :goto_a1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 197
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_45

    const/4 v0, 0x1

    :goto_41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    return-void

    .line 209
    :cond_45
    const/4 v0, 0x0

    goto :goto_41
.end method
