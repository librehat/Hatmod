.class public Landroid/net/NetworkStatsHistory$DataStreamUtils;
.super Ljava/lang/Object;
.source "NetworkStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataStreamUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 586
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFullLongArray(Ljava/io/DataInputStream;)[J
    .registers 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 589
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 590
    .local v1, size:I
    new-array v2, v1, [J

    .line 591
    .local v2, values:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    array-length v3, v2

    if-ge v0, v3, :cond_13

    .line 592
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 591
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 594
    :cond_13
    return-object v2
.end method

.method public static readVarLong(Ljava/io/DataInputStream;)J
    .registers 7
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 601
    const/4 v3, 0x0

    .line 602
    .local v3, shift:I
    const-wide/16 v1, 0x0

    .line 603
    .local v1, result:J
    :goto_3
    const/16 v4, 0x40

    if-ge v3, v4, :cond_18

    .line 604
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 605
    .local v0, b:B
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v3

    or-long/2addr v1, v4

    .line 606
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_15

    .line 607
    return-wide v1

    .line 608
    :cond_15
    add-int/lit8 v3, v3, 0x7

    .line 609
    goto :goto_3

    .line 610
    .end local v0           #b:B
    :cond_18
    new-instance v4, Ljava/net/ProtocolException;

    const-string/jumbo v5, "malformed long"

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static readVarLongArray(Ljava/io/DataInputStream;)[J
    .registers 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 629
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 630
    .local v1, size:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_9

    const/4 v2, 0x0

    .line 635
    :cond_8
    return-object v2

    .line 631
    :cond_9
    new-array v2, v1, [J

    .line 632
    .local v2, values:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    array-length v3, v2

    if-ge v0, v3, :cond_8

    .line 633
    invoke-static {p0}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLong(Ljava/io/DataInputStream;)J

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 632
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public static writeVarLong(Ljava/io/DataOutputStream;J)V
    .registers 7
    .parameter "out"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 619
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 620
    return-void

    .line 622
    :cond_e
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 623
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public static writeVarLongArray(Ljava/io/DataOutputStream;[JI)V
    .registers 6
    .parameter "out"
    .parameter "values"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 640
    if-nez p1, :cond_7

    .line 641
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 651
    :cond_6
    return-void

    .line 644
    :cond_7
    array-length v1, p1

    if-le p2, v1, :cond_13

    .line 645
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "size larger than length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 647
    :cond_13
    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 648
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    if-ge v0, p2, :cond_6

    .line 649
    aget-wide v1, p1, v0

    invoke-static {p0, v1, v2}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLong(Ljava/io/DataOutputStream;J)V

    .line 648
    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method
