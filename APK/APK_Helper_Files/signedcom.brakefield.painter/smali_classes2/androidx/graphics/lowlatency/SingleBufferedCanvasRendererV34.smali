.class public final Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;
.super Ljava/lang/Object;
.source "SingleBufferedCanvasRendererV34.kt"

# interfaces
.implements Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$Companion;,
        Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$DrawParamRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000k\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001\u000e\u0008\u0001\u0018\u0000 +*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0002+,B3\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010!\u001a\u00020\"H\u0016J\u0008\u0010#\u001a\u00020\"H\u0016J \u0010$\u001a\u00020\"2\u0006\u0010!\u001a\u00020\u00112\u000e\u0010%\u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010&H\u0016J\u0015\u0010\'\u001a\u00020\"2\u0006\u0010(\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010)J\u0008\u0010*\u001a\u00020\"H\u0002R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000eX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u00020\u0011X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u001a\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u001bj\u0008\u0012\u0004\u0012\u00028\u0000`\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006-"
    }
    d2 = {
        "Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;",
        "T",
        "Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;",
        "width",
        "",
        "height",
        "bufferTransformer",
        "Landroidx/graphics/lowlatency/BufferTransformer;",
        "handlerThread",
        "Landroidx/graphics/utils/HandlerThreadExecutor;",
        "callbacks",
        "Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;",
        "(IILandroidx/graphics/lowlatency/BufferTransformer;Landroidx/graphics/utils/HandlerThreadExecutor;Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;)V",
        "clearRequest",
        "androidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$clearRequest$1",
        "Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$clearRequest$1;",
        "isVisible",
        "",
        "()Z",
        "setVisible",
        "(Z)V",
        "mHardwareBuffer",
        "Landroid/hardware/HardwareBuffer;",
        "mHardwareBufferRenderer",
        "Landroid/graphics/HardwareBufferRenderer;",
        "mInverseTransform",
        "mPendingParams",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "mRenderNode",
        "Landroid/graphics/RenderNode;",
        "mRenderQueue",
        "Landroidx/graphics/RenderQueue;",
        "cancelPending",
        "",
        "clear",
        "release",
        "onReleaseComplete",
        "Lkotlin/Function0;",
        "render",
        "param",
        "(Ljava/lang/Object;)V",
        "tearDown",
        "Companion",
        "DrawParamRequest",
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
.field public static final CLEAR:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$Companion;

.field public static final RENDER:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final callbacks:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final clearRequest:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$clearRequest$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$clearRequest$1<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final height:I

.field private isVisible:Z

.field private final mHardwareBuffer:Landroid/hardware/HardwareBuffer;

.field private final mHardwareBufferRenderer:Landroid/graphics/HardwareBufferRenderer;

.field private final mInverseTransform:I

.field private final mPendingParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mRenderNode:Landroid/graphics/RenderNode;

.field private final mRenderQueue:Landroidx/graphics/RenderQueue;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->Companion:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$Companion;

    return-void
.end method

.method public constructor <init>(IILandroidx/graphics/lowlatency/BufferTransformer;Landroidx/graphics/utils/HandlerThreadExecutor;Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroidx/graphics/lowlatency/BufferTransformer;",
            "Landroidx/graphics/utils/HandlerThreadExecutor;",
            "Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "bufferTransformer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handlerThread"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbacks"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->width:I

    .line 33
    iput p2, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->height:I

    .line 36
    iput-object p5, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->callbacks:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;

    .line 39
    new-instance p5, Landroid/graphics/RenderNode;

    const-string v0, "node"

    invoke-direct {p5, v0}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p5, v0, v0, p1, p2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 39
    iput-object p5, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->mRenderNode:Landroid/graphics/RenderNode;

    .line 48
    new-instance p1, Landroidx/graphics/RenderQueue;

    .line 50
    new-instance p2, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$mRenderQueue$1;

    invoke-direct {p2, p0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$mRenderQueue$1;-><init>(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)V

    check-cast p2, Landroidx/graphics/RenderQueue$FrameProducer;

    .line 65
    new-instance v0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$mRenderQueue$2;

    invoke-direct {v0, p0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$mRenderQueue$2;-><init>(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)V

    check-cast v0, Landroidx/graphics/RenderQueue$FrameCallback;

    .line 48
    invoke-direct {p1, p4, p2, v0}, Landroidx/graphics/RenderQueue;-><init>(Landroidx/graphics/utils/HandlerThreadExecutor;Landroidx/graphics/RenderQueue$FrameProducer;Landroidx/graphics/RenderQueue$FrameCallback;)V

    iput-object p1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->mRenderQueue:Landroidx/graphics/RenderQueue;

    .line 83
    invoke-virtual {p3}, Landroidx/graphics/lowlatency/BufferTransformer;->getComputedTransform()I

    move-result p1

    invoke-virtual {p3, p1}, Landroidx/graphics/lowlatency/BufferTransformer;->invertBufferTransform(I)I

    move-result p1

    iput p1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->mInverseTransform:I

    .line 90
    invoke-virtual {p3}, Landroidx/graphics/lowlatency/BufferTransformer;->getGlWidth()I

    move-result v0

    .line 91
    invoke-virtual {p3}, Landroidx/graphics/lowlatency/BufferTransformer;->getGlHeight()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 94
    sget-object p1, Landroidx/graphics/lowlatency/FrontBufferUtils;->Companion:Landroidx/graphics/lowlatency/FrontBufferUtils$Companion;

    invoke-virtual {p1}, Landroidx/graphics/lowlatency/FrontBufferUtils$Companion;->obtainHardwareBufferUsageFlags$graphics_core_release()J

    move-result-wide v4

    .line 89
    invoke-static/range {v0 .. v5}, Landroid/hardware/HardwareBuffer;->create(IIIIJ)Landroid/hardware/HardwareBuffer;

    move-result-object p1

    const-string p2, "create(\n        bufferTr\u2026eBufferUsageFlags()\n    )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    .line 97
    new-instance p2, Landroid/graphics/HardwareBufferRenderer;

    invoke-direct {p2, p1}, Landroid/graphics/HardwareBufferRenderer;-><init>(Landroid/hardware/HardwareBuffer;)V

    .line 98
    invoke-virtual {p2, p5}, Landroid/graphics/HardwareBufferRenderer;->setContentRoot(Landroid/graphics/RenderNode;)V

    .line 97
    iput-object p2, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->mHardwareBufferRenderer:Landroid/graphics/HardwareBufferRenderer;

    .line 101
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->mPendingParams:Ljava/util/ArrayList;

    .line 121
    new-instance p1, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$clearRequest$1;

    invoke-direct {p1, p0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$clearRequest$1;-><init>(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)V

    iput-object p1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->clearRequest:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$clearRequest$1;

    return-void
.end method

.method public static final synthetic access$getCallbacks$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;
    .locals 0

    .line 30
    iget-object p0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->callbacks:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;

    return-object p0
.end method

.method public static final synthetic access$getHeight$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)I
    .locals 0

    .line 30
    iget p0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->height:I

    return p0
.end method

.method public static final synthetic access$getMHardwareBuffer$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)Landroid/hardware/HardwareBuffer;
    .locals 0

    .line 30
    iget-object p0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-object p0
.end method

.method public static final synthetic access$getMHardwareBufferRenderer$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)Landroid/graphics/HardwareBufferRenderer;
    .locals 0

    .line 30
    iget-object p0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->mHardwareBufferRenderer:Landroid/graphics/HardwareBufferRenderer;

    return-object p0
.end method

.method public static final synthetic access$getMInverseTransform$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)I
    .locals 0

    .line 30
    iget p0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->mInverseTransform:I

    return p0
.end method

.method public static final synthetic access$getMPendingParams$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->mPendingParams:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getMRenderNode$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)Landroid/graphics/RenderNode;
    .locals 0

    .line 30
    iget-object p0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->mRenderNode:Landroid/graphics/RenderNode;

    return-object p0
