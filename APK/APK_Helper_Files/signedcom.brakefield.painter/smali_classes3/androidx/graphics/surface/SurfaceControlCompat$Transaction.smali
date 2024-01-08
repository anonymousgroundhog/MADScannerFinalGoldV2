.class public final Landroidx/graphics/surface/SurfaceControlCompat$Transaction;
.super Ljava/lang/Object;
.source "SurfaceControlCompat.kt"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/surface/SurfaceControlCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transaction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/surface/SurfaceControlCompat$Transaction$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u0000 >2\u00020\u0001:\u0001>B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u000c\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0006\u0010\u0013\u001a\u00020\u0012J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0018\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0018\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00052\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0005J\u0016\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001cJ>\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00052\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010!2\u0016\u0008\u0002\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\u0012\u0018\u00010#H\u0007J\u0018\u0010$\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00052\u0008\u0008\u0001\u0010%\u001a\u00020\u0006J\u0018\u0010&\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00052\u0008\u0010\'\u001a\u0004\u0018\u00010(J\u0018\u0010)\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00052\u0008\u0010*\u001a\u0004\u0018\u00010+J\u0018\u0010,\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010-\u001a\u00020\u0006H\u0007J$\u0010.\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00052\u0008\u0008\u0001\u0010/\u001a\u00020\u001c2\u0008\u0008\u0001\u00100\u001a\u00020\u001cH\u0007J\u0016\u00101\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u00102\u001a\u00020\u0006J\u0016\u00103\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u00104\u001a\u000205J\u001e\u00106\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u00107\u001a\u00020\u001c2\u0006\u00108\u001a\u00020\u001cJ\u001e\u00109\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010:\u001a\u00020\u001c2\u0006\u0010;\u001a\u00020\u001cJ\u0016\u0010<\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010=\u001a\u000205R0\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006`\u0007X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006?"
    }
    d2 = {
        "Landroidx/graphics/surface/SurfaceControlCompat$Transaction;",
        "Ljava/lang/AutoCloseable;",
        "()V",
        "mBufferTransforms",
        "Ljava/util/HashMap;",
        "Landroidx/graphics/surface/SurfaceControlCompat;",
        "",
        "Lkotlin/collections/HashMap;",
        "getMBufferTransforms$graphics_core_release",
        "()Ljava/util/HashMap;",
        "mImpl",
        "Landroidx/graphics/surface/SurfaceControlImpl$Transaction;",
        "addTransactionCommittedListener",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "listener",
        "Landroidx/graphics/surface/SurfaceControlCompat$TransactionCommittedListener;",
        "close",
        "",
        "commit",
        "commitTransactionOnDraw",
        "attachedSurfaceControl",
        "Landroid/view/AttachedSurfaceControl;",
        "reparent",
        "surfaceControl",
        "newParent",
        "setAlpha",
        "alpha",
        "",
        "setBuffer",
        "buffer",
        "Landroid/hardware/HardwareBuffer;",
        "fence",
        "Landroidx/hardware/SyncFenceCompat;",
        "releaseCallback",
        "Lkotlin/Function1;",
        "setBufferTransform",
        "transformation",
        "setCrop",
        "crop",
        "Landroid/graphics/Rect;",
        "setDamageRegion",
        "region",
        "Landroid/graphics/Region;",
        "setDataSpace",
        "dataSpace",
        "setExtendedRangeBrightness",
        "currentBufferRatio",
        "desiredRatio",
        "setLayer",
        "z",
        "setOpaque",
        "isOpaque",
        "",
        "setPosition",
        "x",
        "y",
        "setScale",
        "scaleX",
        "scaleY",
        "setVisibility",
        "visible",
        "Companion",
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
.field public static final Companion:Landroidx/graphics/surface/SurfaceControlCompat$Transaction$Companion;


# instance fields
.field private final mBufferTransforms:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/graphics/surface/SurfaceControlCompat;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mImpl:Landroidx/graphics/surface/SurfaceControlImpl$Transaction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->Companion:Landroidx/graphics/surface/SurfaceControlCompat$Transaction$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->mBufferTransforms:Ljava/util/HashMap;

    .line 221
    sget-object v0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->Companion:Landroidx/graphics/surface/SurfaceControlCompat$Transaction$Companion;

    invoke-virtual {v0}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction$Companion;->createImpl()Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    move-result-object v0

    iput-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->mImpl:Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-void
.end method

.method public static synthetic setBuffer$default(Landroidx/graphics/surface/SurfaceControlCompat$Transaction;Landroidx/graphics/surface/SurfaceControlCompat;Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 321
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->setBuffer(Landroidx/graphics/surface/SurfaceControlCompat;Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;Lkotlin/jvm/functions/Function1;)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroidx/graphics/surface/SurfaceControlCompat$TransactionCommittedListener;)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;
    .locals 1

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->mImpl:Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    invoke-interface {v0, p1, p2}, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroidx/graphics/surface/SurfaceControlCompat$TransactionCommittedListener;)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p0
.end method

