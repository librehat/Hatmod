.class final Landroid/widget/ActivityChooserModel$HistoryPersister;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HistoryPersister"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserModel;)V
    .registers 2
    .parameter

    .prologue
    .line 1081
    iput-object p1, p0, Landroid/widget/ActivityChooserModel$HistoryPersister;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1081
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserModel$HistoryPersister;-><init>(Landroid/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 1084
    const/4 v1, 0x0

    .line 1085
    .local v1, fos:Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 1087
    .local v8, records:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    iget-object v11, p0, Landroid/widget/ActivityChooserModel$HistoryPersister;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v11}, Landroid/widget/ActivityChooserModel;->access$600(Landroid/widget/ActivityChooserModel;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 1088
    :try_start_9
    new-instance v9, Ljava/util/ArrayList;

    iget-object v11, p0, Landroid/widget/ActivityChooserModel$HistoryPersister;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v11}, Landroid/widget/ActivityChooserModel;->access$700(Landroid/widget/ActivityChooserModel;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_81

    .line 1089
    .end local v8           #records:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .local v9, records:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :try_start_14
    monitor-exit v12
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13d

    .line 1092
    :try_start_15
    iget-object v11, p0, Landroid/widget/ActivityChooserModel$HistoryPersister;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v11}, Landroid/widget/ActivityChooserModel;->access$500(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Landroid/widget/ActivityChooserModel$HistoryPersister;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v12}, Landroid/widget/ActivityChooserModel;->access$400(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_25} :catch_84

    move-result-object v1

    .line 1098
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v10

    .line 1101
    .local v10, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const/4 v11, 0x0

    :try_start_2b
    invoke-interface {v10, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1102
    const-string v11, "UTF-8"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1103
    const/4 v11, 0x0

    const-string v12, "historical-records"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1105
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 1106
    .local v7, recordCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_43
    if-ge v2, v7, :cond_a6

    .line 1107
    const/4 v11, 0x0

    invoke-interface {v9, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 1108
    .local v6, record:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    const/4 v11, 0x0

    const-string v12, "historical-record"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1109
    const/4 v11, 0x0

    const-string v12, "activity"

    iget-object v13, v6, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1110
    const/4 v11, 0x0

    const-string/jumbo v12, "time"

    iget-wide v13, v6, Landroid/widget/ActivityChooserModel$HistoricalRecord;->time:J

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1111
    const/4 v11, 0x0

    const-string/jumbo v12, "weight"

    iget v13, v6, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v13}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1112
    const/4 v11, 0x0

    const-string v12, "historical-record"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7e
    .catchall {:try_start_2b .. :try_end_7e} :catchall_134
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_7e} :catch_b7
    .catch Ljava/lang/IllegalStateException; {:try_start_2b .. :try_end_7e} :catch_e0
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_7e} :catch_109

    .line 1106
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 1089
    .end local v2           #i:I
    .end local v6           #record:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v7           #recordCount:I
    .end local v9           #records:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v10           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8       #records:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :catchall_81
    move-exception v11

    :goto_82
    :try_start_82
    monitor-exit v12
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw v11

    .line 1093
    .end local v8           #records:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v9       #records:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :catch_84
    move-exception v0

    .line 1094
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    invoke-static {}, Landroid/widget/ActivityChooserModel;->access$1200()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error writing historical recrod file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/widget/ActivityChooserModel$HistoryPersister;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v13}, Landroid/widget/ActivityChooserModel;->access$400(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1139
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :cond_a5
    :goto_a5
    return-void

    .line 1118
    .restart local v2       #i:I
    .restart local v7       #recordCount:I
    .restart local v10       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :cond_a6
    const/4 v11, 0x0

    :try_start_a7
    const-string v12, "historical-records"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1119
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_af
    .catchall {:try_start_a7 .. :try_end_af} :catchall_134
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a7 .. :try_end_af} :catch_b7
    .catch Ljava/lang/IllegalStateException; {:try_start_a7 .. :try_end_af} :catch_e0
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_af} :catch_109

    .line 1131
    if-eqz v1, :cond_a5

    .line 1133
    :try_start_b1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_b5

    goto :goto_a5

    .line 1134
    :catch_b5
    move-exception v11

    goto :goto_a5

    .line 1124
    .end local v2           #i:I
    .end local v7           #recordCount:I
    :catch_b7
    move-exception v3

    .line 1125
    .local v3, iae:Ljava/lang/IllegalArgumentException;
    :try_start_b8
    invoke-static {}, Landroid/widget/ActivityChooserModel;->access$1200()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error writing historical recrod file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/widget/ActivityChooserModel$HistoryPersister;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v13}, Landroid/widget/ActivityChooserModel;->access$400(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d8
    .catchall {:try_start_b8 .. :try_end_d8} :catchall_134

    .line 1131
    if-eqz v1, :cond_a5

    .line 1133
    :try_start_da
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_de

    goto :goto_a5

    .line 1134
    :catch_de
    move-exception v11

    goto :goto_a5

    .line 1126
    .end local v3           #iae:Ljava/lang/IllegalArgumentException;
    :catch_e0
    move-exception v5

    .line 1127
    .local v5, ise:Ljava/lang/IllegalStateException;
    :try_start_e1
    invoke-static {}, Landroid/widget/ActivityChooserModel;->access$1200()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error writing historical recrod file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/widget/ActivityChooserModel$HistoryPersister;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v13}, Landroid/widget/ActivityChooserModel;->access$400(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_101
    .catchall {:try_start_e1 .. :try_end_101} :catchall_134

    .line 1131
    if-eqz v1, :cond_a5

    .line 1133
    :try_start_103
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_106} :catch_107

    goto :goto_a5

    .line 1134
    :catch_107
    move-exception v11

    goto :goto_a5

    .line 1128
    .end local v5           #ise:Ljava/lang/IllegalStateException;
    :catch_109
    move-exception v4

    .line 1129
    .local v4, ioe:Ljava/io/IOException;
    :try_start_10a
    invoke-static {}, Landroid/widget/ActivityChooserModel;->access$1200()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error writing historical recrod file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/widget/ActivityChooserModel$HistoryPersister;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v13}, Landroid/widget/ActivityChooserModel;->access$400(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12a
    .catchall {:try_start_10a .. :try_end_12a} :catchall_134

    .line 1131
    if-eqz v1, :cond_a5

    .line 1133
    :try_start_12c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_12f} :catch_131

    goto/16 :goto_a5

    .line 1134
    :catch_131
    move-exception v11

    goto/16 :goto_a5

    .line 1131
    .end local v4           #ioe:Ljava/io/IOException;
    :catchall_134
    move-exception v11

    if-eqz v1, :cond_13a

    .line 1133
    :try_start_137
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_13a} :catch_13b

    .line 1136
    :cond_13a
    :goto_13a
    throw v11

    .line 1134
    :catch_13b
    move-exception v12

    goto :goto_13a

    .line 1089
    .end local v10           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :catchall_13d
    move-exception v11

    move-object v8, v9

    .end local v9           #records:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v8       #records:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    goto/16 :goto_82
.end method
