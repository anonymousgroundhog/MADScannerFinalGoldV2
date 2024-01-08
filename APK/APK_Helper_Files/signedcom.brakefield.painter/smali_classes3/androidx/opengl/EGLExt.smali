.class public final Landroidx/opengl/EGLExt;
.super Ljava/lang/Object;
.source "EGLExt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/opengl/EGLExt$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Landroidx/opengl/EGLExt;",
        "",
        "()V",
        "Companion",
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
.field public static final Companion:Landroidx/opengl/EGLExt$Companion;

.field public static final EGL_ANDROID_CLIENT_BUFFER:Ljava/lang/String; = "EGL_ANDROID_get_native_client_buffer"

.field public static final EGL_ANDROID_IMAGE_NATIVE_BUFFER:Ljava/lang/String; = "EGL_ANDROID_image_native_buffer"

.field public static final EGL_ANDROID_NATIVE_FENCE_SYNC:Ljava/lang/String; = "EGL_ANDROID_native_fence_sync"

.field public static final EGL_CONDITION_SATISFIED_KHR:I = 0x30f6

.field public static final EGL_EXT_BUFFER_AGE:Ljava/lang/String; = "EGL_EXT_buffer_age"

.field public static final EGL_EXT_GL_COLORSPACE_BT2020_PQ:Ljava/lang/String; = "EGL_EXT_gl_colorspace_bt2020_pq"

.field public static final EGL_EXT_GL_COLORSPACE_DISPLAY_P3_PASSTHROUGH:Ljava/lang/String; = "EGL_EXT_gl_colorspace_display_p3_passthrough"

.field public static final EGL_EXT_GL_COLORSPACE_SCRGB:Ljava/lang/String; = "EGL_EXT_gl_colorspace_scrgb"

.field public static final EGL_EXT_PIXEL_FORMAT_FLOAT:Ljava/lang/String; = "EGL_EXT_pixel_format_float"

.field public static final EGL_FALSE:I = 0x0

.field public static final EGL_FOREVER_KHR:J = -0x1L

.field public static final EGL_IMG_CONTEXT_PRIORITY:Ljava/lang/String; = "EGL_IMG_context_priority"

.field public static final EGL_KHR_FENCE_SYNC:Ljava/lang/String; = "EGL_KHR_fence_sync"

.field public static final EGL_KHR_GL_COLORSPACE:Ljava/lang/String; = "EGL_KHR_gl_colorspace"

.field public static final EGL_KHR_IMAGE:Ljava/lang/String; = "EGL_KHR_image"

.field public static final EGL_KHR_IMAGE_BASE:Ljava/lang/String; = "EGL_KHR_image_base"

.field public static final EGL_KHR_NO_CONFIG_CONTEXT:Ljava/lang/String; = "EGL_KHR_no_config_context"

.field public static final EGL_KHR_PARTIAL_UPDATE:Ljava/lang/String; = "EGL_KHR_partial_update"

.field public static final EGL_KHR_SURFACELESS_CONTEXT:Ljava/lang/String; = "EGL_KHR_surfaceless_context"

.field public static final EGL_KHR_SWAP_BUFFERS_WITH_DAMAGE:Ljava/lang/String; = "EGL_KHR_swap_buffers_with_damage"

.field public static final EGL_KHR_WAIT_SYNC:Ljava/lang/String; = "EGL_KHR_wait_sync"

.field public static final EGL_SIGNALED_KHR:I = 0x30f2

.field public static final EGL_SYNC_CONDITION_KHR:I = 0x30f8

.field public static final EGL_SYNC_FENCE_KHR:I = 0x30f9

.field public static final EGL_SYNC_FLUSH_COMMANDS_BIT_KHR:I = 0x1

.field public static final EGL_SYNC_NATIVE_FENCE_ANDROID:I = 0x3144

.field public static final EGL_SYNC_PRIOR_COMMANDS_COMPLETE_KHR:I = 0x30f0

.field public static final EGL_SYNC_STATUS_KHR:I = 0x30f1

.field public static final EGL_SYNC_TYPE_KHR:I = 0x30f7

.field public static final EGL_TIMEOUT_EXPIRED_KHR:I = 0x30f5

.field public static final EGL_TRUE:I = 0x1

