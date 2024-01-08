.class final Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$commitInternal$1$1$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CanvasFrontBufferedRenderer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->commitInternal(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/hardware/HardwareBuffer;",
        "Landroidx/hardware/SyncFenceCompat;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "buffer",
        "Landroid/hardware/HardwareBuffer;",
        "fence",
        "Landroidx/hardware/SyncFenceCompat;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $frontBufferSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

.field final synthetic $inverse:I

.field final synthetic $multiBufferedCanvasRenderer:Landroidx/graphics/MultiBufferedCanvasRenderer;

.field final synthetic $onComplete:Ljava/lang/Runnable;

.field final synthetic $parentSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

.field final synthetic $persistedCanvasRenderer:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;Landroidx/graphics/MultiBufferedCanvasRenderer;ILjava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer<",
            "TT;>;",
            "Landroidx/graphics/surface/SurfaceControlCompat;",
            "Landroidx/graphics/surface/SurfaceControlCompat;",
            "Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer<",
            "TT;>;",
            "Landroidx/graphics/MultiBufferedCanvasRenderer;",
            "I",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$commitInternal$1$1$1$2;->this$0:Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;

    iput-object p2, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$commitInternal$1$1$1$2;->$frontBufferSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    iput-object p3, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$commitInternal$1$1$1$2;->$parentSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    iput-object p4, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$commitInternal$1$1$1$2;->$persistedCanvasRenderer:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;

    iput-object p5, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$commitInternal$1$1$1$2;->$multiBufferedCanvasRenderer:Landroidx/graphics/MultiBufferedCanvasRenderer;

    iput p6, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$commitInternal$1$1$1$2;->$inverse:I

    iput-object p7, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$commitInternal$1$1$1$2;->$onComplete:Ljava/lang/Runnable;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 456
    check-cast p1, Landroid/hardware/HardwareBuffer;

    check-cast p2, Landroidx/hardware/SyncFenceCompat;

    invoke-virtual {p0, p1, p2}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$commitInternal$1$1$1$2;->invoke(Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;)V
    .locals 9

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    iget-object v1, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$commitInternal$1$1$1$2;->this$0:Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;

    .line 458
    iget-object v2, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$commitInternal$1$1$1$2;->$frontBufferSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    .line 459
    iget-object v3, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$commitInternal$1$1$1$2;->$parentSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    .line 460
    iget-object v4, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$commitInternal$1$1$1$2;->$persistedCanvasRenderer:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;

    .line 461
    iget-object v5, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$commitInternal$1$1$1$2;->$multiBufferedCanvasRenderer:Landroidx/graphics/MultiBufferedCanvasRenderer;

    .line 462
    iget v6, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$commitInternal$1$1$1$2;->$inverse:I

    move-object v7, p1

    move-object v8, p2

    .line 457
    invoke-virtual/range {v1 .. v8}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->setParentSurfaceControlBuffer$graphics_core_release(Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;Landroidx/graphics/MultiBufferedCanvasRenderer;ILandroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;)V

    .line 466
    iget-object p1, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$commitInternal$1$1$1$2;->$onComplete:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
