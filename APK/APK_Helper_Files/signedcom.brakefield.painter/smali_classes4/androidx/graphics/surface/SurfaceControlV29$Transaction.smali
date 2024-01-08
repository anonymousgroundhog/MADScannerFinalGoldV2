.class public final Landroidx/graphics/surface/SurfaceControlV29$Transaction;
.super Ljava/lang/Object;
.source "SurfaceControlV29.kt"

# interfaces
.implements Landroidx/graphics/surface/SurfaceControlImpl$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/surface/SurfaceControlV29;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transaction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/surface/SurfaceControlV29$Transaction$BufferData;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001EB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0017J\u000e\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0012J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0014H\u0016J\u0010\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0018\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u001a\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00052\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0005H\u0016J\u0018\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J:\u0010\u001f\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00052\u0008\u0010 \u001a\u0004\u0018\u00010!2\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0014\u0010$\u001a\u0010\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u0014\u0018\u00010%H\u0016J\u001a\u0010\'\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u00052\u0008\u0008\u0001\u0010(\u001a\u00020\u0006H\u0016J\u001a\u0010)\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00052\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0017J\u001a\u0010,\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00052\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0016J\u0018\u0010/\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u00100\u001a\u00020\u0006H\u0017J \u00101\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u00102\u001a\u00020\u001e2\u0006\u00103\u001a\u00020\u001eH\u0017J\u0018\u00104\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u00105\u001a\u00020\u0006H\u0016J\u0018\u00106\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u00107\u001a\u000208H\u0016J\u0008\u00109\u001a\u00020\u0014H\u0002J \u0010:\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010;\u001a\u00020\u001e2\u0006\u0010<\u001a\u00020\u001eH\u0017J \u0010=\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010>\u001a\u00020\u001e2\u0006\u0010?\u001a\u00020\u001eH\u0017J\u0018\u0010@\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010A\u001a\u000208H\u0016J\u0008\u0010B\u001a\u00020\u0014H\u0002J\u000c\u0010C\u001a\u00020D*\u00020#H\u0002R*\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R.\u0010\n\u001a\"\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0004j\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u000b`\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006F"
    }
    d2 = {
        "Landroidx/graphics/surface/SurfaceControlV29$Transaction;",
        "Landroidx/graphics/surface/SurfaceControlImpl$Transaction;",
        "()V",
        "pendingSetTransformCalls",
        "Ljava/util/HashMap;",
        "Landroidx/graphics/surface/SurfaceControlImpl;",
        "",
        "Lkotlin/collections/HashMap;",
        "transaction",
        "Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;",
        "uncommittedBufferCallbackMap",
        "Landroidx/graphics/surface/SurfaceControlV29$Transaction$BufferData;",
        "addTransactionCommittedListener",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "listener",
        "Landroidx/graphics/surface/SurfaceControlCompat$TransactionCommittedListener;",
        "addTransactionCompletedListener",
        "Landroidx/graphics/surface/SurfaceControlCompat$TransactionCompletedListener;",
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
        "Landroidx/hardware/SyncFenceImpl;",
        "releaseCallback",
        "Lkotlin/Function1;",
        "Landroidx/hardware/SyncFenceCompat;",
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
        "setPendingBufferTransform",
        "setPosition",
        "x",
        "y",
        "setScale",
        "scaleX",
        "scaleY",
        "setVisibility",
        "visible",
        "updateReleaseCallbacks",
        "asSyncFenceCompat",
        "Landroidx/hardware/SyncFenceV19;",
        "BufferData",
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
.field private final pendingSetTransformCalls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/graphics/surface/SurfaceControlImpl;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final transaction:Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

.field private final uncommittedBufferCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/graphics/surface/SurfaceControlImpl;",
            "Landroidx/graphics/surface/SurfaceControlV29$Transaction$BufferData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    invoke-direct {v0}, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;-><init>()V

    iput-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->transaction:Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->uncommittedBufferCallbackMap:Ljava/util/HashMap;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->pendingSetTransformCalls:Ljava/util/HashMap;

    return-void
.end method

.method private final asSyncFenceCompat(Landroidx/hardware/SyncFenceImpl;)Landroidx/hardware/SyncFenceV19;
    .locals 1

    .line 428
    instance-of v0, p1, Landroidx/hardware/SyncFenceV19;

    if-eqz v0, :cond_0

    .line 429
    check-cast p1, Landroidx/hardware/SyncFenceV19;

    return-object p1

    .line 431
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected SyncFenceCompat implementation for API level 19"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final setPendingBufferTransform()V
    .locals 12

    .line 159
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->pendingSetTransformCalls:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/graphics/surface/SurfaceControlImpl;

    .line 160
    iget-object v2, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->uncommittedBufferCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/graphics/surface/SurfaceControlV29$Transaction$BufferData;

    if-eqz v2, :cond_0

    .line 161
    iget-object v3, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->pendingSetTransformCalls:Ljava/util/HashMap;

    const/4 v4, -0x1

    .line 163
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 161
    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "pendingSetTransformCalls\u2026ORM\n                    )"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v11

    if-eq v11, v4, :cond_0

    const/4 v3, 0x4

    if-eq v11, v3, :cond_1

    const/4 v3, 0x7

    if-eq v11, v3, :cond_1

    .line 174
    invoke-virtual {v2}, Landroidx/graphics/surface/SurfaceControlV29$Transaction$BufferData;->getWidth()I

    move-result v3

    .line 175
    invoke-virtual {v2}, Landroidx/graphics/surface/SurfaceControlV29$Transaction$BufferData;->getHeight()I

    move-result v4

    goto :goto_1

    .line 171
    :cond_1
    invoke-virtual {v2}, Landroidx/graphics/surface/SurfaceControlV29$Transaction$BufferData;->getHeight()I

    move-result v3

    .line 172
    invoke-virtual {v2}, Landroidx/graphics/surface/SurfaceControlV29$Transaction$BufferData;->getWidth()I

    move-result v4

    :goto_1
    move v9, v3

    move v10, v4

    .line 177
    iget-object v5, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->transaction:Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    .line 178
    invoke-static {}, Landroidx/graphics/surface/SurfaceControlV29;->access$getCompanion$p()Landroidx/graphics/surface/SurfaceControlV29$Companion;

    move-result-object v3

    const-string/jumbo v4, "surfaceControl"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroidx/graphics/surface/SurfaceControlV29$Companion;->asWrapperSurfaceControl(Landroidx/graphics/surface/SurfaceControlImpl;)Landroidx/graphics/surface/SurfaceControlWrapper;

    move-result-object v6

    .line 179
    invoke-virtual {v2}, Landroidx/graphics/surface/SurfaceControlV29$Transaction$BufferData;->getWidth()I

    move-result v7

    .line 180
    invoke-virtual {v2}, Landroidx/graphics/surface/SurfaceControlV29$Transaction$BufferData;->getHeight()I

    move-result v8

    .line 177
    invoke-virtual/range {v5 .. v11}, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->setGeometry(Landroidx/graphics/surface/SurfaceControlWrapper;IIIII)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final updateReleaseCallbacks()V
    .locals 6

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 129
    iget-object v1, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->uncommittedBufferCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/graphics/surface/SurfaceControlImpl;

    .line 130
    instance-of v3, v2, Landroidx/graphics/surface/SurfaceControlV29;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroidx/graphics/surface/SurfaceControlV29;

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_0

    .line 132
    iget-object v5, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->uncommittedBufferCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/graphics/surface/SurfaceControlV29$Transaction$BufferData;

    if-eqz v2, :cond_2

    .line 133
    invoke-virtual {v2}, Landroidx/graphics/surface/SurfaceControlV29$Transaction$BufferData;->getReleaseCallback()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    :cond_2
    if-eqz v4, :cond_0

    .line 134
    new-instance v4, Landroidx/graphics/surface/SurfaceControlV29$Transaction$updateReleaseCallbacks$CallbackEntry;

    invoke-virtual {v2}, Landroidx/graphics/surface/SurfaceControlV29$Transaction$BufferData;->getReleaseCallback()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Landroidx/graphics/surface/SurfaceControlV29$Transaction$updateReleaseCallbacks$CallbackEntry;-><init>(Landroidx/graphics/surface/SurfaceControlV29;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 140
    new-instance v1, Landroidx/graphics/surface/SurfaceControlV29$Transaction$updateReleaseCallbacks$callbackListener$1;

    invoke-direct {v1, v0}, Landroidx/graphics/surface/SurfaceControlV29$Transaction$updateReleaseCallbacks$callbackListener$1;-><init>(Ljava/util/List;)V

    .line 154
    check-cast v1, Landroidx/graphics/surface/SurfaceControlCompat$TransactionCompletedListener;

    invoke-virtual {p0, v1}, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->addTransactionCompletedListener(Landroidx/graphics/surface/SurfaceControlCompat$TransactionCompletedListener;)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    :cond_4
    return-void
.end method


# virtual methods
.method public addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroidx/graphics/surface/SurfaceControlCompat$TransactionCommittedListener;)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;
    .locals 1

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->transaction:Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    invoke-virtual {v0, p1, p2}, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroidx/graphics/surface/SurfaceControlCompat$TransactionCommittedListener;)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    .line 275
    move-object p1, p0

    check-cast p1, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p1
