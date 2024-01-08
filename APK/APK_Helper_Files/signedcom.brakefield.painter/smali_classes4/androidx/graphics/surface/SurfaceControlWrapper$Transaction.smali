.class public final Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;
.super Ljava/lang/Object;
.source "SurfaceControlWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/surface/SurfaceControlWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transaction"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0007J\u0015\u0010\n\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u000bH\u0000\u00a2\u0006\u0002\u0008\u000cJ\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u000eJ\u0006\u0010\u0010\u001a\u00020\u000eJ\u0018\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013J\u0016\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0017J$\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001cH\u0007J\u0018\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u001fH\u0007J\u001a\u0010 \u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0007J\u0018\u0010#\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010$\u001a\u0004\u0018\u00010%J\u000e\u0010&\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020\u0004J6\u0010(\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010)\u001a\u00020\u001f2\u0006\u0010*\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020\u001f2\u0006\u0010,\u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u001fJ\u0016\u0010-\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010.\u001a\u00020\u001fJ\u0016\u0010/\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u00100\u001a\u000201J \u00102\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u00103\u001a\u00020\u00172\u0006\u00104\u001a\u00020\u0017H\u0007J \u00105\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u00106\u001a\u00020\u00172\u0006\u00107\u001a\u00020\u0017H\u0007J\u0016\u00108\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u00109\u001a\u000201R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006:"
    }
    d2 = {
        "Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;",
        "",
        "()V",
        "mNativeSurfaceTransaction",
        "",
        "addTransactionCommittedListener",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "listener",
        "Landroidx/graphics/surface/SurfaceControlCompat$TransactionCommittedListener;",
        "addTransactionCompletedListener",
        "Landroidx/graphics/surface/SurfaceControlCompat$TransactionCompletedListener;",
        "addTransactionCompletedListener$graphics_core_release",
        "close",
        "",
        "commit",
        "finalize",
        "reparent",
        "surfaceControl",
        "Landroidx/graphics/surface/SurfaceControlWrapper;",
        "newParent",
        "setAlpha",
        "alpha",
        "",
        "setBuffer",
        "hardwareBuffer",
        "Landroid/hardware/HardwareBuffer;",
        "syncFence",
        "Landroidx/hardware/SyncFenceV19;",
        "setBufferTransform",
        "transformation",
        "",
        "setCrop",
        "crop",
        "Landroid/graphics/Rect;",
        "setDamageRegion",
        "region",
        "Landroid/graphics/Region;",
        "setDesiredPresentTime",
        "desiredPresentTimeNano",
        "setGeometry",
        "width",
        "height",
        "dstWidth",
        "dstHeight",
        "setLayer",
        "zOrder",
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
        "visibility",
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
.field private mNativeSurfaceTransaction:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    sget-object v0, Landroidx/graphics/surface/JniBindings;->Companion:Landroidx/graphics/surface/JniBindings$Companion;

    invoke-virtual {v0}, Landroidx/graphics/surface/JniBindings$Companion;->nTransactionCreate()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->mNativeSurfaceTransaction:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static synthetic setBuffer$default(Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;Landroidx/graphics/surface/SurfaceControlWrapper;Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceV19;ILjava/lang/Object;)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 323
    new-instance p3, Landroidx/hardware/SyncFenceV19;

    const/4 p4, -0x1

    invoke-direct {p3, p4}, Landroidx/hardware/SyncFenceV19;-><init>(I)V

    .line 320
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->setBuffer(Landroidx/graphics/surface/SurfaceControlWrapper;Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceV19;)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroidx/graphics/surface/SurfaceControlCompat$TransactionCommittedListener;)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;
    .locals 2

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 290
    new-instance v0, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction$addTransactionCommittedListener$1;

    invoke-direct {v0, p1, p2}, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction$addTransactionCommittedListener$1;-><init>(Ljava/util/concurrent/Executor;Landroidx/graphics/surface/SurfaceControlCompat$TransactionCommittedListener;)V

    move-object p2, v0

    check-cast p2, Landroidx/graphics/surface/SurfaceControlCompat$TransactionCommittedListener;

    .line 296
    :cond_0
    sget-object p1, Landroidx/graphics/surface/JniBindings;->Companion:Landroidx/graphics/surface/JniBindings$Companion;

    iget-wide v0, p0, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->mNativeSurfaceTransaction:J

    invoke-virtual {p1, v0, v1, p2}, Landroidx/graphics/surface/JniBindings$Companion;->nTransactionSetOnCommit(JLandroidx/graphics/surface/SurfaceControlCompat$TransactionCommittedListener;)V

    return-object p0
