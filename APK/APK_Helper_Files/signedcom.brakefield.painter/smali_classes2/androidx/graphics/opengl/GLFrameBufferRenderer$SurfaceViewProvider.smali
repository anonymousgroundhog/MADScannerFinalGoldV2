.class public final Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceViewProvider;
.super Ljava/lang/Object;
.source "GLFrameBufferRenderer.kt"

# interfaces
.implements Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceControlProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/opengl/GLFrameBufferRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SurfaceViewProvider"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u001d\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008\u0010J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0008H\u0016J\u000e\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0008J\u0008\u0010\u0012\u001a\u00020\u000eH\u0016J\u0008\u0010\u0013\u001a\u00020\u000eH\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceViewProvider;",
        "Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceControlProvider;",
        "surfaceView",
        "Landroid/view/SurfaceView;",
        "(Landroid/view/SurfaceView;)V",
        "mSurfaceControl",
        "Landroidx/graphics/surface/SurfaceControlCompat;",
        "mSurfaceControlCallback",
        "Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceControlProvider$Callback;",
        "mSurfaceHolderCallback",
        "Landroid/view/SurfaceHolder$Callback2;",
        "mTransformResolver",
        "Landroidx/graphics/lowlatency/BufferTransformHintResolver;",
        "createSurfaceControl",
        "",
        "callback",
        "createSurfaceControl$graphics_core_release",
        "destroySurfaceControl",
        "release",
        "releaseSurfaceControl",
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
.field private mSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

.field private mSurfaceControlCallback:Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceControlProvider$Callback;

.field private mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

.field private final mTransformResolver:Landroidx/graphics/lowlatency/BufferTransformHintResolver;

.field private surfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 0

    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    iput-object p1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceViewProvider;->surfaceView:Landroid/view/SurfaceView;

    .line 714
    new-instance p1, Landroidx/graphics/lowlatency/BufferTransformHintResolver;

    invoke-direct {p1}, Landroidx/graphics/lowlatency/BufferTransformHintResolver;-><init>()V

    iput-object p1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceViewProvider;->mTransformResolver:Landroidx/graphics/lowlatency/BufferTransformHintResolver;

    return-void
.end method

.method private final releaseSurfaceControl()V
    .locals 3

    .line 797
    iget-object v0, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceViewProvider;->mSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    if-eqz v0, :cond_1

    .line 798
    invoke-virtual {v0}, Landroidx/graphics/surface/SurfaceControlCompat;->isValid()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 799
    new-instance v1, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;

    invoke-direct {v1}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;-><init>()V

    .line 800
    invoke-virtual {v1, v0, v2}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->reparent(Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat;)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;

    move-result-object v1

    .line 801
    invoke-virtual {v1}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->commit()V

    .line 802
    invoke-virtual {v0}, Landroidx/graphics/surface/SurfaceControlCompat;->release()V

    .line 804
    :cond_0
    iput-object v2, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceViewProvider;->mSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    :cond_1
    return-void
.end method


# virtual methods
.method public createSurfaceControl(Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceControlProvider$Callback;)V
    .locals 4

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceViewProvider;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 751
    new-instance v1, Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceViewProvider$createSurfaceControl$1$surfaceHolderCallback$1;

    invoke-direct {v1, p0, v0, p1}, Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceViewProvider$createSurfaceControl$1$surfaceHolderCallback$1;-><init>(Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceViewProvider;Landroid/view/SurfaceView;Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceControlProvider$Callback;)V

    .line 782
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 783
    move-object v3, v1

    check-cast v3, Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 784
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 785
    invoke-virtual {p0, v0, p1}, Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceViewProvider;->createSurfaceControl$graphics_core_release(Landroid/view/SurfaceView;Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceControlProvider$Callback;)V

    .line 787
    :cond_0
    check-cast v1, Landroid/view/SurfaceHolder$Callback2;

    iput-object v1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceViewProvider;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    :cond_1
    return-void
.end method

.method public final createSurfaceControl$graphics_core_release(Landroid/view/SurfaceView;Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceControlProvider$Callback;)V
    .locals 7

    const-string/jumbo v0, "surfaceView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 724
    invoke-virtual {p0, p2}, Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceViewProvider;->destroySurfaceControl(Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceControlProvider$Callback;)V

    .line 726
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    .line 727
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    .line 728
    iget-object v0, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceViewProvider;->mTransformResolver:Landroidx/graphics/lowlatency/BufferTransformHintResolver;

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/graphics/lowlatency/BufferTransformHintResolver;->getBufferTransformHint(Landroid/view/View;)I

    move-result v0

    .line 729
    new-instance v5, Landroidx/graphics/lowlatency/BufferTransformer;

    invoke-direct {v5}, Landroidx/graphics/lowlatency/BufferTransformer;-><init>()V

    .line 730
    invoke-virtual {v5, v0}, Landroidx/graphics/lowlatency/BufferTransformer;->invertBufferTransform(I)I

    move-result v6

    .line 731
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    invoke-virtual {v5, v0, v1, v6}, Landroidx/graphics/lowlatency/BufferTransformer;->computeTransform(III)V

    .line 732
    new-instance v0, Landroidx/graphics/surface/SurfaceControlCompat$Builder;

    invoke-direct {v0}, Landroidx/graphics/surface/SurfaceControlCompat$Builder;-><init>()V

    const-string v1, "GLFrameBufferRendererTarget"

    .line 733
    invoke-virtual {v0, v1}, Landroidx/graphics/surface/SurfaceControlCompat$Builder;->setName(Ljava/lang/String;)Landroidx/graphics/surface/SurfaceControlCompat$Builder;

    move-result-object v0

    .line 734
    invoke-virtual {v0, p1}, Landroidx/graphics/surface/SurfaceControlCompat$Builder;->setParent(Landroid/view/SurfaceView;)Landroidx/graphics/surface/SurfaceControlCompat$Builder;

    move-result-object p1

    .line 735
    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlCompat$Builder;->build()Landroidx/graphics/surface/SurfaceControlCompat;

    move-result-object p1

    move-object v1, p2

    move-object v2, p1

    .line 737
    invoke-interface/range {v1 .. v6}, Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceControlProvider$Callback;->onSurfaceControlCreated(Landroidx/graphics/surface/SurfaceControlCompat;IILandroidx/graphics/lowlatency/BufferTransformer;I)V

    .line 745
    iput-object p1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceViewProvider;->mSurfaceControl:Landroidx/graphics/surface/SurfaceControlCompat;

    .line 746
    iput-object p2, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceViewProvider;->mSurfaceControlCallback:Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceControlProvider$Callback;

    return-void
.end method

.method public final destroySurfaceControl(Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceControlProvider$Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 792
    invoke-interface {p1}, Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceControlProvider$Callback;->onSurfaceControlDestroyed()V

    .line 793
    invoke-direct {p0}, Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceViewProvider;->releaseSurfaceControl()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 809
    invoke-direct {p0}, Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceViewProvider;->releaseSurfaceControl()V

    .line 810
    iget-object v0, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceViewProvider;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceViewProvider;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    check-cast v1, Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    const/4 v0, 0x0

    .line 811
    iput-object v0, p0, Landroidx/graphics/opengl/GLFrameBufferRenderer$SurfaceViewProvider;->surfaceView:Landroid/view/SurfaceView;

    return-void
.end method
