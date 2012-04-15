.class Landroid/webkit/WebSettings$EventHandler$1;
.super Landroid/os/Handler;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebSettings$EventHandler;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebSettings$EventHandler;


# direct methods
.method constructor <init>(Landroid/webkit/WebSettings$EventHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Landroid/webkit/WebSettings$EventHandler$1;->this$1:Landroid/webkit/WebSettings$EventHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 309
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_5c

    .line 334
    :goto_6
    return-void

    .line 311
    :pswitch_7
    iget-object v1, p0, Landroid/webkit/WebSettings$EventHandler$1;->this$1:Landroid/webkit/WebSettings$EventHandler;

    iget-object v2, v1, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    monitor-enter v2

    .line 312
    :try_start_c
    iget-object v1, p0, Landroid/webkit/WebSettings$EventHandler$1;->this$1:Landroid/webkit/WebSettings$EventHandler;

    iget-object v1, v1, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    invoke-static {v1}, Landroid/webkit/WebSettings;->access$000(Landroid/webkit/WebSettings;)Landroid/webkit/BrowserFrame;

    move-result-object v1

    iget v1, v1, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    if-eqz v1, :cond_29

    .line 313
    iget-object v1, p0, Landroid/webkit/WebSettings$EventHandler$1;->this$1:Landroid/webkit/WebSettings$EventHandler;

    iget-object v1, v1, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    iget-object v3, p0, Landroid/webkit/WebSettings$EventHandler$1;->this$1:Landroid/webkit/WebSettings$EventHandler;

    iget-object v3, v3, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    invoke-static {v3}, Landroid/webkit/WebSettings;->access$000(Landroid/webkit/WebSettings;)Landroid/webkit/BrowserFrame;

    move-result-object v3

    iget v3, v3, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-static {v1, v3}, Landroid/webkit/WebSettings;->access$100(Landroid/webkit/WebSettings;I)V

    .line 315
    :cond_29
    iget-object v1, p0, Landroid/webkit/WebSettings$EventHandler$1;->this$1:Landroid/webkit/WebSettings$EventHandler;

    iget-object v1, v1, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/webkit/WebSettings;->access$202(Landroid/webkit/WebSettings;Z)Z

    .line 316
    monitor-exit v2

    goto :goto_6

    :catchall_33
    move-exception v1

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_c .. :try_end_35} :catchall_33

    throw v1

    .line 320
    :pswitch_36
    iget-object v1, p0, Landroid/webkit/WebSettings$EventHandler$1;->this$1:Landroid/webkit/WebSettings$EventHandler;

    invoke-static {v1}, Landroid/webkit/WebSettings$EventHandler;->access$300(Landroid/webkit/WebSettings$EventHandler;)V

    goto :goto_6

    .line 325
    :pswitch_3c
    iget-object v1, p0, Landroid/webkit/WebSettings$EventHandler$1;->this$1:Landroid/webkit/WebSettings$EventHandler;

    iget-object v1, v1, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    invoke-static {v1}, Landroid/webkit/WebSettings;->access$400(Landroid/webkit/WebSettings;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "WebViewSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 328
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "double_tap_toast_count"

    invoke-static {}, Landroid/webkit/WebSettings;->access$500()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 330
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_6

    .line 309
    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_7
        :pswitch_36
        :pswitch_3c
    .end packed-switch
.end method
