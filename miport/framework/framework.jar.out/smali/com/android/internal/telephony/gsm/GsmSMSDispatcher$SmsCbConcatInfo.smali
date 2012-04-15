.class final Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
.super Ljava/lang/Object;
.source "GsmSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SmsCbConcatInfo"
.end annotation


# instance fields
.field private final mCid:I

.field private final mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

.field private final mLac:I

.field private final mPlmn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Ljava/lang/String;II)V
    .registers 5
    .parameter "header"
    .parameter "plmn"
    .parameter "lac"
    .parameter "cid"

    .prologue
    .line 329
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    .line 331
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mPlmn:Ljava/lang/String;

    .line 332
    iput p3, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mLac:I

    .line 333
    iput p4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mCid:I

    .line 334
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "obj"

    .prologue
    .line 343
    instance-of v1, p1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    if-eqz v1, :cond_4e

    move-object v0, p1

    .line 344
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    .line 349
    .local v0, other:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v1, v1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v2, v2, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    if-ne v1, v2, :cond_4e

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v1, v1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageCode:I

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v2, v2, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageCode:I

    if-ne v1, v2, :cond_4e

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v1, v1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->updateNumber:I

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v2, v2, Lcom/android/internal/telephony/gsm/SmsCbHeader;->updateNumber:I

    if-ne v1, v2, :cond_4e

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v1, v1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v2, v2, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    if-ne v1, v2, :cond_4e

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v1, v1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v2, v2, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    if-ne v1, v2, :cond_4e

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v1, v1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v2, v2, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    if-ne v1, v2, :cond_4e

    .line 355
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mPlmn:Ljava/lang/String;

    iget v2, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mLac:I

    iget v3, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mCid:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v1

    .line 359
    .end local v0           #other:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    :goto_4d
    return v1

    :cond_4e
    const/4 v1, 0x0

    goto :goto_4d
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v1, v1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->updateNumber:I

    add-int/2addr v0, v1

    return v0
.end method

.method public matchesLocation(Ljava/lang/String;II)Z
    .registers 6
    .parameter "plmn"
    .parameter "lac"
    .parameter "cid"

    .prologue
    const/4 v0, 0x0

    .line 372
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v1, v1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    packed-switch v1, :pswitch_data_20

    .line 388
    :cond_8
    :goto_8
    return v0

    .line 375
    :pswitch_9
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mCid:I

    if-ne v1, p3, :cond_8

    .line 380
    :pswitch_d
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mLac:I

    if-ne v1, p2, :cond_8

    .line 385
    :pswitch_11
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mPlmn:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mPlmn:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    .line 372
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_9
        :pswitch_11
        :pswitch_d
        :pswitch_9
    .end packed-switch
.end method
