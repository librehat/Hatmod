.class public abstract Landroid/database/BulkCursorNative;
.super Landroid/os/Binder;
.source "BulkCursorNative.java"

# interfaces
.implements Landroid/database/IBulkCursor;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "android.content.IBulkCursor"

    invoke-virtual {p0, p0, v0}, Landroid/database/BulkCursorNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/database/IBulkCursor;
    .registers 3
    .parameter "obj"

    .prologue
    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    .line 53
    :cond_3
    :goto_3
    return-object v0

    .line 48
    :cond_4
    const-string v1, "android.content.IBulkCursor"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/database/IBulkCursor;

    .line 49
    .local v0, in:Landroid/database/IBulkCursor;
    if-nez v0, :cond_3

    .line 53
    new-instance v0, Landroid/database/BulkCursorProxy;

    .end local v0           #in:Landroid/database/IBulkCursor;
    invoke-direct {v0, p0}, Landroid/database/BulkCursorProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 163
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 19
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
    .line 60
    packed-switch p1, :pswitch_data_118

    .line 158
    :pswitch_3
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v13

    :goto_7
    return v13

    .line 62
    :pswitch_8
    :try_start_8
    const-string v13, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 64
    .local v11, startPos:I
    invoke-virtual {p0, v11}, Landroid/database/BulkCursorNative;->getWindow(I)Landroid/database/CursorWindow;

    move-result-object v12

    .line 65
    .local v12, window:Landroid/database/CursorWindow;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-nez v12, :cond_24

    .line 67
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    :goto_22
    const/4 v13, 0x1

    goto :goto_7

    .line 69
    :cond_24
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Landroid/database/CursorWindow;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_30} :catch_31

    goto :goto_22

    .line 153
    .end local v11           #startPos:I
    .end local v12           #window:Landroid/database/CursorWindow;
    :catch_31
    move-exception v3

    .line 154
    .local v3, e:Ljava/lang/Exception;
    move-object/from16 v0, p3

    invoke-static {v0, v3}, Landroid/database/DatabaseUtils;->writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V

    .line 155
    const/4 v13, 0x1

    goto :goto_7

    .line 76
    .end local v3           #e:Ljava/lang/Exception;
    :pswitch_39
    :try_start_39
    const-string v13, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Landroid/database/BulkCursorNative;->count()I

    move-result v2

    .line 78
    .local v2, count:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    const/4 v13, 0x1

    goto :goto_7

    .line 84
    .end local v2           #count:I
    :pswitch_4e
    const-string v13, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/database/BulkCursorNative;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, columnNames:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    array-length v13, v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    array-length v6, v1

    .line 89
    .local v6, length:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_64
    if-ge v5, v6, :cond_70

    .line 90
    aget-object v13, v1, v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    add-int/lit8 v5, v5, 0x1

    goto :goto_64

    .line 92
    :cond_70
    const/4 v13, 0x1

    goto :goto_7

    .line 96
    .end local v1           #columnNames:[Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #length:I
    :pswitch_72
    const-string v13, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Landroid/database/BulkCursorNative;->deactivate()V

    .line 98
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    const/4 v13, 0x1

    goto :goto_7

    .line 103
    :pswitch_81
    const-string v13, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Landroid/database/BulkCursorNative;->close()V

    .line 105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    const/4 v13, 0x1

    goto/16 :goto_7

    .line 110
    :pswitch_91
    const-string v13, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v7

    .line 113
    .local v7, observer:Landroid/database/IContentObserver;
    invoke-virtual {p0, v7}, Landroid/database/BulkCursorNative;->requery(Landroid/database/IContentObserver;)I

    move-result v2

    .line 114
    .restart local v2       #count:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual {p0}, Landroid/database/BulkCursorNative;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 117
    const/4 v13, 0x1

    goto/16 :goto_7

    .line 121
    .end local v2           #count:I
    .end local v7           #observer:Landroid/database/IContentObserver;
    :pswitch_b8
    const-string v13, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 123
    .local v8, position:I
    invoke-virtual {p0, v8}, Landroid/database/BulkCursorNative;->onMove(I)V

    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    const/4 v13, 0x1

    goto/16 :goto_7

    .line 129
    .end local v8           #position:I
    :pswitch_cc
    const-string v13, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Landroid/database/BulkCursorNative;->getWantsAllOnMoveCalls()Z

    move-result v9

    .line 131
    .local v9, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v9, :cond_e5

    const/4 v13, 0x1

    :goto_dd
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    const/4 v13, 0x1

    goto/16 :goto_7

    .line 132
    :cond_e5
    const/4 v13, 0x0

    goto :goto_dd

    .line 137
    .end local v9           #result:Z
    :pswitch_e7
    const-string v13, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Landroid/database/BulkCursorNative;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 139
    .local v4, extras:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 141
    const/4 v13, 0x1

    goto/16 :goto_7

    .line 145
    .end local v4           #extras:Landroid/os/Bundle;
    :pswitch_fd
    const-string v13, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 147
    .restart local v4       #extras:Landroid/os/Bundle;
    invoke-virtual {p0, v4}, Landroid/database/BulkCursorNative;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 148
    .local v10, returnExtras:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_114} :catch_31

    .line 150
    const/4 v13, 0x1

    goto/16 :goto_7

    .line 60
    nop

    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_8
        :pswitch_39
        :pswitch_4e
        :pswitch_3
        :pswitch_3
        :pswitch_72
        :pswitch_91
        :pswitch_b8
        :pswitch_cc
        :pswitch_e7
        :pswitch_fd
        :pswitch_81
    .end packed-switch
.end method
