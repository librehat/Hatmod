.class Lcom/android/server/LocationManagerService$LpCapabilityComparator;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LpCapabilityComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/location/LocationProviderInterface;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALTITUDE_SCORE:I = 0x4

.field private static final BEARING_SCORE:I = 0x4

.field private static final SPEED_SCORE:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 736
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LpCapabilityComparator;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 736
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$LpCapabilityComparator;-><init>(Lcom/android/server/LocationManagerService;)V

    return-void
.end method

.method private score(Lcom/android/server/location/LocationProviderInterface;)I
    .registers 6
    .parameter "p"

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 743
    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->supportsAltitude()Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    :goto_9
    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->supportsBearing()Z

    move-result v3

    if-eqz v3, :cond_1b

    move v3, v1

    :goto_10
    add-int/2addr v0, v3

    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->supportsSpeed()Z

    move-result v3

    if-eqz v3, :cond_1d

    :goto_17
    add-int/2addr v0, v1

    return v0

    :cond_19
    move v0, v2

    goto :goto_9

    :cond_1b
    move v3, v2

    goto :goto_10

    :cond_1d
    move v1, v2

    goto :goto_17
.end method


# virtual methods
.method public compare(Lcom/android/server/location/LocationProviderInterface;Lcom/android/server/location/LocationProviderInterface;)I
    .registers 5
    .parameter "l1"
    .parameter "l2"

    .prologue
    .line 749
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService$LpCapabilityComparator;->score(Lcom/android/server/location/LocationProviderInterface;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$LpCapabilityComparator;->score(Lcom/android/server/location/LocationProviderInterface;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 736
    check-cast p1, Lcom/android/server/location/LocationProviderInterface;

    .end local p1
    check-cast p2, Lcom/android/server/location/LocationProviderInterface;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService$LpCapabilityComparator;->compare(Lcom/android/server/location/LocationProviderInterface;Lcom/android/server/location/LocationProviderInterface;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/android/server/location/LocationProviderInterface;Lcom/android/server/location/LocationProviderInterface;)Z
    .registers 5
    .parameter "l1"
    .parameter "l2"

    .prologue
    .line 753
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$LpCapabilityComparator;->score(Lcom/android/server/location/LocationProviderInterface;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService$LpCapabilityComparator;->score(Lcom/android/server/location/LocationProviderInterface;)I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
