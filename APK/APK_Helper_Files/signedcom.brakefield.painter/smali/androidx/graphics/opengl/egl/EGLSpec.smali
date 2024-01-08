.class public interface abstract Landroidx/graphics/opengl/egl/EGLSpec;
.super Ljava/lang/Object;
.source "EGLSpec.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/opengl/egl/EGLSpec$Companion;,
        Landroidx/graphics/opengl/egl/EGLSpec$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008f\u0018\u0000 :2\u00020\u0001:\u0001:J%\u0010\u0002\u001a\u00070\u0003\u00a2\u0006\u0002\u0008\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH&J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH&J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\'J\u001a\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H&J\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0017\u001a\u00020\u00032\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0015H&J\"\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H&J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u000bH&J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u000fH&J\u0010\u0010\"\u001a\u00020 2\u0006\u0010\u001a\u001a\u00020\u0013H&J\u0010\u0010#\u001a\u00020 2\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0008\u0010$\u001a\u00020\u0013H&J\u0008\u0010%\u001a\u00020\u0013H&J\u0008\u0010&\u001a\u00020\u0003H&J*\u0010\'\u001a\u00020 2\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010(\u001a\u00020\u00032\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u0003H&J\u0008\u0010,\u001a\u00020-H&J \u0010.\u001a\u00020 2\u0006\u0010/\u001a\u00020\u000b2\u0006\u00100\u001a\u00020\u00132\u0006\u00101\u001a\u00020\u0013H&J\u0010\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\u0003H&J(\u00105\u001a\u00020 2\u0006\u0010\u001a\u001a\u00020\u00132\u0006\u0010(\u001a\u00020\u00032\u0006\u00106\u001a\u00020*2\u0006\u0010+\u001a\u00020\u0003H&J\u0010\u00107\u001a\u00020 2\u0006\u0010\u001a\u001a\u00020\u0013H&J\u0008\u00108\u001a\u000203H\u0016J\u0012\u00109\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0014\u001a\u00020\u0015H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006;\u00c0\u0006\u0003"
    }
    d2 = {
        "Landroidx/graphics/opengl/egl/EGLSpec;",
        "",
        "eglClientWaitSyncKHR",
        "",
        "Landroidx/opengl/EGLExt$Companion$EGLClientWaitResult;",
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
        "Landroidx/graphics/opengl/egl/EGLConfigAttributes;",
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
        "",
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
        "getErrorMessage",
        "loadConfig",
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
.field public static final Companion:Landroidx/graphics/opengl/egl/EGLSpec$Companion;

.field public static final V14:Landroidx/graphics/opengl/egl/EGLSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/graphics/opengl/egl/EGLSpec$Companion;->$$INSTANCE:Landroidx/graphics/opengl/egl/EGLSpec$Companion;

    sput-object v0, Landroidx/graphics/opengl/egl/EGLSpec;->Companion:Landroidx/graphics/opengl/egl/EGLSpec$Companion;

    .line 367
    new-instance v0, Landroidx/graphics/opengl/egl/EGLSpec$Companion$V14$1;

    invoke-direct {v0}, Landroidx/graphics/opengl/egl/EGLSpec$Companion$V14$1;-><init>()V

    check-cast v0, Landroidx/graphics/opengl/egl/EGLSpec;

    sput-object v0, Landroidx/graphics/opengl/egl/EGLSpec;->V14:Landroidx/graphics/opengl/egl/EGLSpec;

    return-void
.end method

.method public static synthetic access$getErrorMessage$jd(Landroidx/graphics/opengl/egl/EGLSpec;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-super {p0}, Landroidx/graphics/opengl/egl/EGLSpec;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStatusString(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/graphics/opengl/egl/EGLSpec;->Companion:Landroidx/graphics/opengl/egl/EGLSpec$Companion;

    invoke-virtual {v0, p0}, Landroidx/graphics/opengl/egl/EGLSpec$Companion;->getStatusString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract eglClientWaitSyncKHR(Landroidx/opengl/EGLSyncKHR;IJ)I
.end method

.method public abstract eglCreateContext(Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;
.end method

.method public abstract eglCreateImageFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroidx/opengl/EGLImageKHR;
.end method

.method public abstract eglCreatePBufferSurface(Landroid/opengl/EGLConfig;Landroidx/graphics/opengl/egl/EGLConfigAttributes;)Landroid/opengl/EGLSurface;
.end method

.method public abstract eglCreateSyncKHR(ILandroidx/graphics/opengl/egl/EGLConfigAttributes;)Landroidx/opengl/EGLSyncKHR;
.end method

.method public abstract eglCreateWindowSurface(Landroid/opengl/EGLConfig;Landroid/view/Surface;Landroidx/graphics/opengl/egl/EGLConfigAttributes;)Landroid/opengl/EGLSurface;
.end method

.method public abstract eglDestroyContext(Landroid/opengl/EGLContext;)V
.end method

.method public abstract eglDestroyImageKHR(Landroidx/opengl/EGLImageKHR;)Z
.end method

.method public abstract eglDestroySurface(Landroid/opengl/EGLSurface;)Z
.end method

.method public abstract eglDestroySyncKHR(Landroidx/opengl/EGLSyncKHR;)Z
.end method

.method public abstract eglGetCurrentDrawSurface()Landroid/opengl/EGLSurface;
.end method

.method public abstract eglGetCurrentReadSurface()Landroid/opengl/EGLSurface;
.end method

.method public abstract eglGetError()I
.end method

.method public abstract eglGetSyncAttribKHR(Landroidx/opengl/EGLSyncKHR;I[II)Z
    .param p2    # I
        .annotation runtime Landroidx/opengl/EGLExt$Companion$EGLSyncAttribute;
        .end annotation
    .end param
.end method

.method public abstract eglInitialize()Landroidx/graphics/opengl/egl/EGLVersion;
.end method

.method public abstract eglMakeCurrent(Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;)Z
.end method

.method public abstract eglQueryString(I)Ljava/lang/String;
.end method

.method public abstract eglQuerySurface(Landroid/opengl/EGLSurface;I[II)Z
.end method

.method public abstract eglSwapBuffers(Landroid/opengl/EGLSurface;)Z
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 2

    .line 209
    sget-object v0, Landroidx/graphics/opengl/egl/EGLSpec;->Companion:Landroidx/graphics/opengl/egl/EGLSpec$Companion;

    invoke-interface {p0}, Landroidx/graphics/opengl/egl/EGLSpec;->eglGetError()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/graphics/opengl/egl/EGLSpec$Companion;->getStatusString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract loadConfig(Landroidx/graphics/opengl/egl/EGLConfigAttributes;)Landroid/opengl/EGLConfig;
.end method
