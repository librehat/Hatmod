.class public interface abstract Landroid/view/WindowManager;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManager$LayoutParams;,
        Landroid/view/WindowManager$BadTokenException;
    }
.end annotation


# static fields
.field public static final MOUSE_CURSOR_NONE:I = 0x0

.field public static final MOUSE_CURSOR_OSD2:I = 0x2

.field public static final MOUSE_CURSOR_SURFACE:I = 0x1


# virtual methods
.method public abstract getDefaultDisplay()Landroid/view/Display;
.end method

.method public abstract getMouseCursorType()I
.end method

.method public abstract isHardwareAccelerated()Z
.end method

.method public abstract removeViewImmediate(Landroid/view/View;)V
.end method

.method public abstract setMouseCursorType(I)I
.end method
