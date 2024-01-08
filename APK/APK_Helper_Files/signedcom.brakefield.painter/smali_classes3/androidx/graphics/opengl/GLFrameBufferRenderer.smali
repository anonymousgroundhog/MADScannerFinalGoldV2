.class public final Landroidx/graphics/opengl/GLFrameBufferRenderer;
.super Ljava/lang/Object;
.source "GLFrameBufferRenderer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/opengl/GLFrameBufferRenderer$Builder;,
        Landroidx/graphics/opengl/GLFrameBufferRenderer$Callback;,
        Landroidx/graphics/opengl/GLFrameBufferRenderer$Companion;,
        Landroidx/graphics/opengl/GLFrameBufferRenderer$DefaultSurfaceControlProvider;,
        Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceControlProvider;,
        Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceViewProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGLFrameBufferRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GLFrameBufferRenderer.kt\nandroidx/graphics/opengl/GLFrameBufferRenderer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,836:1\n1#2:837\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0085\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e*\u0001\u001a\u0008\u0007\u0018\u0000 I2\u00020\u0001:\u0006GHIJKLBA\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u000fJ5\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020%2\u0006\u00102\u001a\u00020\u00072\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u00182\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u00a2\u0006\u0002\u00086J\'\u00107\u001a\u0002082\u0006\u00109\u001a\u00020 2\u0010\u0008\u0002\u0010:\u001a\n\u0012\u0004\u0012\u000208\u0018\u00010;H\u0000\u00a2\u0006\u0002\u0008<J\u0019\u0010=\u001a\u0002082\n\u0008\u0002\u0010>\u001a\u0004\u0018\u00010?H\u0000\u00a2\u0006\u0002\u0008@J\u000e\u0010A\u001a\u0002082\u0006\u0010B\u001a\u00020?J\u0006\u0010C\u001a\u00020 J\"\u0010D\u001a\u0002082\u0006\u00109\u001a\u00020 2\u0010\u0008\u0002\u0010E\u001a\n\u0012\u0004\u0012\u000208\u0018\u00010;H\u0007J\u0006\u0010F\u001a\u000208R\u0017\u0010\u0010\u001a\u00020\u00078F\u00a2\u0006\u000c\u0012\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\r\u001a\u00020\u000e8G\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001bR\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010&\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010(\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*R\u0017\u0010+\u001a\u00020\t8F\u00a2\u0006\u000c\u0012\u0004\u0008,\u0010\u0012\u001a\u0004\u0008-\u0010.\u00a8\u0006M"
    }
    d2 = {
        "Landroidx/graphics/opengl/GLFrameBufferRenderer;",
        "",
        "surfaceControlProvider",
        "Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceControlProvider;",
        "callback",
        "Landroidx/graphics/opengl/GLFrameBufferRenderer$Callback;",
        "mFormat",
        "",
        "mUsage",
        "",
        "mMaxBuffers",
        "mSyncStrategy",
        "Landroidx/graphics/opengl/SyncStrategy;",
        "glRenderer",
        "Landroidx/graphics/opengl/GLRenderer;",
        "(Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceControlProvider;Landroidx/graphics/opengl/GLFrameBufferRenderer$Callback;IJILandroidx/graphics/opengl/SyncStrategy;Landroidx/graphics/opengl/GLRenderer;)V",
        "bufferFormat",
        "getBufferFormat$annotations",
        "()V",
        "getBufferFormat",
        "()I",
        "getGLRenderer",
        "()Landroidx/graphics/opengl/GLRenderer;",
        "mBufferPool",
        "Landroidx/graphics/opengl/FrameBufferPool;",
        "mContextCallbacks",
        "androidx/graphics/opengl/GLFrameBufferRenderer$mContextCallbacks$1",
        "Landroidx/graphics/opengl/GLFrameBufferRenderer$mContextCallbacks$1;",
        "mCurrentFrameBuffer",
        "Landroidx/graphics/opengl/FrameBuffer;",
        "mGLRenderer",
        "mIsManagingGLRenderer",
        "",
        "mIsReleased",
        "mRenderTarget",
        "Landroidx/graphics/opengl/GLRenderer$RenderTarget;",
        "mSurfaceControl",
        "Landroidx/graphics/surface/SurfaceControlCompat;",
        "maxBuffers",
        "getMaxBuffers",
        "syncStrategy",
        "getSyncStrategy",
        "()Landroidx/graphics/opengl/SyncStrategy;",
        "usageFlags",
        "getUsageFlags$annotations",
        "getUsageFlags",
        "()J",
        "createFrameBufferRenderer",
        "Landroidx/graphics/opengl/FrameBufferRenderer;",
        "surfaceControl",
        "inverseTransform",
        "bufferTransformer",
        "Landroidx/graphics/lowlatency/BufferTransformer;",
        "frameBufferPool",
        "createFrameBufferRenderer$graphics_core_release",
        "detachTargets",
        "",
        "cancelPending",
        "onReleaseComplete",
        "Lkotlin/Function0;",
        "detachTargets$graphics_core_release",
        "drawAsync",
        "onComplete",
        "Ljava/lang/Runnable;",
        "drawAsync$graphics_core_release",
        "execute",
        "runnable",
        "isValid",
        "release",
        "onReleaseCallback",
        "render",
        "Builder",
        "Callback",
        "Companion",
        "DefaultSurfaceControlProvider",
        "SurfaceControlProvider",
        "SurfaceViewProvider",
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
.field public static final Companion:Landroidx/graphics/opengl/GLFrameBufferRenderer$Companion;

.field public static final DefaultFlags:J = 0xb00L

.field public static final DefaultNumBuffers:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final USAGE_COMPOSER_OVERLAY:J = 0x800L


# instance fields
.field private mBufferPool:Landroidx/graphics/opengl/FrameBufferPool;

.field private final mContextCallbacks:Landroidx/graphics/opengl/GLFrameBufferRenderer$mContextCallbacks$1;

.field private mCurrentFrameBuffer:Landroidx/graphics/opengl/FrameBuffer;

.field private final mFormat:I

.field private final mGLRenderer:Landroidx/graphics/opengl/GLRenderer;

.field private final mIsManagingGLRenderer:Z

.field private mIsReleased:Z

.field private final mMaxBuffers:I

.field private mRenderTarget:Landroidx/graphics/opengl/GLRenderer$RenderTarget;

.field private mSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

.field private final mSyncStrategy:Landroidx/graphics/opengl/SyncStrategy;

.field private final mUsage:J

.field private final surfaceControlProvider:Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceControlProvider;


# direct methods
.method public static synthetic $r8$lambda$SoVX7AT4MePG8Qzfu3rq0DZXu8I(Landroidx/graphics/opengl/GLFrameBufferRenderer;Landroidx/graphics/opengl/FrameBufferPool;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/graphics/opengl/GLFrameBufferRenderer;->detachTargets$lambda$2(Landroidx/graphics/opengl/GLFrameBufferRenderer;Landroidx/graphics/opengl/FrameBufferPool;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/opengl/GLFrameBufferRenderer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/opengl/GLFrameBufferRenderer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->Companion:Landroidx/graphics/opengl/GLFrameBufferRenderer$Companion;

    const-string v0, "GLFrameBufferRenderer"

    .line 816
    sput-object v0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceControlProvider;Landroidx/graphics/opengl/GLFrameBufferRenderer$Callback;IJILandroidx/graphics/opengl/SyncStrategy;Landroidx/graphics/opengl/GLRenderer;)V
    .locals 1

    const-string/jumbo v0, "surfaceControlProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mSyncStrategy"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->surfaceControlProvider:Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceControlProvider;

    .line 53
    iput p3, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mFormat:I

    .line 54
    iput-wide p4, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mUsage:J

    .line 55
    iput p6, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mMaxBuffers:I

    .line 56
    iput-object p7, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mSyncStrategy:Landroidx/graphics/opengl/SyncStrategy;

    .line 237
    new-instance p3, Landroidx/graphics/opengl/GLFrameBufferRenderer$mContextCallbacks$1;

    invoke-direct {p3, p0}, Landroidx/graphics/opengl/GLFrameBufferRenderer$mContextCallbacks$1;-><init>(Landroidx/graphics/opengl/GLFrameBufferRenderer;)V

    iput-object p3, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mContextCallbacks:Landroidx/graphics/opengl/GLFrameBufferRenderer$mContextCallbacks$1;

    const/4 p4, 0x1

    if-lt p6, p4, :cond_2

    if-nez p8, :cond_0

    .line 254
    iput-boolean p4, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mIsManagingGLRenderer:Z

    .line 255
    new-instance p8, Landroidx/graphics/opengl/GLRenderer;

    const/4 p5, 0x3

    const/4 p6, 0x0

    invoke-direct {p8, p6, p6, p5, p6}, Landroidx/graphics/opengl/GLRenderer;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p8, p6, p4, p6}, Landroidx/graphics/opengl/GLRenderer;->start$default(Landroidx/graphics/opengl/GLRenderer;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 257
    iput-boolean p4, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mIsManagingGLRenderer:Z

    .line 258
    invoke-virtual {p8}, Landroidx/graphics/opengl/GLRenderer;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 265
    :goto_0
    check-cast p3, Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;

    invoke-virtual {p8, p3}, Landroidx/graphics/opengl/GLRenderer;->registerEGLContextCallback(Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;)V

    .line 266
    iput-object p8, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mGLRenderer:Landroidx/graphics/opengl/GLRenderer;

    .line 267
    new-instance p3, Landroidx/graphics/opengl/GLFrameBufferRenderer$1;

    invoke-direct {p3, p0, p2, p8}, Landroidx/graphics/opengl/GLFrameBufferRenderer$1;-><init>(Landroidx/graphics/opengl/GLFrameBufferRenderer;Landroidx/graphics/opengl/GLFrameBufferRenderer$Callback;Landroidx/graphics/opengl/GLRenderer;)V

    check-cast p3, Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceControlProvider$Callback;

    invoke-interface {p1, p3}, Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceControlProvider;->createSurfaceControl(Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceControlProvider$Callback;)V

    return-void

    .line 259
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The provided GLRenderer must be running prior to creation of GLFrameBufferRenderer, did you forget to call GLRenderer#start()?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 251
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FrameBufferRenderer must have at least 1 buffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$getMBufferPool$p(Landroidx/graphics/opengl/GLFrameBufferRenderer;)Landroidx/graphics/opengl/FrameBufferPool;
    .locals 0

    .line 48
    iget-object p0, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mBufferPool:Landroidx/graphics/opengl/FrameBufferPool;

    return-object p0
.end method

.method public static final synthetic access$getMCurrentFrameBuffer$p(Landroidx/graphics/opengl/GLFrameBufferRenderer;)Landroidx/graphics/opengl/FrameBuffer;
    .locals 0

    .line 48
    iget-object p0, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mCurrentFrameBuffer:Landroidx/graphics/opengl/FrameBuffer;

    return-object p0
.end method

.method public static final synthetic access$getMFormat$p(Landroidx/graphics/opengl/GLFrameBufferRenderer;)I
    .locals 0

    .line 48
    iget p0, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mFormat:I

    return p0
.end method

.method public static final synthetic access$getMMaxBuffers$p(Landroidx/graphics/opengl/GLFrameBufferRenderer;)I
    .locals 0

    .line 48
    iget p0, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mMaxBuffers:I

    return p0
.end method

.method public static final synthetic access$getMUsage$p(Landroidx/graphics/opengl/GLFrameBufferRenderer;)J
    .locals 2

    .line 48
    iget-wide v0, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mUsage:J

    return-wide v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setMBufferPool$p(Landroidx/graphics/opengl/GLFrameBufferRenderer;Landroidx/graphics/opengl/FrameBufferPool;)V
    .locals 0

    .line 48
    iput-object p1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mBufferPool:Landroidx/graphics/opengl/FrameBufferPool;

    return-void
.end method

.method public static final synthetic access$setMCurrentFrameBuffer$p(Landroidx/graphics/opengl/GLFrameBufferRenderer;Landroidx/graphics/opengl/FrameBuffer;)V
    .locals 0

    .line 48
    iput-object p1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mCurrentFrameBuffer:Landroidx/graphics/opengl/FrameBuffer;

    return-void
.end method

.method public static final synthetic access$setMRenderTarget$p(Landroidx/graphics/opengl/GLFrameBufferRenderer;Landroidx/graphics/opengl/GLRenderer$RenderTarget;)V
    .locals 0

    .line 48
    iput-object p1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mRenderTarget:Landroidx/graphics/opengl/GLRenderer$RenderTarget;

    return-void
.end method

.method public static final synthetic access$setMSurfaceControl$p(Landroidx/graphics/opengl/GLFrameBufferRenderer;Landroidx/graphics/surface/SurfaceControlCompat;)V
    .locals 0

    .line 48
    iput-object p1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    return-void
.end method

.method public static synthetic detachTargets$graphics_core_release$default(Landroidx/graphics/opengl/GLFrameBufferRenderer;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 492
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/graphics/opengl/GLFrameBufferRenderer;->detachTargets$graphics_core_release(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final detachTargets$lambda$2(Landroidx/graphics/opengl/GLFrameBufferRenderer;Landroidx/graphics/opengl/FrameBufferPool;Lkotlin/jvm/functions/Function0;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    iget-object p0, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mCurrentFrameBuffer:Landroidx/graphics/opengl/FrameBuffer;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p0, v1, v0, v1}, Landroidx/graphics/opengl/FrameBufferPool;->release$default(Landroidx/graphics/opengl/FrameBufferPool;Landroidx/graphics/opengl/FrameBuffer;Landroidx/hardware/SyncFenceCompat;ILjava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 499
    invoke-virtual {p1}, Landroidx/graphics/opengl/FrameBufferPool;->close()V

    :cond_1
    if-eqz p2, :cond_2

    .line 500
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public static synthetic drawAsync$graphics_core_release$default(Landroidx/graphics/opengl/GLFrameBufferRenderer;Ljava/lang/Runnable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 437
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/graphics/opengl/GLFrameBufferRenderer;->drawAsync$graphics_core_release(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic getBufferFormat$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getUsageFlags$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic release$default(Landroidx/graphics/opengl/GLFrameBufferRenderer;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 476
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/graphics/opengl/GLFrameBufferRenderer;->release(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final createFrameBufferRenderer$graphics_core_release(Landroidx/graphics/surface/SurfaceControlCompat;ILandroidx/graphics/lowlatency/BufferTransformer;Landroidx/graphics/opengl/FrameBufferPool;Landroidx/graphics/opengl/GLFrameBufferRenderer$Callback;)Landroidx/graphics/opengl/FrameBufferRenderer;
    .locals 9

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bufferTransformer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frameBufferPool"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    new-instance v0, Landroidx/graphics/opengl/FrameBufferRenderer;

    .line 370
    new-instance v8, Landroidx/graphics/opengl/GLFrameBufferRenderer$createFrameBufferRenderer$1;

    move-object v1, v8

    move-object v2, p3

    move-object v3, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Landroidx/graphics/opengl/GLFrameBufferRenderer$createFrameBufferRenderer$1;-><init>(Landroidx/graphics/lowlatency/BufferTransformer;Landroidx/graphics/opengl/GLFrameBufferRenderer;Landroidx/graphics/opengl/FrameBufferPool;Landroidx/graphics/opengl/GLFrameBufferRenderer$Callback;Landroidx/graphics/surface/SurfaceControlCompat;I)V

    check-cast v8, Landroidx/graphics/opengl/FrameBufferRenderer$RenderCallback;

    .line 434
    iget-object p1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mSyncStrategy:Landroidx/graphics/opengl/SyncStrategy;

    .line 369
    invoke-direct {v0, v8, p1}, Landroidx/graphics/opengl/FrameBufferRenderer;-><init>(Landroidx/graphics/opengl/FrameBufferRenderer$RenderCallback;Landroidx/graphics/opengl/SyncStrategy;)V

    return-object v0
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

    .line 493
    iget-object v0, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mBufferPool:Landroidx/graphics/opengl/FrameBufferPool;

    .line 494
    iget-object v1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mRenderTarget:Landroidx/graphics/opengl/GLRenderer$RenderTarget;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    .line 495
    invoke-static {v1, p1, v2, v3, v2}, Landroidx/graphics/opengl/GLRenderer$RenderTarget;->detach$default(Landroidx/graphics/opengl/GLRenderer$RenderTarget;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 497
    :cond_0
    iget-object p1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mGLRenderer:Landroidx/graphics/opengl/GLRenderer;

    new-instance v1, Landroidx/graphics/opengl/GLFrameBufferRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p2}, Landroidx/graphics/opengl/GLFrameBufferRenderer$$ExternalSyntheticLambda0;-><init>(Landroidx/graphics/opengl/GLFrameBufferRenderer;Landroidx/graphics/opengl/FrameBufferPool;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v1}, Landroidx/graphics/opengl/GLRenderer;->execute(Ljava/lang/Runnable;)V

    .line 502
    iput-object v2, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mBufferPool:Landroidx/graphics/opengl/FrameBufferPool;

    .line 503
    iput-object v2, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    .line 504
    iput-object v2, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mRenderTarget:Landroidx/graphics/opengl/GLRenderer$RenderTarget;

    return-void
.end method

.method public final drawAsync$graphics_core_release(Ljava/lang/Runnable;)V
    .locals 4

    .line 438
    iget-object v0, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mRenderTarget:Landroidx/graphics/opengl/GLRenderer$RenderTarget;

    .line 439
    iget-object v1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mGLRenderer:Landroidx/graphics/opengl/GLRenderer;

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v1}, Landroidx/graphics/opengl/GLRenderer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    new-instance v0, Landroidx/graphics/opengl/GLFrameBufferRenderer$drawAsync$eglContextCallback$1;

    invoke-direct {v0, p1, v1}, Landroidx/graphics/opengl/GLFrameBufferRenderer$drawAsync$eglContextCallback$1;-><init>(Ljava/lang/Runnable;Landroidx/graphics/opengl/GLRenderer;)V

    .line 455
    move-object v2, v0

    check-cast v2, Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;

    invoke-virtual {v1, v2}, Landroidx/graphics/opengl/GLRenderer;->registerEGLContextCallback(Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;)V

    .line 456
    iget-object v2, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mRenderTarget:Landroidx/graphics/opengl/GLRenderer$RenderTarget;

    if-eqz v2, :cond_1

    new-instance v3, Landroidx/graphics/opengl/GLFrameBufferRenderer$drawAsync$1;

    invoke-direct {v3, p1, v1, v0}, Landroidx/graphics/opengl/GLFrameBufferRenderer$drawAsync$1;-><init>(Ljava/lang/Runnable;Landroidx/graphics/opengl/GLRenderer;Landroidx/graphics/opengl/GLFrameBufferRenderer$drawAsync$eglContextCallback$1;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v3}, Landroidx/graphics/opengl/GLRenderer$RenderTarget;->requestRender(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 461
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Landroidx/graphics/opengl/GLFrameBufferRenderer;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mGLRenderer:Landroidx/graphics/opengl/GLRenderer;

    invoke-virtual {v0, p1}, Landroidx/graphics/opengl/GLRenderer;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 314
    :cond_0
    sget-object p1, Landroidx/graphics/opengl/GLFrameBufferRenderer;->TAG:Ljava/lang/String;

    const-string v0, "Attempt to execute runnable after GLFrameBufferRenderer has been released"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final getBufferFormat()I
    .locals 1

    .line 325
    iget v0, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mFormat:I

    return v0
.end method

.method public final getGLRenderer()Landroidx/graphics/opengl/GLRenderer;
    .locals 1

    .line 342
    iget-object v0, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mGLRenderer:Landroidx/graphics/opengl/GLRenderer;

    return-object v0
.end method

.method public final getMaxBuffers()I
    .locals 1

    .line 359
    iget v0, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mMaxBuffers:I

    return v0
.end method

.method public final getSyncStrategy()Landroidx/graphics/opengl/SyncStrategy;
    .locals 1

    .line 352
    iget-object v0, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mSyncStrategy:Landroidx/graphics/opengl/SyncStrategy;

    return-object v0
.end method

.method public final getUsageFlags()J
    .locals 2

    .line 333
    iget-wide v0, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mUsage:J

    return-wide v0
.end method

.method public final isValid()Z
    .locals 1

    .line 515
    iget-boolean v0, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mIsReleased:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final release(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Landroidx/graphics/opengl/GLFrameBufferRenderer;->release$default(Landroidx/graphics/opengl/GLFrameBufferRenderer;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

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

    .line 477
    iget-boolean v0, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mIsReleased:Z

    if-nez v0, :cond_1

    .line 478
    invoke-virtual {p0, p1, p2}, Landroidx/graphics/opengl/GLFrameBufferRenderer;->detachTargets$graphics_core_release(ZLkotlin/jvm/functions/Function0;)V

    .line 479
    iget-object p1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->surfaceControlProvider:Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceControlProvider;

    invoke-interface {p1}, Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceControlProvider;->release()V

    .line 481
    iget-object p1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mGLRenderer:Landroidx/graphics/opengl/GLRenderer;

    iget-object p2, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mContextCallbacks:Landroidx/graphics/opengl/GLFrameBufferRenderer$mContextCallbacks$1;

    check-cast p2, Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;

    invoke-virtual {p1, p2}, Landroidx/graphics/opengl/GLRenderer;->unregisterEGLContextCallback(Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;)V

    .line 482
    iget-boolean p1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mIsManagingGLRenderer:Z

    if-eqz p1, :cond_0

    .line 483
    iget-object p1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mGLRenderer:Landroidx/graphics/opengl/GLRenderer;

    const/4 p2, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0, v1}, Landroidx/graphics/opengl/GLRenderer;->stop$default(Landroidx/graphics/opengl/GLRenderer;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    .line 486
    iput-boolean p1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mIsReleased:Z

    goto :goto_0

    .line 488
    :cond_1
    sget-object p1, Landroidx/graphics/opengl/GLFrameBufferRenderer;->TAG:Ljava/lang/String;

    const-string p2, "Attempt to release already released GLFrameBufferRenderer"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final render()V
    .locals 3

    .line 524
    iget-boolean v0, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mIsReleased:Z

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->mRenderTarget:Landroidx/graphics/opengl/GLRenderer$RenderTarget;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroidx/graphics/opengl/GLRenderer$RenderTarget;->requestRender$default(Landroidx/graphics/opengl/GLRenderer$RenderTarget;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    goto :goto_0

    .line 527
    :cond_0
    sget-object v0, Landroidx/graphics/opengl/GLFrameBufferRenderer;->TAG:Ljava/lang/String;

    const-string v1, "renderer is released, ignoring request"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
