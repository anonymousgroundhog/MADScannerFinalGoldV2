.class public final Landroidx/graphics/surface/JniBindings$Companion;
.super Ljava/lang/Object;
.source "SurfaceControlWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/surface/JniBindings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u0005\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0019\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0087 J\u0019\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0007H\u0087 J\u0011\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0087 J\t\u0010\u000f\u001a\u00020\u0007H\u0087 J\u0019\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0004H\u0087 J\u0011\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0004H\u0087 J+\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u000eH\u0087 J!\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u001bH\u0087 J!\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u000cH\u0087 J!\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020 H\u0087 J9\u0010!\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u000c2\u0006\u0010#\u001a\u00020\u000c2\u0006\u0010$\u001a\u00020\u000c2\u0006\u0010%\u001a\u00020\u000cH\u0087 J#\u0010&\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0087 J\u0019\u0010)\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u0004H\u0087 JA\u0010+\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u000c2\u0006\u0010-\u001a\u00020\u000c2\u0006\u0010.\u001a\u00020\u000c2\u0006\u0010/\u001a\u00020\u000c2\u0006\u0010\u001d\u001a\u00020\u000cH\u0087 J)\u00100\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u00101\u001a\u00020\u001b2\u0006\u00102\u001a\u00020\u001bH\u0087 J)\u00103\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u00104\u001a\u00020\u001b2\u0006\u00105\u001a\u00020\u001bH\u0087 J!\u00106\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u00107\u001a\u00020 H\u0087 J!\u00108\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u00109\u001a\u00020\u000cH\u0087 J\u0011\u0010:\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0004H\u0087 J\t\u0010;\u001a\u00020\u0004H\u0087 J\u0011\u0010<\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0004H\u0087 J!\u0010=\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010>\u001a\u00020\u0004H\u0087 J\u0019\u0010?\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010@\u001a\u00020AH\u0087 J\u0019\u0010B\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010@\u001a\u00020CH\u0087 \u00a8\u0006D"
    }
    d2 = {
        "Landroidx/graphics/surface/JniBindings$Companion;",
        "",
        "()V",
        "nCreate",
        "",
        "surfaceControl",
        "debugName",
        "",
        "nCreateFromSurface",
        "surface",
        "Landroid/view/Surface;",
        "nDupFenceFd",
        "",
        "syncFence",
        "Landroidx/hardware/SyncFenceV19;",
        "nGetDisplayOrientation",
        "nGetPreviousReleaseFenceFd",
        "transactionStats",
        "nRelease",
        "",
        "nSetBuffer",
        "surfaceTransaction",
        "hardwareBuffer",
        "Landroid/hardware/HardwareBuffer;",
        "acquireFieldFd",
        "nSetBufferAlpha",
        "alpha",
        "",
        "nSetBufferTransform",
        "transformation",
        "nSetBufferTransparency",
        "transparency",
        "",
        "nSetCrop",
        "left",
        "top",
        "right",
        "bottom",
        "nSetDamageRegion",
        "rect",
        "Landroid/graphics/Rect;",
        "nSetDesiredPresentTime",
        "desiredPresentTime",
        "nSetGeometry",
        "bufferWidth",
        "bufferHeight",
        "dstWidth",
        "dstHeight",
        "nSetPosition",
        "x",
        "y",
        "nSetScale",
        "scaleX",
        "scaleY",
        "nSetVisibility",
        "visibility",
        "nSetZOrder",
        "zOrder",
        "nTransactionApply",
        "nTransactionCreate",
        "nTransactionDelete",
        "nTransactionReparent",
        "newParent",
        "nTransactionSetOnCommit",
        "listener",
        "Landroidx/graphics/surface/SurfaceControlCompat$TransactionCommittedListener;",
        "nTransactionSetOnComplete",
        "Landroidx/graphics/surface/SurfaceControlCompat$TransactionCompletedListener;",
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

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/graphics/surface/JniBindings$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final nCreate(JLjava/lang/String;)J
    .locals 0
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2, p3}, Landroidx/graphics/surface/JniBindings;->nCreate(JLjava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final nCreateFromSurface(Landroid/view/Surface;Ljava/lang/String;)J
    .locals 0
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2}, Landroidx/graphics/surface/JniBindings;->nCreateFromSurface(Landroid/view/Surface;Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final nDupFenceFd(Landroidx/hardware/SyncFenceV19;)I
    .locals 0
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1}, Landroidx/graphics/surface/JniBindings;->nDupFenceFd(Landroidx/hardware/SyncFenceV19;)I

    move-result p1

    return p1
