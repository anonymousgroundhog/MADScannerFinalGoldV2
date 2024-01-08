.class public final Landroidx/graphics/SurfaceTextureRenderer;
.super Ljava/lang/Object;
.source "SurfaceTextureRenderer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/SurfaceTextureRenderer$Companion;,
        Landroidx/graphics/SurfaceTextureRenderer$RenderSurfaceTexture;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u0000 \u00182\u00020\u0001:\u0002\u0018\u0019B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\n\u00a2\u0006\u0002\u0010\rJ\u0006\u0010\u0016\u001a\u00020\u000cJ\u0006\u0010\u0017\u001a\u00020\u000cR\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/graphics/SurfaceTextureRenderer;",
        "",
        "renderNode",
        "Landroid/graphics/RenderNode;",
        "width",
        "",
        "height",
        "handler",
        "Landroid/os/Handler;",
        "frameAvailable",
        "Lkotlin/Function1;",
        "Landroid/graphics/SurfaceTexture;",
        "",
        "(Landroid/graphics/RenderNode;IILandroid/os/Handler;Lkotlin/jvm/functions/Function1;)V",
        "mHardwareRenderer",
        "Landroid/graphics/HardwareRenderer;",
        "mIsReleased",
        "",
        "mSurfaceTexture",
        "Landroidx/graphics/SurfaceTextureRenderer$RenderSurfaceTexture;",
        "mTextureSurface",
        "Landroid/view/Surface;",
        "release",
        "renderFrame",
        "Companion",
        "RenderSurfaceTexture",
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
.field public static final Companion:Landroidx/graphics/SurfaceTextureRenderer$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final frameAvailable:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/graphics/SurfaceTexture;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private final mHardwareRenderer:Landroid/graphics/HardwareRenderer;

.field private mIsReleased:Z

.field private final mSurfaceTexture:Landroidx/graphics/SurfaceTextureRenderer$RenderSurfaceTexture;

.field private final mTextureSurface:Landroid/view/Surface;

.field private final renderNode:Landroid/graphics/RenderNode;


