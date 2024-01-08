.class public final Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$update$1;
.super Ljava/lang/Object;
.source "CanvasFrontBufferedRenderer.kt"

# interfaces
.implements Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->update$graphics_core_release(Landroid/view/SurfaceView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0017J-\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "androidx/graphics/lowlatency/CanvasFrontBufferedRenderer$update$1",
        "Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;",
        "onBufferReady",
        "",
        "hardwareBuffer",
        "Landroid/hardware/HardwareBuffer;",
        "syncFenceCompat",
        "Landroidx/hardware/SyncFenceCompat;",
        "render",
        "canvas",
        "Landroid/graphics/Canvas;",
        "width",
        "",
        "height",
        "param",
        "(Landroid/graphics/Canvas;IILjava/lang/Object;)V",
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
.field final synthetic $frontBufferSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

.field final synthetic $inverse:I

.field final synthetic $parentSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

.field final synthetic $singleBufferedCanvasRenderer:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer<",
            "TT;>;>;"
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
.method constructor <init>(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer<",
            "TT;>;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer<",
            "TT;>;>;",
            "Landroidx/graphics/surface/SurfaceControlCompat;",
            "Landroidx/graphics/surface/SurfaceControlCompat;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$update$1;->this$0:Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;

    iput-object p2, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$update$1;->$singleBufferedCanvasRenderer:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$update$1;->$frontBufferSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    iput-object p4, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$update$1;->$parentSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    iput p5, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$update$1;->$inverse:I

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferReady(Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;)V
    .locals 11

    const-string v0, "hardwareBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$update$1;->$singleBufferedCanvasRenderer:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;->setVisible(Z)V

    .line 224
    :goto_0
    new-instance v0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;

    invoke-direct {v0}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;-><init>()V

    .line 225
    iget-object v2, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$update$1;->$frontBufferSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    const v3, 0x7fffffff

    invoke-virtual {v0, v2, v3}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->setLayer(Landroidx/graphics/surface/SurfaceControlCompat;I)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;

    move-result-object v4

    .line 227
    iget-object v5, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$update$1;->$frontBufferSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move-object v6, p1

    move-object v7, p2

    .line 226
    invoke-static/range {v4 .. v10}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->setBuffer$default(Landroidx/graphics/surface/SurfaceControlCompat$Transaction;Landroidx/graphics/surface/SurfaceControlCompat;Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;

    move-result-object p1

    .line 231
    iget-object v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$update$1;->$frontBufferSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    invoke-virtual {p1, v0, v1}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->setVisibility(Landroidx/graphics/surface/SurfaceControlCompat;Z)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;

    move-result-object p1

    .line 232
    iget-object v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$update$1;->$frontBufferSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    iget-object v1, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$update$1;->$parentSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    invoke-virtual {p1, v0, v1}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->reparent(Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat;)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;

    move-result-object p1

    .line 233
    iget v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$update$1;->$inverse:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 235
    iget-object v1, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$update$1;->$frontBufferSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    .line 234
    invoke-virtual {p1, v1, v0}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->setBufferTransform(Landroidx/graphics/surface/SurfaceControlCompat;I)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;

    .line 239
    :cond_1
    iget-object v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$update$1;->this$0:Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;

    invoke-static {v0}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->access$getCallback$p(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;)Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$Callback;

    move-result-object v0

    .line 240
    iget-object v1, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$update$1;->$frontBufferSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    .line 239
    invoke-interface {v0, v1, p1}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$Callback;->onFrontBufferedLayerRenderComplete(Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat$Transaction;)V

    .line 241
    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->commit()V

    if-eqz p2, :cond_2

    .line 242
    invoke-virtual {p2}, Landroidx/hardware/SyncFenceCompat;->close()V

    :cond_2
    return-void
.end method

.method public render(Landroid/graphics/Canvas;IILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "IITT;)V"
        }
    .end annotation

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$update$1;->this$0:Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;

    invoke-static {v0}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->access$getMPendingClear$p(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    .line 212
    sget-object v1, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/BlendMode;)V

    .line 213
    iget-object v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$update$1;->this$0:Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->access$setMPendingClear$p(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;Z)V

    .line 215
    :cond_0
    iget-object v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$update$1;->this$0:Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;

    invoke-static {v0}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->access$getCallback$p(Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;)Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$Callback;->onDrawFrontBufferedLayer(Landroid/graphics/Canvas;IILjava/lang/Object;)V

    return-void
.end method
