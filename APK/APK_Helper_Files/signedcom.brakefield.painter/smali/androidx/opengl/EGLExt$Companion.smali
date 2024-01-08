.class public final Landroidx/opengl/EGLExt$Companion;
.super Ljava/lang/Object;
.source "EGLExt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/opengl/EGLExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/opengl/EGLExt$Companion$EGLClientWaitResult;,
        Landroidx/opengl/EGLExt$Companion$EGLFenceType;,
        Landroidx/opengl/EGLExt$Companion$EGLSyncAttribute;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEGLExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EGLExt.kt\nandroidx/opengl/EGLExt$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,756:1\n1#2:757\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0003LMNB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J-\u0010&\u001a\u00070\u0008\u00a2\u0006\u0002\u0008\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u00082\u0006\u0010-\u001a\u00020\u0010H\u0007J\u001a\u0010.\u001a\u0004\u0018\u00010/2\u0006\u0010(\u001a\u00020)2\u0006\u00100\u001a\u000201H\u0007J&\u00102\u001a\u0004\u0018\u00010+2\u0006\u0010(\u001a\u00020)2\u0008\u0008\u0001\u00103\u001a\u00020\u00082\u0008\u00104\u001a\u0004\u0018\u000105H\u0007J\u0018\u00106\u001a\u0002072\u0006\u0010(\u001a\u00020)2\u0006\u00108\u001a\u00020/H\u0007J\u0018\u00109\u001a\u0002072\u0006\u0010(\u001a\u00020)2\u0006\u0010:\u001a\u00020+H\u0007J\u001d\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0001\u00a2\u0006\u0002\u0008>J2\u0010?\u001a\u0002072\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0008\u0008\u0001\u0010@\u001a\u00020\u00082\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020\u0008H\u0007J\u0018\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020\u00082\u0006\u00108\u001a\u00020/H\u0007J\u0016\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u00040H2\u0006\u0010I\u001a\u00020\u0004H\u0007J\u0011\u0010J\u001a\u00020\u0010*\u00020)H\u0000\u00a2\u0006\u0002\u0008KR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006O"
    }
    d2 = {
        "Landroidx/opengl/EGLExt$Companion;",
        "",
        "()V",
        "EGL_ANDROID_CLIENT_BUFFER",
        "",
        "EGL_ANDROID_IMAGE_NATIVE_BUFFER",
        "EGL_ANDROID_NATIVE_FENCE_SYNC",
        "EGL_CONDITION_SATISFIED_KHR",
        "",
        "EGL_EXT_BUFFER_AGE",
        "EGL_EXT_GL_COLORSPACE_BT2020_PQ",
        "EGL_EXT_GL_COLORSPACE_DISPLAY_P3_PASSTHROUGH",
        "EGL_EXT_GL_COLORSPACE_SCRGB",
        "EGL_EXT_PIXEL_FORMAT_FLOAT",
        "EGL_FALSE",
        "EGL_FOREVER_KHR",
        "",
        "EGL_IMG_CONTEXT_PRIORITY",
        "EGL_KHR_FENCE_SYNC",
        "EGL_KHR_GL_COLORSPACE",
        "EGL_KHR_IMAGE",
        "EGL_KHR_IMAGE_BASE",
        "EGL_KHR_NO_CONFIG_CONTEXT",
        "EGL_KHR_PARTIAL_UPDATE",
        "EGL_KHR_SURFACELESS_CONTEXT",
        "EGL_KHR_SWAP_BUFFERS_WITH_DAMAGE",
        "EGL_KHR_WAIT_SYNC",
        "EGL_SIGNALED_KHR",
        "EGL_SYNC_CONDITION_KHR",
        "EGL_SYNC_FENCE_KHR",
        "EGL_SYNC_FLUSH_COMMANDS_BIT_KHR",
        "EGL_SYNC_NATIVE_FENCE_ANDROID",
        "EGL_SYNC_PRIOR_COMMANDS_COMPLETE_KHR",
        "EGL_SYNC_STATUS_KHR",
        "EGL_SYNC_TYPE_KHR",
        "EGL_TIMEOUT_EXPIRED_KHR",
        "EGL_TRUE",
        "EGL_UNSIGNALED_KHR",
        "eglClientWaitSyncKHR",
        "Landroidx/opengl/EGLExt$Companion$EGLClientWaitResult;",
        "eglDisplay",
        "Landroid/opengl/EGLDisplay;",
        "sync",
        "Landroidx/opengl/EGLSyncKHR;",
        "flags",
        "timeoutNanos",
        "eglCreateImageFromHardwareBuffer",
        "Landroidx/opengl/EGLImageKHR;",
        "hardwareBuffer",
        "Landroid/hardware/HardwareBuffer;",
        "eglCreateSyncKHR",
        "type",
        "attributes",
        "Landroidx/graphics/opengl/egl/EGLConfigAttributes;",
        "eglDestroyImageKHR",
        "",
        "image",
        "eglDestroySyncKHR",
        "eglSync",
        "eglDupNativeFenceFDANDROID",
        "Landroidx/hardware/SyncFenceCompat;",
        "display",
        "eglDupNativeFenceFDANDROID$graphics_core_release",
        "eglGetSyncAttribKHR",
        "attribute",
        "value",
        "",
        "offset",
        "glEGLImageTargetTexture2DOES",
        "",
        "target",
        "parseExtensions",
        "",
        "queryString",
        "obtainNativeHandle",
        "obtainNativeHandle$graphics_core_release",
        "EGLClientWaitResult",
        "EGLFenceType",
        "EGLSyncAttribute",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/opengl/EGLExt$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final eglClientWaitSyncKHR(Landroid/opengl/EGLDisplay;Landroidx/opengl/EGLSyncKHR;IJ)I
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "eglDisplay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sync"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    sget-object v1, Landroidx/opengl/EGLBindings;->Companion:Landroidx/opengl/EGLBindings$Companion;

    .line 550
    invoke-virtual {p0, p1}, Landroidx/opengl/EGLExt$Companion;->obtainNativeHandle$graphics_core_release(Landroid/opengl/EGLDisplay;)J

    move-result-wide v2

    .line 551
    invoke-virtual {p2}, Landroidx/opengl/EGLSyncKHR;->getNativeHandle()J

    move-result-wide v4

    move v6, p3

    move-wide v7, p4

    .line 549
    invoke-virtual/range {v1 .. v8}, Landroidx/opengl/EGLBindings$Companion;->nClientWaitSyncKHR(JJIJ)I

    move-result p1

    return p1
.end method

.method public final eglCreateImageFromHardwareBuffer(Landroid/opengl/EGLDisplay;Landroid/hardware/HardwareBuffer;)Landroidx/opengl/EGLImageKHR;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "eglDisplay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hardwareBuffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    sget-object v0, Landroidx/opengl/EGLBindings;->Companion:Landroidx/opengl/EGLBindings$Companion;

    .line 378
    invoke-virtual {p0, p1}, Landroidx/opengl/EGLExt$Companion;->obtainNativeHandle$graphics_core_release(Landroid/opengl/EGLDisplay;)J

    move-result-wide v1

    .line 377
    invoke-virtual {v0, v1, v2, p2}, Landroidx/opengl/EGLBindings$Companion;->nCreateImageFromHardwareBuffer(JLandroid/hardware/HardwareBuffer;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 383
    :cond_0
    new-instance v0, Landroidx/opengl/EGLImageKHR;

    invoke-direct {v0, p1, p2}, Landroidx/opengl/EGLImageKHR;-><init>(J)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final eglCreateSyncKHR(Landroid/opengl/EGLDisplay;ILandroidx/graphics/opengl/egl/EGLConfigAttributes;)Landroidx/opengl/EGLSyncKHR;
    .locals 3
    .param p2    # I
        .annotation runtime Landroidx/opengl/EGLExt$Companion$EGLFenceType;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "eglDisplay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    sget-object v0, Landroidx/opengl/EGLBindings;->Companion:Landroidx/opengl/EGLBindings$Companion;

    .line 454
    invoke-virtual {p0, p1}, Landroidx/opengl/EGLExt$Companion;->obtainNativeHandle$graphics_core_release(Landroid/opengl/EGLDisplay;)J

    move-result-wide v1

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroidx/graphics/opengl/egl/EGLConfigAttributes;->getAttrs()[I

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p1

    .line 453
    :goto_0
    invoke-virtual {v0, v1, v2, p2, p3}, Landroidx/opengl/EGLBindings$Companion;->nCreateSyncKHR(JI[I)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 459
    :cond_1
    new-instance p1, Landroidx/opengl/EGLSyncKHR;

    invoke-direct {p1, p2, p3}, Landroidx/opengl/EGLSyncKHR;-><init>(J)V

    :goto_1
    return-object p1
.end method

.method public final eglDestroyImageKHR(Landroid/opengl/EGLDisplay;Landroidx/opengl/EGLImageKHR;)Z
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "eglDisplay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "image"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    sget-object v0, Landroidx/opengl/EGLBindings;->Companion:Landroidx/opengl/EGLBindings$Companion;

    .line 407
    invoke-virtual {p0, p1}, Landroidx/opengl/EGLExt$Companion;->obtainNativeHandle$graphics_core_release(Landroid/opengl/EGLDisplay;)J

    move-result-wide v1

    .line 408
    invoke-virtual {p2}, Landroidx/opengl/EGLImageKHR;->getNativeHandle()J

    move-result-wide p1

    .line 406
    invoke-virtual {v0, v1, v2, p1, p2}, Landroidx/opengl/EGLBindings$Companion;->nDestroyImageKHR(JJ)Z

    move-result p1

    return p1
.end method

.method public final eglDestroySyncKHR(Landroid/opengl/EGLDisplay;Landroidx/opengl/EGLSyncKHR;)Z
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "eglDisplay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eglSync"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    sget-object v0, Landroidx/opengl/EGLBindings;->Companion:Landroidx/opengl/EGLBindings$Companion;

    .line 613
    invoke-virtual {p0, p1}, Landroidx/opengl/EGLExt$Companion;->obtainNativeHandle$graphics_core_release(Landroid/opengl/EGLDisplay;)J

    move-result-wide v1

    .line 614
    invoke-virtual {p2}, Landroidx/opengl/EGLSyncKHR;->getNativeHandle()J

    move-result-wide p1

    .line 612
    invoke-virtual {v0, v1, v2, p1, p2}, Landroidx/opengl/EGLBindings$Companion;->nDestroySyncKHR(JJ)Z

    move-result p1

    return p1
.end method

.method public final eglDupNativeFenceFDANDROID$graphics_core_release(Landroid/opengl/EGLDisplay;Landroidx/opengl/EGLSyncKHR;)Landroidx/hardware/SyncFenceCompat;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "display"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sync"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    sget-object v0, Landroidx/opengl/EGLBindings;->Companion:Landroidx/opengl/EGLBindings$Companion;

    .line 582
    invoke-virtual {p0, p1}, Landroidx/opengl/EGLExt$Companion;->obtainNativeHandle$graphics_core_release(Landroid/opengl/EGLDisplay;)J

    move-result-wide v1

    .line 583
    invoke-virtual {p2}, Landroidx/opengl/EGLSyncKHR;->getNativeHandle()J

    move-result-wide p1

    .line 581
    invoke-virtual {v0, v1, v2, p1, p2}, Landroidx/opengl/EGLBindings$Companion;->nDupNativeFenceFDANDROID(JJ)I

    move-result p1

    if-ltz p1, :cond_0

    .line 586
    new-instance p2, Landroidx/hardware/SyncFenceCompat;

    new-instance v0, Landroidx/hardware/SyncFenceV19;

    invoke-direct {v0, p1}, Landroidx/hardware/SyncFenceV19;-><init>(I)V

    invoke-direct {p2, v0}, Landroidx/hardware/SyncFenceCompat;-><init>(Landroidx/hardware/SyncFenceV19;)V

    goto :goto_0

    .line 588
    :cond_0
    new-instance p2, Landroidx/hardware/SyncFenceCompat;

    new-instance p1, Landroidx/hardware/SyncFenceV19;

    const/4 v0, -0x1

    invoke-direct {p1, v0}, Landroidx/hardware/SyncFenceV19;-><init>(I)V

    invoke-direct {p2, p1}, Landroidx/hardware/SyncFenceCompat;-><init>(Landroidx/hardware/SyncFenceV19;)V

    :goto_0
    return-object p2
.end method

.method public final eglGetSyncAttribKHR(Landroid/opengl/EGLDisplay;Landroidx/opengl/EGLSyncKHR;I[II)Z
    .locals 9
    .param p3    # I
        .annotation runtime Landroidx/opengl/EGLExt$Companion$EGLSyncAttribute;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "eglDisplay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sync"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    sget-object v1, Landroidx/opengl/EGLBindings;->Companion:Landroidx/opengl/EGLBindings$Companion;

    .line 492
    invoke-virtual {p0, p1}, Landroidx/opengl/EGLExt$Companion;->obtainNativeHandle$graphics_core_release(Landroid/opengl/EGLDisplay;)J

    move-result-wide v2

    .line 493
    invoke-virtual {p2}, Landroidx/opengl/EGLSyncKHR;->getNativeHandle()J

    move-result-wide v4

    move v6, p3

    move-object v7, p4

    move v8, p5

    .line 491
    invoke-virtual/range {v1 .. v8}, Landroidx/opengl/EGLBindings$Companion;->nGetSyncAttribKHR(JJI[II)Z

    move-result p1

    return p1
.end method

.method public final glEGLImageTargetTexture2DOES(ILandroidx/opengl/EGLImageKHR;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "image"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    sget-object v0, Landroidx/opengl/EGLBindings;->Companion:Landroidx/opengl/EGLBindings$Companion;

    invoke-virtual {p2}, Landroidx/opengl/EGLImageKHR;->getNativeHandle()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroidx/opengl/EGLBindings$Companion;->nImageTargetTexture2DOES(IJ)V

    return-void
.end method

.method public final obtainNativeHandle$graphics_core_release(Landroid/opengl/EGLDisplay;)J
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 635
    sget-object v0, Landroidx/opengl/EGLDisplayVerificationHelper;->Companion:Landroidx/opengl/EGLDisplayVerificationHelper$Companion;

    invoke-virtual {v0, p1}, Landroidx/opengl/EGLDisplayVerificationHelper$Companion;->getNativeHandle(Landroid/opengl/EGLDisplay;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final parseExtensions(Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "queryString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 p1, 0x1

    new-array v2, p1, [C

    const/4 p1, 0x0

    const/16 v3, 0x20

    aput-char v3, v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
