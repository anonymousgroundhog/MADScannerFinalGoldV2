.class public final Landroidx/graphics/opengl/GLFrameBufferRenderer$1;
.super Ljava/lang/Object;
.source "GLFrameBufferRenderer.kt"

# interfaces
.implements Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceControlProvider$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/graphics/opengl/GLFrameBufferRenderer;-><init>(Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceControlProvider;Landroidx/graphics/opengl/GLFrameBufferRenderer$Callback;IJILandroidx/graphics/opengl/SyncStrategy;Landroidx/graphics/opengl/GLRenderer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0007H\u0016J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016J\u0012\u0010\r\u001a\u00020\u00032\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "androidx/graphics/opengl/GLFrameBufferRenderer$1",
        "Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceControlProvider$Callback;",
        "onSurfaceControlCreated",
        "",
        "surfaceControl",
        "Landroidx/graphics/surface/SurfaceControlCompat;",
        "width",
        "",
        "height",
        "bufferTransformer",
        "Landroidx/graphics/lowlatency/BufferTransformer;",
        "inverseTransform",
        "onSurfaceControlDestroyed",
        "requestRender",
        "renderComplete",
        "Ljava/lang/Runnable;",
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
.field final synthetic $callback:Landroidx/graphics/opengl/GLFrameBufferRenderer$Callback;

.field final synthetic $renderer:Landroidx/graphics/opengl/GLRenderer;

.field final synthetic this$0:Landroidx/graphics/opengl/GLFrameBufferRenderer;


# direct methods
.method constructor <init>(Landroidx/graphics/opengl/GLFrameBufferRenderer;Landroidx/graphics/opengl/GLFrameBufferRenderer$Callback;Landroidx/graphics/opengl/GLRenderer;)V
    .locals 0

    iput-object p1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$1;->this$0:Landroidx/graphics/opengl/GLFrameBufferRenderer;

    iput-object p2, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$1;->$callback:Landroidx/graphics/opengl/GLFrameBufferRenderer$Callback;

    iput-object p3, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$1;->$renderer:Landroidx/graphics/opengl/GLRenderer;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceControlCreated(Landroidx/graphics/surface/SurfaceControlCompat;IILandroidx/graphics/lowlatency/BufferTransformer;I)V
    .locals 8

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bufferTransformer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    new-instance v0, Landroidx/graphics/opengl/FrameBufferPool;

    .line 280
    invoke-virtual {p4}, Landroidx/graphics/lowlatency/BufferTransformer;->getGlWidth()I

    move-result v2

    .line 281
    invoke-virtual {p4}, Landroidx/graphics/lowlatency/BufferTransformer;->getGlHeight()I

    move-result v3

    .line 282
    iget-object v1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$1;->this$0:Landroidx/graphics/opengl/GLFrameBufferRenderer;

    invoke-static {v1}, Landroidx/graphics/opengl/GLFrameBufferRenderer;->access$getMFormat$p(Landroidx/graphics/opengl/GLFrameBufferRenderer;)I

    move-result v4

    .line 283
    iget-object v1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$1;->this$0:Landroidx/graphics/opengl/GLFrameBufferRenderer;

    invoke-static {v1}, Landroidx/graphics/opengl/GLFrameBufferRenderer;->access$getMUsage$p(Landroidx/graphics/opengl/GLFrameBufferRenderer;)J

    move-result-wide v5

    .line 284
    iget-object v1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$1;->this$0:Landroidx/graphics/opengl/GLFrameBufferRenderer;

    invoke-static {v1}, Landroidx/graphics/opengl/GLFrameBufferRenderer;->access$getMMaxBuffers$p(Landroidx/graphics/opengl/GLFrameBufferRenderer;)I

    move-result v7

    move-object v1, v0

    .line 279
    invoke-direct/range {v1 .. v7}, Landroidx/graphics/opengl/FrameBufferPool;-><init>(IIIJI)V

    .line 286
    iget-object v1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$1;->this$0:Landroidx/graphics/opengl/GLFrameBufferRenderer;

    .line 291
    iget-object v6, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$1;->$callback:Landroidx/graphics/opengl/GLFrameBufferRenderer$Callback;

    move-object v2, p1

    move v3, p5

    move-object v4, p4

    move-object v5, v0

    .line 286
    invoke-virtual/range {v1 .. v6}, Landroidx/graphics/opengl/GLFrameBufferRenderer;->createFrameBufferRenderer$graphics_core_release(Landroidx/graphics/surface/SurfaceControlCompat;ILandroidx/graphics/lowlatency/BufferTransformer;Landroidx/graphics/opengl/FrameBufferPool;Landroidx/graphics/opengl/GLFrameBufferRenderer$Callback;)Landroidx/graphics/opengl/FrameBufferRenderer;

    move-result-object p4

    .line 293
    iget-object p5, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$1;->this$0:Landroidx/graphics/opengl/GLFrameBufferRenderer;

    invoke-static {p5, v0}, Landroidx/graphics/opengl/GLFrameBufferRenderer;->access$setMBufferPool$p(Landroidx/graphics/opengl/GLFrameBufferRenderer;Landroidx/graphics/opengl/FrameBufferPool;)V

    .line 294
    iget-object p5, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$1;->this$0:Landroidx/graphics/opengl/GLFrameBufferRenderer;

    invoke-static {p5, p1}, Landroidx/graphics/opengl/GLFrameBufferRenderer;->access$setMSurfaceControl$p(Landroidx/graphics/opengl/GLFrameBufferRenderer;Landroidx/graphics/surface/SurfaceControlCompat;)V

    .line 295
    iget-object p1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$1;->this$0:Landroidx/graphics/opengl/GLFrameBufferRenderer;

    iget-object p5, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$1;->$renderer:Landroidx/graphics/opengl/GLRenderer;

    check-cast p4, Landroidx/graphics/opengl/GLRenderer$RenderCallback;

    invoke-virtual {p5, p2, p3, p4}, Landroidx/graphics/opengl/GLRenderer;->createRenderTarget(IILandroidx/graphics/opengl/GLRenderer$RenderCallback;)Landroidx/graphics/opengl/GLRenderer$RenderTarget;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/graphics/opengl/GLFrameBufferRenderer;->access$setMRenderTarget$p(Landroidx/graphics/opengl/GLFrameBufferRenderer;Landroidx/graphics/opengl/GLRenderer$RenderTarget;)V

    return-void
.end method

.method public onSurfaceControlDestroyed()V
    .locals 4

    .line 269
    iget-object v0, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$1;->this$0:Landroidx/graphics/opengl/GLFrameBufferRenderer;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2, v1}, Landroidx/graphics/opengl/GLFrameBufferRenderer;->detachTargets$graphics_core_release$default(Landroidx/graphics/opengl/GLFrameBufferRenderer;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public requestRender(Ljava/lang/Runnable;)V
    .locals 1

    .line 299
    iget-object v0, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$1;->this$0:Landroidx/graphics/opengl/GLFrameBufferRenderer;

    invoke-virtual {v0, p1}, Landroidx/graphics/opengl/GLFrameBufferRenderer;->drawAsync$graphics_core_release(Ljava/lang/Runnable;)V

    return-void
.end method
