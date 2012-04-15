.class public Landroid/webkit/WebViewCore$EventHub;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHub"
.end annotation


# static fields
.field static final ADD_JS_INTERFACE:I = 0x8a

.field static final ADD_PACKAGE_NAME:I = 0xb9

.field static final ADD_PACKAGE_NAMES:I = 0xb8

.field static final AUTOFILL_FORM:I = 0xc0

.field static final CLEAR_CACHE:I = 0x6f

.field static final CLEAR_CONTENT:I = 0x86

.field static final CLEAR_HISTORY:I = 0x70

.field static final CLEAR_SSL_PREF_TABLE:I = 0x96

.field static final CLICK:I = 0x76

.field static final CONTENT_INVALIDATE_ALL:I = 0xaf

.field static final DELETE_SELECTION:I = 0x7a

.field private static final DESTROY:I = 0xc8

.field static final DOC_HAS_IMAGES:I = 0x78

.field static final DUMP_DOMTREE:I = 0xaa

.field static final DUMP_NAVTREE:I = 0xac

.field static final DUMP_RENDERTREE:I = 0xab

.field static final DUMP_V8COUNTERS:I = 0xad

.field static final EXECUTE_JS:I = 0xc2

.field static final FAKE_CLICK:I = 0x79

.field private static final FIRST_PACKAGE_MSG_ID:I = 0x60

.field static final FREE_MEMORY:I = 0x91

.field static final GEOLOCATION_PERMISSIONS_PROVIDE:I = 0xb4

.field static final GET_TOUCH_HIGHLIGHT_RECTS:I = 0xbb

.field static final GO_BACK_FORWARD:I = 0x6a

.field static final HIDE_FULLSCREEN:I = 0xb6

.field static final KEY_DOWN:I = 0x67

.field static final KEY_UP:I = 0x68

.field private static final LAST_PACKAGE_MSG_ID:I = 0x92

.field static final LISTBOX_CHOICES:I = 0x7b

.field static final LOAD_DATA:I = 0x8b

.field static final LOAD_URL:I = 0x64

.field public static final MESSAGE_RELAY:I = 0x7d

.field static final MODIFY_SELECTION:I = 0xbe

.field static final NOTIFY_ANIMATION_STARTED:I = 0xc4

.field static final ON_PAUSE:I = 0x8f

.field static final ON_RESUME:I = 0x90

.field static final PASS_TO_JS:I = 0x73

.field static final PAUSE_TIMERS:I = 0x6d

.field static final PLUGIN_SURFACE_READY:I = 0xc3

.field static final POPULATE_VISITED_LINKS:I = 0xb5

.field static final POST_URL:I = 0x84

.field static final PROXY_CHANGED:I = 0xc1

.field static final RELOAD:I = 0x66

.field static final REMOVE_JS_INTERFACE:I = 0x95

.field static final REMOVE_PACKAGE_NAME:I = 0xba

.field static final REPLACE_TEXT:I = 0x72

.field static final REQUEST_CURSOR_HREF:I = 0x89

.field static final REQUEST_DOC_AS_TEXT:I = 0xa1

.field static final REQUEST_EXT_REPRESENTATION:I = 0xa0

.field static final REQUEST_LABEL:I = 0x61

.field static final RESTORE_STATE:I = 0x6c

.field static final RESUME_TIMERS:I = 0x6e

.field static final REVEAL_SELECTION:I = 0x60

.field static final SAVE_DOCUMENT_STATE:I = 0x80

.field static final SAVE_WEBARCHIVE:I = 0x93

.field static final SCROLL_TEXT_INPUT:I = 0x63

.field static final SET_ACTIVE:I = 0x8e

.field static final SET_BACKGROUND_COLOR:I = 0x7e

.field static final SET_GLOBAL_BOUNDS:I = 0x74

.field static final SET_JS_FLAGS:I = 0xae

.field static final SET_MOVE_FOCUS:I = 0x7f

.field static final SET_MOVE_MOUSE:I = 0x87

.field static final SET_MOVE_MOUSE_IF_LATEST:I = 0x88

.field static final SET_NETWORK_STATE:I = 0x77

.field static final SET_NETWORK_TYPE:I = 0xb7

.field static final SET_SCROLL_OFFSET:I = 0x6b

.field static final SET_SELECTION:I = 0x71

.field static final SINGLE_LISTBOX_CHOICE:I = 0x7c

.field static final SPLIT_PICTURE_SET:I = 0x85

.field static final STOP_LOADING:I = 0x65

.field static final TOUCH_EVENT:I = 0x8d

.field static final TOUCH_UP:I = 0x8c

.field static final UPDATE_CACHE_AND_TEXT_ENTRY:I = 0x75

.field static final UPDATE_FRAME_CACHE_IF_LOADING:I = 0x62

.field static final USE_MOCK_DEVICE_ORIENTATION:I = 0xbf

.field static final VALID_NODE_BOUNDS:I = 0x92

.field static final VIEW_SIZE_CHANGED:I = 0x69

.field static final WEBKIT_DRAW:I = 0x82

.field static final WEBKIT_DRAW_LAYERS:I = 0x94


# instance fields
.field private mBlockMessages:Z

.field private mDestroying:Z

.field private mHandler:Landroid/os/Handler;

.field private mMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedPriority:I

.field private mTid:I

.field final synthetic this$0:Landroid/webkit/WebViewCore;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewCore;)V
    .registers 3
    .parameter

    .prologue
    .line 1064
    iput-object p1, p0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1052
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    .line 1064
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewCore;Landroid/webkit/WebViewCore$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 926
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore$EventHub;-><init>(Landroid/webkit/WebViewCore;)V

    return-void
