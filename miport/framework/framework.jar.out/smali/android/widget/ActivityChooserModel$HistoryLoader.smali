.class final Landroid/widget/ActivityChooserModel$HistoryLoader;
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
    name = "HistoryLoader"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserModel;)V
    .registers 2
    .parameter

    .prologue
    .line 967
    iput-object p1, p0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 967
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserModel$HistoryLoader;-><init>(Landroid/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 25

    .prologue
    .line 970
    const/4 v4, 0x0

    .line 972
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/widget/ActivityChooserModel;->access$500(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/ActivityChooserModel;->access$400(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_18} :catch_3b

    move-result-object v4

    .line 980
    :try_start_19
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 981
    .local v12, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-interface {v12, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 983
    const/16 v17, 0x0

    .line 984
    .local v17, type:I
    :goto_26
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_3d

    const/16 v21, 0x2

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_3d

    .line 985
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    goto :goto_26

    .line 973
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v17           #type:I
    :catch_3b
    move-exception v5

    .line 1075
    :cond_3c
    :goto_3c
    return-void

    .line 988
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17       #type:I
    :cond_3d
    const-string v21, "historical-records"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_84

    .line 989
    new-instance v21, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v22, "Share records file does not start with historical-records tag."

    invoke-direct/range {v21 .. v22}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_51
    .catchall {:try_start_19 .. :try_end_51} :catchall_15b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_51} :catch_51
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_51} :catch_ed

    .line 1062
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v17           #type:I
    :catch_51
    move-exception v20

    .line 1063
    .local v20, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_52
    invoke-static {}, Landroid/widget/ActivityChooserModel;->access$1200()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error reading historical recrod file: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/widget/ActivityChooserModel;->access$400(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7c
    .catchall {:try_start_52 .. :try_end_7c} :catchall_15b

    .line 1067
    if-eqz v4, :cond_3c

    .line 1069
    :try_start_7e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_3c

    .line 1070
    :catch_82
    move-exception v21

    goto :goto_3c

    .line 993
    .end local v20           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17       #type:I
    :cond_84
    :try_start_84
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 996
    .local v14, readRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :cond_89
    :goto_89
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    .line 997
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_c7

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/widget/ActivityChooserModel;->access$600(Landroid/widget/ActivityChooserModel;)Ljava/lang/Object;

    move-result-object v22

    monitor-enter v22
    :try_end_a0
    .catchall {:try_start_84 .. :try_end_a0} :catchall_15b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_84 .. :try_end_a0} :catch_51
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_a0} :catch_ed

    .line 1028
    :try_start_a0
    new-instance v18, Ljava/util/LinkedHashSet;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1035
    .local v18, uniqueShareRecords:Ljava/util/Set;,"Ljava/util/Set<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/widget/ActivityChooserModel;->access$700(Landroid/widget/ActivityChooserModel;)Ljava/util/List;

    move-result-object v7

    .line 1036
    .local v7, historicalRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 1037
    .local v8, historicalRecordsCount:I
    add-int/lit8 v9, v8, -0x1

    .local v9, i:I
    :goto_b7
    if-ltz v9, :cond_162

    .line 1038
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 1039
    .local v6, historicalRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_c4
    .catchall {:try_start_a0 .. :try_end_c4} :catchall_1b3

    .line 1037
    add-int/lit8 v9, v9, -0x1

    goto :goto_b7

    .line 1000
    .end local v6           #historicalRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v7           #historicalRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v8           #historicalRecordsCount:I
    .end local v9           #i:I
    .end local v18           #uniqueShareRecords:Ljava/util/Set;,"Ljava/util/Set<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :cond_c7
    const/16 v21, 0x3

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_89

    const/16 v21, 0x4

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_89

    .line 1003
    :try_start_d7
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 1004
    .local v11, nodeName:Ljava/lang/String;
    const-string v21, "historical-record"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_120

    .line 1005
    new-instance v21, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v22, "Share records file not well-formed."

    invoke-direct/range {v21 .. v22}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_ed
    .catchall {:try_start_d7 .. :try_end_ed} :catchall_15b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d7 .. :try_end_ed} :catch_51
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_ed} :catch_ed

    .line 1064
    .end local v11           #nodeName:Ljava/lang/String;
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v14           #readRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v17           #type:I
    :catch_ed
    move-exception v10

    .line 1065
    .local v10, ioe:Ljava/io/IOException;
    :try_start_ee
    invoke-static {}, Landroid/widget/ActivityChooserModel;->access$1200()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error reading historical recrod file: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/widget/ActivityChooserModel;->access$400(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_116
    .catchall {:try_start_ee .. :try_end_116} :catchall_15b

    .line 1067
    if-eqz v4, :cond_3c

    .line 1069
    :try_start_118
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_11b} :catch_11d

    goto/16 :goto_3c

    .line 1070
    :catch_11d
    move-exception v21

    goto/16 :goto_3c

    .line 1008
    .end local v10           #ioe:Ljava/io/IOException;
    .restart local v11       #nodeName:Ljava/lang/String;
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14       #readRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v17       #type:I
    :cond_120
    const/16 v21, 0x0

    :try_start_122
    const-string v22, "activity"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1009
    .local v3, activity:Ljava/lang/String;
    const/16 v21, 0x0

    const-string/jumbo v22, "time"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 1011
    .local v15, time:J
    const/16 v21, 0x0

    const-string/jumbo v22, "weight"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    .line 1014
    .local v19, weight:F
    new-instance v13, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    move-wide v0, v15

    move/from16 v2, v19

    invoke-direct {v13, v3, v0, v1, v2}, Landroid/widget/ActivityChooserModel$HistoricalRecord;-><init>(Ljava/lang/String;JF)V

    .line 1016
    .local v13, readRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_159
    .catchall {:try_start_122 .. :try_end_159} :catchall_15b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_122 .. :try_end_159} :catch_51
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_159} :catch_ed

    goto/16 :goto_89

    .line 1067
    .end local v3           #activity:Ljava/lang/String;
    .end local v11           #nodeName:Ljava/lang/String;
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v13           #readRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v14           #readRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v15           #time:J
    .end local v17           #type:I
    .end local v19           #weight:F
    :catchall_15b
    move-exception v21

    if-eqz v4, :cond_161

    .line 1069
    :try_start_15e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_161
    .catch Ljava/io/IOException; {:try_start_15e .. :try_end_161} :catch_1b6

    .line 1072
    :cond_161
    :goto_161
    throw v21

    .line 1042
    .restart local v7       #historicalRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v8       #historicalRecordsCount:I
    .restart local v9       #i:I
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14       #readRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v17       #type:I
    .restart local v18       #uniqueShareRecords:Ljava/util/Set;,"Ljava/util/Set<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :cond_162
    :try_start_162
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v21

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->size()I

    move-result v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_17b

    .line 1043
    monitor-exit v22
    :try_end_171
    .catchall {:try_start_162 .. :try_end_171} :catchall_1b3

    .line 1067
    if-eqz v4, :cond_3c

    .line 1069
    :try_start_173
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_173 .. :try_end_176} :catch_178

    goto/16 :goto_3c

    .line 1070
    :catch_178
    move-exception v21

    goto/16 :goto_3c

    .line 1047
    :cond_17b
    :try_start_17b
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1048
    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-static {v0, v1}, Landroid/widget/ActivityChooserModel;->access$802(Landroid/widget/ActivityChooserModel;Z)Z

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/widget/ActivityChooserModel;->access$1100(Landroid/widget/ActivityChooserModel;)Landroid/os/Handler;

    move-result-object v21

    new-instance v23, Landroid/widget/ActivityChooserModel$HistoryLoader$1;

    invoke-direct/range {v23 .. v24}, Landroid/widget/ActivityChooserModel$HistoryLoader$1;-><init>(Landroid/widget/ActivityChooserModel$HistoryLoader;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1061
    monitor-exit v22
    :try_end_1a9
    .catchall {:try_start_17b .. :try_end_1a9} :catchall_1b3

    .line 1067
    if-eqz v4, :cond_3c

    .line 1069
    :try_start_1ab
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1ae
    .catch Ljava/io/IOException; {:try_start_1ab .. :try_end_1ae} :catch_1b0

    goto/16 :goto_3c

    .line 1070
    :catch_1b0
    move-exception v21

    goto/16 :goto_3c

    .line 1061
    .end local v7           #historicalRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v8           #historicalRecordsCount:I
    .end local v9           #i:I
    .end local v18           #uniqueShareRecords:Ljava/util/Set;,"Ljava/util/Set<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :catchall_1b3
    move-exception v21

    :try_start_1b4
    monitor-exit v22
    :try_end_1b5
    .catchall {:try_start_1b4 .. :try_end_1b5} :catchall_1b3

    :try_start_1b5
    throw v21
    :try_end_1b6
    .catchall {:try_start_1b5 .. :try_end_1b6} :catchall_15b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b5 .. :try_end_1b6} :catch_51
    .catch Ljava/io/IOException; {:try_start_1b5 .. :try_end_1b6} :catch_ed

    .line 1070
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v14           #readRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v17           #type:I
    :catch_1b6
    move-exception v22

    goto :goto_161
.end method