.end method

.method public final nGetDisplayOrientation()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Landroidx/graphics/surface/JniBindings;->nGetDisplayOrientation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final nGetPreviousReleaseFenceFd(JJ)I
    .locals 0
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2, p3, p4}, Landroidx/graphics/surface/JniBindings;->nGetPreviousReleaseFenceFd(JJ)I

    move-result p1

    return p1
.end method

.method public final nRelease(J)V
    .locals 0
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2}, Landroidx/graphics/surface/JniBindings;->nRelease(J)V

    return-void
.end method

.method public final nSetBuffer(JJLandroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceV19;)V
    .locals 0
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static/range {p1 .. p6}, Landroidx/graphics/surface/JniBindings;->nSetBuffer(JJLandroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceV19;)V

    return-void
.end method

.method public final nSetBufferAlpha(JJF)V
    .locals 0
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Landroidx/graphics/surface/JniBindings;->nSetBufferAlpha(JJF)V

    return-void
.end method

.method public final nSetBufferTransform(JJI)V
    .locals 0
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Landroidx/graphics/surface/JniBindings;->nSetBufferTransform(JJI)V

    return-void
.end method

.method public final nSetBufferTransparency(JJB)V
    .locals 0
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Landroidx/graphics/surface/JniBindings;->nSetBufferTransparency(JJB)V

    return-void
.end method

.method public final nSetCrop(JJIIII)V
    .locals 0
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static/range {p1 .. p8}, Landroidx/graphics/surface/JniBindings;->nSetCrop(JJIIII)V

    return-void
.end method

.method public final nSetDamageRegion(JJLandroid/graphics/Rect;)V
    .locals 0
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Landroidx/graphics/surface/JniBindings;->nSetDamageRegion(JJLandroid/graphics/Rect;)V

    return-void
.end method

.method public final nSetDesiredPresentTime(JJ)V
    .locals 0
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2, p3, p4}, Landroidx/graphics/surface/JniBindings;->nSetDesiredPresentTime(JJ)V

    return-void
.end method

.method public final nSetGeometry(JJIIIII)V
    .locals 0
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static/range {p1 .. p9}, Landroidx/graphics/surface/JniBindings;->nSetGeometry(JJIIIII)V

    return-void
.end method

.method public final nSetPosition(JJFF)V
    .locals 0
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static/range {p1 .. p6}, Landroidx/graphics/surface/JniBindings;->nSetPosition(JJFF)V

    return-void
.end method

.method public final nSetScale(JJFF)V
    .locals 0
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static/range {p1 .. p6}, Landroidx/graphics/surface/JniBindings;->nSetScale(JJFF)V

    return-void
.end method

.method public final nSetVisibility(JJB)V
    .locals 0
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Landroidx/graphics/surface/JniBindings;->nSetVisibility(JJB)V

    return-void
.end method

.method public final nSetZOrder(JJI)V
    .locals 0
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Landroidx/graphics/surface/JniBindings;->nSetZOrder(JJI)V

    return-void
.end method

.method public final nTransactionApply(J)V
    .locals 0
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2}, Landroidx/graphics/surface/JniBindings;->nTransactionApply(J)V

    return-void
.end method

.method public final nTransactionCreate()J
    .locals 2
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Landroidx/graphics/surface/JniBindings;->nTransactionCreate()J

    move-result-wide v0

    return-wide v0
.end method

.method public final nTransactionDelete(J)V
    .locals 0
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2}, Landroidx/graphics/surface/JniBindings;->nTransactionDelete(J)V

    return-void
.end method

.method public final nTransactionReparent(JJJ)V
    .locals 0
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static/range {p1 .. p6}, Landroidx/graphics/surface/JniBindings;->nTransactionReparent(JJJ)V

    return-void
.end method

.method public final nTransactionSetOnCommit(JLandroidx/graphics/surface/SurfaceControlCompat$TransactionCommittedListener;)V
    .locals 0
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2, p3}, Landroidx/graphics/surface/JniBindings;->nTransactionSetOnCommit(JLandroidx/graphics/surface/SurfaceControlCompat$TransactionCommittedListener;)V

    return-void
.end method

.method public final nTransactionSetOnComplete(JLandroidx/graphics/surface/SurfaceControlCompat$TransactionCompletedListener;)V
    .locals 0
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2, p3}, Landroidx/graphics/surface/JniBindings;->nTransactionSetOnComplete(JLandroidx/graphics/surface/SurfaceControlCompat$TransactionCompletedListener;)V

    return-void
.end method