.end method

.method public final addTransactionCompletedListener$graphics_core_release(Landroidx/graphics/surface/SurfaceControlCompat$TransactionCompletedListener;)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;
    .locals 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    sget-object v0, Landroidx/graphics/surface/JniBindings;->Companion:Landroidx/graphics/surface/JniBindings$Companion;

    iget-wide v1, p0, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->mNativeSurfaceTransaction:J

    invoke-virtual {v0, v1, v2, p1}, Landroidx/graphics/surface/JniBindings$Companion;->nTransactionSetOnComplete(JLandroidx/graphics/surface/SurfaceControlCompat$TransactionCompletedListener;)V

    return-object p0
.end method

.method public final close()V
    .locals 6

    .line 642
    iget-wide v0, p0, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->mNativeSurfaceTransaction:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 643
    sget-object v0, Landroidx/graphics/surface/JniBindings;->Companion:Landroidx/graphics/surface/JniBindings$Companion;

    iget-wide v4, p0, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->mNativeSurfaceTransaction:J

    invoke-virtual {v0, v4, v5}, Landroidx/graphics/surface/JniBindings$Companion;->nTransactionDelete(J)V

    .line 644
    iput-wide v2, p0, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->mNativeSurfaceTransaction:J

    :cond_0
    return-void
.end method

.method public final commit()V
    .locals 3

    .line 248
    sget-object v0, Landroidx/graphics/surface/JniBindings;->Companion:Landroidx/graphics/surface/JniBindings$Companion;

    iget-wide v1, p0, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->mNativeSurfaceTransaction:J

    invoke-virtual {v0, v1, v2}, Landroidx/graphics/surface/JniBindings$Companion;->nTransactionApply(J)V

    return-void
.end method

.method public final finalize()V
    .locals 0

    .line 649
    invoke-virtual {p0}, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->close()V

    return-void
.end method

.method public final reparent(Landroidx/graphics/surface/SurfaceControlWrapper;Landroidx/graphics/surface/SurfaceControlWrapper;)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;
    .locals 8

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    sget-object v1, Landroidx/graphics/surface/JniBindings;->Companion:Landroidx/graphics/surface/JniBindings$Companion;

    .line 425
    iget-wide v2, p0, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->mNativeSurfaceTransaction:J

    .line 426
    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlWrapper;->getMNativeSurfaceControl$graphics_core_release()J

    move-result-wide v4

    if-eqz p2, :cond_0

    .line 427
    invoke-virtual {p2}, Landroidx/graphics/surface/SurfaceControlWrapper;->getMNativeSurfaceControl$graphics_core_release()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    move-wide v6, p1

    .line 424
    invoke-virtual/range {v1 .. v7}, Landroidx/graphics/surface/JniBindings$Companion;->nTransactionReparent(JJJ)V

    return-object p0
.end method

.method public final setAlpha(Landroidx/graphics/surface/SurfaceControlWrapper;F)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;
    .locals 7

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 490
    sget-object v1, Landroidx/graphics/surface/JniBindings;->Companion:Landroidx/graphics/surface/JniBindings$Companion;

    .line 491
    iget-wide v2, p0, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->mNativeSurfaceTransaction:J

    .line 492
    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlWrapper;->getMNativeSurfaceControl$graphics_core_release()J

    move-result-wide v4

    move v6, p2

    .line 490
    invoke-virtual/range {v1 .. v6}, Landroidx/graphics/surface/JniBindings$Companion;->nSetBufferAlpha(JJF)V

    return-object p0

    .line 488
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Alpha value must be between 0.0 and 1.0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setBuffer(Landroidx/graphics/surface/SurfaceControlWrapper;Landroid/hardware/HardwareBuffer;)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;
    .locals 7

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->setBuffer$default(Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;Landroidx/graphics/surface/SurfaceControlWrapper;Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceV19;ILjava/lang/Object;)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;

    move-result-object p1

    return-object p1
.end method

