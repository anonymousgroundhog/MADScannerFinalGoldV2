.class public final Landroidx/graphics/opengl/GLFrameBufferRenderer$drawAsync$eglContextCallback$1;
.super Ljava/lang/Object;
.source "GLFrameBufferRenderer.kt"

# interfaces
.implements Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/graphics/opengl/GLFrameBufferRenderer;->drawAsync$graphics_core_release(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "androidx/graphics/opengl/GLFrameBufferRenderer$drawAsync$eglContextCallback$1",
        "Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;",
        "onEGLContextCreated",
        "",
        "eglManager",
        "Landroidx/graphics/opengl/egl/EGLManager;",
        "onEGLContextDestroyed",
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


# instance fields
.field final synthetic $onComplete:Ljava/lang/Runnable;

.field final synthetic $renderer:Landroidx/graphics/opengl/GLRenderer;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Landroidx/graphics/opengl/GLRenderer;)V
    .locals 0

    iput-object p1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$drawAsync$eglContextCallback$1;->$onComplete:Ljava/lang/Runnable;

    iput-object p2, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$drawAsync$eglContextCallback$1;->$renderer:Landroidx/graphics/opengl/GLRenderer;

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEGLContextCreated(Landroidx/graphics/opengl/egl/EGLManager;)V
    .locals 1

    const-string v0, "eglManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onEGLContextDestroyed(Landroidx/graphics/opengl/egl/EGLManager;)V
    .locals 1

    const-string v0, "eglManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    iget-object p1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$drawAsync$eglContextCallback$1;->$onComplete:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 452
    :cond_0
    iget-object p1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$drawAsync$eglContextCallback$1;->$renderer:Landroidx/graphics/opengl/GLRenderer;

    move-object v0, p0

    check-cast v0, Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;

    invoke-virtual {p1, v0}, Landroidx/graphics/opengl/GLRenderer;->unregisterEGLContextCallback(Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;)V

    return-void
.end method
