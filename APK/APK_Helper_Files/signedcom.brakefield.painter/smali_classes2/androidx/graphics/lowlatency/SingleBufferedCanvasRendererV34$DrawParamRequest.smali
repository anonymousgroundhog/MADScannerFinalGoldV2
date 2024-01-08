.class final Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$DrawParamRequest;
.super Ljava/lang/Object;
.source "SingleBufferedCanvasRendererV34.kt"

# interfaces
.implements Landroidx/graphics/RenderQueue$Request;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DrawParamRequest"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\u0002\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$DrawParamRequest;",
        "Landroidx/graphics/RenderQueue$Request;",
        "param",
        "(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;Ljava/lang/Object;)V",
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

.field final synthetic this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$DrawParamRequest;->this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$DrawParamRequest;->param:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 7

    .line 110
    iget-object v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$DrawParamRequest;->this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;

    invoke-static {v0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->access$getMRenderNode$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)Landroid/graphics/RenderNode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v0

    const-string v1, "mRenderNode.beginRecording()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$DrawParamRequest;->this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;

    invoke-static {v1}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->access$getMPendingParams$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 112
    iget-object v3, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$DrawParamRequest;->this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;

    invoke-static {v3}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->access$getCallbacks$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$DrawParamRequest;->this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;

    invoke-static {v5}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->access$getWidth$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)I

    move-result v5

    iget-object v6, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$DrawParamRequest;->this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;

    invoke-static {v6}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->access$getHeight$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)I

    move-result v6

    invoke-interface {v3, v4, v5, v6, v2}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;->render(Landroid/graphics/Canvas;IILjava/lang/Object;)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$DrawParamRequest;->this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;

    invoke-static {v0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->access$getMPendingParams$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 115
    iget-object v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$DrawParamRequest;->this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;

    invoke-static {v0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->access$getMRenderNode$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)Landroid/graphics/RenderNode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    return-void
.end method

.method public getId()I
    .locals 1

    .line 118
    iget v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$DrawParamRequest;->id:I

    return v0
.end method

.method public final getParam()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$DrawParamRequest;->param:Ljava/lang/Object;

    return-object v0
.end method

.method public onEnqueued()V
    .locals 2

    .line 106
    iget-object v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$DrawParamRequest;->this$0:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;

    invoke-static {v0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;->access$getMPendingParams$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34$DrawParamRequest;->param:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
