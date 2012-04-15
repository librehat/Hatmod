.class public abstract Landroid/net/INetworkStatsService$Stub;
.super Landroid/os/Binder;
.source "INetworkStatsService.java"

# interfaces
.implements Landroid/net/INetworkStatsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkStatsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkStatsService"

.field static final TRANSACTION_forceUpdate:I = 0x8

.field static final TRANSACTION_getDataLayerSnapshotForUid:I = 0x5

.field static final TRANSACTION_getHistoryForNetwork:I = 0x1

.field static final TRANSACTION_getHistoryForUid:I = 0x2

.field static final TRANSACTION_getSummaryForAllUid:I = 0x4

.field static final TRANSACTION_getSummaryForNetwork:I = 0x3

.field static final TRANSACTION_incrementOperationCount:I = 0x6

.field static final TRANSACTION_setUidForeground:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.net.INetworkStatsService"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkStatsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_3
    return-object v0

    .line 27
    :cond_4
    const-string v1, "android.net.INetworkStatsService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/INetworkStatsService;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/net/INetworkStatsService;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/net/INetworkStatsService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/INetworkStatsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    sparse-switch p1, :sswitch_data_196

    .line 198
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_7
    return v1

    .line 43
    :sswitch_8
    const-string v1, "android.net.INetworkStatsService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v1, 0x1

    goto :goto_7

    .line 48
    :sswitch_11
    const-string v1, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_43

    .line 51
    sget-object v1, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    .line 57
    .local v2, _arg0:Landroid/net/NetworkTemplate;
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 58
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/net/INetworkStatsService$Stub;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v14

    .line 59
    .local v14, _result:Landroid/net/NetworkStatsHistory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v14, :cond_45

    .line 61
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Landroid/net/NetworkStatsHistory;->writeToParcel(Landroid/os/Parcel;I)V

    .line 67
    :goto_41
    const/4 v1, 0x1

    goto :goto_7

    .line 54
    .end local v2           #_arg0:Landroid/net/NetworkTemplate;
    .end local v3           #_arg1:I
    .end local v14           #_result:Landroid/net/NetworkStatsHistory;
    :cond_43
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/net/NetworkTemplate;
    goto :goto_28

    .line 65
    .restart local v3       #_arg1:I
    .restart local v14       #_result:Landroid/net/NetworkStatsHistory;
    :cond_45
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_41

    .line 71
    .end local v2           #_arg0:Landroid/net/NetworkTemplate;
    .end local v3           #_arg1:I
    .end local v14           #_result:Landroid/net/NetworkStatsHistory;
    :sswitch_4c
    const-string v1, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8c

    .line 74
    sget-object v1, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    .line 80
    .restart local v2       #_arg0:Landroid/net/NetworkTemplate;
    :goto_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 82
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 84
    .local v4, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 86
    .local v5, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg4:I
    move-object v1, p0

    .line 87
    invoke-virtual/range {v1 .. v6}, Landroid/net/INetworkStatsService$Stub;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v14

    .line 88
    .restart local v14       #_result:Landroid/net/NetworkStatsHistory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v14, :cond_8e

    .line 90
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Landroid/net/NetworkStatsHistory;->writeToParcel(Landroid/os/Parcel;I)V

    .line 96
    :goto_89
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 77
    .end local v2           #_arg0:Landroid/net/NetworkTemplate;
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:I
    .end local v14           #_result:Landroid/net/NetworkStatsHistory;
    :cond_8c
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/net/NetworkTemplate;
    goto :goto_63

    .line 94
    .restart local v3       #_arg1:I
    .restart local v4       #_arg2:I
    .restart local v5       #_arg3:I
    .restart local v6       #_arg4:I
    .restart local v14       #_result:Landroid/net/NetworkStatsHistory;
    :cond_8e
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_89

    .line 100
    .end local v2           #_arg0:Landroid/net/NetworkTemplate;
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:I
    .end local v14           #_result:Landroid/net/NetworkStatsHistory;
    :sswitch_95
    const-string v1, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ce

    .line 103
    sget-object v1, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    .line 109
    .restart local v2       #_arg0:Landroid/net/NetworkTemplate;
    :goto_ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 111
    .local v9, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .local v11, _arg2:J
    move-object v7, p0

    move-object v8, v2

    .line 112
    invoke-virtual/range {v7 .. v12}, Landroid/net/INetworkStatsService$Stub;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v14

    .line 113
    .local v14, _result:Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v14, :cond_d0

    .line 115
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 121
    :goto_cb
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 106
    .end local v2           #_arg0:Landroid/net/NetworkTemplate;
    .end local v9           #_arg1:J
    .end local v11           #_arg2:J
    .end local v14           #_result:Landroid/net/NetworkStats;
    :cond_ce
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/net/NetworkTemplate;
    goto :goto_ac

    .line 119
    .restart local v9       #_arg1:J
    .restart local v11       #_arg2:J
    .restart local v14       #_result:Landroid/net/NetworkStats;
    :cond_d0
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_cb

    .line 125
    .end local v2           #_arg0:Landroid/net/NetworkTemplate;
    .end local v9           #_arg1:J
    .end local v11           #_arg2:J
    .end local v14           #_result:Landroid/net/NetworkStats;
    :sswitch_d7
    const-string v1, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_118

    .line 128
    sget-object v1, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    .line 134
    .restart local v2       #_arg0:Landroid/net/NetworkTemplate;
    :goto_ee
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 136
    .restart local v9       #_arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 138
    .restart local v11       #_arg2:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11a

    const/4 v5, 0x1

    .local v5, _arg3:Z
    :goto_fd
    move-object v7, p0

    move-object v8, v2

    move v13, v5

    .line 139
    invoke-virtual/range {v7 .. v13}, Landroid/net/INetworkStatsService$Stub;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v14

    .line 140
    .restart local v14       #_result:Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v14, :cond_11c

    .line 142
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 148
    :goto_115
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 131
    .end local v2           #_arg0:Landroid/net/NetworkTemplate;
    .end local v5           #_arg3:Z
    .end local v9           #_arg1:J
    .end local v11           #_arg2:J
    .end local v14           #_result:Landroid/net/NetworkStats;
    :cond_118
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/net/NetworkTemplate;
    goto :goto_ee

    .line 138
    .restart local v9       #_arg1:J
    .restart local v11       #_arg2:J
    :cond_11a
    const/4 v5, 0x0

    goto :goto_fd

    .line 146
    .restart local v5       #_arg3:Z
    .restart local v14       #_result:Landroid/net/NetworkStats;
    :cond_11c
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_115

    .line 152
    .end local v2           #_arg0:Landroid/net/NetworkTemplate;
    .end local v5           #_arg3:Z
    .end local v9           #_arg1:J
    .end local v11           #_arg2:J
    .end local v14           #_result:Landroid/net/NetworkStats;
    :sswitch_123
    const-string v1, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 155
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Landroid/net/INetworkStatsService$Stub;->getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;

    move-result-object v14

    .line 156
    .restart local v14       #_result:Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v14, :cond_146

    .line 158
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 164
    :goto_143
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 162
    :cond_146
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_143

    .line 168
    .end local v2           #_arg0:I
    .end local v14           #_result:Landroid/net/NetworkStats;
    :sswitch_14d
    const-string v1, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 174
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 175
    .restart local v4       #_arg2:I
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/INetworkStatsService$Stub;->incrementOperationCount(III)V

    .line 176
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 181
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    :sswitch_169
    const-string v1, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 185
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_184

    const/4 v3, 0x1

    .line 186
    .local v3, _arg1:Z
    :goto_17b
    invoke-virtual {p0, v2, v3}, Landroid/net/INetworkStatsService$Stub;->setUidForeground(IZ)V

    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 185
    .end local v3           #_arg1:Z
    :cond_184
    const/4 v3, 0x0

    goto :goto_17b

    .line 192
    .end local v2           #_arg0:I
    :sswitch_186
    const-string v1, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub;->forceUpdate()V

    .line 194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 39
    :sswitch_data_196
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_4c
        0x3 -> :sswitch_95
        0x4 -> :sswitch_d7
        0x5 -> :sswitch_123
        0x6 -> :sswitch_14d
        0x7 -> :sswitch_169
        0x8 -> :sswitch_186
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
