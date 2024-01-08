.class public final Landroidx/graphics/surface/SurfaceControlCompat;
.super Ljava/lang/Object;
.source "SurfaceControlCompat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/surface/SurfaceControlCompat$Builder;,
        Landroidx/graphics/surface/SurfaceControlCompat$Companion;,
        Landroidx/graphics/surface/SurfaceControlCompat$Transaction;,
        Landroidx/graphics/surface/SurfaceControlCompat$TransactionCommittedListener;,
        Landroidx/graphics/surface/SurfaceControlCompat$TransactionCompletedListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u000c2\u00020\u0001:\u0005\u000b\u000c\r\u000e\u000fB\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0008J\u0006\u0010\t\u001a\u00020\nR\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/graphics/surface/SurfaceControlCompat;",
        "",
        "scImpl",
        "Landroidx/graphics/surface/SurfaceControlImpl;",
        "(Landroidx/graphics/surface/SurfaceControlImpl;)V",
        "getScImpl$graphics_core_release",
        "()Landroidx/graphics/surface/SurfaceControlImpl;",
        "isValid",
        "",
        "release",
        "",
        "Builder",
        "Companion",
        "Transaction",
        "TransactionCommittedListener",
        "TransactionCompletedListener",
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
.field public static final BUFFER_TRANSFORM_IDENTITY:I = 0x0

.field public static final BUFFER_TRANSFORM_MIRROR_HORIZONTAL:I = 0x1

.field public static final BUFFER_TRANSFORM_MIRROR_VERTICAL:I = 0x2

.field public static final BUFFER_TRANSFORM_ROTATE_180:I = 0x3

.field public static final BUFFER_TRANSFORM_ROTATE_270:I = 0x7

.field public static final BUFFER_TRANSFORM_ROTATE_90:I = 0x4

.field public static final Companion:Landroidx/graphics/surface/SurfaceControlCompat$Companion;


# instance fields
.field private final scImpl:Landroidx/graphics/surface/SurfaceControlImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/surface/SurfaceControlCompat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/surface/SurfaceControlCompat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/surface/SurfaceControlCompat;->Companion:Landroidx/graphics/surface/SurfaceControlCompat$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/graphics/surface/SurfaceControlImpl;)V
    .locals 1

    const-string/jumbo v0, "scImpl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroidx/graphics/surface/SurfaceControlCompat;->scImpl:Landroidx/graphics/surface/SurfaceControlImpl;

    return-void
.end method


# virtual methods
.method public final getScImpl$graphics_core_release()Landroidx/graphics/surface/SurfaceControlImpl;
    .locals 1

    .line 52
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat;->scImpl:Landroidx/graphics/surface/SurfaceControlImpl;

    return-object v0
.end method

.method public final isValid()Z
    .locals 1

    .line 104
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat;->scImpl:Landroidx/graphics/surface/SurfaceControlImpl;

    invoke-interface {v0}, Landroidx/graphics/surface/SurfaceControlImpl;->isValid()Z

    move-result v0

    return v0
.end method

.method public final release()V
    .locals 1

    .line 114
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat;->scImpl:Landroidx/graphics/surface/SurfaceControlImpl;

    invoke-interface {v0}, Landroidx/graphics/surface/SurfaceControlImpl;->release()V

    return-void
.end method
