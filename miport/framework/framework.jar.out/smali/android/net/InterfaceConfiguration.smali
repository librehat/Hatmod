.class public Landroid/net/InterfaceConfiguration;
.super Ljava/lang/Object;
.source "InterfaceConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/InterfaceConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public addr:Landroid/net/LinkAddress;

.field public hwAddr:Ljava/lang/String;

.field public interfaceFlags:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    new-instance v0, Landroid/net/InterfaceConfiguration$1;

    invoke-direct {v0}, Landroid/net/InterfaceConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/InterfaceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public isActive()Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 58
    :try_start_1
    iget-object v6, p0, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    const-string/jumbo v7, "up"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 59
    iget-object v6, p0, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_18
    if-ge v3, v4, :cond_1f

    aget-byte v1, v0, v3
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1c} :catch_23

    .line 60
    .local v1, b:B
    if-eqz v1, :cond_20

    const/4 v5, 0x1

    .line 66
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1f
    :goto_1f
    return v5

    .line 59
    .restart local v0       #arr$:[B
    .restart local v1       #b:B
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 63
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catch_23
    move-exception v2

    .line 64
    .local v2, e:Ljava/lang/NullPointerException;
    goto :goto_1f
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    .local v0, str:Ljava/lang/StringBuffer;
    const-string v1, "ipddress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    iget-object v1, p0, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    if-eqz v1, :cond_32

    iget-object v1, p0, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    const-string v1, " flags "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    const-string v1, " hwaddr "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/InterfaceConfiguration;->hwAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 42
    :cond_32
    const-string v1, "NULL"

    goto :goto_14
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->hwAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    if-eqz v0, :cond_18

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 79
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 83
    :goto_12
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return-void

    .line 81
    :cond_18
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_12
.end method
