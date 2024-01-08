.class final Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$DrawParamRequest;
.super Ljava/lang/Object;
.source "SingleBufferedCanvasRendererV29.kt"

# interfaces
.implements Landroidx/graphics/RenderQueue$Request;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DrawParamRequest"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSingleBufferedCanvasRendererV29.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SingleBufferedCanvasRendererV29.kt\nandroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$DrawParamRequest\n+ 2 MultiBufferedCanvasRenderer.kt\nandroidx/graphics/MultiBufferedCanvasRenderer\n*L\n1#1,169:1\n90#2,4:170\n*S KotlinDebug\n*F\n+ 1 SingleBufferedCanvasRendererV29.kt\nandroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$DrawParamRequest\n*L\n112#1:170,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\u0002\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$DrawParamRequest;",
        "Landroidx/graphics/RenderQueue$Request;",
        "param",
        "(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;Ljava/lang/Object;)V",
        "id",
        "",
        "getId",
        "()I",
        "getParam",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "execute",
        "",
        "onEnqueued",
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

.field private final param:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$DrawParamRequest;->this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$DrawParamRequest;->param:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8

    .line 112
    iget-object v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$DrawParamRequest;->this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;

    invoke-static {v0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->access$getMBufferedRenderer$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;)Landroidx/graphics/MultiBufferedCanvasRenderer;

    move-result-object v0

    iget-object v1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$DrawParamRequest;->this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;

    .line 170
    invoke-static {v0}, Landroidx/graphics/MultiBufferedCanvasRenderer;->access$getRenderNode$p(Landroidx/graphics/MultiBufferedCanvasRenderer;)Landroid/graphics/RenderNode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v2

    const-string v3, "renderNode.beginRecording()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    check-cast v2, Landroid/graphics/Canvas;

    .line 113
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 114
    invoke-static {v1}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->access$getMTransform$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 115
    invoke-static {v1}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->access$getMPendingParams$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 116
    invoke-static {v1}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->access$getCallbacks$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;)Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;

    move-result-object v5

    invoke-static {v1}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->access$getWidth$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;)I

    move-result v6

    invoke-static {v1}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->access$getHeight$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;)I

    move-result v7

    invoke-interface {v5, v2, v6, v7, v4}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;->render(Landroid/graphics/Canvas;IILjava/lang/Object;)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 119
    invoke-static {v1}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->access$getMPendingParams$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 172
    invoke-static {v0}, Landroidx/graphics/MultiBufferedCanvasRenderer;->access$getRenderNode$p(Landroidx/graphics/MultiBufferedCanvasRenderer;)Landroid/graphics/RenderNode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    return-void
.end method

.method public getId()I
    .locals 1

    .line 123
    iget v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$DrawParamRequest;->id:I

    return v0
.end method

.method public final getParam()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$DrawParamRequest;->param:Ljava/lang/Object;

    return-object v0
.end method

.method public onEnqueued()V
    .locals 2

    .line 108
    iget-object v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$DrawParamRequest;->this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;

    invoke-static {v0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->access$getMPendingParams$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$DrawParamRequest;->param:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
