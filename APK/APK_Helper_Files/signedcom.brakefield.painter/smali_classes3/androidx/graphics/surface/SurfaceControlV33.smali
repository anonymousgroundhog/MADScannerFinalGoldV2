.class public final Landroidx/graphics/surface/SurfaceControlV33;
.super Ljava/lang/Object;
.source "SurfaceControlV33.kt"

# interfaces
.implements Landroidx/graphics/surface/SurfaceControlImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/surface/SurfaceControlV33$Builder;,
        Landroidx/graphics/surface/SurfaceControlV33$Companion;,
        Landroidx/graphics/surface/SurfaceControlV33$Transaction;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u0000 \u000c2\u00020\u0001:\u0003\u000b\u000c\rB\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/graphics/surface/SurfaceControlV33;",
        "Landroidx/graphics/surface/SurfaceControlImpl;",
        "surfaceControl",
        "Landroid/view/SurfaceControl;",
        "(Landroid/view/SurfaceControl;)V",
        "getSurfaceControl$graphics_core_release",
        "()Landroid/view/SurfaceControl;",
        "isValid",
        "",
        "release",
        "",
        "Builder",
        "Companion",
        "Transaction",
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
.field private static final Companion:Landroidx/graphics/surface/SurfaceControlV33$Companion;


# instance fields
.field private final surfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/surface/SurfaceControlV33$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/surface/SurfaceControlV33$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/surface/SurfaceControlV33;->Companion:Landroidx/graphics/surface/SurfaceControlV33$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceControl;)V
    .locals 1

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroidx/graphics/surface/SurfaceControlV33;->surfaceControl:Landroid/view/SurfaceControl;

    return-void
.end method

.method public static final synthetic access$getCompanion$p()Landroidx/graphics/surface/SurfaceControlV33$Companion;
    .locals 1

    .line 37
    sget-object v0, Landroidx/graphics/surface/SurfaceControlV33;->Companion:Landroidx/graphics/surface/SurfaceControlV33$Companion;

    return-object v0
.end method


# virtual methods
.method public final getSurfaceControl$graphics_core_release()Landroid/view/SurfaceControl;
    .locals 1

    .line 39
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV33;->surfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 45
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV33;->surfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV33;->surfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    return-void
.end method
