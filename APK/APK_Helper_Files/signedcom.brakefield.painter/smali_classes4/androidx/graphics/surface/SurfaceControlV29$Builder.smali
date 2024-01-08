.class public final Landroidx/graphics/surface/SurfaceControlV29$Builder;
.super Ljava/lang/Object;
.source "SurfaceControlV29.kt"

# interfaces
.implements Landroidx/graphics/surface/SurfaceControlImpl$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/surface/SurfaceControlV29;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\n\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/graphics/surface/SurfaceControlV29$Builder;",
        "Landroidx/graphics/surface/SurfaceControlImpl$Builder;",
        "()V",
        "builder",
        "Landroidx/graphics/surface/SurfaceControlWrapper$Builder;",
        "build",
        "Landroidx/graphics/surface/SurfaceControlImpl;",
        "setName",
        "name",
        "",
        "setParent",
        "surfaceView",
        "Landroid/view/SurfaceView;",
        "surfaceControl",
        "Landroidx/graphics/surface/SurfaceControlCompat;",
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
.field private builder:Landroidx/graphics/surface/SurfaceControlWrapper$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroidx/graphics/surface/SurfaceControlWrapper$Builder;

    invoke-direct {v0}, Landroidx/graphics/surface/SurfaceControlWrapper$Builder;-><init>()V

    iput-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Builder;->builder:Landroidx/graphics/surface/SurfaceControlWrapper$Builder;

    return-void
.end method


# virtual methods
.method public build()Landroidx/graphics/surface/SurfaceControlImpl;
    .locals 2

    .line 89
    new-instance v0, Landroidx/graphics/surface/SurfaceControlV29;

    iget-object v1, p0, Landroidx/graphics/surface/SurfaceControlV29$Builder;->builder:Landroidx/graphics/surface/SurfaceControlWrapper$Builder;

    invoke-virtual {v1}, Landroidx/graphics/surface/SurfaceControlWrapper$Builder;->build()Landroidx/graphics/surface/SurfaceControlWrapper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/graphics/surface/SurfaceControlV29;-><init>(Landroidx/graphics/surface/SurfaceControlWrapper;)V

    check-cast v0, Landroidx/graphics/surface/SurfaceControlImpl;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Landroidx/graphics/surface/SurfaceControlImpl$Builder;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Builder;->builder:Landroidx/graphics/surface/SurfaceControlWrapper$Builder;

    invoke-virtual {v0, p1}, Landroidx/graphics/surface/SurfaceControlWrapper$Builder;->setDebugName(Ljava/lang/String;)Landroidx/graphics/surface/SurfaceControlWrapper$Builder;

    .line 83
    move-object p1, p0

    check-cast p1, Landroidx/graphics/surface/SurfaceControlImpl$Builder;

    return-object p1
.end method

.method public setParent(Landroid/view/SurfaceView;)Landroidx/graphics/surface/SurfaceControlImpl$Builder;
    .locals 2

    const-string/jumbo v0, "surfaceView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Builder;->builder:Landroidx/graphics/surface/SurfaceControlWrapper$Builder;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const-string/jumbo v1, "surfaceView.holder.surface"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/graphics/surface/SurfaceControlWrapper$Builder;->setParent(Landroid/view/Surface;)Landroidx/graphics/surface/SurfaceControlWrapper$Builder;

    .line 67
    move-object p1, p0

    check-cast p1, Landroidx/graphics/surface/SurfaceControlImpl$Builder;

    return-object p1
.end method

.method public setParent(Landroidx/graphics/surface/SurfaceControlCompat;)Landroidx/graphics/surface/SurfaceControlImpl$Builder;
    .locals 2

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Builder;->builder:Landroidx/graphics/surface/SurfaceControlWrapper$Builder;

    invoke-static {}, Landroidx/graphics/surface/SurfaceControlV29;->access$getCompanion$p()Landroidx/graphics/surface/SurfaceControlV29$Companion;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlCompat;->getScImpl$graphics_core_release()Landroidx/graphics/surface/SurfaceControlImpl;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/graphics/surface/SurfaceControlV29$Companion;->asWrapperSurfaceControl(Landroidx/graphics/surface/SurfaceControlImpl;)Landroidx/graphics/surface/SurfaceControlWrapper;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/graphics/surface/SurfaceControlWrapper$Builder;->setParent(Landroidx/graphics/surface/SurfaceControlWrapper;)Landroidx/graphics/surface/SurfaceControlWrapper$Builder;

    .line 75
    move-object p1, p0

    check-cast p1, Landroidx/graphics/surface/SurfaceControlImpl$Builder;

    return-object p1
.end method
