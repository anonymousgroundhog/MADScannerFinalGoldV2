.class Lcom/brakefield/painter/ui/MainView$MutableRenderBufferConfigChooser;
.super Ljava/lang/Object;
.source "MainView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/MainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MutableRenderBufferConfigChooser"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/brakefield/painter/ui/MainView;

.field private usingFallbackConfig:Z


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/MainView;Landroid/content/Context;)V
    .locals 0

    .line 1108
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainView$MutableRenderBufferConfigChooser;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1107
    iput-boolean p1, p0, Lcom/brakefield/painter/ui/MainView$MutableRenderBufferConfigChooser;->usingFallbackConfig:Z

    .line 1109
    iput-object p2, p0, Lcom/brakefield/painter/ui/MainView$MutableRenderBufferConfigChooser;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 3

    .line 1114
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$MutableRenderBufferConfigChooser;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->hasZeroLatencySupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/MainView$MutableRenderBufferConfigChooser;->tryChooseMutableBufferConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1117
    iget-object v1, p0, Lcom/brakefield/painter/ui/MainView$MutableRenderBufferConfigChooser;->this$0:Lcom/brakefield/painter/ui/MainView;

    new-instance v2, Lcom/brakefield/painter/ui/MainView$MutableRenderBufferConfigChooser$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/ui/MainView$MutableRenderBufferConfigChooser$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/MainView$MutableRenderBufferConfigChooser;)V

    invoke-virtual {v1, v2}, Lcom/brakefield/painter/ui/MainView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 1123
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/MainView$MutableRenderBufferConfigChooser;->fallbackConfigChooser(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    const/4 p1, 0x1

    .line 1124
    iput-boolean p1, p0, Lcom/brakefield/painter/ui/MainView$MutableRenderBufferConfigChooser;->usingFallbackConfig:Z

    .line 1125
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView$MutableRenderBufferConfigChooser;->this$0:Lcom/brakefield/painter/ui/MainView;

    new-instance p2, Lcom/brakefield/painter/ui/MainView$MutableRenderBufferConfigChooser$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/brakefield/painter/ui/MainView$MutableRenderBufferConfigChooser$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/MainView$MutableRenderBufferConfigChooser;)V

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/MainView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    if-eqz v0, :cond_3

    return-object v0

    .line 1131
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

    .line 1182
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

    .line 1188
    :cond_1
    new-array v8, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v8

    move-object v6, v0

    .line 1189
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1191
    aget-object p1, v8, v7

    return-object p1

    .line 1190
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eglChooseConfig#2 failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fallbackConfigChooser(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6

    const/16 v0, 0x11

    new-array v0, v0, [I

    const/16 v1, 0x3020

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0x18

    aput v3, v0, v1

    const/4 v1, 0x2

    const/16 v3, 0x3024

    aput v3, v0, v1

    const/4 v1, 0x3

    const/16 v3, 0x8

    aput v3, v0, v1

    const/16 v1, 0x3023

    const/4 v4, 0x4

    aput v1, v0, v4

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    const/16 v5, 0x3022

    aput v5, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    const/16 v1, 0x3021

    aput v1, v0, v3

    const/16 v1, 0x9

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v5, 0x3025

    aput v5, v0, v1

    const/16 v1, 0xb

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v5, 0x3026

    aput v5, v0, v1

    .line 1174
    iget-object v1, p0, Lcom/brakefield/painter/ui/MainView$MutableRenderBufferConfigChooser;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v1}, Lcom/brakefield/painter/ui/MainView;->access$1100(Lcom/brakefield/painter/ui/MainView;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    const/16 v1, 0xd

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x3040

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v4, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 1177
    invoke-virtual {p0, p1, p2, v0}, Lcom/brakefield/painter/ui/MainView$MutableRenderBufferConfigChooser;->chooseConfigBySpec(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$chooseConfig$0$com-brakefield-painter-ui-MainView$MutableRenderBufferConfigChooser()V
    .locals 2

    .line 1118
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$MutableRenderBufferConfigChooser;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/MainView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/brakefield/painter/PainterZeroLatency;->setMode(Landroid/content/Context;I)V

    return-void
.end method

.method synthetic lambda$chooseConfig$1$com-brakefield-painter-ui-MainView$MutableRenderBufferConfigChooser()V
    .locals 2

    .line 1126
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$MutableRenderBufferConfigChooser;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/MainView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/brakefield/painter/PainterZeroLatency;->setMode(Landroid/content/Context;I)V

    return-void
.end method

.method public tryChooseMutableBufferConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6

    const/16 v0, 0x13

    new-array v0, v0, [I

    const/16 v1, 0x3020

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0x18

    aput v3, v0, v1

    const/4 v1, 0x2

    const/16 v3, 0x3024

    aput v3, v0, v1

    const/4 v1, 0x3

    const/16 v3, 0x8

    aput v3, v0, v1

    const/16 v1, 0x3023

    const/4 v4, 0x4

    aput v1, v0, v4

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    const/16 v5, 0x3022

    aput v5, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    const/16 v1, 0x3021

    aput v1, v0, v3

    const/16 v1, 0x9

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v5, 0x3025

    aput v5, v0, v1

    const/16 v1, 0xb

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v5, 0x3026

    aput v5, v0, v1

    .line 1145
    iget-object v1, p0, Lcom/brakefield/painter/ui/MainView$MutableRenderBufferConfigChooser;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v1}, Lcom/brakefield/painter/ui/MainView;->access$1100(Lcom/brakefield/painter/ui/MainView;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    const/16 v1, 0xd

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x3040

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v4, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x3033

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x1004

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 1163
    invoke-virtual {p0, p1, p2, v0}, Lcom/brakefield/painter/ui/MainView$MutableRenderBufferConfigChooser;->chooseConfigBySpec(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p1

    return-object p1
.end method
