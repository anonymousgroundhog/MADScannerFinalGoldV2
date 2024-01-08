.class Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$MutableRenderBufferConfigChooser;
.super Ljava/lang/Object;
.source "InkGLView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MutableRenderBufferConfigChooser"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;Landroid/content/Context;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$MutableRenderBufferConfigChooser;->this$0:Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$MutableRenderBufferConfigChooser;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$MutableRenderBufferConfigChooser;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->hasZeroLatencySupport(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "EGLConfig"

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$MutableRenderBufferConfigChooser;->tryChooseMutableBufferConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "Mutable Render Buffer Config chosen."

    .line 41
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    const-string v0, "Fallback Config chosen."

    .line 45
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$MutableRenderBufferConfigChooser;->fallbackConfigChooser(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    return-object v0

    .line 50
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eglChooseConfig failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public chooseConfigBySpec(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[I)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 9

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v0

    .line 101
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v7, 0x0

    aget v5, v0, v7

    if-gtz v5, :cond_1

    return-object v2

    .line 112
    :cond_1
    new-array v8, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v8

    move-object v6, v0

    .line 113
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 117
    aget-object p1, v8, v7

    return-object p1

    .line 115
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eglChooseConfig#2 failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fallbackConfigChooser(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 86
    fill-array-data v0, :array_0

    .line 96
    invoke-virtual {p0, p1, p2, v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$MutableRenderBufferConfigChooser;->chooseConfigBySpec(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p1

    return-object p1

    :array_0
    .array-data 4
        0x3020
        0x18
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x0
        0x3025
        0x0
        0x3026
        0x0
        0x3040
        0x4
        0x3038
    .end array-data
.end method

.method public tryChooseMutableBufferConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1

    const/16 v0, 0x13

    new-array v0, v0, [I

    .line 56
    fill-array-data v0, :array_0

    .line 82
    invoke-virtual {p0, p1, p2, v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$MutableRenderBufferConfigChooser;->chooseConfigBySpec(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p1

    return-object p1

    :array_0
    .array-data 4
        0x3020
        0x18
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x0
        0x3025
        0x0
        0x3026
        0x0
        0x3040
        0x4
        0x3033
        0x1004
        0x3038
    .end array-data
.end method
