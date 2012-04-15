.class Landroid/speech/tts/BlockingMediaPlayer$1;
.super Ljava/lang/Object;
.source "BlockingMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/BlockingMediaPlayer;->startAndWait()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/BlockingMediaPlayer;


# direct methods
.method constructor <init>(Landroid/speech/tts/BlockingMediaPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Landroid/speech/tts/BlockingMediaPlayer$1;->this$0:Landroid/speech/tts/BlockingMediaPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Landroid/speech/tts/BlockingMediaPlayer$1;->this$0:Landroid/speech/tts/BlockingMediaPlayer;

    invoke-static {v0}, Landroid/speech/tts/BlockingMediaPlayer;->access$000(Landroid/speech/tts/BlockingMediaPlayer;)V

    .line 76
    return-void
.end method