.method public close()V
    .locals 1

    .line 573
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->mImpl:Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    invoke-interface {v0}, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;->close()V

    return-void
.end method

.method public final commit()V
    .locals 1

    .line 565
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->mBufferTransforms:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 566
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->mImpl:Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    invoke-interface {v0}, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;->commit()V

    return-void
.end method

.method public final commitTransactionOnDraw(Landroid/view/AttachedSurfaceControl;)V
    .locals 1

    const-string v0, "attachedSurfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->mImpl:Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    invoke-interface {v0, p1}, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;->commitTransactionOnDraw(Landroid/view/AttachedSurfaceControl;)V

    return-void
.end method

.method public final getMBufferTransforms$graphics_core_release()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Landroidx/graphics/surface/SurfaceControlCompat;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->mBufferTransforms:Ljava/util/HashMap;

    return-object v0
.end method

.method public final reparent(Landroidx/graphics/surface/SurfaceControlCompat;Landroid/view/AttachedSurfaceControl;)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;
    .locals 1

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachedSurfaceControl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->mImpl:Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlCompat;->getScImpl$graphics_core_release()Landroidx/graphics/surface/SurfaceControlImpl;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;->reparent(Landroidx/graphics/surface/SurfaceControlImpl;Landroid/view/AttachedSurfaceControl;)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p0
.end method

.method public final reparent(Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat;)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;
    .locals 1

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->mImpl:Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlCompat;->getScImpl$graphics_core_release()Landroidx/graphics/surface/SurfaceControlImpl;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroidx/graphics/surface/SurfaceControlCompat;->getScImpl$graphics_core_release()Landroidx/graphics/surface/SurfaceControlImpl;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {v0, p1, p2}, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;->reparent(Landroidx/graphics/surface/SurfaceControlImpl;Landroidx/graphics/surface/SurfaceControlImpl;)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p0
.end method

.method public final setAlpha(Landroidx/graphics/surface/SurfaceControlCompat;F)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;
    .locals 1

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->mImpl:Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlCompat;->getScImpl$graphics_core_release()Landroidx/graphics/surface/SurfaceControlImpl;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;->setAlpha(Landroidx/graphics/surface/SurfaceControlImpl;F)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p0
.end method