.end method

.method public final addTransactionCompletedListener(Landroidx/graphics/surface/SurfaceControlCompat$TransactionCompletedListener;)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->transaction:Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    invoke-virtual {v0, p1}, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->addTransactionCompletedListener$graphics_core_release(Landroidx/graphics/surface/SurfaceControlCompat$TransactionCompletedListener;)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    .line 285
    move-object p1, p0

    check-cast p1, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p1
.end method

.method public close()V
    .locals 1

    .line 408
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->transaction:Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    invoke-virtual {v0}, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->close()V

    return-void
.end method

.method public commit()V
    .locals 1

    .line 114
    invoke-direct {p0}, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->setPendingBufferTransform()V

    .line 115
    invoke-direct {p0}, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->updateReleaseCallbacks()V

    .line 116
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->uncommittedBufferCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 117
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->pendingSetTransformCalls:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 118
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->transaction:Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    invoke-virtual {v0}, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->commit()V

    return-void
.end method

.method public commitTransactionOnDraw(Landroid/view/AttachedSurfaceControl;)V
    .locals 1

    const-string v0, "attachedSurfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Committing transactions synchronously with the draw pass of an AttachedSurfaceControl is only available on Android T+."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reparent(Landroidx/graphics/surface/SurfaceControlImpl;Landroid/view/AttachedSurfaceControl;)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;
    .locals 1

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "attachedSurfaceControl"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Reparenting to an AttachedSurfaceControl is only available on Android T+."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reparent(Landroidx/graphics/surface/SurfaceControlImpl;Landroidx/graphics/surface/SurfaceControlImpl;)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;
    .locals 2

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->transaction:Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    .line 209
    invoke-static {}, Landroidx/graphics/surface/SurfaceControlV29;->access$getCompanion$p()Landroidx/graphics/surface/SurfaceControlV29$Companion;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/graphics/surface/SurfaceControlV29$Companion;->asWrapperSurfaceControl(Landroidx/graphics/surface/SurfaceControlImpl;)Landroidx/graphics/surface/SurfaceControlWrapper;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 210
    invoke-static {}, Landroidx/graphics/surface/SurfaceControlV29;->access$getCompanion$p()Landroidx/graphics/surface/SurfaceControlV29$Companion;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroidx/graphics/surface/SurfaceControlV29$Companion;->asWrapperSurfaceControl(Landroidx/graphics/surface/SurfaceControlImpl;)Landroidx/graphics/surface/SurfaceControlWrapper;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 208
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->reparent(Landroidx/graphics/surface/SurfaceControlWrapper;Landroidx/graphics/surface/SurfaceControlWrapper;)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    .line 212
    move-object p1, p0

    check-cast p1, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p1
