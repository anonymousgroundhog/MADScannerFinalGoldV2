.class public final Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;
.super Ljava/lang/Object;
.source "SingleBufferedCanvasRendererV29.kt"

# interfaces
.implements Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$Companion;,
        Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$DrawParamRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001\u000e\u0008\u0001\u0018\u0000 )*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0002)*B3\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u001f\u001a\u00020 H\u0016J\u0008\u0010!\u001a\u00020 H\u0016J \u0010\"\u001a\u00020 2\u0006\u0010\u001f\u001a\u00020\u00112\u000e\u0010#\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010$H\u0016J\u0015\u0010%\u001a\u00020 2\u0006\u0010&\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\'J\u0008\u0010(\u001a\u00020 H\u0003R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000eX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0011@VX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0019j\u0008\u0012\u0004\u0012\u00028\u0000`\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;",
        "T",
        "Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;",
        "width",
        "",
        "height",
        "bufferTransformer",
        "Landroidx/graphics/lowlatency/BufferTransformer;",
        "handlerThread",
        "Landroidx/graphics/utils/HandlerThreadExecutor;",
        "callbacks",
        "Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;",
        "(IILandroidx/graphics/lowlatency/BufferTransformer;Landroidx/graphics/utils/HandlerThreadExecutor;Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;)V",
        "clearRequest",
        "androidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$clearRequest$1",
        "Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$clearRequest$1;",
        "value",
        "",
        "isVisible",
        "()Z",
        "setVisible",
        "(Z)V",
        "mBufferedRenderer",
        "Landroidx/graphics/MultiBufferedCanvasRenderer;",
        "mPendingParams",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "mRenderQueue",
        "Landroidx/graphics/RenderQueue;",
        "mTransform",
        "Landroid/graphics/Matrix;",
        "cancelPending",
        "",
        "clear",
        "release",
        "onReleaseComplete",
        "Lkotlin/Function0;",
        "render",
        "param",
        "(Ljava/lang/Object;)V",
        "tearDown",
        "Companion",
        "DrawParamRequest",
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


# static fields
.field public static final CLEAR:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$Companion;

.field public static final RENDER:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final bufferTransformer:Landroidx/graphics/lowlatency/BufferTransformer;

.field private final callbacks:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final clearRequest:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$clearRequest$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$clearRequest$1<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final height:I

.field private isVisible:Z

.field private final mBufferedRenderer:Landroidx/graphics/MultiBufferedCanvasRenderer;

.field private final mPendingParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mRenderQueue:Landroidx/graphics/RenderQueue;

.field private final mTransform:Landroid/graphics/Matrix;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->Companion:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$Companion;

    return-void
.end method

