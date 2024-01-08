.class public final Landroidx/graphics/opengl/GLRenderer$attach$callback$1;
.super Ljava/lang/Object;
.source "GLRenderer.kt"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/graphics/opengl/GLRenderer;->attach(Landroid/view/SurfaceView;Landroidx/graphics/opengl/GLRenderer$RenderCallback;)Landroidx/graphics/opengl/GLRenderer$RenderTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGLRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GLRenderer.kt\nandroidx/graphics/opengl/GLRenderer$attach$callback$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,753:1\n1#2:754\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000=\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J(\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0018H\u0016J\u0010\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u0016H\u0016J\u0018\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010 \u001a\u00020!H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0005\"\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\""
    }
    d2 = {
        "androidx/graphics/opengl/GLRenderer$attach$callback$1",
        "Landroid/view/SurfaceHolder$Callback2;",
        "detachLatch",
        "Ljava/util/concurrent/CountDownLatch;",
        "getDetachLatch",
        "()Ljava/util/concurrent/CountDownLatch;",
        "isAttached",
        "",
        "()Z",
        "setAttached",
        "(Z)V",
        "renderLatch",
        "getRenderLatch",
        "setRenderLatch",
        "(Ljava/util/concurrent/CountDownLatch;)V",
        "renderTarget",
        "Landroidx/graphics/opengl/GLRenderer$RenderTarget;",
        "getRenderTarget",
        "()Landroidx/graphics/opengl/GLRenderer$RenderTarget;",
        "surfaceChanged",
        "",
        "holder",
        "Landroid/view/SurfaceHolder;",
        "format",
        "",
        "width",
        "height",
        "surfaceCreated",
        "surfaceDestroyed",
        "surfaceRedrawNeeded",
        "p0",
        "surfaceRedrawNeededAsync",
        "drawingFinished",
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
.field final synthetic $renderer:Landroidx/graphics/opengl/GLRenderer$RenderCallback;

.field final synthetic $thread:Landroidx/graphics/opengl/GLThread;

.field final synthetic $token:I

.field private final detachLatch:Ljava/util/concurrent/CountDownLatch;

.field private isAttached:Z

.field private volatile renderLatch:Ljava/util/concurrent/CountDownLatch;

.field private final renderTarget:Landroidx/graphics/opengl/GLRenderer$RenderTarget;


# direct methods
.method constructor <init>(ILandroidx/graphics/opengl/GLRenderer;Landroid/view/SurfaceHolder;Landroidx/graphics/opengl/GLThread;Landroidx/graphics/opengl/GLRenderer$RenderCallback;)V
    .locals 0

    iput p1, p0, Landroidx/graphics/opengl/GLRenderer$attach$callback$1;->$token:I

    iput-object p4, p0, Landroidx/graphics/opengl/GLRenderer$attach$callback$1;->$thread:Landroidx/graphics/opengl/GLThread;

    iput-object p5, p0, Landroidx/graphics/opengl/GLRenderer$attach$callback$1;->$renderer:Landroidx/graphics/opengl/GLRenderer$RenderCallback;

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    new-instance p4, Ljava/util/concurrent/CountDownLatch;

    const/4 p5, 0x1

    invoke-direct {p4, p5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p4, p0, Landroidx/graphics/opengl/GLRenderer$attach$callback$1;->detachLatch:Ljava/util/concurrent/CountDownLatch;

    .line 493
    new-instance p4, Landroidx/graphics/opengl/GLRenderer$RenderTarget;

    .line 471
    new-instance p5, Landroidx/graphics/opengl/GLRenderer$attach$callback$1$renderTarget$1;

    invoke-direct {p5, p0, p3}, Landroidx/graphics/opengl/GLRenderer$attach$callback$1$renderTarget$1;-><init>(Landroidx/graphics/opengl/GLRenderer$attach$callback$1;Landroid/view/SurfaceHolder;)V

    check-cast p5, Lkotlin/jvm/functions/Function0;

    .line 493
    invoke-direct {p4, p1, p2, p5}, Landroidx/graphics/opengl/GLRenderer$RenderTarget;-><init>(ILandroidx/graphics/opengl/GLRenderer;Lkotlin/jvm/functions/Function0;)V

    iput-object p4, p0, Landroidx/graphics/opengl/GLRenderer$attach$callback$1;->renderTarget:Landroidx/graphics/opengl/GLRenderer$RenderTarget;

    return-void
.end method


# virtual methods
.method public final getDetachLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .line 491
    iget-object v0, p0, Landroidx/graphics/opengl/GLRenderer$attach$callback$1;->detachLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public final getRenderLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .line 482
    iget-object v0, p0, Landroidx/graphics/opengl/GLRenderer$attach$callback$1;->renderLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public final getRenderTarget()Landroidx/graphics/opengl/GLRenderer$RenderTarget;
    .locals 1

    .line 493
    iget-object v0, p0, Landroidx/graphics/opengl/GLRenderer$attach$callback$1;->renderTarget:Landroidx/graphics/opengl/GLRenderer$RenderTarget;

    return-object v0
.end method

.method public final isAttached()Z
    .locals 1

    .line 473
    iget-boolean v0, p0, Landroidx/graphics/opengl/GLRenderer$attach$callback$1;->isAttached:Z

    return v0
.end method

.method public final setAttached(Z)V
    .locals 0

    .line 473
    iput-boolean p1, p0, Landroidx/graphics/opengl/GLRenderer$attach$callback$1;->isAttached:Z

    return-void
.end method

.method public final setRenderLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 482
    iput-object p1, p0, Landroidx/graphics/opengl/GLRenderer$attach$callback$1;->renderLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "holder"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    iget-boolean v1, v0, Landroidx/graphics/opengl/GLRenderer$attach$callback$1;->isAttached:Z

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 539
    iget-object v4, v0, Landroidx/graphics/opengl/GLRenderer$attach$callback$1;->$thread:Landroidx/graphics/opengl/GLThread;

    iget v5, v0, Landroidx/graphics/opengl/GLRenderer$attach$callback$1;->$token:I

    invoke-interface/range {p1 .. p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v6

    iget-object v9, v0, Landroidx/graphics/opengl/GLRenderer$attach$callback$1;->$renderer:Landroidx/graphics/opengl/GLRenderer$RenderCallback;

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v4 .. v9}, Landroidx/graphics/opengl/GLThread;->attachSurface(ILandroid/view/Surface;IILandroidx/graphics/opengl/GLRenderer$RenderCallback;)V

    .line 540
    iput-boolean v3, v0, Landroidx/graphics/opengl/GLRenderer$attach$callback$1;->isAttached:Z

    goto :goto_0

    .line 542
    :cond_0
    iget-object v10, v0, Landroidx/graphics/opengl/GLRenderer$attach$callback$1;->renderTarget:Landroidx/graphics/opengl/GLRenderer$RenderTarget;

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-static/range {v10 .. v15}, Landroidx/graphics/opengl/GLRenderer$RenderTarget;->resize$default(Landroidx/graphics/opengl/GLRenderer$RenderTarget;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 544
    :goto_0
    iget-object v1, v0, Landroidx/graphics/opengl/GLRenderer$attach$callback$1;->renderTarget:Landroidx/graphics/opengl/GLRenderer$RenderTarget;

    const/4 v2, 0x0

    invoke-static {v1, v2, v3, v2}, Landroidx/graphics/opengl/GLRenderer$RenderTarget;->requestRender$default(Landroidx/graphics/opengl/GLRenderer$RenderTarget;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    iget-object p1, p0, Landroidx/graphics/opengl/GLRenderer$attach$callback$1;->renderTarget:Landroidx/graphics/opengl/GLRenderer$RenderTarget;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1, v0}, Landroidx/graphics/opengl/GLRenderer$RenderTarget;->detach$default(Landroidx/graphics/opengl/GLRenderer$RenderTarget;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 553
    iget-object p1, p0, Landroidx/graphics/opengl/GLRenderer$attach$callback$1;->detachLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 4

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    iget-object p1, p0, Landroidx/graphics/opengl/GLRenderer$attach$callback$1;->detachLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 506
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Landroidx/graphics/opengl/GLRenderer$attach$callback$1;->renderLatch:Ljava/util/concurrent/CountDownLatch;

    .line 510
    iget-object v0, p0, Landroidx/graphics/opengl/GLRenderer$attach$callback$1;->renderTarget:Landroidx/graphics/opengl/GLRenderer$RenderTarget;

    new-instance v1, Landroidx/graphics/opengl/GLRenderer$attach$callback$1$surfaceRedrawNeeded$1;

    invoke-direct {v1, p1}, Landroidx/graphics/opengl/GLRenderer$attach$callback$1$surfaceRedrawNeeded$1;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Landroidx/graphics/opengl/GLRenderer$RenderTarget;->requestRender(Lkotlin/jvm/functions/Function1;)V

    .line 513
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V

    const/4 p1, 0x0

    .line 514
    iput-object p1, p0, Landroidx/graphics/opengl/GLRenderer$attach$callback$1;->renderLatch:Ljava/util/concurrent/CountDownLatch;

    :cond_0
    return-void
.end method

.method public surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    sget-object v0, Lkotlin/text/jdk8/Qq/kCWfCxpUPBTL;->uTcDEJdFBTGc:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "drawingFinished"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    iget-object p1, p0, Landroidx/graphics/opengl/GLRenderer$attach$callback$1;->renderTarget:Landroidx/graphics/opengl/GLRenderer$RenderTarget;

    new-instance v0, Landroidx/graphics/opengl/GLRenderer$attach$callback$1$surfaceRedrawNeededAsync$1;

    invoke-direct {v0, p2}, Landroidx/graphics/opengl/GLRenderer$attach$callback$1$surfaceRedrawNeededAsync$1;-><init>(Ljava/lang/Runnable;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Landroidx/graphics/opengl/GLRenderer$RenderTarget;->requestRender(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