.end method

.method public setAlpha(Landroidx/graphics/surface/SurfaceControlImpl;F)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;
    .locals 2

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->transaction:Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    invoke-static {}, Landroidx/graphics/surface/SurfaceControlV29;->access$getCompanion$p()Landroidx/graphics/surface/SurfaceControlV29$Companion;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/graphics/surface/SurfaceControlV29$Companion;->asWrapperSurfaceControl(Landroidx/graphics/surface/SurfaceControlImpl;)Landroidx/graphics/surface/SurfaceControlWrapper;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->setAlpha(Landroidx/graphics/surface/SurfaceControlWrapper;F)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    .line 318
    move-object p1, p0

    check-cast p1, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p1
.end method

.method public setBuffer(Landroidx/graphics/surface/SurfaceControlImpl;Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceImpl;Lkotlin/jvm/functions/Function1;)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/graphics/surface/SurfaceControlImpl;",
            "Landroid/hardware/HardwareBuffer;",
            "Landroidx/hardware/SyncFenceImpl;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/hardware/SyncFenceCompat;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/graphics/surface/SurfaceControlImpl$Transaction;"
        }
    .end annotation

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 225
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->uncommittedBufferCallbackMap:Ljava/util/HashMap;

    .line 227
    new-instance v1, Landroidx/graphics/surface/SurfaceControlV29$Transaction$BufferData;

    .line 228
    invoke-virtual {p2}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v2

    .line 229
    invoke-virtual {p2}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v3

    .line 227
    invoke-direct {v1, v2, v3, p4}, Landroidx/graphics/surface/SurfaceControlV29$Transaction$BufferData;-><init>(IILkotlin/jvm/functions/Function1;)V

    .line 225
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/graphics/surface/SurfaceControlV29$Transaction$BufferData;

    goto :goto_0

    .line 234
    :cond_0
    iget-object p4, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->uncommittedBufferCallbackMap:Ljava/util/HashMap;

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/graphics/surface/SurfaceControlV29$Transaction$BufferData;

    :goto_0
    if-eqz p4, :cond_1

    .line 237
    invoke-virtual {p4}, Landroidx/graphics/surface/SurfaceControlV29$Transaction$BufferData;->getReleaseCallback()Lkotlin/jvm/functions/Function1;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-static {}, Landroidx/graphics/surface/SurfaceControlV29;->access$getCompanion$p()Landroidx/graphics/surface/SurfaceControlV29$Companion;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/graphics/surface/SurfaceControlV29$Companion;->getDefaultSyncFence()Landroidx/hardware/SyncFenceCompat;

    move-result-object v0

    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez p2, :cond_2

    .line 239
    invoke-static {}, Landroidx/graphics/surface/SurfaceControlV29;->access$getCompanion$p()Landroidx/graphics/surface/SurfaceControlV29$Companion;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/graphics/surface/SurfaceControlV29$Companion;->getPlaceholderBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p2

    :cond_2
    move-object v2, p2

    if-nez p3, :cond_3

    .line 243
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->transaction:Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    invoke-static {}, Landroidx/graphics/surface/SurfaceControlV29;->access$getCompanion$p()Landroidx/graphics/surface/SurfaceControlV29$Companion;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/graphics/surface/SurfaceControlV29$Companion;->asWrapperSurfaceControl(Landroidx/graphics/surface/SurfaceControlImpl;)Landroidx/graphics/surface/SurfaceControlWrapper;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->setBuffer$default(Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;Landroidx/graphics/surface/SurfaceControlWrapper;Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceV19;ILjava/lang/Object;)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    goto :goto_1

    .line 245
    :cond_3
    iget-object p2, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->transaction:Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    .line 246
    invoke-static {}, Landroidx/graphics/surface/SurfaceControlV29;->access$getCompanion$p()Landroidx/graphics/surface/SurfaceControlV29$Companion;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroidx/graphics/surface/SurfaceControlV29$Companion;->asWrapperSurfaceControl(Landroidx/graphics/surface/SurfaceControlImpl;)Landroidx/graphics/surface/SurfaceControlWrapper;

    move-result-object p1

    .line 248
    invoke-direct {p0, p3}, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->asSyncFenceCompat(Landroidx/hardware/SyncFenceImpl;)Landroidx/hardware/SyncFenceV19;

    move-result-object p3

    .line 245
    invoke-virtual {p2, p1, v2, p3}, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->setBuffer(Landroidx/graphics/surface/SurfaceControlWrapper;Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceV19;)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    .line 252
    :goto_1
    move-object p1, p0

    check-cast p1, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p1
