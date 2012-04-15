.class public Landroid/renderscript/Type$Builder;
.super Ljava/lang/Object;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimZ:I

.field mElement:Landroid/renderscript/Element;

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V
    .registers 4
    .parameter "rs"
    .parameter "e"

    .prologue
    .line 214
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const/4 v0, 0x1

    iput v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    .line 215
    invoke-virtual {p2}, Landroid/renderscript/Element;->checkValid()V

    .line 216
    iput-object p1, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 217
    iput-object p2, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    .line 218
    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/Type;
    .registers 10

    .prologue
    const/4 v1, 0x1

    .line 259
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    if-lez v0, :cond_21

    .line 260
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    if-lt v0, v1, :cond_d

    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-ge v0, v1, :cond_15

    .line 261
    :cond_d
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Both X and Y dimension required when Z is present."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_15
    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v0, :cond_21

    .line 264
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cube maps not supported with 3D types."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_21
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-lez v0, :cond_31

    .line 268
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    if-ge v0, v1, :cond_31

    .line 269
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "X dimension required when Y is present."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_31
    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v0, :cond_41

    .line 273
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-ge v0, v1, :cond_41

    .line 274
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cube maps require 2D Types."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_41
    iget-object v0, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v1}, Landroid/renderscript/Element;->getID()I

    move-result v1

    iget v2, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    iget v3, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    iget v4, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    iget-boolean v5, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    iget-boolean v6, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nTypeCreate(IIIIZZ)I

    move-result v7

    .line 279
    .local v7, id:I
    new-instance v8, Landroid/renderscript/Type;

    iget-object v0, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v8, v7, v0}, Landroid/renderscript/Type;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 280
    .local v8, t:Landroid/renderscript/Type;
    iget-object v0, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    iput-object v0, v8, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 281
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    iput v0, v8, Landroid/renderscript/Type;->mDimX:I

    .line 282
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    iput v0, v8, Landroid/renderscript/Type;->mDimY:I

    .line 283
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    iput v0, v8, Landroid/renderscript/Type;->mDimZ:I

    .line 284
    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    iput-boolean v0, v8, Landroid/renderscript/Type;->mDimMipmaps:Z

    .line 285
    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    iput-boolean v0, v8, Landroid/renderscript/Type;->mDimFaces:Z

    .line 287
    invoke-virtual {v8}, Landroid/renderscript/Type;->calcElementCount()V

    .line 288
    return-object v8
.end method

.method public setFaces(Z)Landroid/renderscript/Type$Builder;
    .registers 2
    .parameter "value"

    .prologue
    .line 248
    iput-boolean p1, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    .line 249
    return-object p0
.end method

.method public setMipmaps(Z)Landroid/renderscript/Type$Builder;
    .registers 2
    .parameter "value"

    .prologue
    .line 243
    iput-boolean p1, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    .line 244
    return-object p0
.end method

.method public setX(I)Landroid/renderscript/Type$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 227
    const/4 v0, 0x1

    if-ge p1, v0, :cond_b

    .line 228
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension X are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_b
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    .line 231
    return-object p0
.end method

.method public setY(I)Landroid/renderscript/Type$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 235
    const/4 v0, 0x1

    if-ge p1, v0, :cond_b

    .line 236
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension Y are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_b
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    .line 239
    return-object p0
.end method
