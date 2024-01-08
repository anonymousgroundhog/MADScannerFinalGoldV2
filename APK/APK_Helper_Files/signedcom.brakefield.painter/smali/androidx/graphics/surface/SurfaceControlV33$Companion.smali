.class final Landroidx/graphics/surface/SurfaceControlV33$Companion;
.super Ljava/lang/Object;
.source "SurfaceControlV33.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/surface/SurfaceControlV33;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/graphics/surface/SurfaceControlV33$Companion;",
        "",
        "()V",
        "asFrameworkSurfaceControl",
        "Landroid/view/SurfaceControl;",
        "Landroidx/graphics/surface/SurfaceControlImpl;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/graphics/surface/SurfaceControlV33$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final asFrameworkSurfaceControl(Landroidx/graphics/surface/SurfaceControlImpl;)Landroid/view/SurfaceControl;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    instance-of v0, p1, Landroidx/graphics/surface/SurfaceControlV33;

    if-eqz v0, :cond_0

    .line 342
    check-cast p1, Landroidx/graphics/surface/SurfaceControlV33;

    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlV33;->getSurfaceControl$graphics_core_release()Landroid/view/SurfaceControl;

    move-result-object p1

    return-object p1

    .line 344
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parent implementation is not for Android T"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
