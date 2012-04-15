.class public Landroid/animation/TimeAnimator;
.super Landroid/animation/ValueAnimator;
.source "TimeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/TimeAnimator$TimeListener;
    }
.end annotation


# instance fields
.field private mListener:Landroid/animation/TimeAnimator$TimeListener;

.field private mPreviousTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 15
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    .line 67
    return-void
.end method


# virtual methods
.method animateValue(F)V
    .registers 2
    .parameter "fraction"

    .prologue
    .line 51
    return-void
.end method

.method animationFrame(J)Z
    .registers 9
    .parameter "currentTime"

    .prologue
    const-wide/16 v4, 0x0

    .line 19
    iget v0, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-nez v0, :cond_11

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 21
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mSeekTime:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_29

    .line 22
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 29
    :cond_11
    :goto_11
    iget-object v0, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    if-eqz v0, :cond_27

    .line 30
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v2, p1, v0

    .line 31
    .local v2, totalTime:J
    iget-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_34

    .line 32
    .local v4, deltaTime:J
    :goto_1f
    iput-wide p1, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    .line 33
    iget-object v0, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/animation/TimeAnimator$TimeListener;->onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V

    .line 35
    .end local v2           #totalTime:J
    .end local v4           #deltaTime:J
    :cond_27
    const/4 v0, 0x0

    return v0

    .line 24
    :cond_29
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mSeekTime:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mSeekTime:J

    goto :goto_11

    .line 31
    .restart local v2       #totalTime:J
    :cond_34
    iget-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    sub-long v4, p1, v0

    goto :goto_1f
.end method

.method initAnimation()V
    .registers 1

    .prologue
    .line 56
    return-void
.end method

.method public setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 45
    iput-object p1, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    .line 46
    return-void
.end method