.method public final setBuffer(Landroidx/graphics/surface/SurfaceControlCompat;Landroid/hardware/HardwareBuffer;)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;
    .locals 8

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->setBuffer$default(Landroidx/graphics/surface/SurfaceControlCompat$Transaction;Landroidx/graphics/surface/SurfaceControlCompat;Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;

    move-result-object p1

    return-object p1
.end method

.method public final setBuffer(Landroidx/graphics/surface/SurfaceControlCompat;Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;
    .locals 8

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->setBuffer$default(Landroidx/graphics/surface/SurfaceControlCompat$Transaction;Landroidx/graphics/surface/SurfaceControlCompat;Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;

    move-result-object p1

    return-object p1
.end method

.method public final setBuffer(Landroidx/graphics/surface/SurfaceControlCompat;Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;Lkotlin/jvm/functions/Function1;)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/graphics/surface/SurfaceControlCompat;",
            "Landroid/hardware/HardwareBuffer;",
            "Landroidx/hardware/SyncFenceCompat;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/hardware/SyncFenceCompat;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/graphics/surface/SurfaceControlCompat$Transaction;"
        }
    .end annotation

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->mImpl:Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlCompat;->getScImpl$graphics_core_release()Landroidx/graphics/surface/SurfaceControlImpl;

    move-result-object p1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroidx/hardware/SyncFenceCompat;->getMImpl$graphics_core_release()Landroidx/hardware/SyncFenceImpl;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;->setBuffer(Landroidx/graphics/surface/SurfaceControlImpl;Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceImpl;Lkotlin/jvm/functions/Function1;)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p0
.end method

.method public final setBufferTransform(Landroidx/graphics/surface/SurfaceControlCompat;I)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;
    .locals 2
    .param p2    # I
        .annotation runtime Landroidx/graphics/surface/SurfaceControlCompat$Companion$BufferTransform;
        .end annotation
    .end param

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 481
    iget-object v1, p0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->mBufferTransforms:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->mImpl:Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlCompat;->getScImpl$graphics_core_release()Landroidx/graphics/surface/SurfaceControlImpl;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;->setBufferTransform(Landroidx/graphics/surface/SurfaceControlImpl;I)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p0
.end method

.method public final setCrop(Landroidx/graphics/surface/SurfaceControlCompat;Landroid/graphics/Rect;)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;
    .locals 1

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->mImpl:Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlCompat;->getScImpl$graphics_core_release()Landroidx/graphics/surface/SurfaceControlImpl;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;->setCrop(Landroidx/graphics/surface/SurfaceControlImpl;Landroid/graphics/Rect;)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p0
.end method

.method public final setDamageRegion(Landroidx/graphics/surface/SurfaceControlCompat;Landroid/graphics/Region;)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;
    .locals 1

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->mImpl:Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlCompat;->getScImpl$graphics_core_release()Landroidx/graphics/surface/SurfaceControlImpl;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;->setDamageRegion(Landroidx/graphics/surface/SurfaceControlImpl;Landroid/graphics/Region;)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p0
.end method

.method public final setDataSpace(Landroidx/graphics/surface/SurfaceControlCompat;I)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;
    .locals 1

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->mImpl:Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlCompat;->getScImpl$graphics_core_release()Landroidx/graphics/surface/SurfaceControlImpl;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;->setDataSpace(Landroidx/graphics/surface/SurfaceControlImpl;I)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p0
.end method

.method public final setExtendedRangeBrightness(Landroidx/graphics/surface/SurfaceControlCompat;FF)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;
    .locals 1

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->mImpl:Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    .line 531
    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlCompat;->getScImpl$graphics_core_release()Landroidx/graphics/surface/SurfaceControlImpl;

    move-result-object p1

    .line 530
    invoke-interface {v0, p1, p2, p3}, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;->setExtendedRangeBrightness(Landroidx/graphics/surface/SurfaceControlImpl;FF)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p0
.end method

.method public final setLayer(Landroidx/graphics/surface/SurfaceControlCompat;I)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;
    .locals 1

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->mImpl:Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlCompat;->getScImpl$graphics_core_release()Landroidx/graphics/surface/SurfaceControlImpl;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;->setLayer(Landroidx/graphics/surface/SurfaceControlImpl;I)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p0
.end method

.method public final setOpaque(Landroidx/graphics/surface/SurfaceControlCompat;Z)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;
    .locals 1

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->mImpl:Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlCompat;->getScImpl$graphics_core_release()Landroidx/graphics/surface/SurfaceControlImpl;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;->setOpaque(Landroidx/graphics/surface/SurfaceControlImpl;Z)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p0
.end method

.method public final setPosition(Landroidx/graphics/surface/SurfaceControlCompat;FF)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;
    .locals 1

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->mImpl:Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlCompat;->getScImpl$graphics_core_release()Landroidx/graphics/surface/SurfaceControlImpl;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;->setPosition(Landroidx/graphics/surface/SurfaceControlImpl;FF)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p0
.end method

.method public final setScale(Landroidx/graphics/surface/SurfaceControlCompat;FF)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;
    .locals 1

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->mImpl:Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlCompat;->getScImpl$graphics_core_release()Landroidx/graphics/surface/SurfaceControlImpl;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;->setScale(Landroidx/graphics/surface/SurfaceControlImpl;FF)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p0
.end method

.method public final setVisibility(Landroidx/graphics/surface/SurfaceControlCompat;Z)Landroidx/graphics/surface/SurfaceControlCompat$Transaction;
    .locals 1

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat$Transaction;->mImpl:Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlCompat;->getScImpl$graphics_core_release()Landroidx/graphics/surface/SurfaceControlImpl;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;->setVisibility(Landroidx/graphics/surface/SurfaceControlImpl;Z)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p0
.end method
