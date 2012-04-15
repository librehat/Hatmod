.class public Lcom/android/internal/net/NetworkStatsFactory;
.super Ljava/lang/Object;
.source "NetworkStatsFactory.java"


# static fields
.field private static final KEY_ACTIVE:Ljava/lang/String; = "active"

.field private static final KEY_COUNTER_SET:Ljava/lang/String; = "cnt_set"

.field private static final KEY_IDX:Ljava/lang/String; = "idx"

.field private static final KEY_IFACE:Ljava/lang/String; = "iface"

.field private static final KEY_RX_BYTES:Ljava/lang/String; = "rx_bytes"

.field private static final KEY_RX_PACKETS:Ljava/lang/String; = "rx_packets"

.field private static final KEY_SNAP_RX_BYTES:Ljava/lang/String; = "snap_rx_bytes"

.field private static final KEY_SNAP_RX_PACKETS:Ljava/lang/String; = "snap_rx_packets"

.field private static final KEY_SNAP_TX_BYTES:Ljava/lang/String; = "snap_tx_bytes"

.field private static final KEY_SNAP_TX_PACKETS:Ljava/lang/String; = "snap_tx_packets"

.field private static final KEY_TAG_HEX:Ljava/lang/String; = "acct_tag_hex"

.field private static final KEY_TX_BYTES:Ljava/lang/String; = "tx_bytes"

.field private static final KEY_TX_PACKETS:Ljava/lang/String; = "tx_packets"

.field private static final KEY_UID:Ljava/lang/String; = "uid_tag_int"

.field private static final TAG:Ljava/lang/String; = "NetworkStatsFactory"


# instance fields
.field private final mStatsIface:Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mStatsXtIface:Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mStatsXtIfaceAll:Ljava/io/File;

