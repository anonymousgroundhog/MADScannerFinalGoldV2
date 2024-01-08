.class public final Landroidx/hardware/SyncFenceCompat$Companion;
.super Ljava/lang/Object;
.source "SyncFenceCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/hardware/SyncFenceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0006\u001a\u00020\u0007H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/hardware/SyncFenceCompat$Companion;",
        "",
        "()V",
        "SIGNAL_TIME_INVALID",
        "",
        "SIGNAL_TIME_PENDING",
        "createNativeSyncFence",
        "Landroidx/hardware/SyncFenceCompat;",
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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/hardware/SyncFenceCompat$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createNativeSyncFence()Landroidx/hardware/SyncFenceCompat;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 53
    sget-object v0, Landroidx/hardware/SyncFenceCompatVerificationHelper;->Companion:Landroidx/hardware/SyncFenceCompatVerificationHelper$Companion;

    invoke-virtual {v0}, Landroidx/hardware/SyncFenceCompatVerificationHelper$Companion;->createSyncFenceCompatV33()Landroidx/hardware/SyncFenceCompat;

    move-result-object v0

    goto :goto_1

    .line 55
    :cond_1
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 58
    sget-object v1, Landroidx/opengl/EGLExt;->Companion:Landroidx/opengl/EGLExt$Companion;

    const/16 v2, 0x3144

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroidx/opengl/EGLExt$Companion;->eglCreateSyncKHR(Landroid/opengl/EGLDisplay;ILandroidx/graphics/opengl/egl/EGLConfigAttributes;)Landroidx/opengl/EGLSyncKHR;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 60
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 62
    sget-object v2, Landroidx/opengl/EGLExt;->Companion:Landroidx/opengl/EGLExt$Companion;

    invoke-virtual {v2, v0, v1}, Landroidx/opengl/EGLExt$Companion;->eglDupNativeFenceFDANDROID$graphics_core_release(Landroid/opengl/EGLDisplay;Landroidx/opengl/EGLSyncKHR;)Landroidx/hardware/SyncFenceCompat;

    move-result-object v2

    .line 63
    sget-object v3, Landroidx/opengl/EGLExt;->Companion:Landroidx/opengl/EGLExt$Companion;

    invoke-virtual {v3, v0, v1}, Landroidx/opengl/EGLExt$Companion;->eglDestroySyncKHR(Landroid/opengl/EGLDisplay;Landroidx/opengl/EGLSyncKHR;)Z

    move-object v0, v2

    :goto_1
    return-object v0

    .line 59
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to create sync object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No EGL Display available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
