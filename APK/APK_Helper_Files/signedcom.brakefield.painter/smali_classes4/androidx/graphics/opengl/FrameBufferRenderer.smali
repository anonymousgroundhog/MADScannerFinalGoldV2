.class public final Landroidx/graphics/opengl/FrameBufferRenderer;
.super Ljava/lang/Object;
.source "FrameBufferRenderer.kt"

# interfaces
.implements Landroidx/graphics/opengl/GLRenderer$RenderCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/opengl/FrameBufferRenderer$Companion;,
        Landroidx/graphics/opengl/FrameBufferRenderer$RenderCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001b\u001cB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rH\u0016J2\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H\u0016J\u000c\u0010\u0019\u001a\u00020\u001a*\u00020\rH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/graphics/opengl/FrameBufferRenderer;",
        "Landroidx/graphics/opengl/GLRenderer$RenderCallback;",
        "frameBufferRendererCallbacks",
        "Landroidx/graphics/opengl/FrameBufferRenderer$RenderCallback;",
        "syncStrategy",
        "Landroidx/graphics/opengl/SyncStrategy;",
        "(Landroidx/graphics/opengl/FrameBufferRenderer$RenderCallback;Landroidx/graphics/opengl/SyncStrategy;)V",
        "mClear",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "clear",
        "",
        "onDrawFrame",
        "eglManager",
        "Landroidx/graphics/opengl/egl/EGLManager;",
        "onSurfaceCreated",
        "Landroid/opengl/EGLSurface;",
        "spec",
        "Landroidx/graphics/opengl/egl/EGLSpec;",
        "config",
        "Landroid/opengl/EGLConfig;",
        "surface",
        "Landroid/view/Surface;",
        "width",
        "",
        "height",
        "supportsNativeAndroidFence",
        "",
        "Companion",
        "RenderCallback",
        "graphics-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final Companion:Landroidx/graphics/opengl/FrameBufferRenderer$Companion;

.field private static final TAG:Ljava/lang/String; = "FrameBufferRenderer"


# instance fields
.field private final frameBufferRendererCallbacks:Landroidx/graphics/opengl/FrameBufferRenderer$RenderCallback;

.field private final mClear:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final syncStrategy:Landroidx/graphics/opengl/SyncStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/opengl/FrameBufferRenderer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/opengl/FrameBufferRenderer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/opengl/FrameBufferRenderer;->Companion:Landroidx/graphics/opengl/FrameBufferRenderer$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/graphics/opengl/FrameBufferRenderer$RenderCallback;Landroidx/graphics/opengl/SyncStrategy;)V
    .locals 1

    const-string v0, "frameBufferRendererCallbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "syncStrategy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroidx/graphics/opengl/FrameBufferRenderer;->frameBufferRendererCallbacks:Landroidx/graphics/opengl/FrameBufferRenderer$RenderCallback;

    .line 86
    iput-object p2, p0, Landroidx/graphics/opengl/FrameBufferRenderer;->syncStrategy:Landroidx/graphics/opengl/SyncStrategy;

    .line 89
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/graphics/opengl/FrameBufferRenderer;->mClear:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/graphics/opengl/FrameBufferRenderer$RenderCallback;Landroidx/graphics/opengl/SyncStrategy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 86
    sget-object p2, Landroidx/graphics/opengl/SyncStrategy;->ALWAYS:Landroidx/graphics/opengl/SyncStrategy;

    .line 84
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/graphics/opengl/FrameBufferRenderer;-><init>(Landroidx/graphics/opengl/FrameBufferRenderer$RenderCallback;Landroidx/graphics/opengl/SyncStrategy;)V

    return-void
.end method

