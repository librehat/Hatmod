.class Landroid/pim/ContactsAsyncHelper$WorkerHandler;
.super Landroid/os/Handler;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pim/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/pim/ContactsAsyncHelper;


# direct methods
.method public constructor <init>(Landroid/pim/ContactsAsyncHelper;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 176
    iput-object p1, p0, Landroid/pim/ContactsAsyncHelper$WorkerHandler;->this$0:Landroid/pim/ContactsAsyncHelper;

    .line 177
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 178
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    .line 182
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;

    .line 184
    .local v0, args:Landroid/pim/ContactsAsyncHelper$WorkerArgs;
    iget v4, p1, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_48

    .line 210
    :goto_9
    iget-object v4, p0, Landroid/pim/ContactsAsyncHelper$WorkerHandler;->this$0:Landroid/pim/ContactsAsyncHelper;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Landroid/pim/ContactsAsyncHelper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 211
    .local v3, reply:Landroid/os/Message;
    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 212
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 213
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 214
    return-void

    .line 186
    .end local v3           #reply:Landroid/os/Message;
    :pswitch_1d
    const/4 v2, 0x0

    .line 188
    .local v2, inputStream:Ljava/io/InputStream;
    :try_start_1e
    iget-object v4, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2a} :catch_3a

    move-result-object v2

    .line 194
    :goto_2b
    if-eqz v2, :cond_43

    .line 195
    iget-object v4, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_9

    .line 190
    :catch_3a
    move-exception v1

    .line 191
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "ContactsAsyncHelper"

    const-string v5, "Error opening photo input stream"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    .line 200
    .end local v1           #e:Ljava/lang/Exception;
    :cond_43
    const/4 v4, 0x0

    iput-object v4, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_9

    .line 184
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_1d
    .end packed-switch
.end method