.end method

.method static synthetic access$200(Landroid/webkit/WebViewCore$EventHub;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 926
    invoke-direct {p0}, Landroid/webkit/WebViewCore$EventHub;->transferMessages()V

    return-void
.end method

.method static synthetic access$2600(Landroid/webkit/WebViewCore$EventHub;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 926
    iget v0, p0, Landroid/webkit/WebViewCore$EventHub;->mSavedPriority:I

    return v0
.end method

.method static synthetic access$2602(Landroid/webkit/WebViewCore$EventHub;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 926
    iput p1, p0, Landroid/webkit/WebViewCore$EventHub;->mSavedPriority:I

    return p1
.end method

.method static synthetic access$2700(Landroid/webkit/WebViewCore$EventHub;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 926
    iget v0, p0, Landroid/webkit/WebViewCore$EventHub;->mTid:I

    return v0
.end method

.method static synthetic access$7600(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 926
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7700(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 926
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7800(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;J)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 926
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore$EventHub;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void
.end method

.method static synthetic access$7900(Landroid/webkit/WebViewCore$EventHub;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 926
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$800(Landroid/webkit/WebViewCore$EventHub;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 926
    iget-boolean v0, p0, Landroid/webkit/WebViewCore$EventHub;->mDestroying:Z

    return v0
.end method

.method static synthetic access$8000(Landroid/webkit/WebViewCore$EventHub;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 926
    invoke-direct {p0}, Landroid/webkit/WebViewCore$EventHub;->removeMessages()V

    return-void
.end method

.method static synthetic access$802(Landroid/webkit/WebViewCore$EventHub;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 926
    iput-boolean p1, p0, Landroid/webkit/WebViewCore$EventHub;->mDestroying:Z

    return p1
.end method

.method static synthetic access$8100(Landroid/webkit/WebViewCore$EventHub;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 926
    invoke-direct {p0}, Landroid/webkit/WebViewCore$EventHub;->blockMessages()V

    return-void
.end method

.method private declared-synchronized blockMessages()V
    .registers 2

    .prologue
    .line 1731
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/webkit/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 1732
    monitor-exit p0

    return-void

    .line 1731
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeMessages()V
    .registers 3

    .prologue
    .line 1718
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$7502(Landroid/webkit/WebViewCore;Z)Z

    .line 1719
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$6502(Landroid/webkit/WebViewCore;Z)Z

    .line 1720
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    .line 1721
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1f

    .line 1725
    :goto_16
    monitor-exit p0

    return-void

    .line 1723
    :cond_18
    :try_start_18
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1f

    goto :goto_16

    .line 1718
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeMessages(I)V
    .registers 5
    .parameter "what"

    .prologue
    .line 1676
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Landroid/webkit/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_44

    if-eqz v1, :cond_7

    .line 1690
    :goto_5
    monitor-exit p0

    return-void

    .line 1679
    :cond_7
    const/16 v1, 0x82

    if-ne p1, v1, :cond_11

    .line 1680
    :try_start_b
    iget-object v1, p0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/webkit/WebViewCore;->access$7502(Landroid/webkit/WebViewCore;Z)Z

    .line 1682
    :cond_11
    iget-object v1, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    if-eqz v1, :cond_47

    .line 1683
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventHub.removeMessages(int what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "before the WebViewCore is set up."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 1686
    .local v0, throwable:Ljava/lang/Throwable;
    const-string/jumbo v1, "webcore"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_b .. :try_end_43} :catchall_44

    goto :goto_5

    .line 1676
    .end local v0           #throwable:Ljava/lang/Throwable;
    :catchall_44
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1688
    :cond_47
    :try_start_47
    iget-object v1, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_44

    goto :goto_5
.end method

.method private declared-synchronized sendMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1665
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-eqz v0, :cond_7

    .line 1673
    :goto_5
    monitor-exit p0

    return-void

    .line 1668
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    .line 1669
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_11

    goto :goto_5

    .line 1665
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1671
    :cond_14
    :try_start_14
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_11

    goto :goto_5
.end method

.method private declared-synchronized sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 1703
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-eqz v0, :cond_7

    .line 1711
    :goto_5
    monitor-exit p0

    return-void

    .line 1706
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 1707
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    goto :goto_5

    .line 1703
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1709
    :cond_15
    :try_start_15
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_12

    goto :goto_5
.end method

.method private declared-synchronized sendMessageDelayed(Landroid/os/Message;J)V
    .registers 5
    .parameter "msg"
    .parameter "delay"

    .prologue
    .line 1693
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-eqz v0, :cond_7

    .line 1697
    :goto_5
    monitor-exit p0

    return-void

    .line 1696
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_5

    .line 1693
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private transferMessages()V
    .registers 5

    .prologue
    .line 1073
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebViewCore$EventHub;->mTid:I

    .line 1074
    iget v2, p0, Landroid/webkit/WebViewCore$EventHub;->mTid:I

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebViewCore$EventHub;->mSavedPriority:I

    .line 1076
    new-instance v2, Landroid/webkit/WebViewCore$EventHub$1;

    invoke-direct {v2, p0}, Landroid/webkit/WebViewCore$EventHub$1;-><init>(Landroid/webkit/WebViewCore$EventHub;)V

    iput-object v2, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    .line 1652
    monitor-enter p0

    .line 1653
    :try_start_16
    iget-object v2, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1654
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    if-ge v0, v1, :cond_2f

    .line 1655
    iget-object v3, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1654
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1657
    :cond_2f
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    .line 1658
    monitor-exit p0

    .line 1659
    return-void

    .line 1658
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_34
    move-exception v2

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_16 .. :try_end_36} :catchall_34

    throw v2
.end method
