.class public final Landroidx/graphics/opengl/FrameBuffer;
.super Ljava/lang/Object;
.source "FrameBuffer.kt"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFrameBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrameBuffer.kt\nandroidx/graphics/opengl/FrameBuffer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,114:1\n1#2:115\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0006\u0010\u0018\u001a\u00020\u0017R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001e\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\u0012@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/graphics/opengl/FrameBuffer;",
        "Ljava/lang/AutoCloseable;",
        "egl",
        "Landroidx/graphics/opengl/egl/EGLSpec;",
        "hardwareBuffer",
        "Landroid/hardware/HardwareBuffer;",
        "(Landroidx/graphics/opengl/egl/EGLSpec;Landroid/hardware/HardwareBuffer;)V",
        "buffer",
        "",
        "eglImage",
        "Landroidx/opengl/EGLImageKHR;",
        "<set-?>",
        "",
        "frameBuffer",
        "getFrameBuffer$graphics_core_release",
        "()I",
        "getHardwareBuffer",
        "()Landroid/hardware/HardwareBuffer;",
        "",
        "isClosed",
        "()Z",
        "texture",
        "close",
        "",
        "makeCurrent",
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
.field private final buffer:[I

.field private final egl:Landroidx/graphics/opengl/egl/EGLSpec;

.field private eglImage:Landroidx/opengl/EGLImageKHR;

.field private frameBuffer:I

.field private final hardwareBuffer:Landroid/hardware/HardwareBuffer;

.field private isClosed:Z

.field private texture:I


# direct methods
.method public constructor <init>(Landroidx/graphics/opengl/egl/EGLSpec;Landroid/hardware/HardwareBuffer;)V
    .locals 4

    const-string v0, "egl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hardwareBuffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroidx/graphics/opengl/FrameBuffer;->egl:Landroidx/graphics/opengl/egl/EGLSpec;

    .line 40
    iput-object p2, p0, Landroidx/graphics/opengl/FrameBuffer;->hardwareBuffer:Landroid/hardware/HardwareBuffer;

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Landroidx/graphics/opengl/FrameBuffer;->texture:I

    .line 49
    iput v0, p0, Landroidx/graphics/opengl/FrameBuffer;->frameBuffer:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 59
    iput-object v1, p0, Landroidx/graphics/opengl/FrameBuffer;->buffer:[I

    .line 62
    invoke-interface {p1, p2}, Landroidx/graphics/opengl/egl/EGLSpec;->eglCreateImageFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroidx/opengl/EGLImageKHR;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    iput-object p1, p0, Landroidx/graphics/opengl/FrameBuffer;->eglImage:Landroidx/opengl/EGLImageKHR;

    const/4 p2, 0x0

    .line 66
    invoke-static {v0, v1, p2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v2, v1, p2

    .line 67
    iput v2, p0, Landroidx/graphics/opengl/FrameBuffer;->texture:I

    const/16 v3, 0xde1

    .line 69
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 70
    sget-object v2, Landroidx/opengl/EGLExt;->Companion:Landroidx/opengl/EGLExt$Companion;

    invoke-virtual {v2, v3, p1}, Landroidx/opengl/EGLExt$Companion;->glEGLImageTargetTexture2DOES(ILandroidx/opengl/EGLImageKHR;)V

    .line 72
    invoke-static {v0, v1, p2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    aget p1, v1, p2

    .line 73
    iput p1, p0, Landroidx/graphics/opengl/FrameBuffer;->frameBuffer:I

    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unable to create EGLImage from HardwareBuffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 98
    iget-boolean v0, p0, Landroidx/graphics/opengl/FrameBuffer;->isClosed:Z

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Landroidx/graphics/opengl/FrameBuffer;->buffer:[I

    iget v1, p0, Landroidx/graphics/opengl/FrameBuffer;->frameBuffer:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    .line 100
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    const/4 v0, -0x1

    .line 101
    iput v0, p0, Landroidx/graphics/opengl/FrameBuffer;->frameBuffer:I

    .line 103
    iget-object v3, p0, Landroidx/graphics/opengl/FrameBuffer;->buffer:[I

    iget v4, p0, Landroidx/graphics/opengl/FrameBuffer;->texture:I

    aput v4, v3, v2

    .line 104
    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 105
    iput v0, p0, Landroidx/graphics/opengl/FrameBuffer;->texture:I

    .line 107
    iget-object v0, p0, Landroidx/graphics/opengl/FrameBuffer;->eglImage:Landroidx/opengl/EGLImageKHR;

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroidx/graphics/opengl/FrameBuffer;->egl:Landroidx/graphics/opengl/egl/EGLSpec;

    invoke-interface {v2, v0}, Landroidx/graphics/opengl/egl/EGLSpec;->eglDestroyImageKHR(Landroidx/opengl/EGLImageKHR;)Z

    :cond_0
    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Landroidx/graphics/opengl/FrameBuffer;->eglImage:Landroidx/opengl/EGLImageKHR;

    .line 109
    iget-object v0, p0, Landroidx/graphics/opengl/FrameBuffer;->hardwareBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 110
    iput-boolean v1, p0, Landroidx/graphics/opengl/FrameBuffer;->isClosed:Z

    :cond_1
    return-void
.end method

.method public final getFrameBuffer$graphics_core_release()I
    .locals 1

    .line 49
    iget v0, p0, Landroidx/graphics/opengl/FrameBuffer;->frameBuffer:I

    return v0
.end method

.method public final getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 1

    .line 40
    iget-object v0, p0, Landroidx/graphics/opengl/FrameBuffer;->hardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-object v0
.end method

.method public final isClosed()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Landroidx/graphics/opengl/FrameBuffer;->isClosed:Z

    return v0
.end method

.method public final makeCurrent()V
    .locals 5

    .line 81
    iget-boolean v0, p0, Landroidx/graphics/opengl/FrameBuffer;->isClosed:Z

    if-nez v0, :cond_0

    .line 82
    iget v0, p0, Landroidx/graphics/opengl/FrameBuffer;->frameBuffer:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 87
    iget v0, p0, Landroidx/graphics/opengl/FrameBuffer;->texture:I

    const/4 v2, 0x0

    const v3, 0x8ce0

    const/16 v4, 0xde1

    .line 83
    invoke-static {v1, v3, v4, v0, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    :cond_0
    return-void
.end method