.end method

.method public bridge synthetic setBufferTransform(Landroidx/graphics/surface/SurfaceControlImpl;I)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;
    .locals 0

    .line 95
    invoke-virtual {p0, p1, p2}, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->setBufferTransform(Landroidx/graphics/surface/SurfaceControlImpl;I)Landroidx/graphics/surface/SurfaceControlV29$Transaction;

    move-result-object p1

    check-cast p1, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p1
.end method

.method public setBufferTransform(Landroidx/graphics/surface/SurfaceControlImpl;I)Landroidx/graphics/surface/SurfaceControlV29$Transaction;
    .locals 2
    .param p2    # I
        .annotation runtime Landroidx/graphics/surface/SurfaceControlCompat$Companion$BufferTransform;
        .end annotation
    .end param

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 367
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->transaction:Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    .line 368
    invoke-static {}, Landroidx/graphics/surface/SurfaceControlV29;->access$getCompanion$p()Landroidx/graphics/surface/SurfaceControlV29$Companion;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/graphics/surface/SurfaceControlV29$Companion;->asWrapperSurfaceControl(Landroidx/graphics/surface/SurfaceControlImpl;)Landroidx/graphics/surface/SurfaceControlWrapper;

    move-result-object p1

    .line 367
    invoke-virtual {v0, p1, p2}, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->setBufferTransform(Landroidx/graphics/surface/SurfaceControlWrapper;I)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 372
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->pendingSetTransformCalls:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public setCrop(Landroidx/graphics/surface/SurfaceControlImpl;Landroid/graphics/Rect;)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;
    .locals 2

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->transaction:Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    invoke-static {}, Landroidx/graphics/surface/SurfaceControlV29;->access$getCompanion$p()Landroidx/graphics/surface/SurfaceControlV29$Companion;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/graphics/surface/SurfaceControlV29$Companion;->asWrapperSurfaceControl(Landroidx/graphics/surface/SurfaceControlImpl;)Landroidx/graphics/surface/SurfaceControlWrapper;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->setCrop(Landroidx/graphics/surface/SurfaceControlWrapper;Landroid/graphics/Rect;)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    .line 330
    move-object p1, p0

    check-cast p1, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p1
