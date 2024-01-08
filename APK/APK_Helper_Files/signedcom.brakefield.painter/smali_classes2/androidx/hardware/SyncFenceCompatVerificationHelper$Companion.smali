.class public final Landroidx/hardware/SyncFenceCompatVerificationHelper$Companion;
.super Ljava/lang/Object;
.source "SyncFenceCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/hardware/SyncFenceCompatVerificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/hardware/SyncFenceCompatVerificationHelper$Companion;",
        "",
        "()V",
        "mEmptyAttributes",
        "",
        "createSyncFenceCompatV33",
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

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/hardware/SyncFenceCompatVerificationHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createSyncFenceCompatV33()Landroidx/hardware/SyncFenceCompat;
    .locals 5

    .line 141
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    .line 142
    sget-object v1, Landroid/opengl/EGL15;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    const/16 v2, 0x3000

    if-ne v1, v2, :cond_0

    .line 153
    invoke-static {}, Landroidx/hardware/SyncFenceCompatVerificationHelper;->access$getMEmptyAttributes$cp()[J

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x3144

    .line 150
    invoke-static {v0, v3, v1, v2}, Landroid/opengl/EGL15;->eglCreateSync(Landroid/opengl/EGLDisplay;I[JI)Landroid/opengl/EGLSync;

    move-result-object v1

    .line 156
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 157
    new-instance v2, Landroidx/hardware/SyncFenceCompat;

    .line 158
    invoke-static {v0, v1}, Landroid/opengl/EGLExt;->eglDupNativeFenceFDANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSync;)Landroid/hardware/SyncFence;

    move-result-object v3

    const-string v4, "eglDupNativeFenceFDANDRO\u2026eglSync\n                )"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-direct {v2, v3}, Landroidx/hardware/SyncFenceCompat;-><init>(Landroid/hardware/SyncFence;)V

    .line 163
    invoke-static {v0, v1}, Landroid/opengl/EGL15;->eglDestroySync(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSync;)Z

    return-object v2

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetPlatformDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no EGL display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