.field private final mStatsXtUid:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 82
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>(Ljava/io/File;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 4
    .parameter "procRoot"

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/dev"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsIface:Ljava/io/File;

    .line 88
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/xt_qtaguid/stats"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    .line 89
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/xt_qtaguid/iface_stat"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIface:Ljava/io/File;

    .line 90
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/xt_qtaguid/iface_stat_all"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    .line 91
    return-void
.end method

.method private static fileListWithoutNull(Ljava/io/File;)[Ljava/lang/String;
    .registers 3
    .parameter "file"

    .prologue
    .line 368
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, list:[Ljava/lang/String;
    if-eqz v0, :cond_7

    .end local v0           #list:[Ljava/lang/String;
    :goto_6
    return-object v0

    .restart local v0       #list:[Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    goto :goto_6
.end method

.method private static getParsedInt(Ljava/util/HashMap;Ljava/lang/String;)I
    .registers 4
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 310
    .local p0, parsed:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 311
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_d

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private static getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J
    .registers 5
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 316
    .local p0, parsed:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 317
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_d

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_c
    return-wide v1

    :cond_d
    const-wide/16 v1, 0x0

    goto :goto_c
.end method

.method private static parseLine(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 340
    .local p0, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, outParsed:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 342
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 343
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    if-ge v0, v1, :cond_20

    .line 344
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 346
    :cond_20
    return-void
.end method

.method private readNetworkStatsSummaryMultipleFiles()Landroid/net/NetworkStats;
    .registers 24
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 168
    new-instance v18, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    const/16 v22, 0x6

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 169
    .local v18, stats:Landroid/net/NetworkStats;
    new-instance v9, Landroid/net/NetworkStats$Entry;

    invoke-direct {v9}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 171
    .local v9, entry:Landroid/net/NetworkStats$Entry;
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v13

    .line 172
    .local v13, knownIfaces:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v6

    .line 175
    .local v6, activeIfaces:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIface:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/net/NetworkStatsFactory;->fileListWithoutNull(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v7

    .local v7, arr$:[Ljava/lang/String;
    array-length v14, v7

    .local v14, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_2a
    if-ge v10, v14, :cond_cd

    aget-object v11, v7, v10

    .line 176
    .local v11, iface:Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIface:Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v12, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 178
    .local v12, ifacePath:Ljava/io/File;
    new-instance v20, Ljava/io/File;

    const-string v21, "active"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Lcom/android/internal/net/NetworkStatsFactory;->readSingleLongFromFile(Ljava/io/File;)J

    move-result-wide v4

    .line 179
    .local v4, active:J
    const-wide/16 v20, 0x1

    cmp-long v20, v4, v20

    if-nez v20, :cond_c3

    .line 180
    invoke-virtual {v13, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 188
    :goto_56
    iput-object v11, v9, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 189
    const/16 v20, -0x1

    move/from16 v0, v20

    iput v0, v9, Landroid/net/NetworkStats$Entry;->uid:I

    .line 190
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v9, Landroid/net/NetworkStats$Entry;->set:I

    .line 191
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v9, Landroid/net/NetworkStats$Entry;->tag:I

    .line 192
    new-instance v20, Ljava/io/File;

    const-string/jumbo v21, "rx_bytes"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Lcom/android/internal/net/NetworkStatsFactory;->readSingleLongFromFile(Ljava/io/File;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v9, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 193
    new-instance v20, Ljava/io/File;

    const-string/jumbo v21, "rx_packets"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Lcom/android/internal/net/NetworkStatsFactory;->readSingleLongFromFile(Ljava/io/File;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v9, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 194
    new-instance v20, Ljava/io/File;

    const-string/jumbo v21, "tx_bytes"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Lcom/android/internal/net/NetworkStatsFactory;->readSingleLongFromFile(Ljava/io/File;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v9, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 195
    new-instance v20, Ljava/io/File;

    const-string/jumbo v21, "tx_packets"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Lcom/android/internal/net/NetworkStatsFactory;->readSingleLongFromFile(Ljava/io/File;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v9, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 197
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 175
    :cond_bf
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2a

    .line 182
    :cond_c3
    const-wide/16 v20, 0x0

    cmp-long v20, v4, v20

    if-nez v20, :cond_bf

    .line 183
    invoke-virtual {v13, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 200
    .end local v4           #active:J
    .end local v11           #iface:Ljava/lang/String;
    .end local v12           #ifacePath:Ljava/io/File;
    :cond_cd
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v19

    .line 202
    .local v19, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 204
    .local v16, reader:Ljava/io/BufferedReader;
    :try_start_d3
    new-instance v17, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/FileReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsIface:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e7
    .catchall {:try_start_d3 .. :try_end_e7} :catchall_1b1
    .catch Ljava/lang/NullPointerException; {:try_start_d3 .. :try_end_e7} :catch_213
    .catch Ljava/lang/NumberFormatException; {:try_start_d3 .. :try_end_e7} :catch_1ec
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_e7} :catch_20d

    .line 207
    .end local v16           #reader:Ljava/io/BufferedReader;
    .local v17, reader:Ljava/io/BufferedReader;
    :try_start_e7
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 208
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 212
    :cond_ed
    :goto_ed
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .local v15, line:Ljava/lang/String;
    if-eqz v15, :cond_1e8

    .line 213
    move-object/from16 v0, v19

    invoke-static {v15, v0}, Lcom/android/internal/net/NetworkStatsFactory;->splitLine(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_f8
    .catchall {:try_start_e7 .. :try_end_f8} :catchall_209
    .catch Ljava/lang/NullPointerException; {:try_start_e7 .. :try_end_f8} :catch_192
    .catch Ljava/lang/NumberFormatException; {:try_start_e7 .. :try_end_f8} :catch_20f
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_f8} :catch_1c9

    .line 216
    const/16 v20, 0x0

    :try_start_fa
    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v9, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 217
    const/16 v20, -0x1

    move/from16 v0, v20

    iput v0, v9, Landroid/net/NetworkStats$Entry;->uid:I

    .line 218
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v9, Landroid/net/NetworkStats$Entry;->set:I

    .line 219
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v9, Landroid/net/NetworkStats$Entry;->tag:I

    .line 220
    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v9, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 221
    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v9, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 222
    const/16 v20, 0x9

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v9, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 223
    const/16 v20, 0xa

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v9, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 225
    iget-object v0, v9, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1b6

    .line 227
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    :try_end_167
    .catchall {:try_start_fa .. :try_end_167} :catchall_209
    .catch Ljava/lang/NumberFormatException; {:try_start_fa .. :try_end_167} :catch_168
    .catch Ljava/lang/NullPointerException; {:try_start_fa .. :try_end_167} :catch_192
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_167} :catch_1c9

    goto :goto_ed

    .line 232
    :catch_168
    move-exception v8

    .line 233
    .local v8, e:Ljava/lang/NumberFormatException;
    :try_start_169
    const-string v20, "NetworkStatsFactory"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "problem parsing stats row \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\': "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_190
    .catchall {:try_start_169 .. :try_end_190} :catchall_209
    .catch Ljava/lang/NullPointerException; {:try_start_169 .. :try_end_190} :catch_192
    .catch Ljava/lang/NumberFormatException; {:try_start_169 .. :try_end_190} :catch_20f
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_190} :catch_1c9

    goto/16 :goto_ed

    .line 236
    .end local v8           #e:Ljava/lang/NumberFormatException;
    .end local v15           #line:Ljava/lang/String;
    :catch_192
    move-exception v8

    move-object/from16 v16, v17

    .line 237
    .end local v17           #reader:Ljava/io/BufferedReader;
    .local v8, e:Ljava/lang/NullPointerException;
    .restart local v16       #reader:Ljava/io/BufferedReader;
    :goto_195
    :try_start_195
    new-instance v20, Ljava/lang/IllegalStateException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "problem parsing stats: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_1b1
    .catchall {:try_start_195 .. :try_end_1b1} :catchall_1b1

    .line 243
    .end local v8           #e:Ljava/lang/NullPointerException;
    :catchall_1b1
    move-exception v20

    :goto_1b2
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v20

    .line 228
    .end local v16           #reader:Ljava/io/BufferedReader;
    .restart local v15       #line:Ljava/lang/String;
    .restart local v17       #reader:Ljava/io/BufferedReader;
    :cond_1b6
    :try_start_1b6
    iget-object v0, v9, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_ed

    .line 230
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    :try_end_1c7
    .catchall {:try_start_1b6 .. :try_end_1c7} :catchall_209
    .catch Ljava/lang/NumberFormatException; {:try_start_1b6 .. :try_end_1c7} :catch_168
    .catch Ljava/lang/NullPointerException; {:try_start_1b6 .. :try_end_1c7} :catch_192
    .catch Ljava/io/IOException; {:try_start_1b6 .. :try_end_1c7} :catch_1c9

    goto/16 :goto_ed

    .line 240
    .end local v15           #line:Ljava/lang/String;
    :catch_1c9
    move-exception v8

    move-object/from16 v16, v17

    .line 241
    .end local v17           #reader:Ljava/io/BufferedReader;
    .local v8, e:Ljava/io/IOException;
    .restart local v16       #reader:Ljava/io/BufferedReader;
    :goto_1cc
    :try_start_1cc
    new-instance v20, Ljava/lang/IllegalStateException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "problem parsing stats: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_1e8
    .catchall {:try_start_1cc .. :try_end_1e8} :catchall_1b1

    .line 243
    .end local v8           #e:Ljava/io/IOException;
    .end local v16           #reader:Ljava/io/BufferedReader;
    .restart local v15       #line:Ljava/lang/String;
    .restart local v17       #reader:Ljava/io/BufferedReader;
    :cond_1e8
    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 246
    return-object v18

    .line 238
    .end local v15           #line:Ljava/lang/String;
    .end local v17           #reader:Ljava/io/BufferedReader;
    .restart local v16       #reader:Ljava/io/BufferedReader;
    :catch_1ec
    move-exception v8

    .line 239
    .local v8, e:Ljava/lang/NumberFormatException;
    :goto_1ed
    :try_start_1ed
    new-instance v20, Ljava/lang/IllegalStateException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "problem parsing stats: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_209
    .catchall {:try_start_1ed .. :try_end_209} :catchall_1b1

    .line 243
    .end local v8           #e:Ljava/lang/NumberFormatException;
    .end local v16           #reader:Ljava/io/BufferedReader;
    .restart local v17       #reader:Ljava/io/BufferedReader;
    :catchall_209
    move-exception v20

    move-object/from16 v16, v17

    .end local v17           #reader:Ljava/io/BufferedReader;
    .restart local v16       #reader:Ljava/io/BufferedReader;
    goto :goto_1b2

    .line 240
    :catch_20d
    move-exception v8

    goto :goto_1cc

    .line 238
    .end local v16           #reader:Ljava/io/BufferedReader;
    .restart local v17       #reader:Ljava/io/BufferedReader;
    :catch_20f
    move-exception v8

    move-object/from16 v16, v17

    .end local v17           #reader:Ljava/io/BufferedReader;
    .restart local v16       #reader:Ljava/io/BufferedReader;
    goto :goto_1ed

    .line 236
    :catch_213
    move-exception v8

    goto :goto_195
.end method

.method private readNetworkStatsSummarySingleFile()Landroid/net/NetworkStats;
    .registers 15

    .prologue
    .line 109
    new-instance v8, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const/4 v12, 0x6

    invoke-direct {v8, v10, v11, v12}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 110
    .local v8, stats:Landroid/net/NetworkStats;
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 114
    .local v2, entry:Landroid/net/NetworkStats$Entry;
    const/16 v10, 0xa

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "iface"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "active"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "snap_rx_bytes"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string/jumbo v12, "snap_rx_packets"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, "snap_tx_bytes"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string/jumbo v12, "snap_tx_packets"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string/jumbo v12, "rx_bytes"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string/jumbo v12, "rx_packets"

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string/jumbo v12, "tx_bytes"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    const-string/jumbo v12, "tx_packets"

    aput-object v12, v10, v11

    invoke-static {v10}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 117
    .local v3, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 118
    .local v9, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    .line 120
    .local v5, parsed:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 122
    .local v6, reader:Ljava/io/BufferedReader;
    :try_start_5c
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    iget-object v11, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_68
    .catchall {:try_start_5c .. :try_end_68} :catchall_107
    .catch Ljava/lang/NullPointerException; {:try_start_5c .. :try_end_68} :catch_151
    .catch Ljava/lang/NumberFormatException; {:try_start_5c .. :try_end_68} :catch_112
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_68} :catch_12d

    .line 125
    .end local v6           #reader:Ljava/io/BufferedReader;
    .local v7, reader:Ljava/io/BufferedReader;
    :goto_68
    :try_start_68
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_10e

    .line 126
    invoke-static {v4, v9}, Lcom/android/internal/net/NetworkStatsFactory;->splitLine(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 127
    invoke-static {v3, v9, v5}, Lcom/android/internal/net/NetworkStatsFactory;->parseLine(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 129
    const-string v10, "iface"

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 130
    const/4 v10, -0x1

    iput v10, v2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 131
    const/4 v10, 0x0

    iput v10, v2, Landroid/net/NetworkStats$Entry;->set:I

    .line 132
    const/4 v10, 0x0

    iput v10, v2, Landroid/net/NetworkStats$Entry;->tag:I

    .line 135
    const-string/jumbo v10, "snap_rx_bytes"

    invoke-static {v5, v10}, Lcom/android/internal/net/NetworkStatsFactory;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 136
    const-string/jumbo v10, "snap_rx_packets"

    invoke-static {v5, v10}, Lcom/android/internal/net/NetworkStatsFactory;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 137
    const-string/jumbo v10, "snap_tx_bytes"

    invoke-static {v5, v10}, Lcom/android/internal/net/NetworkStatsFactory;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 138
    const-string/jumbo v10, "snap_tx_packets"

    invoke-static {v5, v10}, Lcom/android/internal/net/NetworkStatsFactory;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 141
    const-string v10, "active"

    invoke-static {v5, v10}, Lcom/android/internal/net/NetworkStatsFactory;->getParsedInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_10c

    const/4 v0, 0x1

    .line 142
    .local v0, active:Z
    :goto_b4
    if-eqz v0, :cond_e6

    .line 143
    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-string/jumbo v12, "rx_bytes"

    invoke-static {v5, v12}, Lcom/android/internal/net/NetworkStatsFactory;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 144
    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-string/jumbo v12, "rx_packets"

    invoke-static {v5, v12}, Lcom/android/internal/net/NetworkStatsFactory;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 145
    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-string/jumbo v12, "tx_bytes"

    invoke-static {v5, v12}, Lcom/android/internal/net/NetworkStatsFactory;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 146
    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-string/jumbo v12, "tx_packets"

    invoke-static {v5, v12}, Lcom/android/internal/net/NetworkStatsFactory;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 149
    :cond_e6
    invoke-virtual {v8, v2}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    :try_end_e9
    .catchall {:try_start_68 .. :try_end_e9} :catchall_148
    .catch Ljava/lang/NullPointerException; {:try_start_68 .. :try_end_e9} :catch_eb
    .catch Ljava/lang/NumberFormatException; {:try_start_68 .. :try_end_e9} :catch_14e
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_e9} :catch_14b

    goto/16 :goto_68

    .line 151
    .end local v0           #active:Z
    .end local v4           #line:Ljava/lang/String;
    :catch_eb
    move-exception v1

    move-object v6, v7

    .line 152
    .end local v7           #reader:Ljava/io/BufferedReader;
    .local v1, e:Ljava/lang/NullPointerException;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :goto_ed
    :try_start_ed
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "problem parsing stats: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_107
    .catchall {:try_start_ed .. :try_end_107} :catchall_107

    .line 158
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catchall_107
    move-exception v10

    :goto_108
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v10

    .line 141
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :cond_10c
    const/4 v0, 0x0

    goto :goto_b4

    .line 158
    :cond_10e
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    return-object v8

    .line 153
    .end local v4           #line:Ljava/lang/String;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catch_112
    move-exception v1

    .line 154
    .local v1, e:Ljava/lang/NumberFormatException;
    :goto_113
    :try_start_113
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "problem parsing stats: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 155
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_12d
    move-exception v1

    .line 156
    .local v1, e:Ljava/io/IOException;
    :goto_12e
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "problem parsing stats: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_148
    .catchall {:try_start_113 .. :try_end_148} :catchall_107

    .line 158
    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catchall_148
    move-exception v10

    move-object v6, v7

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    goto :goto_108

    .line 155
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catch_14b
    move-exception v1

    move-object v6, v7

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    goto :goto_12e

    .line 153
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catch_14e
    move-exception v1

    move-object v6, v7

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    goto :goto_113

    .line 151
    :catch_151
    move-exception v1

    goto :goto_ed
.end method

.method private static readSingleLongFromFile(Ljava/io/File;)J
    .registers 6
    .parameter "file"

    .prologue
    const-wide/16 v2, -0x1

    .line 354
    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 355
    .local v0, buffer:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_16} :catch_18
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_16} :catch_1a

    move-result-wide v2

    .line 359
    .end local v0           #buffer:[B
    :goto_17
    return-wide v2

    .line 356
    :catch_18
    move-exception v1

    .line 357
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_17

    .line 358
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1a
    move-exception v1

    .line 359
    .local v1, e:Ljava/io/IOException;
    goto :goto_17
.end method

.method private static splitLine(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .parameter "line"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 325
    .local p1, outSplit:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 327
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, " \t\n\r\u000c:"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .local v0, t:Ljava/util/StringTokenizer;
    :goto_a
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 329
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 331
    :cond_18
    return-void
.end method


# virtual methods
.method public readNetworkStatsDetail()Landroid/net/NetworkStats;
    .registers 2

    .prologue
    .line 250
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public readNetworkStatsDetail(I)Landroid/net/NetworkStats;
    .registers 12
    .parameter "limitUid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 260
    new-instance v6, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const/16 v9, 0x18

    invoke-direct {v6, v7, v8, v9}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 261
    .local v6, stats:Landroid/net/NetworkStats;
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 263
    .local v1, entry:Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x1

    .line 264
    .local v2, idx:I
    const/4 v3, 0x1

    .line 266
    .local v3, lastIdx:I
    const/4 v4, 0x0

    .line 269
    .local v4, reader:Lcom/android/internal/util/ProcFileReader;
    :try_start_13
    new-instance v5, Lcom/android/internal/util/ProcFileReader;

    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_6f
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_1f} :catch_fc
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_1f} :catch_fa
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1f} :catch_d8

    .line 270
    .end local v4           #reader:Lcom/android/internal/util/ProcFileReader;
    .local v5, reader:Lcom/android/internal/util/ProcFileReader;
    :try_start_1f
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 272
    :goto_22
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v7

    if-eqz v7, :cond_d4

    .line 273
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v2

    .line 274
    add-int/lit8 v7, v3, 0x1

    if-eq v2, v7, :cond_74

    .line 275
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inconsistent idx="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " after lastIdx="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_53
    .catchall {:try_start_1f .. :try_end_53} :catchall_f3
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_53} :catch_53
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_53} :catch_b8
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_53} :catch_f7

    .line 295
    :catch_53
    move-exception v0

    move-object v4, v5

    .line 296
    .end local v5           #reader:Lcom/android/internal/util/ProcFileReader;
    .local v0, e:Ljava/lang/NullPointerException;
    .restart local v4       #reader:Lcom/android/internal/util/ProcFileReader;
    :goto_55
    :try_start_55
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "problem parsing idx "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_6f
    .catchall {:try_start_55 .. :try_end_6f} :catchall_6f

    .line 302
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_6f
    move-exception v7

    :goto_70
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7

    .line 278
    .end local v4           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v5       #reader:Lcom/android/internal/util/ProcFileReader;
    :cond_74
    move v3, v2

    .line 280
    :try_start_75
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 281
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/NetworkManagementSocketTagger;->kernelToTag(Ljava/lang/String;)I

    move-result v7

    iput v7, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 282
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v7

    iput v7, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 283
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v7

    iput v7, v1, Landroid/net/NetworkStats$Entry;->set:I

    .line 284
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v7

    iput-wide v7, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 285
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v7

    iput-wide v7, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 286
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v7

    iput-wide v7, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 287
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v7

    iput-wide v7, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 289
    const/4 v7, -0x1

    if-eq p1, v7, :cond_b0

    iget v7, v1, Landroid/net/NetworkStats$Entry;->uid:I

    if-ne p1, v7, :cond_b3

    .line 290
    :cond_b0
    invoke-virtual {v6, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 293
    :cond_b3
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_b6
    .catchall {:try_start_75 .. :try_end_b6} :catchall_f3
    .catch Ljava/lang/NullPointerException; {:try_start_75 .. :try_end_b6} :catch_53
    .catch Ljava/lang/NumberFormatException; {:try_start_75 .. :try_end_b6} :catch_b8
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_b6} :catch_f7

    goto/16 :goto_22

    .line 297
    :catch_b8
    move-exception v0

    move-object v4, v5

    .line 298
    .end local v5           #reader:Lcom/android/internal/util/ProcFileReader;
    .local v0, e:Ljava/lang/NumberFormatException;
    .restart local v4       #reader:Lcom/android/internal/util/ProcFileReader;
    :goto_ba
    :try_start_ba
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "problem parsing idx "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_d4
    .catchall {:try_start_ba .. :try_end_d4} :catchall_6f

    .line 302
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v4           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v5       #reader:Lcom/android/internal/util/ProcFileReader;
    :cond_d4
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 305
    return-object v6

    .line 299
    .end local v5           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v4       #reader:Lcom/android/internal/util/ProcFileReader;
    :catch_d8
    move-exception v0

    .line 300
    .local v0, e:Ljava/io/IOException;
    :goto_d9
    :try_start_d9
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "problem parsing idx "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_f3
    .catchall {:try_start_d9 .. :try_end_f3} :catchall_6f

    .line 302
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v5       #reader:Lcom/android/internal/util/ProcFileReader;
    :catchall_f3
    move-exception v7

    move-object v4, v5

    .end local v5           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v4       #reader:Lcom/android/internal/util/ProcFileReader;
    goto/16 :goto_70

    .line 299
    .end local v4           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v5       #reader:Lcom/android/internal/util/ProcFileReader;
    :catch_f7
    move-exception v0

    move-object v4, v5

    .end local v5           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v4       #reader:Lcom/android/internal/util/ProcFileReader;
    goto :goto_d9

    .line 297
    :catch_fa
    move-exception v0

    goto :goto_ba

    .line 295
    :catch_fc
    move-exception v0

    goto/16 :goto_55
.end method

.method public readNetworkStatsSummary()Landroid/net/NetworkStats;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 102
    invoke-direct {p0}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsSummarySingleFile()Landroid/net/NetworkStats;

    move-result-object v0

    .line 104
    :goto_c
    return-object v0

    :cond_d
    invoke-direct {p0}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsSummaryMultipleFiles()Landroid/net/NetworkStats;

    move-result-object v0

    goto :goto_c
.end method