# direct methods
.method public static synthetic $r8$lambda$VVKrlEeTWOvxwy6y5hArrOIqgcM(Landroidx/graphics/SurfaceTextureRenderer;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/graphics/SurfaceTextureRenderer;->mSurfaceTexture$lambda$1$lambda$0(Landroidx/graphics/SurfaceTextureRenderer;Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/SurfaceTextureRenderer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/SurfaceTextureRenderer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/SurfaceTextureRenderer;->Companion:Landroidx/graphics/SurfaceTextureRenderer$Companion;

    const-string v0, "SurfaceTextureRenderer"

    .line 124
    sput-object v0, Landroidx/graphics/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RenderNode;IILandroid/os/Handler;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RenderNode;",
            "II",
            "Landroid/os/Handler;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/SurfaceTexture;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "renderNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frameAvailable"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroidx/graphics/SurfaceTextureRenderer;->renderNode:Landroid/graphics/RenderNode;

    .line 51
    iput-object p4, p0, Landroidx/graphics/SurfaceTextureRenderer;->handler:Landroid/os/Handler;

    .line 56
    iput-object p5, p0, Landroidx/graphics/SurfaceTextureRenderer;->frameAvailable:Lkotlin/jvm/functions/Function1;

    .line 77
    new-instance p5, Landroidx/graphics/SurfaceTextureRenderer$RenderSurfaceTexture;

    const/4 v0, 0x0

    invoke-direct {p5, v0}, Landroidx/graphics/SurfaceTextureRenderer$RenderSurfaceTexture;-><init>(Z)V

    .line 78
    invoke-virtual {p5, p2, p3}, Landroidx/graphics/SurfaceTextureRenderer$RenderSurfaceTexture;->setDefaultBufferSize(II)V

    .line 79
    new-instance p2, Landroidx/graphics/SurfaceTextureRenderer$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Landroidx/graphics/SurfaceTextureRenderer$$ExternalSyntheticLambda0;-><init>(Landroidx/graphics/SurfaceTextureRenderer;)V

    invoke-virtual {p5, p2, p4}, Landroidx/graphics/SurfaceTextureRenderer$RenderSurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 77
    iput-object p5, p0, Landroidx/graphics/SurfaceTextureRenderer;->mSurfaceTexture:Landroidx/graphics/SurfaceTextureRenderer$RenderSurfaceTexture;

    .line 82
    new-instance p2, Landroid/view/Surface;

    check-cast p5, Landroid/graphics/SurfaceTexture;

    invoke-direct {p2, p5}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Landroidx/graphics/SurfaceTextureRenderer;->mTextureSurface:Landroid/view/Surface;

    .line 83
    new-instance p3, Landroid/graphics/HardwareRenderer;

    invoke-direct {p3}, Landroid/graphics/HardwareRenderer;-><init>()V

    .line 84
    invoke-virtual {p3, p2}, Landroid/graphics/HardwareRenderer;->setSurface(Landroid/view/Surface;)V

    .line 85
    invoke-virtual {p3, p1}, Landroid/graphics/HardwareRenderer;->setContentRoot(Landroid/graphics/RenderNode;)V

    .line 86
    invoke-virtual {p3}, Landroid/graphics/HardwareRenderer;->start()V

    .line 83
    iput-object p3, p0, Landroidx/graphics/SurfaceTextureRenderer;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    return-void
.end method

.method private static final mSurfaceTexture$lambda$1$lambda$0(Landroidx/graphics/SurfaceTextureRenderer;Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object p0, p0, Landroidx/graphics/SurfaceTextureRenderer;->frameAvailable:Lkotlin/jvm/functions/Function1;

    const-string/jumbo v0, "surfaceTexture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 2

    .line 108
    iget-boolean v0, p0, Landroidx/graphics/SurfaceTextureRenderer;->mIsReleased:Z

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Landroidx/graphics/SurfaceTextureRenderer;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0}, Landroid/graphics/HardwareRenderer;->stop()V

    .line 110
    iget-object v0, p0, Landroidx/graphics/SurfaceTextureRenderer;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0}, Landroid/graphics/HardwareRenderer;->destroy()V

    .line 111
    iget-object v0, p0, Landroidx/graphics/SurfaceTextureRenderer;->mTextureSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 112
    iget-object v0, p0, Landroidx/graphics/SurfaceTextureRenderer;->mSurfaceTexture:Landroidx/graphics/SurfaceTextureRenderer$RenderSurfaceTexture;

    invoke-virtual {v0}, Landroidx/graphics/SurfaceTextureRenderer$RenderSurfaceTexture;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Landroidx/graphics/SurfaceTextureRenderer;->mSurfaceTexture:Landroidx/graphics/SurfaceTextureRenderer$RenderSurfaceTexture;

    invoke-virtual {v0}, Landroidx/graphics/SurfaceTextureRenderer$RenderSurfaceTexture;->release()V

    :cond_0
    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Landroidx/graphics/SurfaceTextureRenderer;->mIsReleased:Z

    goto :goto_0

    .line 118
    :cond_1
    sget-object v0, Landroidx/graphics/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    const-string v1, "Attempt to release a SurfaceTextureRenderer that has already been released"

    .line 117
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final renderFrame()V
    .locals 2

    .line 90
    iget-boolean v0, p0, Landroidx/graphics/SurfaceTextureRenderer;->mIsReleased:Z

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Landroidx/graphics/SurfaceTextureRenderer;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    .line 92
    invoke-virtual {v0}, Landroid/graphics/HardwareRenderer;->createRenderRequest()Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    move-result-object v0

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->setWaitForPresent(Z)Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->syncAndDraw()I

    goto :goto_0

    .line 98
    :cond_0
    sget-object v0, Landroidx/graphics/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    const-string v1, "Attempt to renderFrame when SurfaceTextureRenderer has already been released"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
