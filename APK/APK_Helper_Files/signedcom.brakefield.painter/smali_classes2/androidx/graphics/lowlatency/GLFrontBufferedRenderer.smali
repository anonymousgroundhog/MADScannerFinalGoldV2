.class public final Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;
.super Ljava/lang/Object;
.source "GLFrontBufferedRenderer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$Callback;,
        Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGLFrontBufferedRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GLFrontBufferedRenderer.kt\nandroidx/graphics/lowlatency/GLFrontBufferedRenderer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,863:1\n1#2:864\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u001f\n\u0002\u0008\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u001e\n\u0002\u0008\u0007*\u0004\u0014\u001b*3\u0008\u0007\u0018\u0000 Q*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0002PQB3\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0006\u00108\u001a\u000209J\u0006\u0010:\u001a\u000209J\u0008\u0010;\u001a\u000209H\u0002J\u0006\u0010<\u001a\u000209J\'\u0010=\u001a\u0002092\u0006\u0010>\u001a\u00020&2\u0010\u0008\u0002\u0010?\u001a\n\u0012\u0004\u0012\u000209\u0018\u00010@H\u0000\u00a2\u0006\u0002\u0008AJ\u000e\u0010B\u001a\u0002092\u0006\u0010C\u001a\u00020\u0011J\u0006\u0010D\u001a\u00020&J\"\u0010E\u001a\u0002092\u0006\u0010>\u001a\u00020&2\u0010\u0008\u0002\u0010?\u001a\n\u0012\u0004\u0012\u000209\u0018\u00010@H\u0007J\u0013\u0010F\u001a\u0002092\u0006\u0010G\u001a\u00028\u0000\u00a2\u0006\u0002\u0010HJ\u0014\u0010I\u001a\u0002092\u000c\u0010J\u001a\u0008\u0012\u0004\u0012\u00028\u00000KJ%\u0010L\u001a\u0002092\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010M\u001a\u00020\n2\u0006\u0010N\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008OR\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0015R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001bX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001cR\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010)\u001a\u0008\u0012\u0004\u0012\u00028\u00000*X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010+R\u0010\u0010,\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010.\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u0000000/X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u00102\u001a\u0008\u0012\u0004\u0012\u00028\u000003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u00104R\u0010\u00105\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00106\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006R"
    }
    d2 = {
        "Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;",
        "T",
        "",
        "surfaceView",
        "Landroid/view/SurfaceView;",
        "callback",
        "Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$Callback;",
        "glRenderer",
        "Landroidx/graphics/opengl/GLRenderer;",
        "bufferFormat",
        "",
        "(Landroid/view/SurfaceView;Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$Callback;Landroidx/graphics/opengl/GLRenderer;I)V",
        "getBufferFormat",
        "()I",
        "mActiveSegment",
        "Landroidx/graphics/lowlatency/ParamQueue;",
        "mCancelRunnable",
        "Ljava/lang/Runnable;",
        "mClearFrontBufferRunnable",
        "mContextCallbacks",
        "androidx/graphics/lowlatency/GLFrontBufferedRenderer$mContextCallbacks$1",
        "Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mContextCallbacks$1;",
        "mFrontBufferReleaseFence",
        "Landroidx/hardware/SyncFenceCompat;",
        "mFrontBufferSyncStrategy",
        "Landroidx/graphics/lowlatency/FrontBufferSyncStrategy;",
        "mFrontBufferedCallbacks",
        "androidx/graphics/lowlatency/GLFrontBufferedRenderer$mFrontBufferedCallbacks$1",
        "Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mFrontBufferedCallbacks$1;",
        "mFrontBufferedLayerSurfaceControl",
        "Landroidx/graphics/surface/SurfaceControlCompat;",
        "mFrontBufferedRenderer",
        "Landroidx/graphics/opengl/GLFrameBufferRenderer;",
        "mFrontLayerBuffer",
        "Landroidx/graphics/opengl/FrameBuffer;",
        "mGLRenderer",
        "mHeight",
        "mIsManagingGLRenderer",
        "",
        "mIsReleased",
        "mMultiBufferedLayerSurfaceControl",
        "mMultiBufferedRenderCallbacks",
        "androidx/graphics/lowlatency/GLFrontBufferedRenderer$mMultiBufferedRenderCallbacks$1",
        "Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mMultiBufferedRenderCallbacks$1;",
        "mMultiBufferedRenderer",
        "mPendingClear",
        "mSegments",
        "Ljava/util/concurrent/ConcurrentLinkedQueue;",
        "",
        "mSetPendingClearRunnable",
        "mSurfaceCallbacks",
        "androidx/graphics/lowlatency/GLFrontBufferedRenderer$mSurfaceCallbacks$1",
        "Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mSurfaceCallbacks$1;",
        "mSurfaceView",
        "mTransform",
        "mWidth",
        "cancel",
        "",
        "clear",
        "clearParamQueues",
        "commit",
        "detachTargets",
        "cancelPending",
        "onReleaseComplete",
        "Lkotlin/Function0;",
        "detachTargets$graphics_core_release",
        "execute",
        "runnable",
        "isValid",
        "release",
        "renderFrontBufferedLayer",
        "param",
        "(Ljava/lang/Object;)V",
        "renderMultiBufferedLayer",
        "params",
        "",
        "update",
        "width",
        "height",
        "update$graphics_core_release",
        "Callback",
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
.field public static final Companion:Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$Companion;

.field public static final TAG:Ljava/lang/String; = "GLFrontBufferedRenderer"


# instance fields
.field private final bufferFormat:I

.field private final mActiveSegment:Landroidx/graphics/lowlatency/ParamQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/graphics/lowlatency/ParamQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mCancelRunnable:Ljava/lang/Runnable;

.field private final mClearFrontBufferRunnable:Ljava/lang/Runnable;

.field private final mContextCallbacks:Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mContextCallbacks$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mContextCallbacks$1<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile mFrontBufferReleaseFence:Landroidx/hardware/SyncFenceCompat;

.field private final mFrontBufferSyncStrategy:Landroidx/graphics/lowlatency/FrontBufferSyncStrategy;

.field private final mFrontBufferedCallbacks:Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mFrontBufferedCallbacks$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mFrontBufferedCallbacks$1<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mFrontBufferedLayerSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

.field private mFrontBufferedRenderer:Landroidx/graphics/opengl/GLFrameBufferRenderer;

.field private mFrontLayerBuffer:Landroidx/graphics/opengl/FrameBuffer;

.field private final mGLRenderer:Landroidx/graphics/opengl/GLRenderer;

.field private mHeight:I

.field private final mIsManagingGLRenderer:Z

.field private mIsReleased:Z

.field private mMultiBufferedLayerSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

.field private final mMultiBufferedRenderCallbacks:Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mMultiBufferedRenderCallbacks$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mMultiBufferedRenderCallbacks$1<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mMultiBufferedRenderer:Landroidx/graphics/opengl/GLFrameBufferRenderer;

.field private mPendingClear:Z

.field private final mSegments:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/util/Collection<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final mSetPendingClearRunnable:Ljava/lang/Runnable;

.field private final mSurfaceCallbacks:Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mSurfaceCallbacks$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mSurfaceCallbacks$1<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTransform:I

.field private mWidth:I


# direct methods
.method public static synthetic $r8$lambda$G2bgmGGdC-ZM1Y1WARXtxCuaJbU(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;)V
    .locals 0

    invoke-static {p0}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mCancelRunnable$lambda$5(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_1m_IWISdhbUIN-_DVaWUpHqNkw(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;)V
    .locals 0

    invoke-static {p0}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mClearFrontBufferRunnable$lambda$2(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dNQ-VPFnxSCgJGM3r8Vxb32sKoM(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->detachTargets$lambda$10(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f4-FPW4psdr2cqbxOw1e9NtxYO4(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;)V
    .locals 0

    invoke-static {p0}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mSetPendingClearRunnable$lambda$3(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->Companion:Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceView;",
            "Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$Callback<",
            "TT;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "surfaceView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;-><init>(Landroid/view/SurfaceView;Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$Callback;Landroidx/graphics/opengl/GLRenderer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$Callback;Landroidx/graphics/opengl/GLRenderer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceView;",
            "Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$Callback<",
            "TT;>;",
            "Landroidx/graphics/opengl/GLRenderer;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "surfaceView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;-><init>(Landroid/view/SurfaceView;Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$Callback;Landroidx/graphics/opengl/GLRenderer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$Callback;Landroidx/graphics/opengl/GLRenderer;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceView;",
            "Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$Callback<",
            "TT;>;",
            "Landroidx/graphics/opengl/GLRenderer;",
            "I)V"
        }
    .end annotation

    const-string/jumbo v0, "surfaceView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p4, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->bufferFormat:I

    .line 89
    new-instance p4, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mFrontBufferedCallbacks$1;

    invoke-direct {p4, p0, p2}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mFrontBufferedCallbacks$1;-><init>(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$Callback;)V

    iput-object p4, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mFrontBufferedCallbacks:Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mFrontBufferedCallbacks$1;

    .line 138
    new-instance p4, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$$ExternalSyntheticLambda0;-><init>(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;)V

    iput-object p4, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mClearFrontBufferRunnable:Ljava/lang/Runnable;

    .line 161
    new-instance p4, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mContextCallbacks$1;

    invoke-direct {p4}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mContextCallbacks$1;-><init>()V

    iput-object p4, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mContextCallbacks:Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mContextCallbacks$1;

    .line 176
    new-instance v0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mMultiBufferedRenderCallbacks$1;

    invoke-direct {v0, p2, p0}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mMultiBufferedRenderCallbacks$1;-><init>(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$Callback;Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;)V

    iput-object v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mMultiBufferedRenderCallbacks:Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mMultiBufferedRenderCallbacks$1;

    .line 213
    new-instance p2, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mSurfaceCallbacks$1;

    invoke-direct {p2, p0}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mSurfaceCallbacks$1;-><init>(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;)V

    iput-object p2, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mSurfaceCallbacks:Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mSurfaceCallbacks$1;

    .line 270
    iput-object p1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 275
    new-instance v0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$$ExternalSyntheticLambda1;-><init>(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;)V

    iput-object v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mSetPendingClearRunnable:Ljava/lang/Runnable;

    .line 283
    new-instance v0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$$ExternalSyntheticLambda2;-><init>(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;)V

    iput-object v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mCancelRunnable:Ljava/lang/Runnable;

    .line 297
    new-instance v0, Landroidx/graphics/lowlatency/ParamQueue;

    invoke-direct {v0}, Landroidx/graphics/lowlatency/ParamQueue;-><init>()V

    iput-object v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mActiveSegment:Landroidx/graphics/lowlatency/ParamQueue;

    .line 306
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mSegments:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v0, -0x1

    .line 337
    iput v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mWidth:I

    .line 343
    iput v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mHeight:I

    .line 348
    iput v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mTransform:I

    if-nez p3, :cond_0

    const/4 p3, 0x1

    .line 385
    iput-boolean p3, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mIsManagingGLRenderer:Z

    .line 386
    new-instance v0, Landroidx/graphics/opengl/GLRenderer;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Landroidx/graphics/opengl/GLRenderer;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, v2, p3, v2}, Landroidx/graphics/opengl/GLRenderer;->start$default(Landroidx/graphics/opengl/GLRenderer;Ljava/lang/String;ILjava/lang/Object;)V

    move-object p3, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 389
    iput-boolean v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mIsManagingGLRenderer:Z

    .line 390
    invoke-virtual {p3}, Landroidx/graphics/opengl/GLRenderer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    :goto_0
    check-cast p4, Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;

    invoke-virtual {p3, p4}, Landroidx/graphics/opengl/GLRenderer;->registerEGLContextCallback(Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;)V

    .line 399
    iput-object p3, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mGLRenderer:Landroidx/graphics/opengl/GLRenderer;

    .line 401
    new-instance p3, Landroidx/graphics/lowlatency/FrontBufferSyncStrategy;

    sget-object p4, Landroidx/graphics/lowlatency/FrontBufferUtils;->Companion:Landroidx/graphics/lowlatency/FrontBufferUtils$Companion;

    invoke-virtual {p4}, Landroidx/graphics/lowlatency/FrontBufferUtils$Companion;->obtainHardwareBufferUsageFlags$graphics_core_release()J

    move-result-wide v0

    invoke-direct {p3, v0, v1}, Landroidx/graphics/lowlatency/FrontBufferSyncStrategy;-><init>(J)V

    iput-object p3, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mFrontBufferSyncStrategy:Landroidx/graphics/lowlatency/FrontBufferSyncStrategy;

    .line 403
    iput-object p1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 404
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 405
    check-cast p2, Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p3, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 406
    invoke-interface {p3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 407
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHeight()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->update$graphics_core_release(Landroid/view/SurfaceView;II)V

    :cond_1
    return-void

    .line 391
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The provided GLRenderer must be running prior to creation of GLFrontBufferedRenderer, did you forget to call GLRenderer#start()?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/view/SurfaceView;Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$Callback;Landroidx/graphics/opengl/GLRenderer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x1

    .line 81
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;-><init>(Landroid/view/SurfaceView;Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$Callback;Landroidx/graphics/opengl/GLRenderer;I)V

    return-void
.end method

.method public static final synthetic access$getMActiveSegment$p(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;)Landroidx/graphics/lowlatency/ParamQueue;
    .locals 0

    .line 79
    iget-object p0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mActiveSegment:Landroidx/graphics/lowlatency/ParamQueue;

    return-object p0
.end method

.method public static final synthetic access$getMClearFrontBufferRunnable$p(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;)Ljava/lang/Runnable;
    .locals 0

    .line 79
    iget-object p0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mClearFrontBufferRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getMFrontBufferReleaseFence$p(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;)Landroidx/hardware/SyncFenceCompat;
    .locals 0

    .line 79
    iget-object p0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mFrontBufferReleaseFence:Landroidx/hardware/SyncFenceCompat;

    return-object p0
.end method

.method public static final synthetic access$getMFrontBufferSyncStrategy$p(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;)Landroidx/graphics/lowlatency/FrontBufferSyncStrategy;
    .locals 0

    .line 79
    iget-object p0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mFrontBufferSyncStrategy:Landroidx/graphics/lowlatency/FrontBufferSyncStrategy;

    return-object p0
.end method

.method public static final synthetic access$getMFrontBufferedLayerSurfaceControl$p(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;)Landroidx/graphics/surface/SurfaceControlCompat;
    .locals 0

    .line 79
    iget-object p0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mFrontBufferedLayerSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    return-object p0
.end method

.method public static final synthetic access$getMGLRenderer$p(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;)Landroidx/graphics/opengl/GLRenderer;
    .locals 0

    .line 79
    iget-object p0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mGLRenderer:Landroidx/graphics/opengl/GLRenderer;

    return-object p0
.end method

.method public static final synthetic access$getMMultiBufferedRenderer$p(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;)Landroidx/graphics/opengl/GLFrameBufferRenderer;
    .locals 0

    .line 79
    iget-object p0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mMultiBufferedRenderer:Landroidx/graphics/opengl/GLFrameBufferRenderer;

    return-object p0
.end method

.method public static final synthetic access$getMPendingClear$p(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mPendingClear:Z

    return p0
.end method

.method public static final synthetic access$getMSegments$p(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 79
    iget-object p0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mSegments:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method public static final synthetic access$getMSurfaceView$p(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;)Landroid/view/SurfaceView;
    .locals 0

    .line 79
    iget-object p0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method public static final synthetic access$setMFrontBufferReleaseFence$p(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;Landroidx/hardware/SyncFenceCompat;)V
    .locals 0

    .line 79
    iput-object p1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mFrontBufferReleaseFence:Landroidx/hardware/SyncFenceCompat;

    return-void
.end method

.method public static final synthetic access$setMFrontLayerBuffer$p(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;Landroidx/graphics/opengl/FrameBuffer;)V
    .locals 0

    .line 79
    iput-object p1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mFrontLayerBuffer:Landroidx/graphics/opengl/FrameBuffer;

    return-void
.end method

.method public static final synthetic access$setMPendingClear$p(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mPendingClear:Z

    return-void
.end method

.method private final clearParamQueues()V
    .locals 1

    .line 670
    iget-object v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mActiveSegment:Landroidx/graphics/lowlatency/ParamQueue;

    invoke-virtual {v0}, Landroidx/graphics/lowlatency/ParamQueue;->clear()V

    .line 671
    iget-object v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mSegments:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method public static synthetic detachTargets$graphics_core_release$default(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 600
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->detachTargets$graphics_core_release(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final detachTargets$lambda$10(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat;Lkotlin/jvm/functions/Function0;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    invoke-direct {p0}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->clearParamQueues()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 607
    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlCompat;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroidx/graphics/surface/SurfaceControlCompat;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    new-instance v1, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;

    invoke-direct {v1}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;-><init>()V

    .line 609
    invoke-virtual {v1, p1, v0}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->reparent(Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat;)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;

    move-result-object v1

    .line 610
    invoke-virtual {v1, p2, v0}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->reparent(Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat;)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;

    move-result-object v1

    .line 611
    invoke-virtual {v1}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->commit()V

    .line 612
    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlCompat;->release()V

    .line 613
    invoke-virtual {p2}, Landroidx/graphics/surface/SurfaceControlCompat;->release()V

    .line 615
    :cond_0
    iget-object p1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mFrontBufferReleaseFence:Landroidx/hardware/SyncFenceCompat;

    if-eqz p1, :cond_1

    .line 616
    invoke-virtual {p1}, Landroidx/hardware/SyncFenceCompat;->awaitForever()Z

    .line 617
    invoke-virtual {p1}, Landroidx/hardware/SyncFenceCompat;->close()V

    .line 618
    iput-object v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mFrontBufferReleaseFence:Landroidx/hardware/SyncFenceCompat;

    .line 620
    :cond_1
    iget-object p0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mFrontLayerBuffer:Landroidx/graphics/opengl/FrameBuffer;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/graphics/opengl/FrameBuffer;->close()V

    :cond_2
    if-eqz p3, :cond_3

    .line 621
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private static final mCancelRunnable$lambda$5(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 284
    iput-boolean v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mPendingClear:Z

    .line 285
    iget-object v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mFrontBufferSyncStrategy:Landroidx/graphics/lowlatency/FrontBufferSyncStrategy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/graphics/lowlatency/FrontBufferSyncStrategy;->setVisible(Z)V

    .line 286
    iget-object p0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mFrontBufferedLayerSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    if-eqz p0, :cond_0

    .line 287
    new-instance v0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;

    invoke-direct {v0}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;-><init>()V

    .line 288
    invoke-virtual {v0, p0, v1}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->setVisibility(Landroidx/graphics/surface/SurfaceControlCompat;Z)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;

    move-result-object p0

    .line 289
    invoke-virtual {p0}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->commit()V

    :cond_0
    return-void
.end method

.method private static final mClearFrontBufferRunnable$lambda$2(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mFrontLayerBuffer:Landroidx/graphics/opengl/FrameBuffer;

    if-eqz v0, :cond_1

    .line 140
    iget-boolean v1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mPendingClear:Z

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mFrontBufferReleaseFence:Landroidx/hardware/SyncFenceCompat;

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {v1}, Landroidx/hardware/SyncFenceCompat;->awaitForever()Z

    .line 143
    invoke-virtual {v1}, Landroidx/hardware/SyncFenceCompat;->close()V

    const/4 v1, 0x0

    .line 144
    iput-object v1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mFrontBufferReleaseFence:Landroidx/hardware/SyncFenceCompat;

    .line 146
    :cond_0
    invoke-virtual {v0}, Landroidx/graphics/opengl/FrameBuffer;->makeCurrent()V

    const/4 v0, 0x0

    .line 147
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 148
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mPendingClear:Z

    :cond_1
    return-void
.end method

.method private static final mSetPendingClearRunnable$lambda$3(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 276
    iput-boolean v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mPendingClear:Z

    return-void
.end method

.method public static synthetic release$default(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 645
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->release(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 572
    invoke-virtual {p0}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mActiveSegment:Landroidx/graphics/lowlatency/ParamQueue;

    invoke-virtual {v0}, Landroidx/graphics/lowlatency/ParamQueue;->clear()V

    .line 574
    iget-object v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mGLRenderer:Landroidx/graphics/opengl/GLRenderer;

    iget-object v1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/graphics/opengl/GLRenderer;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v0, "GLFrontBufferedRenderer"

    const-string v1, "Attempt to cancel rendering to front buffer after GLFrontBufferedRenderer has been released"

    .line 576
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final clear()V
    .locals 2

    .line 537
    invoke-direct {p0}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->clearParamQueues()V

    .line 538
    iget-object v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mGLRenderer:Landroidx/graphics/opengl/GLRenderer;

    iget-object v1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mSetPendingClearRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/graphics/opengl/GLRenderer;->execute(Ljava/lang/Runnable;)V

    .line 539
    iget-object v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mMultiBufferedRenderer:Landroidx/graphics/opengl/GLFrameBufferRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/graphics/opengl/GLFrameBufferRenderer;->render()V

    :cond_0
    return-void
.end method

.method public final commit()V
    .locals 2

    .line 552
    invoke-virtual {p0}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mSegments:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mActiveSegment:Landroidx/graphics/lowlatency/ParamQueue;

    invoke-virtual {v1}, Landroidx/graphics/lowlatency/ParamQueue;->release()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 554
    iget-object v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mGLRenderer:Landroidx/graphics/opengl/GLRenderer;

    iget-object v1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mSetPendingClearRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/graphics/opengl/GLRenderer;->execute(Ljava/lang/Runnable;)V

    .line 555
    iget-object v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mMultiBufferedRenderer:Landroidx/graphics/opengl/GLFrameBufferRenderer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/graphics/opengl/GLFrameBufferRenderer;->render()V

    goto :goto_0

    :cond_0
    const-string v0, "GLFrontBufferedRenderer"

    const-string v1, "Attempt to render to the multi buffered layer when GLFrontBufferedRenderer has been released"

    .line 557
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final detachTargets$graphics_core_release(ZLkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 601
    iget-object v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mMultiBufferedRenderer:Landroidx/graphics/opengl/GLFrameBufferRenderer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, p1, v2, v1, v2}, Landroidx/graphics/opengl/GLFrameBufferRenderer;->release$default(Landroidx/graphics/opengl/GLFrameBufferRenderer;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 602
    :cond_0
    iget-object v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mFrontBufferedRenderer:Landroidx/graphics/opengl/GLFrameBufferRenderer;

    if-eqz v0, :cond_1

    invoke-static {v0, p1, v2, v1, v2}, Landroidx/graphics/opengl/GLFrameBufferRenderer;->release$default(Landroidx/graphics/opengl/GLFrameBufferRenderer;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 603
    :cond_1
    iget-object p1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mFrontBufferedLayerSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    .line 604
    iget-object v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mMultiBufferedLayerSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    .line 605
    iget-object v1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mGLRenderer:Landroidx/graphics/opengl/GLRenderer;

    new-instance v3, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1, v0, p2}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$$ExternalSyntheticLambda3;-><init>(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v3}, Landroidx/graphics/opengl/GLRenderer;->execute(Ljava/lang/Runnable;)V

    .line 623
    iput-object v2, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mMultiBufferedRenderer:Landroidx/graphics/opengl/GLFrameBufferRenderer;

    .line 624
    iput-object v2, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mFrontBufferedRenderer:Landroidx/graphics/opengl/GLFrameBufferRenderer;

    .line 625
    iput-object v2, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mFrontBufferedLayerSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    .line 626
    iput-object v2, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mMultiBufferedLayerSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    const/4 p1, -0x1

    .line 627
    iput p1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mWidth:I

    .line 628
    iput p1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mHeight:I

    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    const-string/jumbo v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    invoke-virtual {p0}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mGLRenderer:Landroidx/graphics/opengl/GLRenderer;

    invoke-virtual {v0, p1}, Landroidx/graphics/opengl/GLRenderer;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p1, "GLFrontBufferedRenderer"

    const-string v0, "Attempt to execute runnable after GLFrontBufferedRenderer has been released"

    .line 591
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final getBufferFormat()I
    .locals 1

    .line 86
    iget v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->bufferFormat:I

    return v0
.end method

.method public final isValid()Z
    .locals 1

    .line 470
    iget-boolean v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mIsReleased:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final release(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->release$default(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final release(ZLkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 646
    invoke-virtual {p0}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "GLFrontBufferedRenderer"

    const-string p2, "Attempt to release GLFrontBufferedRenderer that is already released"

    .line 647
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 651
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->detachTargets$graphics_core_release(ZLkotlin/jvm/functions/Function0;)V

    .line 653
    iget-object p1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mGLRenderer:Landroidx/graphics/opengl/GLRenderer;

    iget-object p2, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mContextCallbacks:Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mContextCallbacks$1;

    check-cast p2, Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;

    invoke-virtual {p1, p2}, Landroidx/graphics/opengl/GLRenderer;->unregisterEGLContextCallback(Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;)V

    .line 654
    iget-boolean p1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mIsManagingGLRenderer:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 660
    iget-object p1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mGLRenderer:Landroidx/graphics/opengl/GLRenderer;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, v0, p2, v1, p2}, Landroidx/graphics/opengl/GLRenderer;->stop$default(Landroidx/graphics/opengl/GLRenderer;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 663
    :cond_1
    iget-object p1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mSurfaceCallbacks:Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mSurfaceCallbacks$1;

    check-cast v0, Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 664
    :cond_2
    iput-object p2, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 p1, 0x1

    .line 666
    iput-boolean p1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mIsReleased:Z

    return-void
.end method

.method public final renderFrontBufferedLayer(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 486
    invoke-virtual {p0}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mActiveSegment:Landroidx/graphics/lowlatency/ParamQueue;

    invoke-virtual {v0, p1}, Landroidx/graphics/lowlatency/ParamQueue;->add(Ljava/lang/Object;)V

    .line 488
    iget-object p1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mFrontBufferedRenderer:Landroidx/graphics/opengl/GLFrameBufferRenderer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/graphics/opengl/GLFrameBufferRenderer;->render()V

    goto :goto_0

    :cond_0
    const-string p1, "GLFrontBufferedRenderer"

    const-string v0, "Attempt to render to front buffered layer when GLFrontBufferedRenderer has been released"

    .line 490
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final renderMultiBufferedLayer(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->isMutableCollection(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 520
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    .line 522
    :goto_0
    iget-object v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mSegments:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 523
    iget-object p1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mMultiBufferedRenderer:Landroidx/graphics/opengl/GLFrameBufferRenderer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/graphics/opengl/GLFrameBufferRenderer;->render()V

    goto :goto_1

    :cond_1
    const-string p1, "GLFrontBufferedRenderer"

    const-string v0, "Attempt to render to the multi buffered layer when GLFrontBufferedRenderer has been released"

    .line 525
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public final update$graphics_core_release(Landroid/view/SurfaceView;II)V
    .locals 11

    const-string/jumbo v0, "surfaceView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    new-instance v0, Landroidx/graphics/lowlatency/BufferTransformHintResolver;

    invoke-direct {v0}, Landroidx/graphics/lowlatency/BufferTransformHintResolver;-><init>()V

    .line 414
    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/graphics/lowlatency/BufferTransformHintResolver;->getBufferTransformHint(Landroid/view/View;)I

    move-result v0

    .line 415
    iget v1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mTransform:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mWidth:I

    if-ne v1, p2, :cond_0

    iget v1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mHeight:I

    if-eq v1, p3, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 416
    invoke-static {p0, v8, v2, v1, v2}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->detachTargets$graphics_core_release$default(Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 418
    new-instance v1, Landroidx/graphics/surface/SurfaceControlCompat$Builder;

    invoke-direct {v1}, Landroidx/graphics/surface/SurfaceControlCompat$Builder;-><init>()V

    .line 419
    invoke-virtual {v1, p1}, Landroidx/graphics/surface/SurfaceControlCompat$Builder;->setParent(Landroid/view/SurfaceView;)Landroidx/graphics/surface/SurfaceControlCompat$Builder;

    move-result-object p1

    const-string v1, "MultiBufferedSurfaceControl"

    .line 420
    invoke-virtual {p1, v1}, Landroidx/graphics/surface/SurfaceControlCompat$Builder;->setName(Ljava/lang/String;)Landroidx/graphics/surface/SurfaceControlCompat$Builder;

    move-result-object p1

    .line 421
    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlCompat$Builder;->build()Landroidx/graphics/surface/SurfaceControlCompat;

    move-result-object p1

    .line 423
    new-instance v1, Landroidx/graphics/surface/SurfaceControlCompat$Builder;

    invoke-direct {v1}, Landroidx/graphics/surface/SurfaceControlCompat$Builder;-><init>()V

    .line 424
    invoke-virtual {v1, p1}, Landroidx/graphics/surface/SurfaceControlCompat$Builder;->setParent(Landroidx/graphics/surface/SurfaceControlCompat;)Landroidx/graphics/surface/SurfaceControlCompat$Builder;

    move-result-object v1

    const-string v2, "FrontBufferedSurfaceControl"

    .line 425
    invoke-virtual {v1, v2}, Landroidx/graphics/surface/SurfaceControlCompat$Builder;->setName(Ljava/lang/String;)Landroidx/graphics/surface/SurfaceControlCompat$Builder;

    move-result-object v1

    .line 426
    invoke-virtual {v1}, Landroidx/graphics/surface/SurfaceControlCompat$Builder;->build()Landroidx/graphics/surface/SurfaceControlCompat;

    move-result-object v1

    .line 428
    new-instance v9, Landroidx/graphics/opengl/GLFrameBufferRenderer$Builder;

    .line 433
    iget-object v2, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mMultiBufferedRenderCallbacks:Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mMultiBufferedRenderCallbacks$1;

    move-object v7, v2

    check-cast v7, Landroidx/graphics/opengl/GLFrameBufferRenderer$Callback;

    move-object v2, v9

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, v0

    .line 428
    invoke-direct/range {v2 .. v7}, Landroidx/graphics/opengl/GLFrameBufferRenderer$Builder;-><init>(Landroidx/graphics/surface/SurfaceControlCompat;IIILandroidx/graphics/opengl/GLFrameBufferRenderer$Callback;)V

    .line 434
    iget-object v2, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mGLRenderer:Landroidx/graphics/opengl/GLRenderer;

    invoke-virtual {v9, v2}, Landroidx/graphics/opengl/GLFrameBufferRenderer$Builder;->setGLRenderer(Landroidx/graphics/opengl/GLRenderer;)Landroidx/graphics/opengl/GLFrameBufferRenderer$Builder;

    move-result-object v2

    const-wide/16 v3, 0xb00

    .line 435
    invoke-virtual {v2, v3, v4}, Landroidx/graphics/opengl/GLFrameBufferRenderer$Builder;->setUsageFlags(J)Landroidx/graphics/opengl/GLFrameBufferRenderer$Builder;

    move-result-object v2

    .line 436
    iget v3, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->bufferFormat:I

    invoke-virtual {v2, v3}, Landroidx/graphics/opengl/GLFrameBufferRenderer$Builder;->setBufferFormat(I)Landroidx/graphics/opengl/GLFrameBufferRenderer$Builder;

    move-result-object v2

    .line 437
    invoke-virtual {v2}, Landroidx/graphics/opengl/GLFrameBufferRenderer$Builder;->build()Landroidx/graphics/opengl/GLFrameBufferRenderer;

    move-result-object v9

    .line 439
    new-instance v10, Landroidx/graphics/opengl/GLFrameBufferRenderer$Builder;

    .line 444
    iget-object v2, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mFrontBufferedCallbacks:Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$mFrontBufferedCallbacks$1;

    move-object v7, v2

    check-cast v7, Landroidx/graphics/opengl/GLFrameBufferRenderer$Callback;

    move-object v2, v10

    move-object v3, v1

    move v4, p2

    .line 439
    invoke-direct/range {v2 .. v7}, Landroidx/graphics/opengl/GLFrameBufferRenderer$Builder;-><init>(Landroidx/graphics/surface/SurfaceControlCompat;IIILandroidx/graphics/opengl/GLFrameBufferRenderer$Callback;)V

    .line 445
    iget-object v2, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mGLRenderer:Landroidx/graphics/opengl/GLRenderer;

    invoke-virtual {v10, v2}, Landroidx/graphics/opengl/GLFrameBufferRenderer$Builder;->setGLRenderer(Landroidx/graphics/opengl/GLRenderer;)Landroidx/graphics/opengl/GLFrameBufferRenderer$Builder;

    move-result-object v2

    .line 446
    invoke-virtual {v2, v8}, Landroidx/graphics/opengl/GLFrameBufferRenderer$Builder;->setMaxBuffers(I)Landroidx/graphics/opengl/GLFrameBufferRenderer$Builder;

    move-result-object v2

    .line 447
    sget-object v3, Landroidx/graphics/lowlatency/FrontBufferUtils;->Companion:Landroidx/graphics/lowlatency/FrontBufferUtils$Companion;

    invoke-virtual {v3}, Landroidx/graphics/lowlatency/FrontBufferUtils$Companion;->obtainHardwareBufferUsageFlags$graphics_core_release()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/graphics/opengl/GLFrameBufferRenderer$Builder;->setUsageFlags(J)Landroidx/graphics/opengl/GLFrameBufferRenderer$Builder;

    move-result-object v2

    .line 448
    iget v3, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->bufferFormat:I

    invoke-virtual {v2, v3}, Landroidx/graphics/opengl/GLFrameBufferRenderer$Builder;->setBufferFormat(I)Landroidx/graphics/opengl/GLFrameBufferRenderer$Builder;

    move-result-object v2

    .line 449
    iget-object v3, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mFrontBufferSyncStrategy:Landroidx/graphics/lowlatency/FrontBufferSyncStrategy;

    check-cast v3, Landroidx/graphics/opengl/SyncStrategy;

    invoke-virtual {v2, v3}, Landroidx/graphics/opengl/GLFrameBufferRenderer$Builder;->setSyncStrategy(Landroidx/graphics/opengl/SyncStrategy;)Landroidx/graphics/opengl/GLFrameBufferRenderer$Builder;

    move-result-object v2

    .line 450
    invoke-virtual {v2}, Landroidx/graphics/opengl/GLFrameBufferRenderer$Builder;->build()Landroidx/graphics/opengl/GLFrameBufferRenderer;

    move-result-object v2

    .line 452
    iput-object v2, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mFrontBufferedRenderer:Landroidx/graphics/opengl/GLFrameBufferRenderer;

    .line 453
    iput-object v1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mFrontBufferedLayerSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    .line 454
    iput-object p1, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mMultiBufferedLayerSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    .line 455
    iput-object v9, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mMultiBufferedRenderer:Landroidx/graphics/opengl/GLFrameBufferRenderer;

    .line 456
    iput p2, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mWidth:I

    .line 457
    iput p3, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mHeight:I

    .line 458
    iput v0, p0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->mTransform:I

    :cond_1
    return-void
.end method
