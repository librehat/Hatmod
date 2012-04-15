.class public abstract Landroid/app/ApplicationThreadNative;
.super Landroid/os/Binder;
.source "ApplicationThreadNative.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    const-string v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/ApplicationThreadNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .registers 3
    .parameter "obj"

    .prologue
    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 v0, 0x0

    .line 60
    :cond_3
    :goto_3
    return-object v0

    .line 54
    :cond_4
    const-string v1, "android.app.IApplicationThread"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IApplicationThread;

    .line 56
    .local v0, in:Landroid/app/IApplicationThread;
    if-nez v0, :cond_3

    .line 60
    new-instance v0, Landroid/app/ApplicationThreadProxy;

    .end local v0           #in:Landroid/app/IApplicationThread;
    invoke-direct {v0, p0}, Landroid/app/ApplicationThreadProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 549
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 102
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
    .line 70
    packed-switch p1, :pswitch_data_6ce

    .line 544
    :pswitch_3
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_7
    return v5

    .line 73
    :pswitch_8
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 75
    .local v7, b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_34

    const/16 v76, 0x1

    .line 76
    .local v76, finished:Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_37

    const/16 v96, 0x1

    .line 77
    .local v96, userLeaving:Z
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 78
    .local v24, configChanges:I
    move-object/from16 v0, p0

    move/from16 v1, v76

    move/from16 v2, v96

    move/from16 v3, v24

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->schedulePauseActivity(Landroid/os/IBinder;ZZI)V

    .line 79
    const/4 v5, 0x1

    goto :goto_7

    .line 75
    .end local v24           #configChanges:I
    .end local v76           #finished:Z
    .end local v96           #userLeaving:Z
    :cond_34
    const/16 v76, 0x0

    goto :goto_1b

    .line 76
    .restart local v76       #finished:Z
    :cond_37
    const/16 v96, 0x0

    goto :goto_23

    .line 84
    .end local v7           #b:Landroid/os/IBinder;
    .end local v76           #finished:Z
    :pswitch_3a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 86
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5c

    const/16 v93, 0x1

    .line 87
    .local v93, show:Z
    :goto_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 88
    .restart local v24       #configChanges:I
    move-object/from16 v0, p0

    move/from16 v1, v93

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 89
    const/4 v5, 0x1

    goto :goto_7

    .line 86
    .end local v24           #configChanges:I
    .end local v93           #show:Z
    :cond_5c
    const/16 v93, 0x0

    goto :goto_4d

    .line 94
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_5f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 96
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7b

    const/16 v93, 0x1

    .line 97
    .restart local v93       #show:Z
    :goto_72
    move-object/from16 v0, p0

    move/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Landroid/app/ApplicationThreadNative;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 98
    const/4 v5, 0x1

    goto :goto_7

    .line 96
    .end local v93           #show:Z
    :cond_7b
    const/16 v93, 0x0

    goto :goto_72

    .line 103
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_7e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 105
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9b

    const/16 v94, 0x1

    .line 106
    .local v94, sleeping:Z
    :goto_91
    move-object/from16 v0, p0

    move/from16 v1, v94

    invoke-virtual {v0, v7, v1}, Landroid/app/ApplicationThreadNative;->scheduleSleeping(Landroid/os/IBinder;Z)V

    .line 107
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 105
    .end local v94           #sleeping:Z
    :cond_9b
    const/16 v94, 0x0

    goto :goto_91

    .line 112
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_9e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 114
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_bb

    const/16 v16, 0x1

    .line 115
    .local v16, isForward:Z
    :goto_b1
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v7, v1}, Landroid/app/ApplicationThreadNative;->scheduleResumeActivity(Landroid/os/IBinder;Z)V

    .line 116
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 114
    .end local v16           #isForward:Z
    :cond_bb
    const/16 v16, 0x0

    goto :goto_b1

    .line 121
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_be
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 123
    .restart local v7       #b:Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v13

    .line 124
    .local v13, ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v13}, Landroid/app/ApplicationThreadNative;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 125
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 130
    .end local v7           #b:Landroid/os/IBinder;
    .end local v13           #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    :pswitch_d9
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 132
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 133
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 134
    .local v8, ident:I
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ActivityInfo;

    .line 135
    .local v9, info:Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/res/Configuration;

    .line 136
    .local v10, curConfig:Landroid/content/res/Configuration;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .line 137
    .local v11, compatInfo:Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v12

    .line 138
    .local v12, state:Landroid/os/Bundle;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v13

    .line 139
    .restart local v13       #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    .line 140
    .local v14, pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_151

    const/4 v15, 0x1

    .line 141
    .local v15, notResumed:Z
    :goto_12b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_153

    const/16 v16, 0x1

    .line 142
    .restart local v16       #isForward:Z
    :goto_133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 143
    .local v17, profileName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_156

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v18

    .line 145
    .local v18, profileFd:Landroid/os/ParcelFileDescriptor;
    :goto_141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_159

    const/16 v19, 0x1

    .local v19, autoStopProfiler:Z
    :goto_149
    move-object/from16 v5, p0

    .line 146
    invoke-virtual/range {v5 .. v19}, Landroid/app/ApplicationThreadNative;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V

    .line 148
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 140
    .end local v15           #notResumed:Z
    .end local v16           #isForward:Z
    .end local v17           #profileName:Ljava/lang/String;
    .end local v18           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v19           #autoStopProfiler:Z
    :cond_151
    const/4 v15, 0x0

    goto :goto_12b

    .line 141
    .restart local v15       #notResumed:Z
    :cond_153
    const/16 v16, 0x0

    goto :goto_133

    .line 143
    .restart local v16       #isForward:Z
    .restart local v17       #profileName:Ljava/lang/String;
    :cond_156
    const/16 v18, 0x0

    goto :goto_141

    .line 145
    .restart local v18       #profileFd:Landroid/os/ParcelFileDescriptor;
    :cond_159
    const/16 v19, 0x0

    goto :goto_149

    .line 153
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #b:Landroid/os/IBinder;
    .end local v8           #ident:I
    .end local v9           #info:Landroid/content/pm/ActivityInfo;
    .end local v10           #curConfig:Landroid/content/res/Configuration;
    .end local v11           #compatInfo:Landroid/content/res/CompatibilityInfo;
    .end local v12           #state:Landroid/os/Bundle;
    .end local v13           #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v14           #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .end local v15           #notResumed:Z
    .end local v16           #isForward:Z
    .end local v17           #profileName:Ljava/lang/String;
    .end local v18           #profileFd:Landroid/os/ParcelFileDescriptor;
    :pswitch_15c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 155
    .restart local v7       #b:Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v13

    .line 156
    .restart local v13       #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    .line 157
    .restart local v14       #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 158
    .restart local v24       #configChanges:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a4

    const/4 v15, 0x1

    .line 159
    .restart local v15       #notResumed:Z
    :goto_182
    const/16 v26, 0x0

    .line 160
    .local v26, config:Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_194

    .line 161
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    .end local v26           #config:Landroid/content/res/Configuration;
    check-cast v26, Landroid/content/res/Configuration;

    .restart local v26       #config:Landroid/content/res/Configuration;
    :cond_194
    move-object/from16 v20, p0

    move-object/from16 v21, v7

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    move/from16 v25, v15

    .line 163
    invoke-virtual/range {v20 .. v26}, Landroid/app/ApplicationThreadNative;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V

    .line 164
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 158
    .end local v15           #notResumed:Z
    .end local v26           #config:Landroid/content/res/Configuration;
    :cond_1a4
    const/4 v15, 0x0

    goto :goto_182

    .line 169
    .end local v7           #b:Landroid/os/IBinder;
    .end local v13           #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v14           #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .end local v24           #configChanges:I
    :pswitch_1a6
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    .line 171
    .restart local v14       #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 172
    .restart local v7       #b:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v7}, Landroid/app/ApplicationThreadNative;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    .line 173
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 178
    .end local v7           #b:Landroid/os/IBinder;
    .end local v14           #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    :pswitch_1c1
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 180
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e4

    const/16 v77, 0x1

    .line 181
    .local v77, finishing:Z
    :goto_1d4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 182
    .restart local v24       #configChanges:I
    move-object/from16 v0, p0

    move/from16 v1, v77

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    .line 183
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 180
    .end local v24           #configChanges:I
    .end local v77           #finishing:Z
    :cond_1e4
    const/16 v77, 0x0

    goto :goto_1d4

    .line 188
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_1e7
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 190
    .restart local v6       #intent:Landroid/content/Intent;
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ActivityInfo;

    .line 191
    .restart local v9       #info:Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .line 192
    .restart local v11       #compatInfo:Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 193
    .local v31, resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 194
    .local v32, resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v33

    .line 195
    .local v33, resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_22e

    const/16 v34, 0x1

    .local v34, sync:Z
    :goto_220
    move-object/from16 v27, p0

    move-object/from16 v28, v6

    move-object/from16 v29, v9

    move-object/from16 v30, v11

    .line 196
    invoke-virtual/range {v27 .. v34}, Landroid/app/ApplicationThreadNative;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 198
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 195
    .end local v34           #sync:Z
    :cond_22e
    const/16 v34, 0x0

    goto :goto_220

    .line 202
    .end local v6           #intent:Landroid/content/Intent;
    .end local v9           #info:Landroid/content/pm/ActivityInfo;
    .end local v11           #compatInfo:Landroid/content/res/CompatibilityInfo;
    .end local v31           #resultCode:I
    .end local v32           #resultData:Ljava/lang/String;
    .end local v33           #resultExtras:Landroid/os/Bundle;
    :pswitch_231
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 204
    .local v36, token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ServiceInfo;

    .line 205
    .local v9, info:Landroid/content/pm/ServiceInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .line 206
    .restart local v11       #compatInfo:Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v9, v11}, Landroid/app/ApplicationThreadNative;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;)V

    .line 207
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 211
    .end local v9           #info:Landroid/content/pm/ServiceInfo;
    .end local v11           #compatInfo:Landroid/content/res/CompatibilityInfo;
    .end local v36           #token:Landroid/os/IBinder;
    :pswitch_25a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 213
    .restart local v36       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 214
    .restart local v6       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_283

    const/16 v90, 0x1

    .line 215
    .local v90, rebind:Z
    :goto_277
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v90

    invoke-virtual {v0, v1, v6, v2}, Landroid/app/ApplicationThreadNative;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 216
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 214
    .end local v90           #rebind:Z
    :cond_283
    const/16 v90, 0x0

    goto :goto_277

    .line 220
    .end local v6           #intent:Landroid/content/Intent;
    .end local v36           #token:Landroid/os/IBinder;
    :pswitch_286
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 222
    .restart local v36       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 223
    .restart local v6       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v6}, Landroid/app/ApplicationThreadNative;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 224
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 229
    .end local v6           #intent:Landroid/content/Intent;
    .end local v36           #token:Landroid/os/IBinder;
    :pswitch_2a5
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 231
    .restart local v36       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2d8

    const/16 v37, 0x1

    .line 232
    .local v37, taskRemoved:Z
    :goto_2b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .line 233
    .local v38, startId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 235
    .local v39, fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2db

    .line 236
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/content/Intent;

    .local v40, args:Landroid/content/Intent;
    :goto_2d0
    move-object/from16 v35, p0

    .line 240
    invoke-virtual/range {v35 .. v40}, Landroid/app/ApplicationThreadNative;->scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V

    .line 241
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 231
    .end local v37           #taskRemoved:Z
    .end local v38           #startId:I
    .end local v39           #fl:I
    .end local v40           #args:Landroid/content/Intent;
    :cond_2d8
    const/16 v37, 0x0

    goto :goto_2b8

    .line 238
    .restart local v37       #taskRemoved:Z
    .restart local v38       #startId:I
    .restart local v39       #fl:I
    :cond_2db
    const/16 v40, 0x0

    .restart local v40       #args:Landroid/content/Intent;
    goto :goto_2d0

    .line 246
    .end local v36           #token:Landroid/os/IBinder;
    .end local v37           #taskRemoved:Z
    .end local v38           #startId:I
    .end local v39           #fl:I
    .end local v40           #args:Landroid/content/Intent;
    :pswitch_2de
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 248
    .restart local v36       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleStopService(Landroid/os/IBinder;)V

    .line 249
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 254
    .end local v36           #token:Landroid/os/IBinder;
    :pswitch_2f3
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v42

    .line 256
    .local v42, packageName:Ljava/lang/String;
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 258
    .local v9, info:Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v44

    .line 260
    .local v44, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_388

    new-instance v45, Landroid/content/ComponentName;

    move-object/from16 v0, v45

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    .line 262
    .local v45, testName:Landroid/content/ComponentName;
    :goto_31f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 263
    .restart local v17       #profileName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_38b

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v18

    .line 265
    .restart local v18       #profileFd:Landroid/os/ParcelFileDescriptor;
    :goto_32d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_38e

    const/16 v19, 0x1

    .line 266
    .restart local v19       #autoStopProfiler:Z
    :goto_335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v49

    .line 267
    .local v49, testArgs:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v70

    .line 268
    .local v70, binder:Landroid/os/IBinder;
    invoke-static/range {v70 .. v70}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v50

    .line 269
    .local v50, testWatcher:Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 270
    .local v51, testMode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_391

    const/16 v52, 0x1

    .line 271
    .local v52, restrictedBackupMode:Z
    :goto_34d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_394

    const/16 v53, 0x1

    .line 272
    .local v53, persistent:Z
    :goto_355
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/res/Configuration;

    .line 273
    .restart local v26       #config:Landroid/content/res/Configuration;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .line 274
    .restart local v11       #compatInfo:Landroid/content/res/CompatibilityInfo;
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v56

    .line 275
    .local v56, services:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v57

    .local v57, coreSettings:Landroid/os/Bundle;
    move-object/from16 v41, p0

    move-object/from16 v43, v9

    move-object/from16 v46, v17

    move-object/from16 v47, v18

    move/from16 v48, v19

    move-object/from16 v54, v26

    move-object/from16 v55, v11

    .line 276
    invoke-virtual/range {v41 .. v57}, Landroid/app/ApplicationThreadNative;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ZLandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;IZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V

    .line 280
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 260
    .end local v11           #compatInfo:Landroid/content/res/CompatibilityInfo;
    .end local v17           #profileName:Ljava/lang/String;
    .end local v18           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v19           #autoStopProfiler:Z
    .end local v26           #config:Landroid/content/res/Configuration;
    .end local v45           #testName:Landroid/content/ComponentName;
    .end local v49           #testArgs:Landroid/os/Bundle;
    .end local v50           #testWatcher:Landroid/app/IInstrumentationWatcher;
    .end local v51           #testMode:I
    .end local v52           #restrictedBackupMode:Z
    .end local v53           #persistent:Z
    .end local v56           #services:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    .end local v57           #coreSettings:Landroid/os/Bundle;
    .end local v70           #binder:Landroid/os/IBinder;
    :cond_388
    const/16 v45, 0x0

    goto :goto_31f

    .line 263
    .restart local v17       #profileName:Ljava/lang/String;
    .restart local v45       #testName:Landroid/content/ComponentName;
    :cond_38b
    const/16 v18, 0x0

    goto :goto_32d

    .line 265
    .restart local v18       #profileFd:Landroid/os/ParcelFileDescriptor;
    :cond_38e
    const/16 v19, 0x0

    goto :goto_335

    .line 270
    .restart local v19       #autoStopProfiler:Z
    .restart local v49       #testArgs:Landroid/os/Bundle;
    .restart local v50       #testWatcher:Landroid/app/IInstrumentationWatcher;
    .restart local v51       #testMode:I
    .restart local v70       #binder:Landroid/os/IBinder;
    :cond_391
    const/16 v52, 0x0

    goto :goto_34d

    .line 271
    .restart local v52       #restrictedBackupMode:Z
    :cond_394
    const/16 v53, 0x0

    goto :goto_355

    .line 285
    .end local v9           #info:Landroid/content/pm/ApplicationInfo;
    .end local v17           #profileName:Ljava/lang/String;
    .end local v18           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v19           #autoStopProfiler:Z
    .end local v42           #packageName:Ljava/lang/String;
    .end local v44           #providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v45           #testName:Landroid/content/ComponentName;
    .end local v49           #testArgs:Landroid/os/Bundle;
    .end local v50           #testWatcher:Landroid/app/IInstrumentationWatcher;
    .end local v51           #testMode:I
    .end local v52           #restrictedBackupMode:Z
    .end local v70           #binder:Landroid/os/IBinder;
    :pswitch_397
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleExit()V

    .line 287
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 292
    :pswitch_3a4
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleSuicide()V

    .line 294
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 299
    :pswitch_3b1
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 301
    .restart local v7       #b:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ApplicationThreadNative;->requestThumbnail(Landroid/os/IBinder;)V

    .line 302
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 307
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_3c4
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/res/Configuration;

    .line 309
    .restart local v26       #config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 310
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 314
    .end local v26           #config:Landroid/content/res/Configuration;
    :pswitch_3df
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->updateTimeZone()V

    .line 316
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 320
    :pswitch_3ec
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->clearDnsCache()V

    .line 322
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 326
    :pswitch_3f9
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v89

    .line 328
    .local v89, proxy:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v86

    .line 329
    .local v86, port:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v74

    .line 330
    .local v74, exclList:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v89

    move-object/from16 v2, v86

    move-object/from16 v3, v74

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 335
    .end local v74           #exclList:Ljava/lang/String;
    .end local v86           #port:Ljava/lang/String;
    .end local v89           #proxy:Ljava/lang/String;
    :pswitch_41a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->processInBackground()V

    .line 337
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 341
    :pswitch_427
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v75

    .line 343
    .local v75, fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v91

    .line 344
    .local v91, service:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v40

    .line 345
    .local v40, args:[Ljava/lang/String;
    if-eqz v75, :cond_44c

    .line 346
    invoke-virtual/range {v75 .. v75}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v91

    move-object/from16 v2, v40

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 348
    :try_start_449
    invoke-virtual/range {v75 .. v75}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_44c
    .catch Ljava/io/IOException; {:try_start_449 .. :try_end_44c} :catch_6bf

    .line 352
    :cond_44c
    :goto_44c
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 356
    .end local v40           #args:[Ljava/lang/String;
    .end local v75           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v91           #service:Landroid/os/IBinder;
    :pswitch_44f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v59

    .line 359
    .local v59, receiver:Landroid/content/IIntentReceiver;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 360
    .restart local v6       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 361
    .restart local v31       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v62

    .line 362
    .local v62, dataStr:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v63

    .line 363
    .local v63, extras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_490

    const/16 v64, 0x1

    .line 364
    .local v64, ordered:Z
    :goto_47c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_493

    const/16 v65, 0x1

    .local v65, sticky:Z
    :goto_484
    move-object/from16 v58, p0

    move-object/from16 v60, v6

    move/from16 v61, v31

    .line 365
    invoke-virtual/range {v58 .. v65}, Landroid/app/ApplicationThreadNative;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V

    .line 367
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 363
    .end local v64           #ordered:Z
    .end local v65           #sticky:Z
    :cond_490
    const/16 v64, 0x0

    goto :goto_47c

    .line 364
    .restart local v64       #ordered:Z
    :cond_493
    const/16 v65, 0x0

    goto :goto_484

    .line 372
    .end local v6           #intent:Landroid/content/Intent;
    .end local v31           #resultCode:I
    .end local v59           #receiver:Landroid/content/IIntentReceiver;
    .end local v62           #dataStr:Ljava/lang/String;
    .end local v63           #extras:Landroid/os/Bundle;
    .end local v64           #ordered:Z
    :pswitch_496
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleLowMemory()V

    .line 373
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 378
    :pswitch_49c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 380
    .restart local v7       #b:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ApplicationThreadNative;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V

    .line 381
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 386
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_4af
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4e0

    const/16 v95, 0x1

    .line 388
    .local v95, start:Z
    :goto_4be
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 389
    .local v88, profileType:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 390
    .local v84, path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4e3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v75

    .line 392
    .restart local v75       #fd:Landroid/os/ParcelFileDescriptor;
    :goto_4d0
    move-object/from16 v0, p0

    move/from16 v1, v95

    move-object/from16 v2, v84

    move-object/from16 v3, v75

    move/from16 v4, v88

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->profilerControl(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)V

    .line 393
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 387
    .end local v75           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v84           #path:Ljava/lang/String;
    .end local v88           #profileType:I
    .end local v95           #start:Z
    :cond_4e0
    const/16 v95, 0x0

    goto :goto_4be

    .line 390
    .restart local v84       #path:Ljava/lang/String;
    .restart local v88       #profileType:I
    .restart local v95       #start:Z
    :cond_4e3
    const/16 v75, 0x0

    goto :goto_4d0

    .line 398
    .end local v84           #path:Ljava/lang/String;
    .end local v88           #profileType:I
    .end local v95           #start:Z
    :pswitch_4e6
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 400
    .local v78, group:I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setSchedulingGroup(I)V

    .line 401
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 406
    .end local v78           #group:I
    :pswitch_4fb
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Landroid/content/pm/ApplicationInfo;

    .line 408
    .local v68, appInfo:Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .line 409
    .restart local v11       #compatInfo:Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 410
    .local v69, backupMode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    move/from16 v2, v69

    invoke-virtual {v0, v1, v11, v2}, Landroid/app/ApplicationThreadNative;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 411
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 416
    .end local v11           #compatInfo:Landroid/content/res/CompatibilityInfo;
    .end local v68           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v69           #backupMode:I
    :pswitch_526
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Landroid/content/pm/ApplicationInfo;

    .line 418
    .restart local v68       #appInfo:Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .line 419
    .restart local v11       #compatInfo:Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v1, v11}, Landroid/app/ApplicationThreadNative;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    .line 420
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 425
    .end local v11           #compatInfo:Landroid/content/res/CompatibilityInfo;
    .end local v68           #appInfo:Landroid/content/pm/ApplicationInfo;
    :pswitch_54b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    new-instance v81, Landroid/os/Debug$MemoryInfo;

    invoke-direct/range {v81 .. v81}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 427
    .local v81, mi:Landroid/os/Debug$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 428
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    const/4 v5, 0x0

    move-object/from16 v0, v81

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/os/Debug$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 430
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 435
    .end local v81           #mi:Landroid/os/Debug$MemoryInfo;
    :pswitch_56c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 437
    .local v72, cmd:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v83

    .line 438
    .local v83, packages:[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v72

    move-object/from16 v2, v83

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 439
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 444
    .end local v72           #cmd:I
    .end local v83           #packages:[Ljava/lang/String;
    :pswitch_587
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v82

    .line 446
    .local v82, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCrash(Ljava/lang/String;)V

    .line 447
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 452
    .end local v82           #msg:Ljava/lang/String;
    :pswitch_59c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5c7

    const/16 v80, 0x1

    .line 454
    .local v80, managed:Z
    :goto_5ab
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 455
    .restart local v84       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5ca

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v75

    .line 457
    .restart local v75       #fd:Landroid/os/ParcelFileDescriptor;
    :goto_5b9
    move-object/from16 v0, p0

    move/from16 v1, v80

    move-object/from16 v2, v84

    move-object/from16 v3, v75

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 458
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 453
    .end local v75           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v80           #managed:Z
    .end local v84           #path:Ljava/lang/String;
    :cond_5c7
    const/16 v80, 0x0

    goto :goto_5ab

    .line 455
    .restart local v80       #managed:Z
    .restart local v84       #path:Ljava/lang/String;
    :cond_5ca
    const/16 v75, 0x0

    goto :goto_5b9

    .line 462
    .end local v80           #managed:Z
    .end local v84           #path:Ljava/lang/String;
    :pswitch_5cd
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v75

    .line 464
    .restart local v75       #fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v66

    .line 465
    .local v66, activity:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v87

    .line 466
    .local v87, prefix:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v40

    .line 467
    .restart local v40       #args:[Ljava/lang/String;
    if-eqz v75, :cond_5f8

    .line 468
    invoke-virtual/range {v75 .. v75}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    move-object/from16 v2, v87

    move-object/from16 v3, v40

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 470
    :try_start_5f5
    invoke-virtual/range {v75 .. v75}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5f8
    .catch Ljava/io/IOException; {:try_start_5f5 .. :try_end_5f8} :catch_6c2

    .line 474
    :cond_5f8
    :goto_5f8
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 478
    .end local v40           #args:[Ljava/lang/String;
    .end local v66           #activity:Landroid/os/IBinder;
    .end local v75           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v87           #prefix:Ljava/lang/String;
    :pswitch_5fb
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v92

    .line 480
    .local v92, settings:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setCoreSettings(Landroid/os/Bundle;)V

    .line 481
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 485
    .end local v92           #settings:Landroid/os/Bundle;
    :pswitch_610
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v85

    .line 487
    .local v85, pkg:Ljava/lang/String;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/content/res/CompatibilityInfo;

    .line 488
    .local v73, compat:Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v85

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    .line 489
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 493
    .end local v73           #compat:Landroid/content/res/CompatibilityInfo;
    .end local v85           #pkg:Ljava/lang/String;
    :pswitch_631
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v79

    .line 495
    .local v79, level:I
    move-object/from16 v0, p0

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleTrimMemory(I)V

    .line 496
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 501
    .end local v79           #level:I
    :pswitch_646
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v75

    .line 503
    .restart local v75       #fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_68a

    const/16 v71, 0x1

    .line 504
    .local v71, checkin:Z
    :goto_659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_68d

    const/16 v67, 0x1

    .line 505
    .local v67, all:Z
    :goto_661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v40

    .line 506
    .restart local v40       #args:[Ljava/lang/String;
    const/16 v81, 0x0

    .line 507
    .restart local v81       #mi:Landroid/os/Debug$MemoryInfo;
    if-eqz v75, :cond_67c

    .line 509
    :try_start_669
    invoke-virtual/range {v75 .. v75}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v71

    move/from16 v2, v67

    move-object/from16 v3, v40

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpMemInfo(Ljava/io/FileDescriptor;ZZ[Ljava/lang/String;)Landroid/os/Debug$MemoryInfo;
    :try_end_678
    .catchall {:try_start_669 .. :try_end_678} :catchall_690

    move-result-object v81

    .line 512
    :try_start_679
    invoke-virtual/range {v75 .. v75}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_67c
    .catch Ljava/io/IOException; {:try_start_679 .. :try_end_67c} :catch_6c5

    .line 518
    :cond_67c
    :goto_67c
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    const/4 v5, 0x0

    move-object/from16 v0, v81

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/os/Debug$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 520
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 503
    .end local v40           #args:[Ljava/lang/String;
    .end local v67           #all:Z
    .end local v71           #checkin:Z
    .end local v81           #mi:Landroid/os/Debug$MemoryInfo;
    :cond_68a
    const/16 v71, 0x0

    goto :goto_659

    .line 504
    .restart local v71       #checkin:Z
    :cond_68d
    const/16 v67, 0x0

    goto :goto_661

    .line 511
    .restart local v40       #args:[Ljava/lang/String;
    .restart local v67       #all:Z
    .restart local v81       #mi:Landroid/os/Debug$MemoryInfo;
    :catchall_690
    move-exception v5

    .line 512
    :try_start_691
    invoke-virtual/range {v75 .. v75}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_694
    .catch Ljava/io/IOException; {:try_start_691 .. :try_end_694} :catch_6c7

    .line 515
    :goto_694
    throw v5

    .line 525
    .end local v40           #args:[Ljava/lang/String;
    .end local v67           #all:Z
    .end local v71           #checkin:Z
    .end local v75           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v81           #mi:Landroid/os/Debug$MemoryInfo;
    :pswitch_695
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v75

    .line 527
    .restart local v75       #fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v40

    .line 528
    .restart local v40       #args:[Ljava/lang/String;
    if-eqz v75, :cond_6b4

    .line 530
    :try_start_6a6
    invoke-virtual/range {v75 .. v75}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_6b1
    .catchall {:try_start_6a6 .. :try_end_6b1} :catchall_6ba

    .line 533
    :try_start_6b1
    invoke-virtual/range {v75 .. v75}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6b4
    .catch Ljava/io/IOException; {:try_start_6b1 .. :try_end_6b4} :catch_6c9

    .line 539
    :cond_6b4
    :goto_6b4
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 532
    :catchall_6ba
    move-exception v5

    .line 533
    :try_start_6bb
    invoke-virtual/range {v75 .. v75}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6be
    .catch Ljava/io/IOException; {:try_start_6bb .. :try_end_6be} :catch_6cb

    .line 536
    :goto_6be
    throw v5

    .line 349
    .restart local v91       #service:Landroid/os/IBinder;
    :catch_6bf
    move-exception v5

    goto/16 :goto_44c

    .line 471
    .end local v91           #service:Landroid/os/IBinder;
    .restart local v66       #activity:Landroid/os/IBinder;
    .restart local v87       #prefix:Ljava/lang/String;
    :catch_6c2
    move-exception v5

    goto/16 :goto_5f8

    .line 513
    .end local v66           #activity:Landroid/os/IBinder;
    .end local v87           #prefix:Ljava/lang/String;
    .restart local v67       #all:Z
    .restart local v71       #checkin:Z
    .restart local v81       #mi:Landroid/os/Debug$MemoryInfo;
    :catch_6c5
    move-exception v5

    goto :goto_67c

    :catch_6c7
    move-exception v20

    goto :goto_694

    .line 534
    .end local v67           #all:Z
    .end local v71           #checkin:Z
    .end local v81           #mi:Landroid/os/Debug$MemoryInfo;
    :catch_6c9
    move-exception v5

    goto :goto_6b4

    :catch_6cb
    move-exception v20

    goto :goto_6be

    .line 70
    nop

    :pswitch_data_6ce
    .packed-switch 0x1
        :pswitch_8
        :pswitch_3
        :pswitch_3a
        :pswitch_5f
        :pswitch_9e
        :pswitch_be
        :pswitch_d9
        :pswitch_1a6
        :pswitch_1c1
        :pswitch_1e7
        :pswitch_231
        :pswitch_2de
        :pswitch_2f3
        :pswitch_397
        :pswitch_3b1
        :pswitch_3c4
        :pswitch_2a5
        :pswitch_3df
        :pswitch_41a
        :pswitch_25a
        :pswitch_286
        :pswitch_427
        :pswitch_44f
        :pswitch_496
        :pswitch_49c
        :pswitch_15c
        :pswitch_7e
        :pswitch_4af
        :pswitch_4e6
        :pswitch_4fb
        :pswitch_526
        :pswitch_54b
        :pswitch_3a4
        :pswitch_56c
        :pswitch_587
        :pswitch_59c
        :pswitch_5cd
        :pswitch_3ec
        :pswitch_3f9
        :pswitch_5fb
        :pswitch_610
        :pswitch_631
        :pswitch_646
        :pswitch_695
    .end packed-switch
.end method
