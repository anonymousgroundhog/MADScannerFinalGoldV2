.class final Landroidx/graphics/opengl/GLThread$SurfaceSession;
.super Ljava/lang/Object;
.source "GLThread.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/opengl/GLThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SurfaceSession"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0011R\u001a\u0010\u0019\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0011\"\u0004\u0008\u001b\u0010\u0013\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/graphics/opengl/GLThread$SurfaceSession;",
        "",
        "surfaceToken",
        "",
        "surface",
        "Landroid/view/Surface;",
        "surfaceRenderer",
        "Landroidx/graphics/opengl/GLRenderer$RenderCallback;",
        "(ILandroid/view/Surface;Landroidx/graphics/opengl/GLRenderer$RenderCallback;)V",
        "eglSurface",
        "Landroid/opengl/EGLSurface;",
        "getEglSurface",
        "()Landroid/opengl/EGLSurface;",
        "setEglSurface",
        "(Landroid/opengl/EGLSurface;)V",
        "height",
        "getHeight",
        "()I",
        "setHeight",
        "(I)V",
        "getSurface",
        "()Landroid/view/Surface;",
        "getSurfaceRenderer",
        "()Landroidx/graphics/opengl/GLRenderer$RenderCallback;",
        "getSurfaceToken",
        "width",
        "getWidth",
        "setWidth",
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
.field private eglSurface:Landroid/opengl/EGLSurface;

.field private height:I

.field private final surface:Landroid/view/Surface;

.field private final surfaceRenderer:Landroidx/graphics/opengl/GLRenderer$RenderCallback;

.field private final surfaceToken:I

.field private width:I


# direct methods
.method public constructor <init>(ILandroid/view/Surface;Landroidx/graphics/opengl/GLRenderer$RenderCallback;)V
    .locals 1

    const-string/jumbo v0, "surfaceRenderer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput p1, p0, Landroidx/graphics/opengl/GLThread$SurfaceSession;->surfaceToken:I

    .line 381
    iput-object p2, p0, Landroidx/graphics/opengl/GLThread$SurfaceSession;->surface:Landroid/view/Surface;

    .line 387
    iput-object p3, p0, Landroidx/graphics/opengl/GLThread$SurfaceSession;->surfaceRenderer:Landroidx/graphics/opengl/GLRenderer$RenderCallback;

    return-void
.end method


# virtual methods
.method public final getEglSurface()Landroid/opengl/EGLSurface;
    .locals 1

    .line 393
    iget-object v0, p0, Landroidx/graphics/opengl/GLThread$SurfaceSession;->eglSurface:Landroid/opengl/EGLSurface;

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .line 403
    iget v0, p0, Landroidx/graphics/opengl/GLThread$SurfaceSession;->height:I

    return v0
.end method

.method public final getSurface()Landroid/view/Surface;
    .locals 1

    .line 381
    iget-object v0, p0, Landroidx/graphics/opengl/GLThread$SurfaceSession;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public final getSurfaceRenderer()Landroidx/graphics/opengl/GLRenderer$RenderCallback;
    .locals 1

    .line 387
    iget-object v0, p0, Landroidx/graphics/opengl/GLThread$SurfaceSession;->surfaceRenderer:Landroidx/graphics/opengl/GLRenderer$RenderCallback;

    return-object v0
.end method

.method public final getSurfaceToken()I
    .locals 1

    .line 374
    iget v0, p0, Landroidx/graphics/opengl/GLThread$SurfaceSession;->surfaceToken:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 398
    iget v0, p0, Landroidx/graphics/opengl/GLThread$SurfaceSession;->width:I

    return v0
.end method

.method public final setEglSurface(Landroid/opengl/EGLSurface;)V
    .locals 0

    .line 393
    iput-object p1, p0, Landroidx/graphics/opengl/GLThread$SurfaceSession;->eglSurface:Landroid/opengl/EGLSurface;

    return-void
.end method

.method public final setHeight(I)V
    .locals 0

    .line 403
    iput p1, p0, Landroidx/graphics/opengl/GLThread$SurfaceSession;->height:I

    return-void
.end method

.method public final setWidth(I)V
    .locals 0

    .line 398
    iput p1, p0, Landroidx/graphics/opengl/GLThread$SurfaceSession;->width:I

    return-void
.end method
