.class public final Landroidx/graphics/surface/SurfaceControlVerificationHelper$Companion;
.super Ljava/lang/Object;
.source "SurfaceControlCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/surface/SurfaceControlVerificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007J\u0008\u0010\u0005\u001a\u00020\u0004H\u0007J\u0008\u0010\u0006\u001a\u00020\u0007H\u0007J\u0008\u0010\u0008\u001a\u00020\u0007H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/graphics/surface/SurfaceControlVerificationHelper$Companion;",
        "",
        "()V",
        "createBuilderV29",
        "Landroidx/graphics/surface/SurfaceControlImpl$Builder;",
        "createBuilderV33",
        "createTransactionV29",
        "Landroidx/graphics/surface/SurfaceControlImpl$Transaction;",
        "createTransactionV33",
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

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/graphics/surface/SurfaceControlVerificationHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createBuilderV29()Landroidx/graphics/surface/SurfaceControlImpl$Builder;
    .locals 1

    .line 617
    new-instance v0, Landroidx/graphics/surface/SurfaceControlV29$Builder;

    invoke-direct {v0}, Landroidx/graphics/surface/SurfaceControlV29$Builder;-><init>()V

    check-cast v0, Landroidx/graphics/surface/SurfaceControlImpl$Builder;

    return-object v0
.end method

.method public final createBuilderV33()Landroidx/graphics/surface/SurfaceControlImpl$Builder;
    .locals 1

    .line 613
    new-instance v0, Landroidx/graphics/surface/SurfaceControlV33$Builder;

    invoke-direct {v0}, Landroidx/graphics/surface/SurfaceControlV33$Builder;-><init>()V

    check-cast v0, Landroidx/graphics/surface/SurfaceControlImpl$Builder;

    return-object v0
.end method

.method public final createTransactionV29()Landroidx/graphics/surface/SurfaceControlImpl$Transaction;
    .locals 1

    .line 625
    new-instance v0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;

    invoke-direct {v0}, Landroidx/graphics/surface/SurfaceControlV29$Transaction;-><init>()V

    check-cast v0, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object v0
.end method

.method public final createTransactionV33()Landroidx/graphics/surface/SurfaceControlImpl$Transaction;
    .locals 1

    .line 621
    new-instance v0, Landroidx/graphics/surface/SurfaceControlV33$Transaction;

    invoke-direct {v0}, Landroidx/graphics/surface/SurfaceControlV33$Transaction;-><init>()V

    check-cast v0, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object v0
.end method
