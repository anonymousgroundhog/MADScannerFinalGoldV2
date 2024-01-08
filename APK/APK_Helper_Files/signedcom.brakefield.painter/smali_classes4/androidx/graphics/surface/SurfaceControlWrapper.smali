.class public final Landroidx/graphics/surface/SurfaceControlWrapper;
.super Ljava/lang/Object;
.source "SurfaceControlWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/surface/SurfaceControlWrapper$Builder;,
        Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u00020\u0001:\u0002\u0018\u0019B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u0017\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0008J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0004J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0006\u0010\u0016\u001a\u00020\u0010J\u0006\u0010\u0017\u001a\u00020\u0013R\u001a\u0010\t\u001a\u00020\nX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/graphics/surface/SurfaceControlWrapper;",
        "",
        "surfaceControl",
        "debugName",
        "",
        "(Landroidx/graphics/surface/SurfaceControlWrapper;Ljava/lang/String;)V",
        "surface",
        "Landroid/view/Surface;",
        "(Landroid/view/Surface;Ljava/lang/String;)V",
        "mNativeSurfaceControl",
        "",
        "getMNativeSurfaceControl$graphics_core_release",
        "()J",
        "setMNativeSurfaceControl$graphics_core_release",
        "(J)V",
        "equals",
        "",
        "other",
        "finalize",
        "",
        "hashCode",
        "",
        "isValid",
        "release",
        "Builder",
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


# instance fields
.field private mNativeSurfaceControl:J


# direct methods
.method public constructor <init>(Landroid/view/Surface;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    sget-object v0, Landroidx/graphics/surface/JniBindings;->Companion:Landroidx/graphics/surface/JniBindings$Companion;

    invoke-virtual {v0, p1, p2}, Landroidx/graphics/surface/JniBindings$Companion;->nCreateFromSurface(Landroid/view/Surface;Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/graphics/surface/SurfaceControlWrapper;->mNativeSurfaceControl:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    return-void

    .line 219
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Landroidx/graphics/surface/SurfaceControlWrapper;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    sget-object v0, Landroidx/graphics/surface/JniBindings;->Companion:Landroidx/graphics/surface/JniBindings$Companion;

    iget-wide v1, p1, Landroidx/graphics/surface/SurfaceControlWrapper;->mNativeSurfaceControl:J

    invoke-virtual {v0, v1, v2, p2}, Landroidx/graphics/surface/JniBindings$Companion;->nCreate(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/graphics/surface/SurfaceControlWrapper;->mNativeSurfaceControl:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    return-void

    .line 212
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 659
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 663
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const-class v4, Landroidx/graphics/surface/SurfaceControlWrapper;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v1

    or-int/2addr v2, v3

    if-eqz v2, :cond_3

    return v0

    :cond_3
    const-string v2, "null cannot be cast to non-null type androidx.graphics.surface.SurfaceControlWrapper"

    .line 668
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/graphics/surface/SurfaceControlWrapper;

    .line 669
    iget-wide v2, p1, Landroidx/graphics/surface/SurfaceControlWrapper;->mNativeSurfaceControl:J

    iget-wide v4, p0, Landroidx/graphics/surface/SurfaceControlWrapper;->mNativeSurfaceControl:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method protected final finalize()V
    .locals 0

    .line 695
    invoke-virtual {p0}, Landroidx/graphics/surface/SurfaceControlWrapper;->release()V

    return-void
.end method

.method public final getMNativeSurfaceControl$graphics_core_release()J
    .locals 2

    .line 223
    iget-wide v0, p0, Landroidx/graphics/surface/SurfaceControlWrapper;->mNativeSurfaceControl:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 677
    iget-wide v0, p0, Landroidx/graphics/surface/SurfaceControlWrapper;->mNativeSurfaceControl:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public final isValid()Z
    .locals 4

    .line 656
    iget-wide v0, p0, Landroidx/graphics/surface/SurfaceControlWrapper;->mNativeSurfaceControl:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final release()V
    .locals 6

    .line 688
    iget-wide v0, p0, Landroidx/graphics/surface/SurfaceControlWrapper;->mNativeSurfaceControl:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 689
    sget-object v0, Landroidx/graphics/surface/JniBindings;->Companion:Landroidx/graphics/surface/JniBindings$Companion;

    iget-wide v4, p0, Landroidx/graphics/surface/SurfaceControlWrapper;->mNativeSurfaceControl:J

    invoke-virtual {v0, v4, v5}, Landroidx/graphics/surface/JniBindings$Companion;->nRelease(J)V

    .line 690
    iput-wide v2, p0, Landroidx/graphics/surface/SurfaceControlWrapper;->mNativeSurfaceControl:J

    :cond_0
    return-void
.end method

.method public final setMNativeSurfaceControl$graphics_core_release(J)V
    .locals 0

    .line 223
    iput-wide p1, p0, Landroidx/graphics/surface/SurfaceControlWrapper;->mNativeSurfaceControl:J

    return-void
.end method