.end method

.method public setDamageRegion(Landroidx/graphics/surface/SurfaceControlImpl;Landroid/graphics/Region;)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;
    .locals 2

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->transaction:Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    invoke-static {}, Landroidx/graphics/surface/SurfaceControlV29;->access$getCompanion$p()Landroidx/graphics/surface/SurfaceControlV29$Companion;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/graphics/surface/SurfaceControlV29$Companion;->asWrapperSurfaceControl(Landroidx/graphics/surface/SurfaceControlImpl;)Landroidx/graphics/surface/SurfaceControlWrapper;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->setDamageRegion(Landroidx/graphics/surface/SurfaceControlWrapper;Landroid/graphics/Region;)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    .line 296
    move-object p1, p0

    check-cast p1, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p1
.end method

.method public setDataSpace(Landroidx/graphics/surface/SurfaceControlImpl;I)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;
    .locals 0

    const-string/jumbo p2, "surfaceControl"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Configuring the data space is only available on Android T+"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setExtendedRangeBrightness(Landroidx/graphics/surface/SurfaceControlImpl;FF)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;
    .locals 0

    const-string/jumbo p2, "surfaceControl"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Configuring the extended range brightness is only available on Android U+"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLayer(Landroidx/graphics/surface/SurfaceControlImpl;I)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;
    .locals 2

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->transaction:Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    invoke-static {}, Landroidx/graphics/surface/SurfaceControlV29;->access$getCompanion$p()Landroidx/graphics/surface/SurfaceControlV29$Companion;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/graphics/surface/SurfaceControlV29$Companion;->asWrapperSurfaceControl(Landroidx/graphics/surface/SurfaceControlImpl;)Landroidx/graphics/surface/SurfaceControlWrapper;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->setLayer(Landroidx/graphics/surface/SurfaceControlWrapper;I)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    .line 263
    move-object p1, p0

    check-cast p1, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p1
