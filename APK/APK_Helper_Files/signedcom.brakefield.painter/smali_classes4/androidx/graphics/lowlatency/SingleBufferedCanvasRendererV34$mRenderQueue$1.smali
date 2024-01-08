.class public final Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$mRenderQueue$1;
.super Ljava/lang/Object;
.source "SingleBufferedCanvasRendererV34.kt"

# interfaces
.implements Landroidx/graphics/RenderQueue$FrameProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;-><init>(IILandroidx/graphics/lowlatency/BufferTransformer;Landroidx/graphics/utils/HandlerThreadExecutor;Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J,\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u001a\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\u00030\u0007H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "androidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$mRenderQueue$1",
        "Landroidx/graphics/RenderQueue$FrameProducer;",
        "renderFrame",
        "",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "requestComplete",
        "Lkotlin/Function2;",
        "Landroid/hardware/HardwareBuffer;",
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


# instance fields
.field final synthetic this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$mK3RMTcz_qWwIIHsBHTK5PXmZdM(Lkotlin/jvm/functions/Function2;Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;Landroid/graphics/HardwareBufferRenderer$RenderResult;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$mRenderQueue$1;->renderFrame$lambda$1$lambda$0(Lkotlin/jvm/functions/Function2;Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;Landroid/graphics/HardwareBufferRenderer$RenderResult;)V

    return-void
.end method

.method constructor <init>(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$mRenderQueue$1;->this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final renderFrame$lambda$1$lambda$0(Lkotlin/jvm/functions/Function2;Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;Landroid/graphics/HardwareBufferRenderer$RenderResult;)V
    .locals 2

    const-string v0, "$requestComplete"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p1}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->access$getMHardwareBuffer$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)Landroid/hardware/HardwareBuffer;

    move-result-object p1

    new-instance v0, Landroidx/hardware/SyncFenceCompat;

    invoke-virtual {p2}, Landroid/graphics/HardwareBufferRenderer$RenderResult;->getFence()Landroid/hardware/SyncFence;

    move-result-object p2

    const-string v1, "result.fence"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p2}, Landroidx/hardware/SyncFenceCompat;-><init>(Landroid/hardware/SyncFence;)V

    invoke-interface {p0, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public renderFrame(Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/hardware/HardwareBuffer;",
            "-",
            "Landroidx/hardware/SyncFenceCompat;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestComplete"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$mRenderQueue$1;->this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;

    invoke-static {v0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->access$getMHardwareBufferRenderer$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)Landroid/graphics/HardwareBufferRenderer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/HardwareBufferRenderer;->obtainRenderRequest()Landroid/graphics/HardwareBufferRenderer$RenderRequest;

    move-result-object v0

    iget-object v1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$mRenderQueue$1;->this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;

    .line 56
    invoke-static {v1}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->access$getMInverseTransform$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 57
    invoke-static {v1}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->access$getMInverseTransform$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->setBufferTransform(I)Landroid/graphics/HardwareBufferRenderer$RenderRequest;

    .line 59
    :cond_0
    new-instance v2, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$mRenderQueue$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, v1}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$mRenderQueue$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)V

    invoke-virtual {v0, p1, v2}, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->draw(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method