.end method

.method public static final synthetic access$getWidth$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)I
    .locals 0

    .line 30
    iget p0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->width:I

    return p0
.end method

.method public static final synthetic access$tearDown(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->tearDown()V

    return-void
.end method

.method private final tearDown()V
    .locals 1

    .line 86
    iget-object v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->mHardwareBufferRenderer:Landroid/graphics/HardwareBufferRenderer;

    invoke-virtual {v0}, Landroid/graphics/HardwareBufferRenderer;->close()V

    return-void
.end method


# virtual methods
.method public cancelPending()V
    .locals 1

    .line 149
    iget-object v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->mRenderQueue:Landroidx/graphics/RenderQueue;

    invoke-virtual {v0}, Landroidx/graphics/RenderQueue;->cancelPending()V

    return-void
.end method

.method public clear()V
    .locals 2

    .line 145
    iget-object v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->mRenderQueue:Landroidx/graphics/RenderQueue;

    iget-object v1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->clearRequest:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$clearRequest$1;

    check-cast v1, Landroidx/graphics/RenderQueue$Request;

    invoke-virtual {v0, v1}, Landroidx/graphics/RenderQueue;->enqueue(Landroidx/graphics/RenderQueue$Request;)V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->isVisible:Z

    return v0
.end method

.method public release(ZLkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->mRenderQueue:Landroidx/graphics/RenderQueue;

    new-instance v1, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$release$1;

    invoke-direct {v1, p2, p0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$release$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, p1, v1}, Landroidx/graphics/RenderQueue;->release(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public render(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->mRenderQueue:Landroidx/graphics/RenderQueue;

    new-instance v1, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$DrawParamRequest;

    invoke-direct {v1, p0, p1}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$DrawParamRequest;-><init>(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;Ljava/lang/Object;)V

    check-cast v1, Landroidx/graphics/RenderQueue$Request;

    invoke-virtual {v0, v1}, Landroidx/graphics/RenderQueue;->enqueue(Landroidx/graphics/RenderQueue$Request;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->isVisible:Z

    return-void
.end method
