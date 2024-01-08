.class final Landroidx/graphics/surface/SurfaceControlTransactionVerificationHelperV34;
.super Ljava/lang/Object;
.source "SurfaceControlV33.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0008\u00c3\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/graphics/surface/SurfaceControlTransactionVerificationHelperV34;",
        "",
        "()V",
        "setExtendedRangeBrightness",
        "",
        "transaction",
        "Landroid/view/SurfaceControl$Transaction;",
        "surfaceControl",
        "Landroid/view/SurfaceControl;",
        "currentBufferRatio",
        "",
        "desiredRatio",
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
.field public static final INSTANCE:Landroidx/graphics/surface/SurfaceControlTransactionVerificationHelperV34;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/graphics/surface/SurfaceControlTransactionVerificationHelperV34;

    invoke-direct {v0}, Landroidx/graphics/surface/SurfaceControlTransactionVerificationHelperV34;-><init>()V

    sput-object v0, Landroidx/graphics/surface/SurfaceControlTransactionVerificationHelperV34;->INSTANCE:Landroidx/graphics/surface/SurfaceControlTransactionVerificationHelperV34;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setExtendedRangeBrightness(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)V
    .locals 1

    const-string/jumbo v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setExtendedRangeBrightness(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method
