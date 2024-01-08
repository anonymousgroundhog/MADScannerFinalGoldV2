.class public final Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$clearRequest$1;
.super Ljava/lang/Object;
.source "SingleBufferedCanvasRendererV34.kt"

# interfaces
.implements Landroidx/graphics/RenderQueue$Request;


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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "androidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$clearRequest$1",
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

.field final synthetic this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$clearRequest$1;->this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 128
    iput p1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$clearRequest$1;->id:I

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 123
    iget-object v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$clearRequest$1;->this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;

    invoke-static {v0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->access$getMRenderNode$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)Landroid/graphics/RenderNode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v0

    const-string v1, "mRenderNode.beginRecording()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, -0x1000000

    .line 124
    sget-object v2, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RecordingCanvas;->drawColor(ILandroid/graphics/BlendMode;)V

    .line 125
    iget-object v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$clearRequest$1;->this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;

    invoke-static {v0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->access$getMRenderNode$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)Landroid/graphics/RenderNode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    return-void
.end method

.method public getId()I
    .locals 1

    .line 128
    iget v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$clearRequest$1;->id:I

    return v0
.end method