.end method

.method public setOpaque(Landroidx/graphics/surface/SurfaceControlImpl;Z)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;
    .locals 2

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->transaction:Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    invoke-static {}, Landroidx/graphics/surface/SurfaceControlV29;->access$getCompanion$p()Landroidx/graphics/surface/SurfaceControlV29$Companion;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/graphics/surface/SurfaceControlV29$Companion;->asWrapperSurfaceControl(Landroidx/graphics/surface/SurfaceControlImpl;)Landroidx/graphics/surface/SurfaceControlWrapper;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->setOpaque(Landroidx/graphics/surface/SurfaceControlWrapper;Z)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    .line 307
    move-object p1, p0

    check-cast p1, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p1
.end method

.method public setPosition(Landroidx/graphics/surface/SurfaceControlImpl;FF)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;
    .locals 2

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->transaction:Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    invoke-static {}, Landroidx/graphics/surface/SurfaceControlV29;->access$getCompanion$p()Landroidx/graphics/surface/SurfaceControlV29$Companion;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/graphics/surface/SurfaceControlV29$Companion;->asWrapperSurfaceControl(Landroidx/graphics/surface/SurfaceControlImpl;)Landroidx/graphics/surface/SurfaceControlWrapper;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->setPosition(Landroidx/graphics/surface/SurfaceControlWrapper;FF)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    .line 343
    move-object p1, p0

    check-cast p1, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p1
.end method

.method public setScale(Landroidx/graphics/surface/SurfaceControlImpl;FF)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;
    .locals 2

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->transaction:Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    invoke-static {}, Landroidx/graphics/surface/SurfaceControlV29;->access$getCompanion$p()Landroidx/graphics/surface/SurfaceControlV29$Companion;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/graphics/surface/SurfaceControlV29$Companion;->asWrapperSurfaceControl(Landroidx/graphics/surface/SurfaceControlImpl;)Landroidx/graphics/surface/SurfaceControlWrapper;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->setScale(Landroidx/graphics/surface/SurfaceControlWrapper;FF)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    .line 356
    move-object p1, p0

    check-cast p1, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p1
.end method

.method public setVisibility(Landroidx/graphics/surface/SurfaceControlImpl;Z)Landroidx/graphics/surface/SurfaceControlImpl$Transaction;
    .locals 2

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction;->transaction:Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    invoke-static {}, Landroidx/graphics/surface/SurfaceControlV29;->access$getCompanion$p()Landroidx/graphics/surface/SurfaceControlV29$Companion;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/graphics/surface/SurfaceControlV29$Companion;->asWrapperSurfaceControl(Landroidx/graphics/surface/SurfaceControlImpl;)Landroidx/graphics/surface/SurfaceControlWrapper;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->setVisibility(Landroidx/graphics/surface/SurfaceControlWrapper;Z)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    .line 198
    move-object p1, p0

    check-cast p1, Landroidx/graphics/surface/SurfaceControlImpl$Transaction;

    return-object p1
.end method