.field public static final EGL_UNSIGNALED_KHR:I = 0x30f3


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/opengl/EGLExt$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/opengl/EGLExt$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/opengl/EGLExt;->Companion:Landroidx/opengl/EGLExt$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final eglClientWaitSyncKHR(Landroid/opengl/EGLDisplay;Landroidx/opengl/EGLSyncKHR;IJ)I
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/opengl/EGLExt;->Companion:Landroidx/opengl/EGLExt$Companion;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/opengl/EGLExt$Companion;->eglClientWaitSyncKHR(Landroid/opengl/EGLDisplay;Landroidx/opengl/EGLSyncKHR;IJ)I

    move-result p0

    return p0
.end method

.method public static final eglCreateImageFromHardwareBuffer(Landroid/opengl/EGLDisplay;Landroid/hardware/HardwareBuffer;)Landroidx/opengl/EGLImageKHR;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/opengl/EGLExt;->Companion:Landroidx/opengl/EGLExt$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/opengl/EGLExt$Companion;->eglCreateImageFromHardwareBuffer(Landroid/opengl/EGLDisplay;Landroid/hardware/HardwareBuffer;)Landroidx/opengl/EGLImageKHR;

    move-result-object p0

    return-object p0
.end method

.method public static final eglCreateSyncKHR(Landroid/opengl/EGLDisplay;ILandroidx/graphics/opengl/egl/EGLConfigAttributes;)Landroidx/opengl/EGLSyncKHR;
    .locals 1
    .param p1    # I
        .annotation runtime Landroidx/opengl/EGLExt$Companion$EGLFenceType;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/opengl/EGLExt;->Companion:Landroidx/opengl/EGLExt$Companion;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/opengl/EGLExt$Companion;->eglCreateSyncKHR(Landroid/opengl/EGLDisplay;ILandroidx/graphics/opengl/egl/EGLConfigAttributes;)Landroidx/opengl/EGLSyncKHR;

    move-result-object p0

    return-object p0
.end method

.method public static final eglDestroyImageKHR(Landroid/opengl/EGLDisplay;Landroidx/opengl/EGLImageKHR;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/opengl/EGLExt;->Companion:Landroidx/opengl/EGLExt$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/opengl/EGLExt$Companion;->eglDestroyImageKHR(Landroid/opengl/EGLDisplay;Landroidx/opengl/EGLImageKHR;)Z

    move-result p0

    return p0
.end method

.method public static final eglDestroySyncKHR(Landroid/opengl/EGLDisplay;Landroidx/opengl/EGLSyncKHR;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/opengl/EGLExt;->Companion:Landroidx/opengl/EGLExt$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/opengl/EGLExt$Companion;->eglDestroySyncKHR(Landroid/opengl/EGLDisplay;Landroidx/opengl/EGLSyncKHR;)Z

    move-result p0

    return p0
.end method

.method public static final eglDupNativeFenceFDANDROID$graphics_core_release(Landroid/opengl/EGLDisplay;Landroidx/opengl/EGLSyncKHR;)Landroidx/hardware/SyncFenceCompat;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/opengl/EGLExt;->Companion:Landroidx/opengl/EGLExt$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/opengl/EGLExt$Companion;->eglDupNativeFenceFDANDROID$graphics_core_release(Landroid/opengl/EGLDisplay;Landroidx/opengl/EGLSyncKHR;)Landroidx/hardware/SyncFenceCompat;

    move-result-object p0

    return-object p0
.end method

.method public static final eglGetSyncAttribKHR(Landroid/opengl/EGLDisplay;Landroidx/opengl/EGLSyncKHR;I[II)Z
    .locals 6
    .param p2    # I
        .annotation runtime Landroidx/opengl/EGLExt$Companion$EGLSyncAttribute;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/opengl/EGLExt;->Companion:Landroidx/opengl/EGLExt$Companion;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/opengl/EGLExt$Companion;->eglGetSyncAttribKHR(Landroid/opengl/EGLDisplay;Landroidx/opengl/EGLSyncKHR;I[II)Z

    move-result p0

    return p0
.end method

.method public static final glEGLImageTargetTexture2DOES(ILandroidx/opengl/EGLImageKHR;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/opengl/EGLExt;->Companion:Landroidx/opengl/EGLExt$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/opengl/EGLExt$Companion;->glEGLImageTargetTexture2DOES(ILandroidx/opengl/EGLImageKHR;)V

    return-void
.end method

.method public static final parseExtensions(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
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

    sget-object v0, Landroidx/opengl/EGLExt;->Companion:Landroidx/opengl/EGLExt$Companion;

    invoke-virtual {v0, p0}, Landroidx/opengl/EGLExt$Companion;->parseExtensions(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
