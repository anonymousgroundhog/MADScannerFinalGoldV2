.class Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$SingleBufferWindowSurfaceFactory;
.super Ljava/lang/Object;
.source "InkGLView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleBufferWindowSurfaceFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$SingleBufferWindowSurfaceFactory;->this$0:Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$1;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$SingleBufferWindowSurfaceFactory;-><init>(Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;)V

    return-void
.end method


# virtual methods
.method public createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 3

    const/16 v0, 0x3085

    const/16 v1, 0x3038

    const/16 v2, 0x3086

    .line 124
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    .line 135
    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    return-object p1
.end method

.method public destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 0

    .line 140
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    return-void
.end method
