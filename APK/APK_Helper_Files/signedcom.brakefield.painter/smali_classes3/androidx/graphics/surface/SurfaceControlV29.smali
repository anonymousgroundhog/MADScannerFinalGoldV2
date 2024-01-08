.class public final Landroidx/graphics/surface/SurfaceControlV29;
.super Ljava/lang/Object;
.source "SurfaceControlV29.kt"

# interfaces
.implements Landroidx/graphics/surface/SurfaceControlImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/surface/SurfaceControlV29$Builder;,
        Landroidx/graphics/surface/SurfaceControlV29$Companion;,
        Landroidx/graphics/surface/SurfaceControlV29$Transaction;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u0000 \u000c2\u00020\u0001:\u0003\u000b\u000c\rB\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/graphics/surface/SurfaceControlV29;",
        "Landroidx/graphics/surface/SurfaceControlImpl;",
        "surfaceControl",
        "Landroidx/graphics/surface/SurfaceControlWrapper;",
        "(Landroidx/graphics/surface/SurfaceControlWrapper;)V",
        "getSurfaceControl$graphics_core_release",
        "()Landroidx/graphics/surface/SurfaceControlWrapper;",
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
.field private static final Companion:Landroidx/graphics/surface/SurfaceControlV29$Companion;

.field private static final DefaultSyncFence:Landroidx/hardware/SyncFenceCompat;

.field private static final PlaceholderBuffer:Landroid/hardware/HardwareBuffer;


# instance fields
.field private final surfaceControl:Landroidx/graphics/surface/SurfaceControlWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroidx/graphics/surface/SurfaceControlV29$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/surface/SurfaceControlV29$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/surface/SurfaceControlV29;->Companion:Landroidx/graphics/surface/SurfaceControlV29$Companion;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide/16 v6, 0xb00

    .line 448
    invoke-static/range {v2 .. v7}, Landroid/hardware/HardwareBuffer;->create(IIIIJ)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    const-string v1, "create(\n            1,\n \u2026Utils.BaseFlags\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroidx/graphics/surface/SurfaceControlV29;->PlaceholderBuffer:Landroid/hardware/HardwareBuffer;

    .line 456
    new-instance v0, Landroidx/hardware/SyncFenceCompat;

    new-instance v1, Landroidx/hardware/SyncFenceV19;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroidx/hardware/SyncFenceV19;-><init>(I)V

    invoke-direct {v0, v1}, Landroidx/hardware/SyncFenceCompat;-><init>(Landroidx/hardware/SyncFenceV19;)V

    sput-object v0, Landroidx/graphics/surface/SurfaceControlV29;->DefaultSyncFence:Landroidx/hardware/SyncFenceCompat;

    return-void
.end method

.method public constructor <init>(Landroidx/graphics/surface/SurfaceControlWrapper;)V
    .locals 1

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroidx/graphics/surface/SurfaceControlV29;->surfaceControl:Landroidx/graphics/surface/SurfaceControlWrapper;

    return-void
.end method

.method public static final synthetic access$getCompanion$p()Landroidx/graphics/surface/SurfaceControlV29$Companion;
    .locals 1

    .line 39
    sget-object v0, Landroidx/graphics/surface/SurfaceControlV29;->Companion:Landroidx/graphics/surface/SurfaceControlV29$Companion;

    return-object v0
.end method

.method public static final synthetic access$getDefaultSyncFence$cp()Landroidx/hardware/SyncFenceCompat;
    .locals 1

    .line 39
    sget-object v0, Landroidx/graphics/surface/SurfaceControlV29;->DefaultSyncFence:Landroidx/hardware/SyncFenceCompat;

    return-object v0
.end method

.method public static final synthetic access$getPlaceholderBuffer$cp()Landroid/hardware/HardwareBuffer;
    .locals 1

    .line 39
    sget-object v0, Landroidx/graphics/surface/SurfaceControlV29;->PlaceholderBuffer:Landroid/hardware/HardwareBuffer;

    return-object v0
.end method


# virtual methods
.method public final getSurfaceControl$graphics_core_release()Landroidx/graphics/surface/SurfaceControlWrapper;
    .locals 1

    .line 41
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29;->surfaceControl:Landroidx/graphics/surface/SurfaceControlWrapper;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 47
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29;->surfaceControl:Landroidx/graphics/surface/SurfaceControlWrapper;

    invoke-virtual {v0}, Landroidx/graphics/surface/SurfaceControlWrapper;->isValid()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29;->surfaceControl:Landroidx/graphics/surface/SurfaceControlWrapper;

    invoke-virtual {v0}, Landroidx/graphics/surface/SurfaceControlWrapper;->release()V

    return-void
.end method
