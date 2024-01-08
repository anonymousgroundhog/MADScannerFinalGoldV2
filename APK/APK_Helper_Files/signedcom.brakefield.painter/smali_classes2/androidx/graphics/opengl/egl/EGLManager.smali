.class public final Landroidx/graphics/opengl/egl/EGLManager;
.super Ljava/lang/Object;
.source "EGLManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/opengl/egl/EGLManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEGLManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EGLManager.kt\nandroidx/graphics/opengl/egl/EGLManager\n+ 2 EGLConfigAttributes.kt\nandroidx/graphics/opengl/egl/EGLConfigAttributesKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,251:1\n47#2:252\n1#3:253\n1#3:254\n*S KotlinDebug\n*F\n+ 1 EGLManager.kt\nandroidx/graphics/opengl/egl/EGLManager\n*L\n84#1:252\n84#1:253\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 82\u00020\u0001:\u00018B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010(\u001a\u00020\u00122\u0006\u0010)\u001a\u00020\u000eJ\u0006\u0010*\u001a\u00020+J\u000e\u0010,\u001a\u00020#2\u0006\u0010-\u001a\u00020\u001fJ\u0010\u0010.\u001a\u0004\u0018\u00010\u000e2\u0006\u0010/\u001a\u000200J\u001a\u00101\u001a\u00020#2\u0006\u00102\u001a\u00020\u00062\u0008\u0008\u0002\u00103\u001a\u00020\u0006H\u0007J\u0010\u00104\u001a\u00020+2\u0006\u00105\u001a\u00020\u0006H\u0002J\u0006\u00106\u001a\u00020+J\u0006\u00107\u001a\u00020+R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0008R\u0011\u0010\u000b\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u0008R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e8G\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u00128G\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u00038G\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u00188G\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020#X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00069"
    }
    d2 = {
        "Landroidx/graphics/opengl/egl/EGLManager;",
        "",
        "eglSpec",
        "Landroidx/graphics/opengl/egl/EGLSpec;",
        "(Landroidx/graphics/opengl/egl/EGLSpec;)V",
        "currentDrawSurface",
        "Landroid/opengl/EGLSurface;",
        "getCurrentDrawSurface",
        "()Landroid/opengl/EGLSurface;",
        "currentReadSurface",
        "getCurrentReadSurface",
        "defaultSurface",
        "getDefaultSurface",
        "eglConfig",
        "Landroid/opengl/EGLConfig;",
        "getEGLConfig",
        "()Landroid/opengl/EGLConfig;",
        "eglContext",
        "Landroid/opengl/EGLContext;",
        "getEGLContext",
        "()Landroid/opengl/EGLContext;",
        "getEGLSpec",
        "()Landroidx/graphics/opengl/egl/EGLSpec;",
        "eglVersion",
        "Landroidx/graphics/opengl/egl/EGLVersion;",
        "getEGLVersion",
        "()Landroidx/graphics/opengl/egl/EGLVersion;",
        "mEglConfig",
        "mEglContext",
        "mEglExtensions",
        "",
        "",
        "mEglSpec",
        "mEglVersion",
        "mIsSingleBuffered",
        "",
        "mPBufferSurface",
        "mQueryResult",
        "",
        "mWideColorGamutSupport",
        "createContext",
        "config",
        "initialize",
        "",
        "isExtensionSupported",
        "extensionName",
        "loadConfig",
        "configAttributes",
        "Landroidx/graphics/opengl/egl/EGLConfigAttributes;",
        "makeCurrent",
        "drawSurface",
        "readSurface",
        "querySurface",
        "surface",
        "release",
        "swapAndFlushBuffers",
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
.field public static final Companion:Landroidx/graphics/opengl/egl/EGLManager$Companion;

.field private static final TAG:Ljava/lang/String; = "EglManager"


# instance fields
.field private mEglConfig:Landroid/opengl/EGLConfig;

.field private mEglContext:Landroid/opengl/EGLContext;

.field private mEglExtensions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEglSpec:Landroidx/graphics/opengl/egl/EGLSpec;

.field private mEglVersion:Landroidx/graphics/opengl/egl/EGLVersion;

.field private mIsSingleBuffered:Z

.field private mPBufferSurface:Landroid/opengl/EGLSurface;

.field private mQueryResult:[I

.field private mWideColorGamutSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/opengl/egl/EGLManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/opengl/egl/EGLManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/opengl/egl/EGLManager;->Companion:Landroidx/graphics/opengl/egl/EGLManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/graphics/opengl/egl/EGLManager;-><init>(Landroidx/graphics/opengl/egl/EGLSpec;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/graphics/opengl/egl/EGLSpec;)V
    .locals 2

    const-string v0, "eglSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    const-string v1, "EGL_NO_SURFACE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/graphics/opengl/egl/EGLManager;->mPBufferSurface:Landroid/opengl/EGLSurface;

    .line 41
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const-string v1, "EGL_NO_CONTEXT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/graphics/opengl/egl/EGLManager;->mEglContext:Landroid/opengl/EGLContext;

    .line 43
    sget-object v0, Landroidx/graphics/opengl/egl/EGLVersion;->Unknown:Landroidx/graphics/opengl/egl/EGLVersion;

    iput-object v0, p0, Landroidx/graphics/opengl/egl/EGLManager;->mEglVersion:Landroidx/graphics/opengl/egl/EGLVersion;

    .line 44
    iput-object p1, p0, Landroidx/graphics/opengl/egl/EGLManager;->mEglSpec:Landroidx/graphics/opengl/egl/EGLSpec;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/graphics/opengl/egl/EGLSpec;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 33
    sget-object p1, Landroidx/graphics/opengl/egl/EGLSpec;->V14:Landroidx/graphics/opengl/egl/EGLSpec;

    :cond_0
    invoke-direct {p0, p1}, Landroidx/graphics/opengl/egl/EGLManager;-><init>(Landroidx/graphics/opengl/egl/EGLSpec;)V

    return-void
.end method

.method public static synthetic makeCurrent$default(Landroidx/graphics/opengl/egl/EGLManager;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    move-object p2, p1

    .line 195
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/graphics/opengl/egl/EGLManager;->makeCurrent(Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;)Z

    move-result p0

    return p0
.end method

.method private final querySurface(Landroid/opengl/EGLSurface;)V
    .locals 5

    .line 237
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 238
    iput-boolean v1, p0, Landroidx/graphics/opengl/egl/EGLManager;->mIsSingleBuffered:Z

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Landroidx/graphics/opengl/egl/EGLManager;->mQueryResult:[I

    const/4 v2, 0x1

    if-nez v0, :cond_1

    new-array v0, v2, [I

    iput-object v0, p0, Landroidx/graphics/opengl/egl/EGLManager;->mQueryResult:[I

    .line 241
    :cond_1
    invoke-virtual {p0}, Landroidx/graphics/opengl/egl/EGLManager;->getEGLSpec()Landroidx/graphics/opengl/egl/EGLSpec;

    move-result-object v3

    const/16 v4, 0x3086

    invoke-interface {v3, p1, v4, v0, v1}, Landroidx/graphics/opengl/egl/EGLSpec;->eglQuerySurface(Landroid/opengl/EGLSurface;I[II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 242
    aget p1, v0, v1

    const/16 v0, 0x3085

    if-ne p1, v0, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Landroidx/graphics/opengl/egl/EGLManager;->mIsSingleBuffered:Z

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final createContext(Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;
    .locals 4

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Landroidx/graphics/opengl/egl/EGLManager;->getEGLSpec()Landroidx/graphics/opengl/egl/EGLSpec;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/graphics/opengl/egl/EGLSpec;->eglCreateContext(Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;

    move-result-object v0

    .line 79
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v1, :cond_2

    const-string v1, "EGL_KHR_surfaceless_context"

    .line 81
    invoke-virtual {p0, v1}, Landroidx/graphics/opengl/egl/EGLManager;->isExtensionSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    const-string/jumbo v2, "{\n                    EG\u2026SURFACE\n                }"

    .line 81
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_0
    new-instance v1, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;

    invoke-direct {v1}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;-><init>()V

    const/16 v2, 0x3057

    const/4 v3, 0x1

    .line 85
    invoke-virtual {v1, v2, v3}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    const/16 v2, 0x3056

    .line 86
    invoke-virtual {v1, v2, v3}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    .line 252
    invoke-virtual {v1}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->build()Landroidx/graphics/opengl/egl/EGLConfigAttributes;

    move-result-object v1

    .line 88
    invoke-virtual {p0}, Landroidx/graphics/opengl/egl/EGLManager;->getEGLSpec()Landroidx/graphics/opengl/egl/EGLSpec;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Landroidx/graphics/opengl/egl/EGLSpec;->eglCreatePBufferSurface(Landroid/opengl/EGLConfig;Landroidx/graphics/opengl/egl/EGLConfigAttributes;)Landroid/opengl/EGLSurface;

    move-result-object v1

    .line 90
    :goto_0
    invoke-virtual {p0}, Landroidx/graphics/opengl/egl/EGLManager;->getEGLSpec()Landroidx/graphics/opengl/egl/EGLSpec;

    move-result-object v2

    invoke-interface {v2, v0, v1, v1}, Landroidx/graphics/opengl/egl/EGLSpec;->eglMakeCurrent(Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    iput-object v1, p0, Landroidx/graphics/opengl/egl/EGLManager;->mPBufferSurface:Landroid/opengl/EGLSurface;

    .line 94
    iput-object v0, p0, Landroidx/graphics/opengl/egl/EGLManager;->mEglContext:Landroid/opengl/EGLContext;

    .line 95
    iput-object p1, p0, Landroidx/graphics/opengl/egl/EGLManager;->mEglConfig:Landroid/opengl/EGLConfig;

    goto :goto_1

    .line 91
    :cond_1
    new-instance p1, Landroidx/graphics/opengl/egl/EGLException;

    invoke-virtual {p0}, Landroidx/graphics/opengl/egl/EGLManager;->getEGLSpec()Landroidx/graphics/opengl/egl/EGLSpec;

    move-result-object v0

    invoke-interface {v0}, Landroidx/graphics/opengl/egl/EGLSpec;->eglGetError()I

    move-result v0

    const/4 v1, 0x0

    sget-object v1, Lorg/ejml/sparse/csc/decomposition/qr/pB/syaLyE;->aATuhw:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Landroidx/graphics/opengl/egl/EGLException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 97
    :cond_2
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    const-string v1, "EGL_NO_SURFACE"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/graphics/opengl/egl/EGLManager;->mPBufferSurface:Landroid/opengl/EGLSurface;

    .line 98
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const-string v1, "EGL_NO_CONTEXT"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/graphics/opengl/egl/EGLManager;->mEglContext:Landroid/opengl/EGLContext;

    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Landroidx/graphics/opengl/egl/EGLManager;->mEglConfig:Landroid/opengl/EGLConfig;

    :goto_1
    return-object v0
.end method

.method public final getCurrentDrawSurface()Landroid/opengl/EGLSurface;
    .locals 1

    .line 225
    invoke-virtual {p0}, Landroidx/graphics/opengl/egl/EGLManager;->getEGLSpec()Landroidx/graphics/opengl/egl/EGLSpec;

    move-result-object v0

    invoke-interface {v0}, Landroidx/graphics/opengl/egl/EGLSpec;->eglGetCurrentDrawSurface()Landroid/opengl/EGLSurface;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentReadSurface()Landroid/opengl/EGLSurface;
    .locals 1

    .line 231
    invoke-virtual {p0}, Landroidx/graphics/opengl/egl/EGLManager;->getEGLSpec()Landroidx/graphics/opengl/egl/EGLSpec;

    move-result-object v0

    invoke-interface {v0}, Landroidx/graphics/opengl/egl/EGLSpec;->eglGetCurrentReadSurface()Landroid/opengl/EGLSurface;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultSurface()Landroid/opengl/EGLSurface;
    .locals 1

    .line 219
    iget-object v0, p0, Landroidx/graphics/opengl/egl/EGLManager;->mPBufferSurface:Landroid/opengl/EGLSurface;

    return-object v0
.end method

.method public final getEGLConfig()Landroid/opengl/EGLConfig;
    .locals 1

    .line 161
    iget-object v0, p0, Landroidx/graphics/opengl/egl/EGLManager;->mEglConfig:Landroid/opengl/EGLConfig;

    return-object v0
.end method

.method public final getEGLContext()Landroid/opengl/EGLContext;
    .locals 1

    .line 152
    iget-object v0, p0, Landroidx/graphics/opengl/egl/EGLManager;->mEglContext:Landroid/opengl/EGLContext;

    return-object v0
.end method

.method public final getEGLSpec()Landroidx/graphics/opengl/egl/EGLSpec;
    .locals 1

    .line 135
    iget-object v0, p0, Landroidx/graphics/opengl/egl/EGLManager;->mEglSpec:Landroidx/graphics/opengl/egl/EGLSpec;

    return-object v0
.end method

.method public final getEGLVersion()Landroidx/graphics/opengl/egl/EGLVersion;
    .locals 1

    .line 144
    iget-object v0, p0, Landroidx/graphics/opengl/egl/EGLManager;->mEglVersion:Landroidx/graphics/opengl/egl/EGLVersion;

    return-object v0
.end method

.method public final initialize()V
    .locals 3

    .line 54
    iget-object v0, p0, Landroidx/graphics/opengl/egl/EGLManager;->mEglContext:Landroid/opengl/EGLContext;

    .line 55
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Landroidx/graphics/opengl/egl/EGLManager;->getEGLSpec()Landroidx/graphics/opengl/egl/EGLSpec;

    move-result-object v0

    invoke-interface {v0}, Landroidx/graphics/opengl/egl/EGLSpec;->eglInitialize()Landroidx/graphics/opengl/egl/EGLVersion;

    move-result-object v0

    iput-object v0, p0, Landroidx/graphics/opengl/egl/EGLManager;->mEglVersion:Landroidx/graphics/opengl/egl/EGLVersion;

    .line 58
    sget-object v0, Landroidx/opengl/EGLExt;->Companion:Landroidx/opengl/EGLExt$Companion;

    invoke-virtual {p0}, Landroidx/graphics/opengl/egl/EGLManager;->getEGLSpec()Landroidx/graphics/opengl/egl/EGLSpec;

    move-result-object v1

    const/16 v2, 0x3055

    invoke-interface {v1, v2}, Landroidx/graphics/opengl/egl/EGLSpec;->eglQueryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/opengl/EGLExt$Companion;->parseExtensions(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 57
    iput-object v0, p0, Landroidx/graphics/opengl/egl/EGLManager;->mEglExtensions:Ljava/util/Set;

    :cond_0
    return-void
.end method

.method public final isExtensionSupported(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "extensionName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Landroidx/graphics/opengl/egl/EGLManager;->mEglExtensions:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final loadConfig(Landroidx/graphics/opengl/egl/EGLConfigAttributes;)Landroid/opengl/EGLConfig;
    .locals 1

    const-string v0, "configAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroidx/graphics/opengl/egl/EGLManager;->getEGLSpec()Landroidx/graphics/opengl/egl/EGLSpec;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/graphics/opengl/egl/EGLSpec;->loadConfig(Landroidx/graphics/opengl/egl/EGLConfigAttributes;)Landroid/opengl/EGLConfig;

    move-result-object p1

    return-object p1
.end method

.method public final makeCurrent(Landroid/opengl/EGLSurface;)Z
    .locals 2

    const-string v0, "drawSurface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Landroidx/graphics/opengl/egl/EGLManager;->makeCurrent$default(Landroidx/graphics/opengl/egl/EGLManager;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final makeCurrent(Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;)Z
    .locals 2

    const-string v0, "drawSurface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "readSurface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Landroidx/graphics/opengl/egl/EGLManager;->getEGLSpec()Landroidx/graphics/opengl/egl/EGLSpec;

    move-result-object v0

    iget-object v1, p0, Landroidx/graphics/opengl/egl/EGLManager;->mEglContext:Landroid/opengl/EGLContext;

    invoke-interface {v0, v1, p1, p2}, Landroidx/graphics/opengl/egl/EGLSpec;->eglMakeCurrent(Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 198
    invoke-direct {p0, p1}, Landroidx/graphics/opengl/egl/EGLManager;->querySurface(Landroid/opengl/EGLSurface;)V

    :cond_0
    return p2
.end method

.method public final release()V
    .locals 6

    .line 110
    iget-object v0, p0, Landroidx/graphics/opengl/egl/EGLManager;->mEglContext:Landroid/opengl/EGLContext;

    .line 111
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    invoke-virtual {p0}, Landroidx/graphics/opengl/egl/EGLManager;->getEGLSpec()Landroidx/graphics/opengl/egl/EGLSpec;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/graphics/opengl/egl/EGLSpec;->eglDestroyContext(Landroid/opengl/EGLContext;)V

    .line 113
    iget-object v0, p0, Landroidx/graphics/opengl/egl/EGLManager;->mPBufferSurface:Landroid/opengl/EGLSurface;

    .line 114
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    invoke-virtual {p0}, Landroidx/graphics/opengl/egl/EGLManager;->getEGLSpec()Landroidx/graphics/opengl/egl/EGLSpec;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/graphics/opengl/egl/EGLSpec;->eglDestroySurface(Landroid/opengl/EGLSurface;)Z

    .line 118
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    const-string v1, "EGL_NO_SURFACE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/graphics/opengl/egl/EGLManager;->mPBufferSurface:Landroid/opengl/EGLSurface;

    .line 119
    invoke-virtual {p0}, Landroidx/graphics/opengl/egl/EGLManager;->getEGLSpec()Landroidx/graphics/opengl/egl/EGLSpec;

    move-result-object v0

    .line 120
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const-string v3, "EGL_NO_CONTEXT"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-interface {v0, v2, v4, v5}, Landroidx/graphics/opengl/egl/EGLSpec;->eglMakeCurrent(Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;)Z

    .line 124
    sget-object v0, Landroidx/graphics/opengl/egl/EGLVersion;->Unknown:Landroidx/graphics/opengl/egl/EGLVersion;

    iput-object v0, p0, Landroidx/graphics/opengl/egl/EGLManager;->mEglVersion:Landroidx/graphics/opengl/egl/EGLVersion;

    .line 125
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/graphics/opengl/egl/EGLManager;->mEglContext:Landroid/opengl/EGLContext;

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Landroidx/graphics/opengl/egl/EGLManager;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 127
    iput-object v0, p0, Landroidx/graphics/opengl/egl/EGLManager;->mEglExtensions:Ljava/util/Set;

    :cond_1
    return-void
.end method

.method public final swapAndFlushBuffers()V
    .locals 2

    .line 208
    iget-boolean v0, p0, Landroidx/graphics/opengl/egl/EGLManager;->mIsSingleBuffered:Z

    if-eqz v0, :cond_0

    .line 209
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 211
    :cond_0
    invoke-virtual {p0}, Landroidx/graphics/opengl/egl/EGLManager;->getEGLSpec()Landroidx/graphics/opengl/egl/EGLSpec;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/graphics/opengl/egl/EGLManager;->getCurrentDrawSurface()Landroid/opengl/EGLSurface;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/graphics/opengl/egl/EGLSpec;->eglSwapBuffers(Landroid/opengl/EGLSurface;)Z

    return-void
.end method
