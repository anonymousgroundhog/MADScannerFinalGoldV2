.class public final Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$clearRequest$1;
.super Ljava/lang/Object;
.source "SingleBufferedCanvasRendererV29.kt"

# interfaces
.implements Landroidx/graphics/RenderQueue$Request;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;-><init>(IILandroidx/graphics/lowlatency/BufferTransformer;Landroidx/graphics/utils/HandlerThreadExecutor;Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSingleBufferedCanvasRendererV29.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SingleBufferedCanvasRendererV29.kt\nandroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$clearRequest$1\n+ 2 MultiBufferedCanvasRenderer.kt\nandroidx/graphics/MultiBufferedCanvasRenderer\n*L\n1#1,169:1\n90#2,4:170\n*S KotlinDebug\n*F\n+ 1 SingleBufferedCanvasRendererV29.kt\nandroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$clearRequest$1\n*L\n128#1:170,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "androidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$clearRequest$1",
        "Landroidx/graphics/RenderQueue$Request;",
        "id",
        "",
        "getId",
        "()I",
        "execute",
        "",
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
.field private final id:I

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

    iput-object p1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$clearRequest$1;->this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 131
    iput p1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$clearRequest$1;->id:I

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 128
    iget-object v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$clearRequest$1;->this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;

    invoke-static {v0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->access$getMBufferedRenderer$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;)Landroidx/graphics/MultiBufferedCanvasRenderer;

    move-result-object v0

    .line 170
    invoke-static {v0}, Landroidx/graphics/MultiBufferedCanvasRenderer;->access$getRenderNode$p(Landroidx/graphics/MultiBufferedCanvasRenderer;)Landroid/graphics/RenderNode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v1

    const-string/jumbo v2, "renderNode.beginRecording()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    check-cast v1, Landroid/graphics/Canvas;

    const/high16 v2, -0x1000000

    .line 128
    sget-object v3, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/BlendMode;)V

    .line 172
    invoke-static {v0}, Landroidx/graphics/MultiBufferedCanvasRenderer;->access$getRenderNode$p(Landroidx/graphics/MultiBufferedCanvasRenderer;)Landroid/graphics/RenderNode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    return-void
.end method

.method public getId()I
    .locals 1

    .line 131
    iget v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$clearRequest$1;->id:I

    return v0
.end method