.method public final setBuffer(Landroidx/graphics/surface/SurfaceControlWrapper;Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceV19;)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;
    .locals 8

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "syncFence"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    sget-object v1, Landroidx/graphics/surface/JniBindings;->Companion:Landroidx/graphics/surface/JniBindings$Companion;

    .line 326
    iget-wide v2, p0, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->mNativeSurfaceTransaction:J

    .line 327
    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlWrapper;->getMNativeSurfaceControl$graphics_core_release()J

    move-result-wide v4

    move-object v6, p2

    move-object v7, p3

    .line 325
    invoke-virtual/range {v1 .. v7}, Landroidx/graphics/surface/JniBindings$Companion;->nSetBuffer(JJLandroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceV19;)V

    return-object p0
.end method

.method public final setBufferTransform(Landroidx/graphics/surface/SurfaceControlWrapper;I)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;
    .locals 7

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    sget-object v1, Landroidx/graphics/surface/JniBindings;->Companion:Landroidx/graphics/surface/JniBindings$Companion;

    .line 611
    iget-wide v2, p0, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->mNativeSurfaceTransaction:J

    .line 612
    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlWrapper;->getMNativeSurfaceControl$graphics_core_release()J

    move-result-wide v4

    move v6, p2

    .line 610
    invoke-virtual/range {v1 .. v6}, Landroidx/graphics/surface/JniBindings$Companion;->nSetBufferTransform(JJI)V

    return-object p0
.end method

