.class final Landroid/graphics/drawable/ClipDrawable$ClipState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "ClipDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/ClipDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ClipState"
.end annotation


# instance fields
.field private mCanConstantState:Z

.field mChangingConfigurations:I

.field private mCheckedConstantState:Z

.field mDrawable:Landroid/graphics/drawable/Drawable;

.field mGravity:I

.field mOrientation:I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/graphics/drawable/ClipDrawable;Landroid/content/res/Resources;)V
    .registers 5
    .parameter "orig"
    .parameter "owner"
    .parameter "res"

    .prologue
    .line 254
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 255
    if-eqz p1, :cond_25

    .line 256
    if-eqz p3, :cond_26

    .line 257
    iget-object v0, p1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 261
    :goto_13
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 262
    iget v0, p1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    iput v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    .line 263
    iget v0, p1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    iput v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mCanConstantState:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mCheckedConstantState:Z

    .line 266
    :cond_25
    return-void

    .line 259
    :cond_26
    iget-object v0, p1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_13
.end method


# virtual methods
.method canConstantState()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 284
    iget-boolean v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mCheckedConstantState:Z

    if-nez v0, :cond_12

    .line 285
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_15

    move v0, v1

    :goto_e
    iput-boolean v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mCanConstantState:Z

    .line 286
    iput-boolean v1, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mCheckedConstantState:Z

    .line 289
    :cond_12
    iget-boolean v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mCanConstantState:Z

    return v0

    .line 285
    :cond_15
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getChangingConfigurations()I
    .registers 2

    .prologue
    .line 280
    iget v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 270
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;Landroid/graphics/drawable/ClipDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .parameter "res"

    .prologue
    .line 275
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;Landroid/graphics/drawable/ClipDrawable$1;)V

    return-object v0
.end method
