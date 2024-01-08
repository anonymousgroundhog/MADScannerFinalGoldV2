.class public final Landroidx/graphics/lowlatency/TextureProducer;
.super Ljava/lang/Object;
.source "TextureProducer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/lowlatency/TextureProducer$Callbacks;,
        Landroidx/graphics/lowlatency/TextureProducer$Companion;
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
    value = "SMAP\nTextureProducer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextureProducer.kt\nandroidx/graphics/lowlatency/TextureProducer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,191:1\n79#1,4:193\n1#2:192\n*S KotlinDebug\n*F\n+ 1 TextureProducer.kt\nandroidx/graphics/lowlatency/TextureProducer\n*L\n97#1:193,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u0000 3*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u000223B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u001e\u001a\u00020\u001fH\u0007J\u0008\u0010 \u001a\u00020\u001fH\u0003J\u0010\u0010!\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\u000eH\u0007J\u0008\u0010#\u001a\u00020\u0010H\u0003J\u0008\u0010$\u001a\u00020\u001fH\u0007J\"\u0010%\u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u00102\u0010\u0008\u0002\u0010&\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\'H\u0007J\u0010\u0010(\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\u000eH\u0007J\u0015\u0010)\u001a\u00020\u001f2\u0006\u0010*\u001a\u00028\u0000H\u0007\u00a2\u0006\u0002\u0010+J\u001a\u0010,\u001a\u00020\u001f2\u0010\u0008\u0002\u0010-\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\'H\u0003J!\u0010.\u001a\u00020\u001f*\u00020\u001a2\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020\u001f00H\u0082\u0008R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0012j\u0008\u0012\u0004\u0012\u00028\u0000`\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u000c\u00a8\u00064"
    }
    d2 = {
        "Landroidx/graphics/lowlatency/TextureProducer;",
        "T",
        "",
        "width",
        "",
        "height",
        "callbacks",
        "Landroidx/graphics/lowlatency/TextureProducer$Callbacks;",
        "(IILandroidx/graphics/lowlatency/TextureProducer$Callbacks;)V",
        "getCallbacks",
        "()Landroidx/graphics/lowlatency/TextureProducer$Callbacks;",
        "getHeight",
        "()I",
        "mCancelPendingRunnable",
        "Ljava/lang/Runnable;",
        "mIsReleasing",
        "",
        "mParams",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "mPendingRenders",
        "mProducerHandler",
        "Landroid/os/Handler;",
        "mProducerThread",
        "Landroid/os/HandlerThread;",
        "mRenderNode",
        "Landroid/graphics/RenderNode;",
        "mSurfaceTextureRenderer",
        "Landroidx/graphics/SurfaceTextureRenderer;",
        "getWidth",
        "cancelPending",
        "",
        "doRender",
        "execute",
        "runnable",
        "isPendingRendering",
        "markTextureConsumed",
        "release",
        "onReleaseComplete",
        "Lkotlin/Function0;",
        "remove",
        "requestRender",
        "param",
        "(Ljava/lang/Object;)V",
        "teardown",
        "releaseCallback",
        "record",
        "block",
        "Lkotlin/Function1;",
        "Landroid/graphics/Canvas;",
        "Callbacks",
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
.field public static final CANCEL_PENDING:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Landroidx/graphics/lowlatency/TextureProducer$Companion;

.field public static final MAX_PENDING_RENDERS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RELEASE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RENDER:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TEXTURE_CONSUMED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final callbacks:Landroidx/graphics/lowlatency/TextureProducer$Callbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/graphics/lowlatency/TextureProducer$Callbacks<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final height:I

.field private final mCancelPendingRunnable:Ljava/lang/Runnable;

.field private mIsReleasing:Z

.field private final mParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mPendingRenders:I

.field private final mProducerHandler:Landroid/os/Handler;

.field private final mProducerThread:Landroid/os/HandlerThread;

.field private final mRenderNode:Landroid/graphics/RenderNode;

.field private final mSurfaceTextureRenderer:Landroidx/graphics/SurfaceTextureRenderer;

.field private final width:I


# direct methods
.method public static synthetic $r8$lambda$7xFy6cJTlP7HEfTq8ThpJUORPPQ(Landroidx/graphics/lowlatency/TextureProducer;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/graphics/lowlatency/TextureProducer;->requestRender$lambda$4(Landroidx/graphics/lowlatency/TextureProducer;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G304UqjQ6JXyTUg-1XD94K4sZWc(Landroidx/graphics/lowlatency/TextureProducer;)V
    .locals 0

    invoke-static {p0}, Landroidx/graphics/lowlatency/TextureProducer;->mCancelPendingRunnable$lambda$1(Landroidx/graphics/lowlatency/TextureProducer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Oo8MJoRkdvIrFWWeQl1eft3NLOc(Landroidx/graphics/lowlatency/TextureProducer;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/graphics/lowlatency/TextureProducer;->release$lambda$6(Landroidx/graphics/lowlatency/TextureProducer;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QlLAhx-L00d3yxfllsmoE7U78t8(Landroidx/graphics/lowlatency/TextureProducer;)V
    .locals 0

    invoke-static {p0}, Landroidx/graphics/lowlatency/TextureProducer;->markTextureConsumed$lambda$5(Landroidx/graphics/lowlatency/TextureProducer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/lowlatency/TextureProducer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/lowlatency/TextureProducer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/lowlatency/TextureProducer;->Companion:Landroidx/graphics/lowlatency/TextureProducer$Companion;

    return-void
.end method

.method public constructor <init>(IILandroidx/graphics/lowlatency/TextureProducer$Callbacks;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroidx/graphics/lowlatency/TextureProducer$Callbacks<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callbacks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Landroidx/graphics/lowlatency/TextureProducer;->width:I

    .line 39
    iput p2, p0, Landroidx/graphics/lowlatency/TextureProducer;->height:I

    .line 40
    iput-object p3, p0, Landroidx/graphics/lowlatency/TextureProducer;->callbacks:Landroidx/graphics/lowlatency/TextureProducer$Callbacks;

    .line 50
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/graphics/lowlatency/TextureProducer;->mParams:Ljava/util/ArrayList;

    .line 52
    new-instance p3, Landroid/os/HandlerThread;

    const-string v0, "producerThread"

    invoke-direct {p3, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/HandlerThread;->start()V

    iput-object p3, p0, Landroidx/graphics/lowlatency/TextureProducer;->mProducerThread:Landroid/os/HandlerThread;

    .line 53
    new-instance v5, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {v5, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, p0, Landroidx/graphics/lowlatency/TextureProducer;->mProducerHandler:Landroid/os/Handler;

    .line 55
    new-instance p3, Landroidx/graphics/lowlatency/TextureProducer$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Landroidx/graphics/lowlatency/TextureProducer$$ExternalSyntheticLambda0;-><init>(Landroidx/graphics/lowlatency/TextureProducer;)V

    iput-object p3, p0, Landroidx/graphics/lowlatency/TextureProducer;->mCancelPendingRunnable:Ljava/lang/Runnable;

    .line 69
    new-instance v2, Landroid/graphics/RenderNode;

    const-string p3, "node"

    invoke-direct {v2, p3}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 70
    invoke-virtual {v2, p3, p3, p1, p2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 69
    iput-object v2, p0, Landroidx/graphics/lowlatency/TextureProducer;->mRenderNode:Landroid/graphics/RenderNode;

    .line 84
    new-instance p3, Landroidx/graphics/SurfaceTextureRenderer;

    .line 89
    new-instance v0, Landroidx/graphics/lowlatency/TextureProducer$mSurfaceTextureRenderer$1;

    invoke-direct {v0, p0}, Landroidx/graphics/lowlatency/TextureProducer$mSurfaceTextureRenderer$1;-><init>(Landroidx/graphics/lowlatency/TextureProducer;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object v1, p3

    move v3, p1

    move v4, p2

    .line 84
    invoke-direct/range {v1 .. v6}, Landroidx/graphics/SurfaceTextureRenderer;-><init>(Landroid/graphics/RenderNode;IILandroid/os/Handler;Lkotlin/jvm/functions/Function1;)V

    iput-object p3, p0, Landroidx/graphics/lowlatency/TextureProducer;->mSurfaceTextureRenderer:Landroidx/graphics/SurfaceTextureRenderer;

    return-void
.end method

.method private final doRender()V
    .locals 7

    .line 95
    iget v0, p0, Landroidx/graphics/lowlatency/TextureProducer;->mPendingRenders:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 96
    iget-object v0, p0, Landroidx/graphics/lowlatency/TextureProducer;->mParams:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Landroidx/graphics/lowlatency/TextureProducer;->mRenderNode:Landroid/graphics/RenderNode;

    .line 193
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v1

    const-string v2, "beginRecording()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    check-cast v1, Landroid/graphics/Canvas;

    .line 98
    iget-object v2, p0, Landroidx/graphics/lowlatency/TextureProducer;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 99
    iget-object v4, p0, Landroidx/graphics/lowlatency/TextureProducer;->callbacks:Landroidx/graphics/lowlatency/TextureProducer$Callbacks;

    iget v5, p0, Landroidx/graphics/lowlatency/TextureProducer;->width:I

    iget v6, p0, Landroidx/graphics/lowlatency/TextureProducer;->height:I

    invoke-interface {v4, v1, v5, v6, v3}, Landroidx/graphics/lowlatency/TextureProducer$Callbacks;->render(Landroid/graphics/Canvas;IILjava/lang/Object;)V

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 102
    iget-object v0, p0, Landroidx/graphics/lowlatency/TextureProducer;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 103
    iget v0, p0, Landroidx/graphics/lowlatency/TextureProducer;->mPendingRenders:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/graphics/lowlatency/TextureProducer;->mPendingRenders:I

    .line 104
    iget-object v0, p0, Landroidx/graphics/lowlatency/TextureProducer;->mSurfaceTextureRenderer:Landroidx/graphics/SurfaceTextureRenderer;

    invoke-virtual {v0}, Landroidx/graphics/SurfaceTextureRenderer;->renderFrame()V

    :cond_1
    return-void
.end method

.method private final isPendingRendering()Z
    .locals 2

    .line 67
    iget-object v0, p0, Landroidx/graphics/lowlatency/TextureProducer;->mParams:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/graphics/lowlatency/TextureProducer;->mPendingRenders:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private static final mCancelPendingRunnable$lambda$1(Landroidx/graphics/lowlatency/TextureProducer;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object p0, p0, Landroidx/graphics/lowlatency/TextureProducer;->mParams:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private static final markTextureConsumed$lambda$5(Landroidx/graphics/lowlatency/TextureProducer;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget v0, p0, Landroidx/graphics/lowlatency/TextureProducer;->mPendingRenders:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/graphics/lowlatency/TextureProducer;->mPendingRenders:I

    .line 129
    iget-boolean v0, p0, Landroidx/graphics/lowlatency/TextureProducer;->mIsReleasing:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/graphics/lowlatency/TextureProducer;->isPendingRendering()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    invoke-static {p0, v1, v0, v1}, Landroidx/graphics/lowlatency/TextureProducer;->teardown$default(Landroidx/graphics/lowlatency/TextureProducer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-direct {p0}, Landroidx/graphics/lowlatency/TextureProducer;->doRender()V

    :goto_0
    return-void
.end method

.method private final record(Landroid/graphics/RenderNode;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RenderNode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-virtual {p1}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v0

    const-string v1, "beginRecording()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p1}, Landroid/graphics/RenderNode;->endRecording()V

    return-void
.end method

.method public static synthetic release$default(Landroidx/graphics/lowlatency/TextureProducer;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 148
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/graphics/lowlatency/TextureProducer;->release(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final release$lambda$6(Landroidx/graphics/lowlatency/TextureProducer;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Landroidx/graphics/lowlatency/TextureProducer;->mIsReleasing:Z

    .line 154
    invoke-direct {p0}, Landroidx/graphics/lowlatency/TextureProducer;->isPendingRendering()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-direct {p0, p1}, Landroidx/graphics/lowlatency/TextureProducer;->teardown(Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method

.method private static final requestRender$lambda$4(Landroidx/graphics/lowlatency/TextureProducer;Ljava/lang/Object;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-boolean v0, p0, Landroidx/graphics/lowlatency/TextureProducer;->mIsReleasing:Z

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Landroidx/graphics/lowlatency/TextureProducer;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-direct {p0}, Landroidx/graphics/lowlatency/TextureProducer;->doRender()V

    :cond_0
    return-void
.end method

.method private final teardown(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 61
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 62
    :cond_0
    iget-object p1, p0, Landroidx/graphics/lowlatency/TextureProducer;->mSurfaceTextureRenderer:Landroidx/graphics/SurfaceTextureRenderer;

    invoke-virtual {p1}, Landroidx/graphics/SurfaceTextureRenderer;->release()V

    .line 63
    iget-object p1, p0, Landroidx/graphics/lowlatency/TextureProducer;->mProducerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method static synthetic teardown$default(Landroidx/graphics/lowlatency/TextureProducer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 60
    :cond_0
    invoke-direct {p0, p1}, Landroidx/graphics/lowlatency/TextureProducer;->teardown(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final cancelPending()V
    .locals 3

    .line 121
    iget-object v0, p0, Landroidx/graphics/lowlatency/TextureProducer;->mProducerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Landroidx/graphics/lowlatency/TextureProducer;->mProducerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroidx/graphics/lowlatency/TextureProducer;->mCancelPendingRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Landroidx/graphics/utils/HandlerUtilsKt;->post(Landroid/os/Handler;Ljava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Landroidx/graphics/lowlatency/TextureProducer;->mProducerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getCallbacks()Landroidx/graphics/lowlatency/TextureProducer$Callbacks;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/graphics/lowlatency/TextureProducer$Callbacks<",
            "TT;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Landroidx/graphics/lowlatency/TextureProducer;->callbacks:Landroidx/graphics/lowlatency/TextureProducer$Callbacks;

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .line 39
    iget v0, p0, Landroidx/graphics/lowlatency/TextureProducer;->height:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 38
    iget v0, p0, Landroidx/graphics/lowlatency/TextureProducer;->width:I

    return v0
.end method

.method public final markTextureConsumed()V
    .locals 3

    .line 127
    iget-object v0, p0, Landroidx/graphics/lowlatency/TextureProducer;->mProducerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/graphics/lowlatency/TextureProducer$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Landroidx/graphics/lowlatency/TextureProducer$$ExternalSyntheticLambda3;-><init>(Landroidx/graphics/lowlatency/TextureProducer;)V

    invoke-static {v0, v1, v2}, Landroidx/graphics/utils/HandlerUtilsKt;->post(Landroid/os/Handler;Ljava/lang/Object;Ljava/lang/Runnable;)V

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

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p0}, Landroidx/graphics/lowlatency/TextureProducer;->cancelPending()V

    .line 152
    :cond_0
    iget-object p1, p0, Landroidx/graphics/lowlatency/TextureProducer;->mProducerHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroidx/graphics/lowlatency/TextureProducer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Landroidx/graphics/lowlatency/TextureProducer$$ExternalSyntheticLambda1;-><init>(Landroidx/graphics/lowlatency/TextureProducer;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0, v1}, Landroidx/graphics/utils/HandlerUtilsKt;->post(Landroid/os/Handler;Ljava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final remove(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Landroidx/graphics/lowlatency/TextureProducer;->mProducerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final requestRender(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Landroidx/graphics/lowlatency/TextureProducer;->mProducerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/graphics/lowlatency/TextureProducer$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Landroidx/graphics/lowlatency/TextureProducer$$ExternalSyntheticLambda2;-><init>(Landroidx/graphics/lowlatency/TextureProducer;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroidx/graphics/utils/HandlerUtilsKt;->post(Landroid/os/Handler;Ljava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method