.method public final setCrop(Landroidx/graphics/surface/SurfaceControlWrapper;Landroid/graphics/Rect;)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string/jumbo v2, "surfaceControl"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 515
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    .line 519
    sget-object v1, Landroidx/graphics/surface/JniBindings;->Companion:Landroidx/graphics/surface/JniBindings$Companion;

    .line 520
    iget-wide v4, v0, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->mNativeSurfaceTransaction:J

    .line 521
    invoke-virtual/range {p1 .. p1}, Landroidx/graphics/surface/SurfaceControlWrapper;->getMNativeSurfaceControl$graphics_core_release()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v1

    .line 519
    invoke-virtual/range {v3 .. v11}, Landroidx/graphics/surface/JniBindings$Companion;->nSetCrop(JJIIII)V

    goto :goto_2

    .line 528
    :cond_2
    sget-object v12, Landroidx/graphics/surface/JniBindings;->Companion:Landroidx/graphics/surface/JniBindings$Companion;

    .line 529
    iget-wide v13, v0, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->mNativeSurfaceTransaction:J

    .line 530
    invoke-virtual/range {p1 .. p1}, Landroidx/graphics/surface/SurfaceControlWrapper;->getMNativeSurfaceControl$graphics_core_release()J

    move-result-wide v15

    .line 531
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 532
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 533
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 534
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v1

    .line 528
    invoke-virtual/range {v12 .. v20}, Landroidx/graphics/surface/JniBindings$Companion;->nSetCrop(JJIIII)V

    :goto_2
    return-object v0

    .line 516
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "width and height must be non-negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final setDamageRegion(Landroidx/graphics/surface/SurfaceControlWrapper;Landroid/graphics/Region;)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;
    .locals 7

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    sget-object v1, Landroidx/graphics/surface/JniBindings;->Companion:Landroidx/graphics/surface/JniBindings$Companion;

    .line 398
    iget-wide v2, p0, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->mNativeSurfaceTransaction:J

    .line 399
    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlWrapper;->getMNativeSurfaceControl$graphics_core_release()J

    move-result-wide v4

    if-eqz p2, :cond_0

    .line 400
    invoke-virtual {p2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v6, p1

    .line 397
    invoke-virtual/range {v1 .. v6}, Landroidx/graphics/surface/JniBindings$Companion;->nSetDamageRegion(JJLandroid/graphics/Rect;)V

    return-object p0
.end method

.method public final setDesiredPresentTime(J)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;
    .locals 3

    .line 447
    sget-object v0, Landroidx/graphics/surface/JniBindings;->Companion:Landroidx/graphics/surface/JniBindings$Companion;

    iget-wide v1, p0, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->mNativeSurfaceTransaction:J

    invoke-virtual {v0, v1, v2, p1, p2}, Landroidx/graphics/surface/JniBindings$Companion;->nSetDesiredPresentTime(JJ)V

    return-object p0
.end method

.method public final setGeometry(Landroidx/graphics/surface/SurfaceControlWrapper;IIIII)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;
    .locals 12

    move-object v0, p0

    const-string/jumbo v1, "surfaceControl"

    move-object v2, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    sget-object v1, Landroidx/graphics/surface/JniBindings;->Companion:Landroidx/graphics/surface/JniBindings$Companion;

    .line 627
    iget-wide v3, v0, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->mNativeSurfaceTransaction:J

    .line 628
    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlWrapper;->getMNativeSurfaceControl$graphics_core_release()J

    move-result-wide v5

    move-object v2, v1

    move v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    .line 626
    invoke-virtual/range {v2 .. v11}, Landroidx/graphics/surface/JniBindings$Companion;->nSetGeometry(JJIIIII)V

    return-object v0
.end method

.method public final setLayer(Landroidx/graphics/surface/SurfaceControlWrapper;I)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;
    .locals 7

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    sget-object v1, Landroidx/graphics/surface/JniBindings;->Companion:Landroidx/graphics/surface/JniBindings$Companion;

    .line 373
    iget-wide v2, p0, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->mNativeSurfaceTransaction:J

    .line 374
    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlWrapper;->getMNativeSurfaceControl$graphics_core_release()J

    move-result-wide v4

    move v6, p2

    .line 372
    invoke-virtual/range {v1 .. v6}, Landroidx/graphics/surface/JniBindings$Companion;->nSetZOrder(JJI)V

    return-object p0
.end method

.method public final setOpaque(Landroidx/graphics/surface/SurfaceControlWrapper;Z)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;
    .locals 7

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    sget-object v1, Landroidx/graphics/surface/JniBindings;->Companion:Landroidx/graphics/surface/JniBindings$Companion;

    .line 465
    iget-wide v2, p0, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->mNativeSurfaceTransaction:J

    .line 466
    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlWrapper;->getMNativeSurfaceControl$graphics_core_release()J

    move-result-wide v4

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move v6, p1

    .line 464
    invoke-virtual/range {v1 .. v6}, Landroidx/graphics/surface/JniBindings$Companion;->nSetBufferTransparency(JJB)V

    return-object p0
.end method

.method public final setPosition(Landroidx/graphics/surface/SurfaceControlWrapper;FF)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;
    .locals 8

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    sget-object v1, Landroidx/graphics/surface/JniBindings;->Companion:Landroidx/graphics/surface/JniBindings$Companion;

    .line 554
    iget-wide v2, p0, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->mNativeSurfaceTransaction:J

    .line 555
    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlWrapper;->getMNativeSurfaceControl$graphics_core_release()J

    move-result-wide v4

    move v6, p2

    move v7, p3

    .line 553
    invoke-virtual/range {v1 .. v7}, Landroidx/graphics/surface/JniBindings$Companion;->nSetPosition(JJFF)V

    return-object p0
.end method

.method public final setScale(Landroidx/graphics/surface/SurfaceControlWrapper;FF)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;
    .locals 8

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    sget-object v1, Landroidx/graphics/surface/JniBindings;->Companion:Landroidx/graphics/surface/JniBindings$Companion;

    .line 580
    iget-wide v2, p0, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->mNativeSurfaceTransaction:J

    .line 581
    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlWrapper;->getMNativeSurfaceControl$graphics_core_release()J

    move-result-wide v4

    move v6, p2

    move v7, p3

    .line 579
    invoke-virtual/range {v1 .. v7}, Landroidx/graphics/surface/JniBindings$Companion;->nSetScale(JJFF)V

    return-object p0
.end method

.method public final setVisibility(Landroidx/graphics/surface/SurfaceControlWrapper;Z)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;
    .locals 7

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    sget-object v1, Landroidx/graphics/surface/JniBindings;->Companion:Landroidx/graphics/surface/JniBindings$Companion;

    .line 350
    iget-wide v2, p0, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->mNativeSurfaceTransaction:J

    .line 351
    invoke-virtual {p1}, Landroidx/graphics/surface/SurfaceControlWrapper;->getMNativeSurfaceControl$graphics_core_release()J

    move-result-wide v4

    move v6, p2

    .line 349
    invoke-virtual/range {v1 .. v6}, Landroidx/graphics/surface/JniBindings$Companion;->nSetVisibility(JJB)V

    return-object p0
.end method
