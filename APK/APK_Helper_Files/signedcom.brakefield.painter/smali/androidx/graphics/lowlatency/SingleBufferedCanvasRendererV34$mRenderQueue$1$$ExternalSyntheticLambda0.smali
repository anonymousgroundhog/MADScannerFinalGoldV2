.class public final synthetic Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$mRenderQueue$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$1:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$mRenderQueue$1$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$mRenderQueue$1$$ExternalSyntheticLambda0;->f$1:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$mRenderQueue$1$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$mRenderQueue$1$$ExternalSyntheticLambda0;->f$1:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;

    check-cast p1, Landroid/graphics/HardwareBufferRenderer$RenderResult;

    invoke-static {v0, v1, p1}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$mRenderQueue$1;->$r8$lambda$mK3RMTcz_qWwIIHsBHTK5PXmZdM(Lkotlin/jvm/functions/Function2;Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;Landroid/graphics/HardwareBufferRenderer$RenderResult;)V

    return-void
.end method
