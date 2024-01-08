.class public final Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;
.super Ljava/lang/Object;
.source "CanvasFrontBufferedRenderer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$Callback;,
        Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$Companion;
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
    value = "SMAP\nCanvasFrontBufferedRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CanvasFrontBufferedRenderer.kt\nandroidx/graphics/lowlatency/CanvasFrontBufferedRenderer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 MultiBufferedCanvasRenderer.kt\nandroidx/graphics/MultiBufferedCanvasRenderer\n*L\n1#1,665:1\n1#2:666\n90#3,4:667\n90#3,4:671\n*S KotlinDebug\n*F\n+ 1 CanvasFrontBufferedRenderer.kt\nandroidx/graphics/lowlatency/CanvasFrontBufferedRenderer\n*L\n389#1:667,4\n449#1:671,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0095\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u001e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0005*\u0001\u0011\u0008\u0007\u0018\u0000 O*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0002NOB\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010%\u001a\u00020&J\u0006\u0010\'\u001a\u00020&J\u0006\u0010(\u001a\u00020&J\u0014\u0010)\u001a\u00020&2\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010\tH\u0002J\u0006\u0010+\u001a\u00020\u0015J\"\u0010,\u001a\u00020&2\u0006\u0010-\u001a\u00020\u00152\u0010\u0008\u0002\u0010.\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010/H\u0007J\'\u00100\u001a\u00020&2\u0006\u0010-\u001a\u00020\u00152\u0010\u0008\u0002\u00101\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010/H\u0000\u00a2\u0006\u0002\u00082J\u0013\u00103\u001a\u00020&2\u0006\u00104\u001a\u00028\u0000\u00a2\u0006\u0002\u00105J\u0014\u00106\u001a\u00020&2\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00028\u000008J)\u00109\u001a\u00020&2\u000e\u0008\u0002\u00107\u001a\u0008\u0012\u0004\u0012\u00028\u0000082\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\tH\u0000\u00a2\u0006\u0002\u0008:JS\u0010;\u001a\u00020&2\u0008\u0010<\u001a\u0004\u0018\u00010\u000b2\u0008\u0010=\u001a\u0004\u0018\u00010\u000b2\u000e\u0010>\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010 2\u0006\u0010?\u001a\u00020\u00172\u0006\u0010@\u001a\u00020\u000f2\u0006\u0010A\u001a\u00020B2\u0008\u0010C\u001a\u0004\u0018\u00010DH\u0001\u00a2\u0006\u0002\u0008EJ%\u0010F\u001a\u00020&2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010G\u001a\u00020\u000f2\u0006\u0010H\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0008IJ%\u0010J\u001a\u00020&2\u0006\u0010G\u001a\u00020K2\u0006\u0010H\u001a\u00020K2\u0006\u0010L\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0008MR\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0011X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0019j\u0008\u0012\u0004\u0012\u00028\u0000`\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001f\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006P"
    }
    d2 = {
        "Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;",
        "T",
        "",
        "surfaceView",
        "Landroid/view/SurfaceView;",
        "callback",
        "Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$Callback;",
        "(Landroid/view/SurfaceView;Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$Callback;)V",
        "mCancelRunnable",
        "Ljava/lang/Runnable;",
        "mFrontBufferSurfaceControl",
        "Landroidx/graphics/surface/SurfaceControlCompat;",
        "mHandlerThread",
        "Landroidx/graphics/utils/HandlerThreadExecutor;",
        "mHeight",
        "",
        "mHolderCallback",
        "androidx/graphics/lowlatency/CanvasFrontBufferedRenderer$mHolderCallback$1",
        "Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$mHolderCallback$1;",
        "mInverse",
        "mIsReleased",
        "",
        "mMultiBufferedCanvasRenderer",
        "Landroidx/graphics/MultiBufferedCanvasRenderer;",
        "mParams",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "mParentLayerTransform",
        "Landroid/graphics/Matrix;",
        "mParentSurfaceControl",
        "mPendingClear",
        "mPersistedCanvasRenderer",
        "Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;",
        "mTransform",
        "mTransformResolver",
        "Landroidx/graphics/lowlatency/BufferTransformHintResolver;",
        "mWidth",
        "cancel",
        "",
        "clear",
        "commit",
        "commitInternal",
        "onComplete",
        "isValid",
        "release",
        "cancelPending",
        "onReleaseComplete",
        "Lkotlin/Function0;",
        "releaseInternal",
        "releaseCallback",
        "releaseInternal$graphics_core_release",
        "renderFrontBufferedLayer",
        "param",
        "(Ljava/lang/Object;)V",
        "renderMultiBufferedLayer",
        "params",
        "",
        "renderMultiBufferedLayerInternal",
        "renderMultiBufferedLayerInternal$graphics_core_release",
        "setParentSurfaceControlBuffer",
        "frontBufferSurfaceControl",
        "parentSurfaceControl",
        "persistedCanvasRenderer",
        "multiBufferedCanvasRenderer",
        "inverse",
        "buffer",
        "Landroid/hardware/HardwareBuffer;",
        "fence",
        "Landroidx/hardware/SyncFenceCompat;",
        "setParentSurfaceControlBuffer$graphics_core_release",
        "update",
        "width",
        "height",
        "update$graphics_core_release",
        "updateMatrixTransform",
        "",
        "transform",
        "updateMatrixTransform$graphics_core_release",
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
.field public static final Companion:Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$Companion;

.field public static final TAG:Ljava/lang/String; = "LowLatencyCanvas"


# instance fields
.field private final callback:Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$Callback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mCancelRunnable:Ljava/lang/Runnable;

.field private mFrontBufferSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

.field private final mHandlerThread:Landroidx/graphics/utils/HandlerThreadExecutor;

.field private mHeight:I

.field private final mHolderCallback:Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$mHolderCallback$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$mHolderCallback$1<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mInverse:I

.field private mIsReleased:Z

.field private mMultiBufferedCanvasRenderer:Landroidx/graphics/MultiBufferedCanvasRenderer;

.field private mParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mParentLayerTransform:Landroid/graphics/Matrix;

.field private mParentSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

.field private mPendingClear:Z

.field private mPersistedCanvasRenderer:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mTransform:I

.field private final mTransformResolver:Landroidx/graphics/lowlatency/BufferTransformHintResolver;

.field private mWidth:I

.field private final surfaceView:Landroid/view/SurfaceView;


# direct methods
.method public static synthetic $r8$lambda$7pXCTKKLYss8BEDojaXcbTbYnMU(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;Landroidx/graphics/MultiBufferedCanvasRenderer;Ljava/util/ArrayList;Landroid/graphics/Matrix;IILandroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;ILjava/lang/Runnable;)V
    .locals 0

    invoke-static/range {p0 .. p10}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->commitInternal$lambda$15(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;Landroidx/graphics/MultiBufferedCanvasRenderer;Ljava/util/ArrayList;Landroid/graphics/Matrix;IILandroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7xhfNf9XDiOvOyA5PgcSjz8Olh8(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;)V
    .locals 0

    invoke-static {p0}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mCancelRunnable$lambda$1(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XrpT-eFuxMi6vgh7QLWBPg8qVOI(Landroidx/graphics/MultiBufferedCanvasRenderer;Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->clear$lambda$10(Landroidx/graphics/MultiBufferedCanvasRenderer;Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ffEzq43eH-5tCKbLB_Z8mSPjVXE(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->releaseInternal$lambda$17(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->Companion:Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceView;",
            "Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$Callback<",
            "TT;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "surfaceView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->surfaceView:Landroid/view/SurfaceView;

    .line 60
    iput-object p2, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->callback:Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$Callback;

    .line 67
    new-instance p2, Landroidx/graphics/utils/HandlerThreadExecutor;

    const-string v0, "CanvasRenderThread"

    invoke-direct {p2, v0}, Landroidx/graphics/utils/HandlerThreadExecutor;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mHandlerThread:Landroidx/graphics/utils/HandlerThreadExecutor;

    .line 96
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mParams:Ljava/util/ArrayList;

    const/4 p2, 0x1

    .line 109
    iput-boolean p2, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mPendingClear:Z

    .line 115
    new-instance p2, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$$ExternalSyntheticLambda2;-><init>(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;)V

    iput-object p2, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mCancelRunnable:Ljava/lang/Runnable;

    const/4 p2, -0x1

    .line 124
    iput p2, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mInverse:I

    .line 125
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mParentLayerTransform:Landroid/graphics/Matrix;

    .line 126
    iput p2, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mWidth:I

    .line 127
    iput p2, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mHeight:I

    .line 128
    iput p2, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mTransform:I

    .line 129
    new-instance p2, Landroidx/graphics/lowlatency/BufferTransformHintResolver;

    invoke-direct {p2}, Landroidx/graphics/lowlatency/BufferTransformHintResolver;-><init>()V

    iput-object p2, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mTransformResolver:Landroidx/graphics/lowlatency/BufferTransformHintResolver;

    .line 130
    new-instance p2, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$mHolderCallback$1;

    invoke-direct {p2, p0}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$mHolderCallback$1;-><init>(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;)V

    iput-object p2, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mHolderCallback:Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$mHolderCallback$1;

    .line 166
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    check-cast p2, Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 167
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    .line 168
    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 169
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->update$graphics_core_release(Landroid/view/SurfaceView;II)V

    const/4 p1, 0x3

    const/4 p2, 0x0

    .line 170
    invoke-static {p0, p2, p2, p1, p2}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->renderMultiBufferedLayerInternal$graphics_core_release$default(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;Ljava/util/Collection;Ljava/lang/Runnable;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final synthetic access$getCallback$p(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;)Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$Callback;
    .locals 0

    .line 57
    iget-object p0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->callback:Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$Callback;

    return-object p0
.end method

.method public static final synthetic access$getMHandlerThread$p(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;)Landroidx/graphics/utils/HandlerThreadExecutor;
    .locals 0

    .line 57
    iget-object p0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mHandlerThread:Landroidx/graphics/utils/HandlerThreadExecutor;

    return-object p0
.end method

.method public static final synthetic access$getMPendingClear$p(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mPendingClear:Z

    return p0
.end method

.method public static final synthetic access$getSurfaceView$p(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;)Landroid/view/SurfaceView;
    .locals 0

    .line 57
    iget-object p0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->surfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method public static final synthetic access$setMPendingClear$p(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mPendingClear:Z

    return-void
.end method

.method private static final clear$lambda$10(Landroidx/graphics/MultiBufferedCanvasRenderer;Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;I)V
    .locals 9

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 667
    invoke-static {p0}, Landroidx/graphics/MultiBufferedCanvasRenderer;->access$getRenderNode$p(Landroidx/graphics/MultiBufferedCanvasRenderer;)Landroid/graphics/RenderNode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v0

    const-string v1, "renderNode.beginRecording()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 668
    check-cast v0, Landroid/graphics/Canvas;

    const/high16 v1, -0x1000000

    .line 390
    sget-object v2, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/BlendMode;)V

    .line 669
    invoke-static {p0}, Landroidx/graphics/MultiBufferedCanvasRenderer;->access$getRenderNode$p(Landroidx/graphics/MultiBufferedCanvasRenderer;)Landroid/graphics/RenderNode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 392
    iget-object v0, p1, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mHandlerThread:Landroidx/graphics/utils/HandlerThreadExecutor;

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v8, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$clear$1$1$1$2;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p0

    move v7, p5

    invoke-direct/range {v1 .. v7}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$clear$1$1$1$2;-><init>(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;Landroidx/graphics/MultiBufferedCanvasRenderer;I)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0, v8}, Landroidx/graphics/MultiBufferedCanvasRenderer;->renderFrame(Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function2;)V

    :cond_0
    return-void
.end method

.method private final commitInternal(Ljava/lang/Runnable;)V
    .locals 14

    .line 432
    invoke-virtual {p0}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mPersistedCanvasRenderer:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;

    if-eqz v0, :cond_0

    .line 434
    invoke-interface {v0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;->cancelPending()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v10, v0

    .line 436
    iget-object v4, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mParams:Ljava/util/ArrayList;

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mParams:Ljava/util/ArrayList;

    .line 438
    iget-object v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v6

    .line 439
    iget-object v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v7

    .line 440
    iget-object v8, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mFrontBufferSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    .line 441
    iget-object v9, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mParentSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    .line 442
    iget-object v3, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mMultiBufferedCanvasRenderer:Landroidx/graphics/MultiBufferedCanvasRenderer;

    .line 443
    iget v11, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mInverse:I

    .line 444
    iget-object v5, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mParentLayerTransform:Landroid/graphics/Matrix;

    .line 445
    iget-object v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mHandlerThread:Landroidx/graphics/utils/HandlerThreadExecutor;

    new-instance v13, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$$ExternalSyntheticLambda0;

    move-object v1, v13

    move-object v2, p0

    move-object v12, p1

    invoke-direct/range {v1 .. v12}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$$ExternalSyntheticLambda0;-><init>(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;Landroidx/graphics/MultiBufferedCanvasRenderer;Ljava/util/ArrayList;Landroid/graphics/Matrix;IILandroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;ILjava/lang/Runnable;)V

    invoke-virtual {v0, v13}, Landroidx/graphics/utils/HandlerThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    const-string p1, "LowLatencyCanvas"

    const-string v0, "Attempt to render to the multi buffered layer when CanvasFrontBufferedRenderer has been released"

    .line 472
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method static synthetic commitInternal$default(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;Ljava/lang/Runnable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 431
    :cond_0
    invoke-direct {p0, p1}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->commitInternal(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final commitInternal$lambda$15(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;Landroidx/graphics/MultiBufferedCanvasRenderer;Ljava/util/ArrayList;Landroid/graphics/Matrix;IILandroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;ILjava/lang/Runnable;)V
    .locals 11

    move-object v1, p0

    move-object v8, p1

    move-object v0, p2

    move-object v2, p3

    const-string/jumbo v3, "this$0"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$params"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$transform"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 446
    iput-boolean v3, v1, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mPendingClear:Z

    if-eqz v8, :cond_0

    .line 671
    invoke-static {p1}, Landroidx/graphics/MultiBufferedCanvasRenderer;->access$getRenderNode$p(Landroidx/graphics/MultiBufferedCanvasRenderer;)Landroid/graphics/RenderNode;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v3

    const-string v4, "renderNode.beginRecording()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 672
    check-cast v3, Landroid/graphics/Canvas;

    .line 450
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 451
    invoke-virtual {v3, p3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 452
    iget-object v2, v1, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->callback:Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$Callback;

    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    move v5, p4

    move/from16 v6, p5

    invoke-interface {v2, v3, p4, v6, v4}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$Callback;->onDrawMultiBufferedLayer(Landroid/graphics/Canvas;IILjava/util/Collection;)V

    .line 453
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 673
    invoke-static {p1}, Landroidx/graphics/MultiBufferedCanvasRenderer;->access$getRenderNode$p(Landroidx/graphics/MultiBufferedCanvasRenderer;)Landroid/graphics/RenderNode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->endRecording()V

    .line 455
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 456
    iget-object v0, v1, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mHandlerThread:Landroidx/graphics/utils/HandlerThreadExecutor;

    move-object v9, v0

    check-cast v9, Ljava/util/concurrent/Executor;

    new-instance v10, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$commitInternal$1$1$1$2;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object v5, p1

    move/from16 v6, p9

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$commitInternal$1$1$1$2;-><init>(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;Landroidx/graphics/MultiBufferedCanvasRenderer;ILjava/lang/Runnable;)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1, v9, v10}, Landroidx/graphics/MultiBufferedCanvasRenderer;->renderFrame(Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function2;)V

    :cond_0
    return-void
.end method

.method private static final mCancelRunnable$lambda$1(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mPersistedCanvasRenderer:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;->setVisible(Z)V

    .line 117
    :goto_0
    iget-object p0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mFrontBufferSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    if-eqz p0, :cond_1

    .line 118
    new-instance v0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;

    invoke-direct {v0}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;-><init>()V

    .line 119
    invoke-virtual {v0, p0, v1}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->setVisibility(Landroidx/graphics/surface/SurfaceControlCompat;Z)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;

    move-result-object p0

    .line 120
    invoke-virtual {p0}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->commit()V

    :cond_1
    return-void
.end method

.method public static synthetic release$default(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 557
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->release(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic releaseInternal$graphics_core_release$default(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 522
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->releaseInternal$graphics_core_release(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final releaseInternal$lambda$17(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 547
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static synthetic renderMultiBufferedLayerInternal$graphics_core_release$default(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;Ljava/util/Collection;Ljava/lang/Runnable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 317
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    const/4 p4, 0x0

    sget-object p4, Lorg/ejml/dense/row/decomposition/eig/symm/dHF/yIeglf;->MDUeNEjZJZ:Ljava/lang/String;

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 316
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->renderMultiBufferedLayerInternal$graphics_core_release(Ljava/util/Collection;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 512
    invoke-virtual {p0}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mPersistedCanvasRenderer:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;->cancelPending()V

    .line 514
    :cond_0
    iget-object v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mHandlerThread:Landroidx/graphics/utils/HandlerThreadExecutor;

    iget-object v1, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/graphics/utils/HandlerThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 515
    iget-object v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mPersistedCanvasRenderer:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;->clear()V

    goto :goto_0

    :cond_1
    const-string v0, "LowLatencyCanvas"

    const-string v1, "Attempt to cancel rendering to front buffer after CanvasFrontBufferRenderer has been released"

    .line 517
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final clear()V
    .locals 9

    .line 376
    invoke-virtual {p0}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 378
    iget-object v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mPersistedCanvasRenderer:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;

    if-eqz v0, :cond_0

    .line 379
    invoke-interface {v0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;->cancelPending()V

    .line 380
    invoke-interface {v0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;->clear()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 382
    iget v7, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mInverse:I

    .line 383
    iget-object v4, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mFrontBufferSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    .line 384
    iget-object v5, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mParentSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    .line 385
    iget-object v2, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mMultiBufferedCanvasRenderer:Landroidx/graphics/MultiBufferedCanvasRenderer;

    .line 386
    iget-object v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mHandlerThread:Landroidx/graphics/utils/HandlerThreadExecutor;

    new-instance v8, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$$ExternalSyntheticLambda3;

    move-object v1, v8

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$$ExternalSyntheticLambda3;-><init>(Landroidx/graphics/MultiBufferedCanvasRenderer;Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;I)V

    invoke-virtual {v0, v8}, Landroidx/graphics/utils/HandlerThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    const-string v0, "LowLatencyCanvas"

    const-string v1, "Attempt to clear front buffer after CanvasFrontBufferRenderer has been released"

    .line 407
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final commit()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 424
    invoke-static {p0, v0, v1, v0}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->commitInternal$default(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public final isValid()Z
    .locals 1

    .line 338
    iget-boolean v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mIsReleased:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final release(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->release$default(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

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

    .line 558
    iget-boolean v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mIsReleased:Z

    if-nez v0, :cond_0

    .line 559
    iget-object v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mHolderCallback:Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$mHolderCallback$1;

    check-cast v1, Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 560
    new-instance v0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$release$1;

    invoke-direct {v0, p2, p0}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$release$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, p1, v0}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->releaseInternal$graphics_core_release(ZLkotlin/jvm/functions/Function0;)V

    const/4 p1, 0x1

    .line 564
    iput-boolean p1, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mIsReleased:Z

    :cond_0
    return-void
.end method

.method public final releaseInternal$graphics_core_release(ZLkotlin/jvm/functions/Function0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 523
    iget-object v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mPersistedCanvasRenderer:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;

    if-eqz v0, :cond_0

    .line 528
    iget-object v1, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mFrontBufferSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    .line 529
    iget-object v2, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mParentSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    .line 530
    iget-object v3, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mMultiBufferedCanvasRenderer:Landroidx/graphics/MultiBufferedCanvasRenderer;

    const/4 v4, 0x0

    .line 532
    iput-object v4, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mFrontBufferSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    .line 533
    iput-object v4, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mParentSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    .line 534
    iput-object v4, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mPersistedCanvasRenderer:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;

    .line 535
    iput-object v4, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mMultiBufferedCanvasRenderer:Landroidx/graphics/MultiBufferedCanvasRenderer;

    const/4 v4, -0x1

    .line 536
    iput v4, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mWidth:I

    .line 537
    iput v4, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mHeight:I

    .line 538
    iput v4, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mTransform:I

    .line 540
    new-instance v4, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$releaseInternal$1;

    invoke-direct {v4, v1, v2, v3, p2}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$releaseInternal$1;-><init>(Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/MultiBufferedCanvasRenderer;Lkotlin/jvm/functions/Function0;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, p1, v4}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;->release(ZLkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 547
    iget-object p1, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mHandlerThread:Landroidx/graphics/utils/HandlerThreadExecutor;

    new-instance v0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v0}, Landroidx/graphics/utils/HandlerThreadExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final renderFrontBufferedLayer(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mPersistedCanvasRenderer:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;->render(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    sget-object p1, Landroidx/core/database/hzA/JUetN;->UDeGvG:Ljava/lang/String;

    const-string v0, "Attempt to render to front buffered layer when CanvasFrontBufferedRenderer has been released"

    .line 284
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final renderMultiBufferedLayer(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 309
    invoke-static {p0, p1, v0, v1, v0}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->renderMultiBufferedLayerInternal$graphics_core_release$default(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;Ljava/util/Collection;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public final renderMultiBufferedLayerInternal$graphics_core_release(Ljava/util/Collection;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 322
    invoke-direct {p0, p2}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->commitInternal(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p1, "LowLatencyCanvas"

    const-string p2, "Attempt to render to the multi buffered layer when CanvasFrontBufferedRenderer has been released"

    .line 324
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final setParentSurfaceControlBuffer$graphics_core_release(Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;Landroidx/graphics/MultiBufferedCanvasRenderer;ILandroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/graphics/surface/SurfaceControlCompat;",
            "Landroidx/graphics/surface/SurfaceControlCompat;",
            "Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer<",
            "TT;>;",
            "Landroidx/graphics/MultiBufferedCanvasRenderer;",
            "I",
            "Landroid/hardware/HardwareBuffer;",
            "Landroidx/hardware/SyncFenceCompat;",
            ")V"
        }
    .end annotation

    const-string v0, "multiBufferedCanvasRenderer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    if-nez p3, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    invoke-interface {p3, v0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;->setVisible(Z)V

    .line 352
    :goto_0
    new-instance p3, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;

    invoke-direct {p3}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;-><init>()V

    .line 353
    invoke-virtual {p3, p1, v0}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->setVisibility(Landroidx/graphics/surface/SurfaceControlCompat;Z)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v2, p1

    .line 356
    invoke-static/range {v1 .. v7}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->setBuffer$default(Landroidx/graphics/surface/SurfaceControlCompat$Transaction;Landroidx/graphics/surface/SurfaceControlCompat;Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;

    move-result-object p3

    const/4 v0, 0x1

    .line 357
    invoke-virtual {p3, p2, v0}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->setVisibility(Landroidx/graphics/surface/SurfaceControlCompat;Z)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;

    move-result-object p3

    .line 358
    new-instance v0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$setParentSurfaceControlBuffer$transaction$1;

    invoke-direct {v0, p4, p6}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$setParentSurfaceControlBuffer$transaction$1;-><init>(Landroidx/graphics/MultiBufferedCanvasRenderer;Landroid/hardware/HardwareBuffer;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p3, p2, p6, p7, v0}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->setBuffer(Landroidx/graphics/surface/SurfaceControlCompat;Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;Lkotlin/jvm/functions/Function1;)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;

    move-result-object p3

    const/4 p4, -0x1

    if-eq p5, p4, :cond_1

    .line 363
    invoke-virtual {p3, p2, p5}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->setBufferTransform(Landroidx/graphics/surface/SurfaceControlCompat;I)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;

    .line 365
    :cond_1
    iget-object p2, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->callback:Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$Callback;

    invoke-interface {p2, p1, p3}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$Callback;->onMultiBufferedLayerRenderComplete(Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat$Transaction;)V

    .line 367
    invoke-virtual {p3}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->commit()V

    :cond_2
    return-void
.end method

.method public final update$graphics_core_release(Landroid/view/SurfaceView;II)V
    .locals 25

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move/from16 v7, p2

    move/from16 v8, p3

    const-string/jumbo v1, "surfaceView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object v1, v6, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mTransformResolver:Landroidx/graphics/lowlatency/BufferTransformHintResolver;

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/graphics/lowlatency/BufferTransformHintResolver;->getBufferTransformHint(Landroid/view/View;)I

    move-result v9

    .line 177
    iget v1, v6, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mTransform:I

    if-ne v1, v9, :cond_0

    iget v1, v6, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mWidth:I

    if-ne v1, v7, :cond_0

    iget v1, v6, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mHeight:I

    if-eq v1, v8, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 178
    invoke-static {v6, v2, v3, v1, v3}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->releaseInternal$graphics_core_release$default(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 180
    new-instance v10, Landroidx/graphics/lowlatency/BufferTransformer;

    invoke-direct {v10}, Landroidx/graphics/lowlatency/BufferTransformer;-><init>()V

    .line 181
    invoke-virtual {v10, v9}, Landroidx/graphics/lowlatency/BufferTransformer;->invertBufferTransform(I)I

    move-result v11

    .line 182
    invoke-virtual {v10, v7, v8, v11}, Landroidx/graphics/lowlatency/BufferTransformer;->computeTransform(III)V

    int-to-float v1, v7

    int-to-float v3, v8

    .line 183
    invoke-virtual {v6, v1, v3, v11}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->updateMatrixTransform$graphics_core_release(FFI)V

    .line 185
    new-instance v1, Landroidx/graphics/surface/SurfaceControlCompat$Builder;

    invoke-direct {v1}, Landroidx/graphics/surface/SurfaceControlCompat$Builder;-><init>()V

    .line 186
    invoke-virtual {v1, v0}, Landroidx/graphics/surface/SurfaceControlCompat$Builder;->setParent(Landroid/view/SurfaceView;)Landroidx/graphics/surface/SurfaceControlCompat$Builder;

    move-result-object v0

    const-string v1, "MultiBufferedLayer"

    .line 187
    invoke-virtual {v0, v1}, Landroidx/graphics/surface/SurfaceControlCompat$Builder;->setName(Ljava/lang/String;)Landroidx/graphics/surface/SurfaceControlCompat$Builder;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroidx/graphics/surface/SurfaceControlCompat$Builder;->build()Landroidx/graphics/surface/SurfaceControlCompat;

    move-result-object v12

    .line 192
    new-instance v0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;

    invoke-direct {v0}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;-><init>()V

    .line 193
    invoke-virtual {v0, v12, v2}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->setVisibility(Landroidx/graphics/surface/SurfaceControlCompat;Z)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->commit()V

    .line 197
    new-instance v0, Landroidx/graphics/surface/SurfaceControlCompat$Builder;

    invoke-direct {v0}, Landroidx/graphics/surface/SurfaceControlCompat$Builder;-><init>()V

    .line 198
    invoke-virtual {v0, v12}, Landroidx/graphics/surface/SurfaceControlCompat$Builder;->setParent(Landroidx/graphics/surface/SurfaceControlCompat;)Landroidx/graphics/surface/SurfaceControlCompat$Builder;

    move-result-object v0

    const-string v1, "FrontBufferedLayer"

    .line 199
    invoke-virtual {v0, v1}, Landroidx/graphics/surface/SurfaceControlCompat$Builder;->setName(Ljava/lang/String;)Landroidx/graphics/surface/SurfaceControlCompat$Builder;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Landroidx/graphics/surface/SurfaceControlCompat$Builder;->build()Landroidx/graphics/surface/SurfaceControlCompat;

    move-result-object v13

    .line 202
    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 203
    sget-object v15, Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;->Companion:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$Companion;

    .line 207
    iget-object v5, v6, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mHandlerThread:Landroidx/graphics/utils/HandlerThreadExecutor;

    .line 208
    new-instance v16, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$update$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v13

    move-object v4, v12

    move-object/from16 v17, v5

    move v5, v11

    invoke-direct/range {v0 .. v5}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$update$1;-><init>(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat;I)V

    move-object/from16 v5, v16

    check-cast v5, Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;

    move-object v0, v15

    move/from16 v1, p2

    move/from16 v2, p3

    move-object v3, v10

    move-object/from16 v4, v17

    .line 203
    invoke-virtual/range {v0 .. v5}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$Companion;->create(IILandroidx/graphics/lowlatency/BufferTransformer;Landroidx/graphics/utils/HandlerThreadExecutor;Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;)Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;

    move-result-object v0

    iput-object v0, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 246
    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "MultiBufferNode"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v10}, Landroidx/graphics/lowlatency/BufferTransformer;->getGlWidth()I

    move-result v1

    invoke-virtual {v10}, Landroidx/graphics/lowlatency/BufferTransformer;->getGlHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 249
    new-instance v1, Landroidx/graphics/MultiBufferedCanvasRenderer;

    .line 251
    invoke-virtual {v10}, Landroidx/graphics/lowlatency/BufferTransformer;->getGlWidth()I

    move-result v17

    .line 252
    invoke-virtual {v10}, Landroidx/graphics/lowlatency/BufferTransformer;->getGlHeight()I

    move-result v18

    const/16 v19, 0x0

    const-wide/16 v20, 0xb00

    const/16 v22, 0x0

    const/16 v23, 0x28

    const/16 v24, 0x0

    move-object v15, v1

    move-object/from16 v16, v0

    .line 249
    invoke-direct/range {v15 .. v24}, Landroidx/graphics/MultiBufferedCanvasRenderer;-><init>(Landroid/graphics/RenderNode;IIIJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 254
    invoke-virtual {v1, v3}, Landroidx/graphics/MultiBufferedCanvasRenderer;->setPreserveContents(Z)V

    .line 249
    iput-object v1, v6, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mMultiBufferedCanvasRenderer:Landroidx/graphics/MultiBufferedCanvasRenderer;

    .line 256
    iput-object v13, v6, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mFrontBufferSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    .line 257
    iget-object v0, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;

    iput-object v0, v6, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mPersistedCanvasRenderer:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;

    .line 258
    iput-object v12, v6, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mParentSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    .line 259
    iput v9, v6, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mTransform:I

    .line 260
    iput v7, v6, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mWidth:I

    .line 261
    iput v8, v6, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mHeight:I

    .line 262
    iput v11, v6, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mInverse:I

    :cond_1
    return-void
.end method

.method public final updateMatrixTransform$graphics_core_release(FFI)V
    .locals 3

    .line 479
    iget-object v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->mParentLayerTransform:Landroid/graphics/Matrix;

    const/4 v1, 0x3

    if-eq p3, v1, :cond_2

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p3, v1, :cond_1

    const/4 p1, 0x7

    if-eq p3, p1, :cond_0

    .line 494
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x42b40000    # 90.0f

    .line 490
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 491
    invoke-virtual {v0, p2, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_1
    const/high16 p2, 0x43870000    # 270.0f

    .line 482
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 483
    invoke-virtual {v0, v2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_2
    const/high16 p3, 0x43340000    # 180.0f

    .line 486
    invoke-virtual {v0, p3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 487
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_0
    return-void
.end method
