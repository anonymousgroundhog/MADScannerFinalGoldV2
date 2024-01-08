.class public final Landroidx/graphics/surface/SurfaceControlCompat$Transaction$Companion;
.super Ljava/lang/Object;
.source "SurfaceControlCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/surface/SurfaceControlCompat$Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/graphics/surface/SurfaceControlCompat$Transaction$Companion;",
        "",
        "()V",
        "createImpl",
        "Landroidx/graphics/surface/SurfaceControlImpl$Transaction;",
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

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createImpl()Landroidx/graphics/surface/SurfaceControlImpl$Transaction;
    .locals 2

    .line 594
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 596
    sget-object v0, Landroidx/graphics/surface/SurfaceControlVerificationHelper;->Companion:Landroidx/graphics/surface/SurfaceControlVerificationHelper$Companion;

    invoke-virtual {v0}, Landroidx/graphics/surface/SurfaceControlVerificationHelper$Companion;->createTransactionV33()Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    move-result-object v0

    goto :goto_1

    .line 598
    :cond_1
    sget-object v0, Landroidx/graphics/surface/SurfaceControlVerificationHelper;->Companion:Landroidx/graphics/surface/SurfaceControlVerificationHelper$Companion;

    invoke-virtual {v0}, Landroidx/graphics/surface/SurfaceControlVerificationHelper$Companion;->createTransactionV29()Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    move-result-object v0

    :goto_1
    return-object v0
.end method
