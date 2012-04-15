.class synthetic Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$IccCard$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 472
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->values()[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    :try_start_9
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_da

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->NetworkLocked:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_d7

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_d4

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimPermDisabled:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_d1

    :goto_35
    :try_start_35
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissingLocked:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_ce

    :goto_40
    :try_start_40
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimLocked:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_cb

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimPukLocked:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_c9

    .line 433
    :goto_56
    invoke-static {}, Lcom/android/internal/telephony/IccCard$State;->values()[Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    :try_start_5f
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_c7

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_c5

    :goto_75
    :try_start_75
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_c3

    :goto_80
    :try_start_80
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8b} :catch_c1

    :goto_8b
    :try_start_8b
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_96} :catch_bf

    :goto_96
    :try_start_96
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_a1} :catch_bd

    :goto_a1
    :try_start_a1
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_ac} :catch_bb

    :goto_ac
    :try_start_ac
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ac .. :try_end_b8} :catch_b9

    :goto_b8
    return-void

    :catch_b9
    move-exception v0

    goto :goto_b8

    :catch_bb
    move-exception v0

    goto :goto_ac

    :catch_bd
    move-exception v0

    goto :goto_a1

    :catch_bf
    move-exception v0

    goto :goto_96

    :catch_c1
    move-exception v0

    goto :goto_8b

    :catch_c3
    move-exception v0

    goto :goto_80

    :catch_c5
    move-exception v0

    goto :goto_75

    :catch_c7
    move-exception v0

    goto :goto_6a

    .line 472
    :catch_c9
    move-exception v0

    goto :goto_56

    :catch_cb
    move-exception v0

    goto/16 :goto_4b

    :catch_ce
    move-exception v0

    goto/16 :goto_40

    :catch_d1
    move-exception v0

    goto/16 :goto_35

    :catch_d4
    move-exception v0

    goto/16 :goto_2a

    :catch_d7
    move-exception v0

    goto/16 :goto_1f

    :catch_da
    move-exception v0

    goto/16 :goto_14
.end method
