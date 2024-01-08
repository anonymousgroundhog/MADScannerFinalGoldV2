.class public final Landroidx/graphics/opengl/egl/EGLSpec$Companion$V14$1;
.super Ljava/lang/Object;
.source "EGLSpec.kt"

# interfaces
.implements Landroidx/graphics/opengl/egl/EGLSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/opengl/egl/EGLSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEGLSpec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EGLSpec.kt\nandroidx/graphics/opengl/egl/EGLSpec$Companion$V14$1\n+ 2 EGLConfigAttributes.kt\nandroidx/graphics/opengl/egl/EGLConfigAttributesKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,606:1\n47#2:607\n1#3:608\n*S KotlinDebug\n*F\n+ 1 EGLSpec.kt\nandroidx/graphics/opengl/egl/EGLSpec$Companion$V14$1\n*L\n526#1:607\n526#1:608\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000y\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0017J\u001a\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0003H\u0016J\u001c\u0010\u0018\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0019\u001a\u00020\u00072\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0003H\u0016J\"\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u000eH\u0016J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0012H\u0016J\u0010\u0010$\u001a\u00020\"2\u0006\u0010\u001c\u001a\u00020\u0016H\u0016J\u0010\u0010%\u001a\u00020\"2\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010&\u001a\u00020\u0016H\u0016J\u0008\u0010\'\u001a\u00020\u0016H\u0016J\u0008\u0010(\u001a\u00020\u0007H\u0016J(\u0010)\u001a\u00020\"2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010*\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u00052\u0006\u0010,\u001a\u00020\u0007H\u0016J\u0008\u0010-\u001a\u00020.H\u0016J \u0010/\u001a\u00020\"2\u0006\u00100\u001a\u00020\u000e2\u0006\u00101\u001a\u00020\u00162\u0006\u00102\u001a\u00020\u0016H\u0016J\u0010\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u0007H\u0016J(\u00106\u001a\u00020\"2\u0006\u0010\u001c\u001a\u00020\u00162\u0006\u0010*\u001a\u00020\u00072\u0006\u00107\u001a\u00020\u00052\u0006\u0010,\u001a\u00020\u0007H\u0016J\u0010\u00108\u001a\u00020\"2\u0006\u0010\u001c\u001a\u00020\u0016H\u0016J\u0010\u00109\u001a\n ;*\u0004\u0018\u00010:0:H\u0002J\u0012\u0010<\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0017\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006="
    }
    d2 = {
        "androidx/graphics/opengl/egl/EGLSpec$Companion$V14$1",
        "Landroidx/graphics/opengl/egl/EGLSpec;",
        "DefaultWindowSurfaceConfig",
        "Landroidx/graphics/opengl/egl/EGLConfigAttributes;",
        "contextAttributes",
        "",
        "eglClientWaitSyncKHR",
        "",
        "sync",
        "Landroidx/opengl/EGLSyncKHR;",
        "flags",
        "timeoutNanos",
        "",
        "eglCreateContext",
        "Landroid/opengl/EGLContext;",
        "config",
        "Landroid/opengl/EGLConfig;",
        "eglCreateImageFromHardwareBuffer",
        "Landroidx/opengl/EGLImageKHR;",
        "hardwareBuffer",
        "Landroid/hardware/HardwareBuffer;",
        "eglCreatePBufferSurface",
        "Landroid/opengl/EGLSurface;",
        "configAttributes",
        "eglCreateSyncKHR",
        "type",
        "attributes",
        "eglCreateWindowSurface",
        "surface",
        "Landroid/view/Surface;",
        "eglDestroyContext",
        "",
        "eglContext",
        "eglDestroyImageKHR",
        "",
        "image",
        "eglDestroySurface",
        "eglDestroySyncKHR",
        "eglGetCurrentDrawSurface",
        "eglGetCurrentReadSurface",
        "eglGetError",
        "eglGetSyncAttribKHR",
        "attribute",
        "value",
        "offset",
        "eglInitialize",
        "Landroidx/graphics/opengl/egl/EGLVersion;",
        "eglMakeCurrent",
        "context",
        "drawSurface",
        "readSurface",
        "eglQueryString",
        "",
        "nameId",
        "eglQuerySurface",
        "result",
        "eglSwapBuffers",
        "getDefaultDisplay",
        "Landroid/opengl/EGLDisplay;",
        "kotlin.jvm.PlatformType",
        "loadConfig",
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
.field private final DefaultWindowSurfaceConfig:Landroidx/graphics/opengl/egl/EGLConfigAttributes;

.field private final contextAttributes:[I


# direct methods
.method constructor <init>()V
    .locals 3

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    const/16 v1, 0x3038

    const/16 v2, 0x3098

    .line 376
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    .line 371
    iput-object v0, p0, Landroidx/graphics/opengl/egl/EGLSpec$Companion$V14$1;->contextAttributes:[I

    .line 607
    new-instance v0, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;

    invoke-direct {v0}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->build()Landroidx/graphics/opengl/egl/EGLConfigAttributes;

    move-result-object v0

    .line 526
    iput-object v0, p0, Landroidx/graphics/opengl/egl/EGLSpec$Companion$V14$1;->DefaultWindowSurfaceConfig:Landroidx/graphics/opengl/egl/EGLConfigAttributes;

    return-void
.end method

.method private final getDefaultDisplay()Landroid/opengl/EGLDisplay;
    .locals 1

    const/4 v0, 0x0

    .line 521
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public eglClientWaitSyncKHR(Landroidx/opengl/EGLSyncKHR;IJ)I
    .locals 7

    const-string/jumbo v0, "sync"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    sget-object v1, Landroidx/opengl/EGLExt;->Companion:Landroidx/opengl/EGLExt$Companion;

    invoke-direct {p0}, Landroidx/graphics/opengl/egl/EGLSpec$Companion$V14$1;->getDefaultDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v2

    const-string v0, "getDefaultDisplay()"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Landroidx/opengl/EGLExt$Companion;->eglClientWaitSyncKHR(Landroid/opengl/EGLDisplay;Landroidx/opengl/EGLSyncKHR;IJ)I

    move-result p1

    return p1
.end method

.method public eglCreateContext(Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;
    .locals 4

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    invoke-direct {p0}, Landroidx/graphics/opengl/egl/EGLSpec$Companion$V14$1;->getDefaultDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    .line 474
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 475
    iget-object v2, p0, Landroidx/graphics/opengl/egl/EGLSpec$Companion$V14$1;->contextAttributes:[I

    const/4 v3, 0x0

    .line 471
    invoke-static {v0, p1, v1, v2, v3}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p1

    const-string v0, "eglCreateContext(\n      \u2026      0\n                )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public eglCreateImageFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroidx/opengl/EGLImageKHR;
    .locals 3

    const-string v0, "hardwareBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    sget-object v0, Landroidx/opengl/EGLExt;->Companion:Landroidx/opengl/EGLExt$Companion;

    invoke-direct {p0}, Landroidx/graphics/opengl/egl/EGLSpec$Companion$V14$1;->getDefaultDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v1

    const-string v2, "getDefaultDisplay()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Landroidx/opengl/EGLExt$Companion;->eglCreateImageFromHardwareBuffer(Landroid/opengl/EGLDisplay;Landroid/hardware/HardwareBuffer;)Landroidx/opengl/EGLImageKHR;

    move-result-object p1

    return-object p1
.end method

.method public eglCreatePBufferSurface(Landroid/opengl/EGLConfig;Landroidx/graphics/opengl/egl/EGLConfigAttributes;)Landroid/opengl/EGLSurface;
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    invoke-direct {p0}, Landroidx/graphics/opengl/egl/EGLSpec$Companion$V14$1;->getDefaultDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 409
    invoke-virtual {p2}, Landroidx/graphics/opengl/egl/EGLConfigAttributes;->getAttrs()[I

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 406
    invoke-static {v0, p1, p2, v1}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    const-string p2, "eglCreatePbufferSurface(\u2026      0\n                )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public eglCreateSyncKHR(ILandroidx/graphics/opengl/egl/EGLConfigAttributes;)Landroidx/opengl/EGLSyncKHR;
    .locals 3

    .line 499
    sget-object v0, Landroidx/opengl/EGLExt;->Companion:Landroidx/opengl/EGLExt$Companion;

    invoke-direct {p0}, Landroidx/graphics/opengl/egl/EGLSpec$Companion$V14$1;->getDefaultDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v1

    const-string v2, "getDefaultDisplay()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, p2}, Landroidx/opengl/EGLExt$Companion;->eglCreateSyncKHR(Landroid/opengl/EGLDisplay;ILandroidx/graphics/opengl/egl/EGLConfigAttributes;)Landroidx/opengl/EGLSyncKHR;

    move-result-object p1

    return-object p1
.end method

.method public eglCreateWindowSurface(Landroid/opengl/EGLConfig;Landroid/view/Surface;Landroidx/graphics/opengl/egl/EGLConfigAttributes;)Landroid/opengl/EGLSurface;
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "surface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    invoke-direct {p0}, Landroidx/graphics/opengl/egl/EGLSpec$Companion$V14$1;->getDefaultDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 422
    invoke-virtual {p3}, Landroidx/graphics/opengl/egl/EGLConfigAttributes;->getAttrs()[I

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    iget-object p3, p0, Landroidx/graphics/opengl/egl/EGLSpec$Companion$V14$1;->DefaultWindowSurfaceConfig:Landroidx/graphics/opengl/egl/EGLConfigAttributes;

    invoke-virtual {p3}, Landroidx/graphics/opengl/egl/EGLConfigAttributes;->getAttrs()[I

    move-result-object p3

    :cond_1
    const/4 v1, 0x0

    .line 418
    invoke-static {v0, p1, p2, p3, v1}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    const-string p2, "eglCreateWindowSurface(\n\u2026      0\n                )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public eglDestroyContext(Landroid/opengl/EGLContext;)V
    .locals 2

    const-string v0, "eglContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    invoke-direct {p0}, Landroidx/graphics/opengl/egl/EGLSpec$Companion$V14$1;->getDefaultDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 482
    :cond_0
    new-instance p1, Landroidx/graphics/opengl/egl/EGLException;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const-string v1, "Unable to destroy EGLContext"

    invoke-direct {p1, v0, v1}, Landroidx/graphics/opengl/egl/EGLException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public eglDestroyImageKHR(Landroidx/opengl/EGLImageKHR;)Z
    .locals 3

    const-string v0, "image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    sget-object v0, Landroidx/opengl/EGLExt;->Companion:Landroidx/opengl/EGLExt$Companion;

    invoke-direct {p0}, Landroidx/graphics/opengl/egl/EGLSpec$Companion$V14$1;->getDefaultDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v1

    const-string v2, "getDefaultDisplay()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Landroidx/opengl/EGLExt$Companion;->eglDestroyImageKHR(Landroid/opengl/EGLDisplay;Landroidx/opengl/EGLImageKHR;)Z

    move-result p1

    return p1
.end method

.method public eglDestroySurface(Landroid/opengl/EGLSurface;)Z
    .locals 1

    const-string/jumbo v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    invoke-direct {p0}, Landroidx/graphics/opengl/egl/EGLSpec$Companion$V14$1;->getDefaultDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result p1

    return p1
.end method

.method public eglDestroySyncKHR(Landroidx/opengl/EGLSyncKHR;)Z
    .locals 3

    const-string/jumbo v0, "sync"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    sget-object v0, Landroidx/opengl/EGLExt;->Companion:Landroidx/opengl/EGLExt$Companion;

    invoke-direct {p0}, Landroidx/graphics/opengl/egl/EGLSpec$Companion$V14$1;->getDefaultDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v1

    const-string v2, "getDefaultDisplay()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Landroidx/opengl/EGLExt$Companion;->eglDestroySyncKHR(Landroid/opengl/EGLDisplay;Landroidx/opengl/EGLSyncKHR;)Z

    move-result p1

    return p1
.end method

.method public eglGetCurrentDrawSurface()Landroid/opengl/EGLSurface;
    .locals 2

    const/16 v0, 0x3059

    .line 397
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    const-string v1, "eglGetCurrentSurface(EGL14.EGL_DRAW)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public eglGetCurrentReadSurface()Landroid/opengl/EGLSurface;
    .locals 2

    const/16 v0, 0x305a

    .line 394
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    const-string v1, "eglGetCurrentSurface(EGL14.EGL_READ)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public eglGetError()I
    .locals 1

    .line 512
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    return v0
.end method

.method public eglGetSyncAttribKHR(Landroidx/opengl/EGLSyncKHR;I[II)Z
    .locals 7

    const-string/jumbo v0, "sync"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    sget-object v1, Landroidx/opengl/EGLExt;->Companion:Landroidx/opengl/EGLExt$Companion;

    invoke-direct {p0}, Landroidx/graphics/opengl/egl/EGLSpec$Companion$V14$1;->getDefaultDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v2

    const-string v0, "getDefaultDisplay()"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/opengl/EGLExt$Companion;->eglGetSyncAttribKHR(Landroid/opengl/EGLDisplay;Landroidx/opengl/EGLSyncKHR;I[II)Z

    move-result p1

    return p1
.end method

.method public eglInitialize()Landroidx/graphics/opengl/egl/EGLVersion;
    .locals 4

    const/4 v0, 0x1

    .line 382
    filled-new-array {v0}, [I

    move-result-object v1

    .line 383
    filled-new-array {v0}, [I

    move-result-object v0

    .line 385
    invoke-direct {p0}, Landroidx/graphics/opengl/egl/EGLSpec$Companion$V14$1;->getDefaultDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v0, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    new-instance v2, Landroidx/graphics/opengl/egl/EGLVersion;

    aget v1, v1, v3

    aget v0, v0, v3

    invoke-direct {v2, v1, v0}, Landroidx/graphics/opengl/egl/EGLVersion;-><init>(II)V

    return-object v2

    .line 389
    :cond_0
    new-instance v0, Landroidx/graphics/opengl/egl/EGLException;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    const-string v2, "Unable to initialize default display"

    invoke-direct {v0, v1, v2}, Landroidx/graphics/opengl/egl/EGLException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public eglMakeCurrent(Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawSurface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readSurface"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    invoke-direct {p0}, Landroidx/graphics/opengl/egl/EGLSpec$Companion$V14$1;->getDefaultDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    .line 445
    invoke-static {v0, p2, p3, p1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p1

    return p1
.end method

.method public eglQueryString(I)Ljava/lang/String;
    .locals 1

    .line 400
    invoke-direct {p0}, Landroidx/graphics/opengl/egl/EGLSpec$Companion$V14$1;->getDefaultDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "eglQueryString(getDefaultDisplay(), nameId)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public eglQuerySurface(Landroid/opengl/EGLSurface;I[II)Z
    .locals 1

    const-string/jumbo v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    invoke-direct {p0}, Landroidx/graphics/opengl/egl/EGLSpec$Companion$V14$1;->getDefaultDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    move-result p1

    return p1
.end method

.method public eglSwapBuffers(Landroid/opengl/EGLSurface;)Z
    .locals 1

    const-string/jumbo v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    invoke-direct {p0}, Landroidx/graphics/opengl/egl/EGLSpec$Companion$V14$1;->getDefaultDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result p1

    return p1
.end method

.method public loadConfig(Landroidx/graphics/opengl/egl/EGLConfigAttributes;)Landroid/opengl/EGLConfig;
    .locals 10

    const-string v0, "configAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v9, v0, [Landroid/opengl/EGLConfig;

    .line 455
    invoke-direct {p0}, Landroidx/graphics/opengl/egl/EGLSpec$Companion$V14$1;->getDefaultDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v1

    .line 456
    invoke-virtual {p1}, Landroidx/graphics/opengl/egl/EGLConfigAttributes;->getAttrs()[I

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 461
    filled-new-array {v0}, [I

    move-result-object v7

    const/4 v8, 0x0

    move-object v4, v9

    .line 454
    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    aget-object p1, v9, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