.method public constructor <init>(IILandroidx/graphics/lowlatency/BufferTransformer;Landroidx/graphics/utils/HandlerThreadExecutor;Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroidx/graphics/lowlatency/BufferTransformer;",
            "Landroidx/graphics/utils/HandlerThreadExecutor;",
            "Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "bufferTransformer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handlerThread"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbacks"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->width:I

    .line 36
    iput p2, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->height:I

    .line 37
    iput-object p3, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->bufferTransformer:Landroidx/graphics/lowlatency/BufferTransformer;

    .line 39
    iput-object p5, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->callbacks:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;

    .line 42
    new-instance p5, Landroidx/graphics/RenderQueue;

    .line 44
    new-instance v0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$mRenderQueue$1;

    invoke-direct {v0, p0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$mRenderQueue$1;-><init>(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;)V

    check-cast v0, Landroidx/graphics/RenderQueue$FrameProducer;

    .line 52
    new-instance v1, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$mRenderQueue$2;

    invoke-direct {v1, p0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$mRenderQueue$2;-><init>(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;)V

    check-cast v1, Landroidx/graphics/RenderQueue$FrameCallback;

    .line 42
    invoke-direct {p5, p4, v0, v1}, Landroidx/graphics/RenderQueue;-><init>(Landroidx/graphics/utils/HandlerThreadExecutor;Landroidx/graphics/RenderQueue$FrameProducer;Landroidx/graphics/RenderQueue$FrameCallback;)V

    iput-object p5, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->mRenderQueue:Landroidx/graphics/RenderQueue;

    .line 69
    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    .line 70
    invoke-virtual {p3}, Landroidx/graphics/lowlatency/BufferTransformer;->getComputedTransform()I

    move-result p5

    const/4 v0, 0x3

    if-eq p5, v0, :cond_2

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p5, v0, :cond_1

    const/4 p1, 0x7

    if-eq p5, p1, :cond_0

    .line 84
    invoke-virtual {p4}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x42b40000    # 90.0f

    .line 80
    invoke-virtual {p4, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float p1, p2

    .line 81
    invoke-virtual {p4, p1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_1
    const/high16 p2, 0x43870000    # 270.0f

    .line 72
    invoke-virtual {p4, p2}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float p1, p1

    .line 73
    invoke-virtual {p4, v1, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_2
    const/high16 p5, 0x43340000    # 180.0f

    .line 76
    invoke-virtual {p4, p5}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float p1, p1

    int-to-float p2, p2

    .line 77
    invoke-virtual {p4, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 69
    :goto_0
    iput-object p4, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->mTransform:Landroid/graphics/Matrix;

    .line 90
    new-instance v1, Landroid/graphics/RenderNode;

    const-string/jumbo p1, "renderNode"

    invoke-direct {v1, p1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p3}, Landroidx/graphics/lowlatency/BufferTransformer;->getGlWidth()I

    move-result p1

    .line 95
    invoke-virtual {p3}, Landroidx/graphics/lowlatency/BufferTransformer;->getGlHeight()I

    move-result p2

    const/4 p4, 0x0

    .line 91
    invoke-virtual {v1, p4, p4, p1, p2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 97
    invoke-virtual {p3}, Landroidx/graphics/lowlatency/BufferTransformer;->getGlWidth()I

    move-result v2

    .line 98
    invoke-virtual {p3}, Landroidx/graphics/lowlatency/BufferTransformer;->getGlHeight()I

    move-result v3

    const/4 v4, 0x0

    .line 99
    sget-object p1, Landroidx/graphics/lowlatency/FrontBufferUtils;->Companion:Landroidx/graphics/lowlatency/FrontBufferUtils$Companion;

    invoke-virtual {p1}, Landroidx/graphics/lowlatency/FrontBufferUtils$Companion;->obtainHardwareBufferUsageFlags$graphics_core_release()J

    move-result-wide v5

    const/4 v7, 0x1

    const/16 v8, 0x8

    const/4 v9, 0x0

    .line 89
    new-instance p1, Landroidx/graphics/MultiBufferedCanvasRenderer;

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Landroidx/graphics/MultiBufferedCanvasRenderer;-><init>(Landroid/graphics/RenderNode;IIIJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->mBufferedRenderer:Landroidx/graphics/MultiBufferedCanvasRenderer;

    .line 103
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->mPendingParams:Ljava/util/ArrayList;

    .line 126
    new-instance p1, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$clearRequest$1;

    invoke-direct {p1, p0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$clearRequest$1;-><init>(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;)V

    iput-object p1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->clearRequest:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$clearRequest$1;

    return-void
.end method

.method public static final synthetic access$getCallbacks$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;)Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;
    .locals 0

    .line 33
    iget-object p0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->callbacks:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;

    return-object p0
.end method

.method public static final synthetic access$getHeight$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;)I
    .locals 0

    .line 33
    iget p0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->height:I

    return p0
.end method

.method public static final synthetic access$getMBufferedRenderer$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;)Landroidx/graphics/MultiBufferedCanvasRenderer;
    .locals 0

    .line 33
    iget-object p0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->mBufferedRenderer:Landroidx/graphics/MultiBufferedCanvasRenderer;

    return-object p0
.end method

.method public static final synthetic access$getMPendingParams$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    iget-object p0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->mPendingParams:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getMTransform$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;)Landroid/graphics/Matrix;
    .locals 0

    .line 33
    iget-object p0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->mTransform:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public static final synthetic access$getWidth$p(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;)I
    .locals 0

    .line 33
    iget p0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->width:I

    return p0
.end method

.method public static final synthetic access$tearDown(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->tearDown()V

    return-void
.end method

.method private final tearDown()V
    .locals 1

    .line 142
    iget-object v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->mBufferedRenderer:Landroidx/graphics/MultiBufferedCanvasRenderer;

    invoke-virtual {v0}, Landroidx/graphics/MultiBufferedCanvasRenderer;->release()V

    return-void
.end method


# virtual methods
.method public cancelPending()V
    .locals 1

    .line 161
    iget-object v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->mRenderQueue:Landroidx/graphics/RenderQueue;

    invoke-virtual {v0}, Landroidx/graphics/RenderQueue;->cancelPending()V

    return-void
.end method

.method public clear()V
    .locals 2

    .line 157
    iget-object v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->mRenderQueue:Landroidx/graphics/RenderQueue;

    iget-object v1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->clearRequest:Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$clearRequest$1;

    check-cast v1, Landroidx/graphics/RenderQueue$Request;

    invoke-virtual {v0, v1}, Landroidx/graphics/RenderQueue;->enqueue(Landroidx/graphics/RenderQueue$Request;)V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->isVisible:Z

    return v0
.end method

.method public release(ZLkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->mRenderQueue:Landroidx/graphics/RenderQueue;

    new-instance v1, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$release$1;

    invoke-direct {v1, p2, p0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$release$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, p1, v1}, Landroidx/graphics/RenderQueue;->release(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public render(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->mRenderQueue:Landroidx/graphics/RenderQueue;

    new-instance v1, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$DrawParamRequest;

    invoke-direct {v1, p0, p1}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29$DrawParamRequest;-><init>(Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;Ljava/lang/Object;)V

    check-cast v1, Landroidx/graphics/RenderQueue$Request;

    invoke-virtual {v0, v1}, Landroidx/graphics/RenderQueue;->enqueue(Landroidx/graphics/RenderQueue$Request;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    .line 136
    iget-object v0, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->mBufferedRenderer:Landroidx/graphics/MultiBufferedCanvasRenderer;

    invoke-virtual {p0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/graphics/MultiBufferedCanvasRenderer;->setPreserveContents(Z)V

    .line 137
    iput-boolean p1, p0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;->isVisible:Z

    return-void
.end method
