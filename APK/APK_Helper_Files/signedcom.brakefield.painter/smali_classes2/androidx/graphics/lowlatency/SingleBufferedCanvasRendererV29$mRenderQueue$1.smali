.class public final Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$mRenderQueue$1;
.super Ljava/lang/Object;
.source "SingleBufferedCanvasRendererV29.kt"

# interfaces
.implements Landroidx/graphics/RenderQueue$FrameProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;-><init>(IILandroidx/graphics/lowlatency/BufferTransformer;Landroidx/graphics/utils/HandlerThreadExecutor;Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;)V
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
        "androidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$mRenderQueue$1",
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
.field final synthetic this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$mRenderQueue$1;->this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public renderFrame(Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function2;)V
    .locals 1
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

    const-string/jumbo v0, "requestComplete"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$mRenderQueue$1;->this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;

    invoke-static {v0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->access$getMBufferedRenderer$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;)Landroidx/graphics/MultiBufferedCanvasRenderer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/graphics/MultiBufferedCanvasRenderer;->renderFrame(Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