.method private final supportsNativeAndroidFence(Landroidx/graphics/opengl/egl/EGLManager;)Z
    .locals 1

    const-string v0, "EGL_KHR_fence_sync"

    .line 156
    invoke-virtual {p1, v0}, Landroidx/graphics/opengl/egl/EGLManager;->isExtensionSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EGL_ANDROID_native_fence_sync"

    .line 157
    invoke-virtual {p1, v0}, Landroidx/graphics/opengl/egl/EGLManager;->isExtensionSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 100
    iget-object v0, p0, Landroidx/graphics/opengl/FrameBufferRenderer;->mClear:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onDrawFrame(Landroidx/graphics/opengl/egl/EGLManager;)V
    .locals 9

    const-string v0, "FrameBufferRenderer"

    const-string/jumbo v1, "warning waiting on sync object: "

    const-string v2, "Error attempting to render to frame buffer: "

    const-string v3, "eglManager"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Landroidx/graphics/opengl/egl/EGLManager;->getEGLSpec()Landroidx/graphics/opengl/egl/EGLSpec;

    move-result-object v3

    .line 105
    iget-object v4, p0, Landroidx/graphics/opengl/FrameBufferRenderer;->frameBufferRendererCallbacks:Landroidx/graphics/opengl/FrameBufferRenderer$RenderCallback;

    invoke-interface {v4, v3}, Landroidx/graphics/opengl/FrameBufferRenderer$RenderCallback;->obtainFrameBuffer(Landroidx/graphics/opengl/egl/EGLSpec;)Landroidx/graphics/opengl/FrameBuffer;

    move-result-object v4

    const/4 v5, 0x0

    .line 108
    :try_start_0
    invoke-virtual {v4}, Landroidx/graphics/opengl/FrameBuffer;->makeCurrent()V

    .line 109
    iget-object v6, p0, Landroidx/graphics/opengl/FrameBufferRenderer;->mClear:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    .line 110
    invoke-static {v6, v6, v6, v6}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v6, 0x4000

    .line 111
    invoke-static {v6}, Landroid/opengl/GLES20;->glClear(I)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v6, p0, Landroidx/graphics/opengl/FrameBufferRenderer;->frameBufferRendererCallbacks:Landroidx/graphics/opengl/FrameBufferRenderer$RenderCallback;

    invoke-interface {v6, p1}, Landroidx/graphics/opengl/FrameBufferRenderer$RenderCallback;->onDraw(Landroidx/graphics/opengl/egl/EGLManager;)V

    .line 116
    :goto_0
    invoke-direct {p0, p1}, Landroidx/graphics/opengl/FrameBufferRenderer;->supportsNativeAndroidFence(Landroidx/graphics/opengl/egl/EGLManager;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 117
    iget-object p1, p0, Landroidx/graphics/opengl/FrameBufferRenderer;->syncStrategy:Landroidx/graphics/opengl/SyncStrategy;

    invoke-interface {p1, v3}, Landroidx/graphics/opengl/SyncStrategy;->createSyncFence(Landroidx/graphics/opengl/egl/EGLSpec;)Landroidx/hardware/SyncFenceCompat;

    move-result-object v5

    goto :goto_1

    :cond_1
    const-string v6, "EGL_KHR_fence_sync"

    .line 118
    invoke-virtual {p1, v6}, Landroidx/graphics/opengl/egl/EGLManager;->isExtensionSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x30f9

    .line 125
    invoke-interface {v3, p1, v5}, Landroidx/graphics/opengl/egl/EGLSpec;->eglCreateSyncKHR(ILandroidx/graphics/opengl/egl/EGLConfigAttributes;)Landroidx/opengl/EGLSyncKHR;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 127
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    const/4 v6, 0x1

    const-wide/16 v7, -0x1

    .line 128
    invoke-interface {v3, p1, v6, v7, v8}, Landroidx/graphics/opengl/egl/EGLSpec;->eglClientWaitSyncKHR(Landroidx/opengl/EGLSyncKHR;IJ)I

    move-result p1

    const/16 v3, 0x30f6

    if-eq p1, v3, :cond_4

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string p1, "Unable to create EGLSync"

    .line 137
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    goto :goto_1

    :cond_3
    const-string p1, "Device does not support creation of any fences"

    .line 142
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 147
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :cond_4
    :goto_1
    iget-object p1, p0, Landroidx/graphics/opengl/FrameBufferRenderer;->frameBufferRendererCallbacks:Landroidx/graphics/opengl/FrameBufferRenderer$RenderCallback;

    invoke-interface {p1, v4, v5}, Landroidx/graphics/opengl/FrameBufferRenderer$RenderCallback;->onDrawComplete(Landroidx/graphics/opengl/FrameBuffer;Landroidx/hardware/SyncFenceCompat;)V

    return-void

    :goto_2
    iget-object v0, p0, Landroidx/graphics/opengl/FrameBufferRenderer;->frameBufferRendererCallbacks:Landroidx/graphics/opengl/FrameBufferRenderer$RenderCallback;

    invoke-interface {v0, v4, v5}, Landroidx/graphics/opengl/FrameBufferRenderer$RenderCallback;->onDrawComplete(Landroidx/graphics/opengl/FrameBuffer;Landroidx/hardware/SyncFenceCompat;)V

    throw p1
.end method

.method public onSurfaceCreated(Landroidx/graphics/opengl/egl/EGLSpec;Landroid/opengl/EGLConfig;Landroid/view/Surface;II)Landroid/opengl/EGLSurface;
    .locals 0

    const-string/jumbo p4, "spec"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "config"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "surface"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
