.class public final Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$mRenderQueue$2;
.super Ljava/lang/Object;
.source "SingleBufferedCanvasRendererV29.kt"

# interfaces
.implements Landroidx/graphics/RenderQueue$FrameCallback;


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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u001a\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "androidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$mRenderQueue$2",
        "Landroidx/graphics/RenderQueue$FrameCallback;",
        "onFrameCancelled",
        "",
        "hardwareBuffer",
        "Landroid/hardware/HardwareBuffer;",
        "fence",
        "Landroidx/hardware/SyncFenceCompat;",
        "onFrameComplete",
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

    iput-object p1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$mRenderQueue$2;->this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameCancelled(Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;)V
    .locals 1

    const-string v0, "hardwareBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$mRenderQueue$2;->this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;

    invoke-static {v0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->access$getCallbacks$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;)Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;->onBufferCancelled(Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;)V

    return-void
.end method

.method public onFrameComplete(Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;)V
    .locals 1

    const-string v0, "hardwareBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$mRenderQueue$2;->this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;

    invoke-static {v0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->access$getCallbacks$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;)Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;->onBufferReady(Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;)V

    return-void
.end method
