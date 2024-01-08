.class public final Landroidx/graphics/opengl/GLRenderer$RenderTarget;
.super Ljava/lang/Object;
.source "GLRenderer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/opengl/GLRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RenderTarget"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\'\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0008\u0003\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ(\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00112\u0016\u0008\u0002\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0013H\u0007J\u0006\u0010\u0014\u001a\u00020\u0011J\r\u0010\u0015\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008\u0016J \u0010\u0017\u001a\u00020\u00082\u0016\u0008\u0003\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0013H\u0007J0\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u00032\u0016\u0008\u0003\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0013H\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/graphics/opengl/GLRenderer$RenderTarget;",
        "",
        "token",
        "",
        "glManager",
        "Landroidx/graphics/opengl/GLRenderer;",
        "onDetach",
        "Lkotlin/Function0;",
        "",
        "(ILandroidx/graphics/opengl/GLRenderer;Lkotlin/jvm/functions/Function0;)V",
        "mManager",
        "getOnDetach$graphics_core_release",
        "()Lkotlin/jvm/functions/Function0;",
        "getToken$graphics_core_release",
        "()I",
        "detach",
        "cancelPending",
        "",
        "onDetachComplete",
        "Lkotlin/Function1;",
        "isAttached",
        "release",
        "release$graphics_core_release",
        "requestRender",
        "onRenderComplete",
        "resize",
        "width",
        "height",
        "onResizeComplete",
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
.field private volatile mManager:Landroidx/graphics/opengl/GLRenderer;

.field private final onDetach:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final token:I


# direct methods
.method public constructor <init>(ILandroidx/graphics/opengl/GLRenderer;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/graphics/opengl/GLRenderer;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "glManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDetach"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    iput p1, p0, Landroidx/graphics/opengl/GLRenderer$RenderTarget;->token:I

    .line 663
    iput-object p3, p0, Landroidx/graphics/opengl/GLRenderer$RenderTarget;->onDetach:Lkotlin/jvm/functions/Function0;

    .line 667
    iput-object p2, p0, Landroidx/graphics/opengl/GLRenderer$RenderTarget;->mManager:Landroidx/graphics/opengl/GLRenderer;

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/graphics/opengl/GLRenderer;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 663
    sget-object p3, Landroidx/graphics/opengl/GLRenderer$RenderTarget$1;->INSTANCE:Landroidx/graphics/opengl/GLRenderer$RenderTarget$1;

    check-cast p3, Lkotlin/jvm/functions/Function0;

    .line 660
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/graphics/opengl/GLRenderer$RenderTarget;-><init>(ILandroidx/graphics/opengl/GLRenderer;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic detach$default(Landroidx/graphics/opengl/GLRenderer$RenderTarget;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 741
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/graphics/opengl/GLRenderer$RenderTarget;->detach(ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic requestRender$default(Landroidx/graphics/opengl/GLRenderer$RenderTarget;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 686
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/graphics/opengl/GLRenderer$RenderTarget;->requestRender(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic resize$default(Landroidx/graphics/opengl/GLRenderer$RenderTarget;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 714
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/graphics/opengl/GLRenderer$RenderTarget;->resize(IILkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final detach(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Landroidx/graphics/opengl/GLRenderer$RenderTarget;->detach$default(Landroidx/graphics/opengl/GLRenderer$RenderTarget;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public final detach(ZLkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/graphics/opengl/GLRenderer$RenderTarget;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 742
    iget-object v0, p0, Landroidx/graphics/opengl/GLRenderer$RenderTarget;->mManager:Landroidx/graphics/opengl/GLRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Landroidx/graphics/opengl/GLRenderer;->detach(Landroidx/graphics/opengl/GLRenderer$RenderTarget;ZLkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method public final getOnDetach$graphics_core_release()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 663
    iget-object v0, p0, Landroidx/graphics/opengl/GLRenderer$RenderTarget;->onDetach:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getToken$graphics_core_release()I
    .locals 1

    .line 661
    iget v0, p0, Landroidx/graphics/opengl/GLRenderer$RenderTarget;->token:I

    return v0
.end method

.method public final isAttached()Z
    .locals 1

    .line 696
    iget-object v0, p0, Landroidx/graphics/opengl/GLRenderer$RenderTarget;->mManager:Landroidx/graphics/opengl/GLRenderer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final release$graphics_core_release()V
    .locals 1

    const/4 v0, 0x0

    .line 670
    iput-object v0, p0, Landroidx/graphics/opengl/GLRenderer$RenderTarget;->mManager:Landroidx/graphics/opengl/GLRenderer;

    return-void
.end method

.method public final requestRender()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Landroidx/graphics/opengl/GLRenderer$RenderTarget;->requestRender$default(Landroidx/graphics/opengl/GLRenderer$RenderTarget;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public final requestRender(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/graphics/opengl/GLRenderer$RenderTarget;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 687
    iget-object v0, p0, Landroidx/graphics/opengl/GLRenderer$RenderTarget;->mManager:Landroidx/graphics/opengl/GLRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Landroidx/graphics/opengl/GLRenderer;->requestRender(Landroidx/graphics/opengl/GLRenderer$RenderTarget;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method public final resize(II)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Landroidx/graphics/opengl/GLRenderer$RenderTarget;->resize$default(Landroidx/graphics/opengl/GLRenderer$RenderTarget;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public final resize(IILkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/graphics/opengl/GLRenderer$RenderTarget;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 719
    iget-object v0, p0, Landroidx/graphics/opengl/GLRenderer$RenderTarget;->mManager:Landroidx/graphics/opengl/GLRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/graphics/opengl/GLRenderer;->resize(Landroidx/graphics/opengl/GLRenderer$RenderTarget;IILkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method
