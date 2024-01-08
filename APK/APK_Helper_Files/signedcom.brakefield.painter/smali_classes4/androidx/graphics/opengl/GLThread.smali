.class public final Landroidx/graphics/opengl/GLThread;
.super Landroid/os/HandlerThread;
.source "GLThread.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/opengl/GLThread$Companion;,
        Landroidx/graphics/opengl/GLThread$SurfaceSession;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGLThread.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GLThread.kt\nandroidx/graphics/opengl/GLThread\n*L\n1#1,406:1\n350#1,6:407\n350#1,6:413\n350#1,6:419\n350#1,6:425\n350#1,6:431\n350#1,6:437\n350#1,6:443\n350#1,6:449\n350#1,6:455\n*S KotlinDebug\n*F\n+ 1 GLThread.kt\nandroidx/graphics/opengl/GLThread\n*L\n77#1:407,6\n91#1:413,6\n102#1:419,6\n116#1:425,6\n130#1:431,6\n138#1:437,6\n155#1:443,6\n171#1:449,6\n191#1:455,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0008\u0000\u0018\u0000 D2\u00020\u0001:\u0002DEB6\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0002\u0008\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000fH\u0007J \u0010\u001e\u001a\u00020\u001c2\u0016\u0010\u001d\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u001fj\u0008\u0012\u0004\u0012\u00020\u000f` H\u0007J2\u0010!\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u00182\u0008\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010%\u001a\u00020\u00182\u0006\u0010&\u001a\u00020\u00182\u0006\u0010\'\u001a\u00020(H\u0007J\u0010\u0010)\u001a\u00020\u001c2\u0006\u0010*\u001a\u00020\u0019H\u0003J,\u0010+\u001a\u0004\u0018\u00010,2\u0008\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010%\u001a\u00020\u00182\u0006\u0010&\u001a\u00020\u00182\u0006\u0010-\u001a\u00020(H\u0003J\"\u0010.\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u00182\u0006\u0010/\u001a\u0002002\u0008\u00101\u001a\u0004\u0018\u000102H\u0007J\u001a\u00103\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u00182\u0008\u00101\u001a\u0004\u0018\u000102H\u0003J\u0010\u00104\u001a\u00020\u001c2\u0006\u00105\u001a\u00020\u0019H\u0003J\u0010\u00106\u001a\u00020\u001c2\u0006\u00107\u001a\u000202H\u0007J\u0008\u00108\u001a\u00020\tH\u0007J\u0012\u00109\u001a\u0004\u0018\u00010,2\u0006\u00105\u001a\u00020\u0019H\u0003J\u0012\u0010:\u001a\u00020\u001c2\u0008\u00101\u001a\u0004\u0018\u000102H\u0003J\u0010\u0010;\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000fH\u0007J\u001c\u0010<\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u00182\n\u0008\u0002\u00101\u001a\u0004\u0018\u000102H\u0007J\u0010\u0010=\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u0018H\u0003J,\u0010>\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\u00182\u0006\u0010&\u001a\u00020\u00182\n\u0008\u0002\u00101\u001a\u0004\u0018\u000102H\u0007J \u0010?\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\u00182\u0006\u0010&\u001a\u00020\u0018H\u0003J\u0008\u0010@\u001a\u00020\u001cH\u0016J\u001a\u0010A\u001a\u00020\u001c2\u0006\u0010/\u001a\u0002002\u0008\u00101\u001a\u0004\u0018\u000102H\u0007J\"\u0010B\u001a\u00020\u001c2\u0017\u0010C\u001a\u0013\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u001c0\u0008\u00a2\u0006\u0002\u0008\u000bH\u0082\u0008R\u001f\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0002\u0008\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\u0008\u0012\u0004\u0012\u00020\u000f`\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0016\u001a\u001e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00190\u0017j\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u0019`\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006F"
    }
    d2 = {
        "Landroidx/graphics/opengl/GLThread;",
        "Landroid/os/HandlerThread;",
        "name",
        "",
        "mEglSpecFactory",
        "Lkotlin/Function0;",
        "Landroidx/graphics/opengl/egl/EGLSpec;",
        "mEglConfigFactory",
        "Lkotlin/Function1;",
        "Landroidx/graphics/opengl/egl/EGLManager;",
        "Landroid/opengl/EGLConfig;",
        "Lkotlin/ExtensionFunctionType;",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V",
        "mEglContextCallback",
        "Ljava/util/HashSet;",
        "Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;",
        "Lkotlin/collections/HashSet;",
        "mEglManager",
        "mHandler",
        "Landroid/os/Handler;",
        "mIsTearingDown",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "mSurfaceSessions",
        "Ljava/util/HashMap;",
        "",
        "Landroidx/graphics/opengl/GLThread$SurfaceSession;",
        "Lkotlin/collections/HashMap;",
        "addEGLCallback",
        "",
        "callbacks",
        "addEGLCallbacks",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "attachSurface",
        "token",
        "surface",
        "Landroid/view/Surface;",
        "width",
        "height",
        "renderer",
        "Landroidx/graphics/opengl/GLRenderer$RenderCallback;",
        "attachSurfaceSessionInternal",
        "surfaceSession",
        "createEGLSurfaceForSession",
        "Landroid/opengl/EGLSurface;",
        "surfaceRenderer",
        "detachSurface",
        "cancelPending",
        "",
        "callback",
        "Ljava/lang/Runnable;",
        "detachSurfaceSessionInternal",
        "disposeSurfaceSession",
        "session",
        "execute",
        "runnable",
        "obtainEGLManager",
        "obtainEGLSurfaceForSession",
        "releaseResourcesInternalAndQuit",
        "removeEGLCallback",
        "requestRender",
        "requestRenderInternal",
        "resizeSurface",
        "resizeSurfaceSessionInternal",
        "start",
        "tearDown",
        "withHandler",
        "block",
        "Companion",
        "SurfaceSession",
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
.field public static final Companion:Landroidx/graphics/opengl/GLThread$Companion;

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "GLThread"


# instance fields
.field private final mEglConfigFactory:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/graphics/opengl/egl/EGLManager;",
            "Landroid/opengl/EGLConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mEglContextCallback:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mEglManager:Landroidx/graphics/opengl/egl/EGLManager;

.field private final mEglSpecFactory:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/graphics/opengl/egl/EGLSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mIsTearingDown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSurfaceSessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/graphics/opengl/GLThread$SurfaceSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9R8BY98vcFBV2DElLK8k_jg3C08(Landroidx/graphics/opengl/GLThread;ILjava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/graphics/opengl/GLThread;->detachSurface$lambda$15$lambda$14(Landroidx/graphics/opengl/GLThread;ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Iee4Ij3QkoN6RjFy0_vPE7h8ink(Landroidx/graphics/opengl/GLThread;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/graphics/opengl/GLThread;->addEGLCallbacks$lambda$7$lambda$6(Landroidx/graphics/opengl/GLThread;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MJ_0TY3n4B1-KmD_24Z4ledpyZo(Landroidx/graphics/opengl/GLThread;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/graphics/opengl/GLThread;->tearDown$lambda$17$lambda$16(Landroidx/graphics/opengl/GLThread;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P3fiSXUfx-5QM_9KkYnFL_vCxPw(Landroidx/graphics/opengl/GLThread;ILjava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/graphics/opengl/GLThread;->requestRender$lambda$19$lambda$18(Landroidx/graphics/opengl/GLThread;ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T8dSkUEORjHKAxCNL_q1jFuTYmI(Landroidx/graphics/opengl/GLThread;ILandroid/view/Surface;Landroidx/graphics/opengl/GLRenderer$RenderCallback;II)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/graphics/opengl/GLThread;->attachSurface$lambda$2$lambda$1(Landroidx/graphics/opengl/GLThread;ILandroid/view/Surface;Landroidx/graphics/opengl/GLRenderer$RenderCallback;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$XfZyifskck97pgixFfhQPD77mhw(Landroidx/graphics/opengl/GLThread;Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/graphics/opengl/GLThread;->addEGLCallback$lambda$10$lambda$9(Landroidx/graphics/opengl/GLThread;Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aeVmAB6ZCnBkIFV1VGcE2PhoK_g(Landroidx/graphics/opengl/GLThread;Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/graphics/opengl/GLThread;->removeEGLCallback$lambda$12$lambda$11(Landroidx/graphics/opengl/GLThread;Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pn6MXlgFgj_dNK_yVVdifweRpLg(Landroidx/graphics/opengl/GLThread;IIILjava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/graphics/opengl/GLThread;->resizeSurface$lambda$4$lambda$3(Landroidx/graphics/opengl/GLThread;IIILjava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/opengl/GLThread$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/opengl/GLThread$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/opengl/GLThread;->Companion:Landroidx/graphics/opengl/GLThread$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/graphics/opengl/egl/EGLSpec;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/graphics/opengl/egl/EGLManager;",
            "+",
            "Landroid/opengl/EGLConfig;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    sget-object v0, Lcom/google/android/exoplayer2/metadata/icy/OZ/XlYsLoHtRjl;->yFnXoCTzRQ:Ljava/lang/String;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mEglConfigFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 41
    iput-object p2, p0, Landroidx/graphics/opengl/GLThread;->mEglSpecFactory:Lkotlin/jvm/functions/Function0;

    .line 42
    iput-object p3, p0, Landroidx/graphics/opengl/GLThread;->mEglConfigFactory:Lkotlin/jvm/functions/Function1;

    .line 46
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/graphics/opengl/GLThread;->mIsTearingDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/graphics/opengl/GLThread;->mSurfaceSessions:Ljava/util/HashMap;

    .line 50
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/graphics/opengl/GLThread;->mEglContextCallback:Ljava/util/HashSet;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const-string p1, "GLThread"

    .line 39
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/graphics/opengl/GLThread;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final addEGLCallback$lambda$10$lambda$9(Landroidx/graphics/opengl/GLThread;Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Landroidx/graphics/opengl/GLThread;->mEglContextCallback:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object p0, p0, Landroidx/graphics/opengl/GLThread;->mEglManager:Landroidx/graphics/opengl/egl/EGLManager;

    if-eqz p0, :cond_0

    .line 122
    invoke-interface {p1, p0}, Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;->onEGLContextCreated(Landroidx/graphics/opengl/egl/EGLManager;)V

    :cond_0
    return-void
.end method

.method private static final addEGLCallbacks$lambda$7$lambda$6(Landroidx/graphics/opengl/GLThread;Ljava/util/ArrayList;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Landroidx/graphics/opengl/GLThread;->mEglContextCallback:Ljava/util/HashSet;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 105
    iget-object p0, p0, Landroidx/graphics/opengl/GLThread;->mEglManager:Landroidx/graphics/opengl/egl/EGLManager;

    if-eqz p0, :cond_0

    .line 106
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;

    .line 107
    invoke-interface {v0, p0}, Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;->onEGLContextCreated(Landroidx/graphics/opengl/egl/EGLManager;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final attachSurface$lambda$2$lambda$1(Landroidx/graphics/opengl/GLThread;ILandroid/view/Surface;Landroidx/graphics/opengl/GLRenderer$RenderCallback;II)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$renderer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v0, Landroidx/graphics/opengl/GLThread$SurfaceSession;

    invoke-direct {v0, p1, p2, p3}, Landroidx/graphics/opengl/GLThread$SurfaceSession;-><init>(ILandroid/view/Surface;Landroidx/graphics/opengl/GLRenderer$RenderCallback;)V

    .line 81
    invoke-virtual {v0, p4}, Landroidx/graphics/opengl/GLThread$SurfaceSession;->setWidth(I)V

    .line 82
    invoke-virtual {v0, p5}, Landroidx/graphics/opengl/GLThread$SurfaceSession;->setHeight(I)V

    .line 79
    invoke-direct {p0, v0}, Landroidx/graphics/opengl/GLThread;->attachSurfaceSessionInternal(Landroidx/graphics/opengl/GLThread$SurfaceSession;)V

    return-void
.end method

.method private final attachSurfaceSessionInternal(Landroidx/graphics/opengl/GLThread$SurfaceSession;)V
    .locals 2

    .line 315
    iget-object v0, p0, Landroidx/graphics/opengl/GLThread;->mSurfaceSessions:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/graphics/opengl/GLThread$SurfaceSession;->getSurfaceToken()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final createEGLSurfaceForSession(Landroid/view/Surface;IILandroidx/graphics/opengl/GLRenderer$RenderCallback;)Landroid/opengl/EGLSurface;
    .locals 7

    .line 256
    invoke-virtual {p0}, Landroidx/graphics/opengl/GLThread;->obtainEGLManager()Landroidx/graphics/opengl/egl/EGLManager;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 259
    invoke-virtual {v0}, Landroidx/graphics/opengl/egl/EGLManager;->getEGLSpec()Landroidx/graphics/opengl/egl/EGLSpec;

    move-result-object v2

    .line 261
    invoke-virtual {v0}, Landroidx/graphics/opengl/egl/EGLManager;->getEGLConfig()Landroid/opengl/EGLConfig;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, p4

    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 258
    invoke-interface/range {v1 .. v6}, Landroidx/graphics/opengl/GLRenderer$RenderCallback;->onSurfaceCreated(Landroidx/graphics/opengl/egl/EGLSpec;Landroid/opengl/EGLConfig;Landroid/view/Surface;II)Landroid/opengl/EGLSurface;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private static final detachSurface$lambda$15$lambda$14(Landroidx/graphics/opengl/GLThread;ILjava/lang/Runnable;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-direct {p0, p1, p2}, Landroidx/graphics/opengl/GLThread;->detachSurfaceSessionInternal(ILjava/lang/Runnable;)V

    return-void
.end method

.method private final detachSurfaceSessionInternal(ILjava/lang/Runnable;)V
    .locals 1

    .line 336
    iget-object v0, p0, Landroidx/graphics/opengl/GLThread;->mSurfaceSessions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/graphics/opengl/GLThread$SurfaceSession;

    if-eqz p1, :cond_0

    .line 338
    invoke-direct {p0, p1}, Landroidx/graphics/opengl/GLThread;->disposeSurfaceSession(Landroidx/graphics/opengl/GLThread$SurfaceSession;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 340
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private final disposeSurfaceSession(Landroidx/graphics/opengl/GLThread$SurfaceSession;)V
    .locals 2

    .line 218
    invoke-virtual {p1}, Landroidx/graphics/opengl/GLThread$SurfaceSession;->getEglSurface()Landroid/opengl/EGLSurface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    invoke-virtual {p0}, Landroidx/graphics/opengl/GLThread;->obtainEGLManager()Landroidx/graphics/opengl/egl/EGLManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/graphics/opengl/egl/EGLManager;->getEGLSpec()Landroidx/graphics/opengl/egl/EGLSpec;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/graphics/opengl/egl/EGLSpec;->eglDestroySurface(Landroid/opengl/EGLSurface;)Z

    const/4 v0, 0x0

    .line 221
    invoke-virtual {p1, v0}, Landroidx/graphics/opengl/GLThread$SurfaceSession;->setEglSurface(Landroid/opengl/EGLSurface;)V

    :cond_0
    return-void
.end method

.method private final obtainEGLSurfaceForSession(Landroidx/graphics/opengl/GLThread$SurfaceSession;)Landroid/opengl/EGLSurface;
    .locals 4

    .line 231
    invoke-virtual {p1}, Landroidx/graphics/opengl/GLThread$SurfaceSession;->getEglSurface()Landroid/opengl/EGLSurface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p1}, Landroidx/graphics/opengl/GLThread$SurfaceSession;->getEglSurface()Landroid/opengl/EGLSurface;

    move-result-object p1

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p1}, Landroidx/graphics/opengl/GLThread$SurfaceSession;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 236
    invoke-virtual {p1}, Landroidx/graphics/opengl/GLThread$SurfaceSession;->getWidth()I

    move-result v1

    .line 237
    invoke-virtual {p1}, Landroidx/graphics/opengl/GLThread$SurfaceSession;->getHeight()I

    move-result v2

    .line 238
    invoke-virtual {p1}, Landroidx/graphics/opengl/GLThread$SurfaceSession;->getSurfaceRenderer()Landroidx/graphics/opengl/GLRenderer$RenderCallback;

    move-result-object v3

    .line 234
    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/graphics/opengl/GLThread;->createEGLSurfaceForSession(Landroid/view/Surface;IILandroidx/graphics/opengl/GLRenderer$RenderCallback;)Landroid/opengl/EGLSurface;

    move-result-object v0

    .line 240
    invoke-virtual {p1, v0}, Landroidx/graphics/opengl/GLThread$SurfaceSession;->setEglSurface(Landroid/opengl/EGLSurface;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private final releaseResourcesInternalAndQuit(Ljava/lang/Runnable;)V
    .locals 3

    .line 274
    invoke-virtual {p0}, Landroidx/graphics/opengl/GLThread;->obtainEGLManager()Landroidx/graphics/opengl/egl/EGLManager;

    move-result-object v0

    .line 275
    iget-object v1, p0, Landroidx/graphics/opengl/GLThread;->mSurfaceSessions:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 276
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/graphics/opengl/GLThread$SurfaceSession;

    invoke-direct {p0, v2}, Landroidx/graphics/opengl/GLThread;->disposeSurfaceSession(Landroidx/graphics/opengl/GLThread$SurfaceSession;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 278
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 279
    :cond_1
    iget-object p1, p0, Landroidx/graphics/opengl/GLThread;->mSurfaceSessions:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 280
    iget-object p1, p0, Landroidx/graphics/opengl/GLThread;->mEglContextCallback:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;

    .line 281
    invoke-interface {v1, v0}, Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;->onEGLContextDestroyed(Landroidx/graphics/opengl/egl/EGLManager;)V

    goto :goto_1

    .line 283
    :cond_2
    iget-object p1, p0, Landroidx/graphics/opengl/GLThread;->mEglContextCallback:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 284
    invoke-virtual {v0}, Landroidx/graphics/opengl/egl/EGLManager;->release()V

    const/4 p1, 0x0

    .line 285
    iput-object p1, p0, Landroidx/graphics/opengl/GLThread;->mEglManager:Landroidx/graphics/opengl/egl/EGLManager;

    .line 286
    invoke-virtual {p0}, Landroidx/graphics/opengl/GLThread;->quit()Z

    return-void
.end method

.method private static final removeEGLCallback$lambda$12$lambda$11(Landroidx/graphics/opengl/GLThread;Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object p0, p0, Landroidx/graphics/opengl/GLThread;->mEglContextCallback:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic requestRender$default(Landroidx/graphics/opengl/GLThread;ILjava/lang/Runnable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 189
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/graphics/opengl/GLThread;->requestRender(ILjava/lang/Runnable;)V

    return-void
.end method

.method private static final requestRender$lambda$19$lambda$18(Landroidx/graphics/opengl/GLThread;ILjava/lang/Runnable;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0, p1}, Landroidx/graphics/opengl/GLThread;->requestRenderInternal(I)V

    if-eqz p2, :cond_0

    .line 194
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private final requestRenderInternal(I)V
    .locals 5

    .line 291
    sget-object v0, Landroidx/graphics/opengl/GLThread;->Companion:Landroidx/graphics/opengl/GLThread$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requesting render for token: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/graphics/opengl/GLThread$Companion;->log$graphics_core_release(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Landroidx/graphics/opengl/GLThread;->mSurfaceSessions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/graphics/opengl/GLThread$SurfaceSession;

    if-eqz p1, :cond_2

    .line 293
    invoke-virtual {p0}, Landroidx/graphics/opengl/GLThread;->obtainEGLManager()Landroidx/graphics/opengl/egl/EGLManager;

    move-result-object v0

    .line 294
    invoke-direct {p0, p1}, Landroidx/graphics/opengl/GLThread;->obtainEGLSurfaceForSession(Landroidx/graphics/opengl/GLThread$SurfaceSession;)Landroid/opengl/EGLSurface;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 296
    invoke-static {v0, v1, v3, v2, v3}, Landroidx/graphics/opengl/egl/EGLManager;->makeCurrent$default(Landroidx/graphics/opengl/egl/EGLManager;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;ILjava/lang/Object;)Z

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {v0}, Landroidx/graphics/opengl/egl/EGLManager;->getDefaultSurface()Landroid/opengl/EGLSurface;

    move-result-object v4

    invoke-static {v0, v4, v3, v2, v3}, Landroidx/graphics/opengl/egl/EGLManager;->makeCurrent$default(Landroidx/graphics/opengl/egl/EGLManager;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;ILjava/lang/Object;)Z

    .line 301
    :goto_0
    invoke-virtual {p1}, Landroidx/graphics/opengl/GLThread$SurfaceSession;->getWidth()I

    move-result v2

    .line 302
    invoke-virtual {p1}, Landroidx/graphics/opengl/GLThread$SurfaceSession;->getHeight()I

    move-result v3

    if-lez v2, :cond_1

    if-lez v3, :cond_1

    .line 304
    invoke-virtual {p1}, Landroidx/graphics/opengl/GLThread$SurfaceSession;->getSurfaceRenderer()Landroidx/graphics/opengl/GLRenderer$RenderCallback;

    move-result-object p1

    invoke-interface {p1, v0}, Landroidx/graphics/opengl/GLRenderer$RenderCallback;->onDrawFrame(Landroidx/graphics/opengl/egl/EGLManager;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 308
    invoke-virtual {v0}, Landroidx/graphics/opengl/egl/EGLManager;->swapAndFlushBuffers()V

    :cond_2
    return-void
.end method

.method public static synthetic resizeSurface$default(Landroidx/graphics/opengl/GLThread;IIILjava/lang/Runnable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 90
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/graphics/opengl/GLThread;->resizeSurface(IIILjava/lang/Runnable;)V

    return-void
.end method

.method private static final resizeSurface$lambda$4$lambda$3(Landroidx/graphics/opengl/GLThread;IIILjava/lang/Runnable;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroidx/graphics/opengl/GLThread;->resizeSurfaceSessionInternal(III)V

    .line 94
    invoke-direct {p0, p1}, Landroidx/graphics/opengl/GLThread;->requestRenderInternal(I)V

    if-eqz p4, :cond_0

    .line 95
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private final resizeSurfaceSessionInternal(III)V
    .locals 1

    .line 324
    iget-object v0, p0, Landroidx/graphics/opengl/GLThread;->mSurfaceSessions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/graphics/opengl/GLThread$SurfaceSession;

    if-eqz p1, :cond_0

    .line 326
    invoke-virtual {p1, p2}, Landroidx/graphics/opengl/GLThread$SurfaceSession;->setWidth(I)V

    .line 327
    invoke-virtual {p1, p3}, Landroidx/graphics/opengl/GLThread$SurfaceSession;->setHeight(I)V

    .line 329
    invoke-direct {p0, p1}, Landroidx/graphics/opengl/GLThread;->disposeSurfaceSession(Landroidx/graphics/opengl/GLThread$SurfaceSession;)V

    .line 330
    invoke-direct {p0, p1}, Landroidx/graphics/opengl/GLThread;->obtainEGLSurfaceForSession(Landroidx/graphics/opengl/GLThread$SurfaceSession;)Landroid/opengl/EGLSurface;

    :cond_0
    return-void
.end method

.method private static final tearDown$lambda$17$lambda$16(Landroidx/graphics/opengl/GLThread;Ljava/lang/Runnable;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0, p1}, Landroidx/graphics/opengl/GLThread;->releaseResourcesInternalAndQuit(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final withHandler(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/os/Handler;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Landroidx/graphics/opengl/GLThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 352
    iget-object v1, p0, Landroidx/graphics/opengl/GLThread;->mIsTearingDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .line 351
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Did you forget to call GLThread.start()?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final addEGLCallback(Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;)V
    .locals 2

    const-string v0, "callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Landroidx/graphics/opengl/GLThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 427
    iget-object v1, p0, Landroidx/graphics/opengl/GLThread;->mIsTearingDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    new-instance v1, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda0;-><init>(Landroidx/graphics/opengl/GLThread;Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    .line 426
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Did you forget to call GLThread.start()?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addEGLCallbacks(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Landroidx/graphics/opengl/GLThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 421
    iget-object v1, p0, Landroidx/graphics/opengl/GLThread;->mIsTearingDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda7;-><init>(Landroidx/graphics/opengl/GLThread;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    .line 420
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Did you forget to call GLThread.start()?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final attachSurface(ILandroid/view/Surface;IILandroidx/graphics/opengl/GLRenderer$RenderCallback;)V
    .locals 10

    const-string v0, "renderer"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Landroidx/graphics/opengl/GLThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 409
    iget-object v1, p0, Landroidx/graphics/opengl/GLThread;->mIsTearingDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda1;

    move-object v2, v9

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p5

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda1;-><init>(Landroidx/graphics/opengl/GLThread;ILandroid/view/Surface;Landroidx/graphics/opengl/GLRenderer$RenderCallback;II)V

    invoke-static {v0, v1, v9}, Landroidx/graphics/utils/HandlerUtilsKt;->post(Landroid/os/Handler;Ljava/lang/Object;Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .line 408
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Did you forget to call GLThread.start()?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final detachSurface(IZLjava/lang/Runnable;)V
    .locals 3

    .line 154
    sget-object v0, Landroidx/graphics/opengl/GLThread;->Companion:Landroidx/graphics/opengl/GLThread$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dispatching request to detach surface w/ token: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/graphics/opengl/GLThread$Companion;->log$graphics_core_release(Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Landroidx/graphics/opengl/GLThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 445
    iget-object v1, p0, Landroidx/graphics/opengl/GLThread;->mIsTearingDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    .line 157
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 159
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v1, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p3}, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda3;-><init>(Landroidx/graphics/opengl/GLThread;ILjava/lang/Runnable;)V

    invoke-static {v0, p2, v1}, Landroidx/graphics/utils/HandlerUtilsKt;->post(Landroid/os/Handler;Ljava/lang/Object;Ljava/lang/Runnable;)V

    :cond_1
    return-void

    .line 444
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Did you forget to call GLThread.start()?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Landroidx/graphics/opengl/GLThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 439
    iget-object v1, p0, Landroidx/graphics/opengl/GLThread;->mIsTearingDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    .line 438
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Did you forget to call GLThread.start()?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final obtainEGLManager()Landroidx/graphics/opengl/egl/EGLManager;
    .locals 3

    .line 206
    iget-object v0, p0, Landroidx/graphics/opengl/GLThread;->mEglManager:Landroidx/graphics/opengl/egl/EGLManager;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/graphics/opengl/egl/EGLManager;

    iget-object v1, p0, Landroidx/graphics/opengl/GLThread;->mEglSpecFactory:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/graphics/opengl/egl/EGLSpec;

    invoke-direct {v0, v1}, Landroidx/graphics/opengl/egl/EGLManager;-><init>(Landroidx/graphics/opengl/egl/EGLSpec;)V

    .line 207
    invoke-virtual {v0}, Landroidx/graphics/opengl/egl/EGLManager;->initialize()V

    .line 208
    iget-object v1, p0, Landroidx/graphics/opengl/GLThread;->mEglConfigFactory:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/opengl/EGLConfig;

    .line 209
    invoke-virtual {v0, v1}, Landroidx/graphics/opengl/egl/EGLManager;->createContext(Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;

    .line 210
    iget-object v1, p0, Landroidx/graphics/opengl/GLThread;->mEglContextCallback:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;

    .line 211
    invoke-interface {v2, v0}, Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;->onEGLContextCreated(Landroidx/graphics/opengl/egl/EGLManager;)V

    goto :goto_0

    .line 213
    :cond_0
    iput-object v0, p0, Landroidx/graphics/opengl/GLThread;->mEglManager:Landroidx/graphics/opengl/egl/EGLManager;

    :cond_1
    return-object v0
.end method

.method public final removeEGLCallback(Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;)V
    .locals 2

    const-string v0, "callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Landroidx/graphics/opengl/GLThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 433
    iget-object v1, p0, Landroidx/graphics/opengl/GLThread;->mIsTearingDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda4;-><init>(Landroidx/graphics/opengl/GLThread;Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    .line 432
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Did you forget to call GLThread.start()?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final requestRender(ILjava/lang/Runnable;)V
    .locals 3

    .line 190
    sget-object v0, Landroidx/graphics/opengl/GLThread;->Companion:Landroidx/graphics/opengl/GLThread$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dispatching request to render for token: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/graphics/opengl/GLThread$Companion;->log$graphics_core_release(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Landroidx/graphics/opengl/GLThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 457
    iget-object v1, p0, Landroidx/graphics/opengl/GLThread;->mIsTearingDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, p2}, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda2;-><init>(Landroidx/graphics/opengl/GLThread;ILjava/lang/Runnable;)V

    invoke-static {v0, v1, v2}, Landroidx/graphics/utils/HandlerUtilsKt;->post(Landroid/os/Handler;Ljava/lang/Object;Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .line 456
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Did you forget to call GLThread.start()?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final resizeSurface(IIILjava/lang/Runnable;)V
    .locals 9

    .line 413
    iget-object v0, p0, Landroidx/graphics/opengl/GLThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 415
    iget-object v1, p0, Landroidx/graphics/opengl/GLThread;->mIsTearingDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v8, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda5;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda5;-><init>(Landroidx/graphics/opengl/GLThread;IIILjava/lang/Runnable;)V

    invoke-static {v0, v1, v8}, Landroidx/graphics/utils/HandlerUtilsKt;->post(Landroid/os/Handler;Ljava/lang/Object;Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .line 414
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Did you forget to call GLThread.start()?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public start()V
    .locals 2

    .line 53
    invoke-super {p0}, Landroid/os/HandlerThread;->start()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroidx/graphics/opengl/GLThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/graphics/opengl/GLThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public final tearDown(ZLjava/lang/Runnable;)V
    .locals 2

    .line 449
    iget-object v0, p0, Landroidx/graphics/opengl/GLThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 451
    iget-object v1, p0, Landroidx/graphics/opengl/GLThread;->mIsTearingDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 173
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 175
    :cond_0
    new-instance p1, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, p2}, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda6;-><init>(Landroidx/graphics/opengl/GLThread;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    iget-object p1, p0, Landroidx/graphics/opengl/GLThread;->mIsTearingDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void

    .line 450
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Did you forget to call GLThread.start()?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
