.class public final Landroidx/hardware/SyncFenceCompat;
.super Ljava/lang/Object;
.source "SyncFenceCompat.kt"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/hardware/SyncFenceCompat$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u000f\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u000cJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u000eH\u0007J\u0006\u0010\u0013\u001a\u00020\u000cR\u0014\u0010\u0007\u001a\u00020\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/hardware/SyncFenceCompat;",
        "Ljava/lang/AutoCloseable;",
        "syncFence",
        "Landroidx/hardware/SyncFenceV19;",
        "(Landroidx/hardware/SyncFenceV19;)V",
        "Landroid/hardware/SyncFence;",
        "(Landroid/hardware/SyncFence;)V",
        "mImpl",
        "Landroidx/hardware/SyncFenceImpl;",
        "getMImpl$graphics_core_release",
        "()Landroidx/hardware/SyncFenceImpl;",
        "await",
        "",
        "timeoutNanos",
        "",
        "awaitForever",
        "close",
        "",
        "getSignalTimeNanos",
        "isValid",
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
.field public static final Companion:Landroidx/hardware/SyncFenceCompat$Companion;

.field public static final SIGNAL_TIME_INVALID:J = -0x1L

.field public static final SIGNAL_TIME_PENDING:J = 0x7fffffffffffffffL


# instance fields
.field private final mImpl:Landroidx/hardware/SyncFenceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/hardware/SyncFenceCompat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/hardware/SyncFenceCompat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/hardware/SyncFenceCompat;->Companion:Landroidx/hardware/SyncFenceCompat$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SyncFence;)V
    .locals 1

    const-string/jumbo v0, "syncFence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroidx/hardware/SyncFenceV33;

    invoke-direct {v0, p1}, Landroidx/hardware/SyncFenceV33;-><init>(Landroid/hardware/SyncFence;)V

    check-cast v0, Landroidx/hardware/SyncFenceImpl;

    iput-object v0, p0, Landroidx/hardware/SyncFenceCompat;->mImpl:Landroidx/hardware/SyncFenceImpl;

    return-void
.end method

.method public constructor <init>(Landroidx/hardware/SyncFenceV19;)V
    .locals 1

    const-string/jumbo v0, "syncFence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    check-cast p1, Landroidx/hardware/SyncFenceImpl;

    iput-object p1, p0, Landroidx/hardware/SyncFenceCompat;->mImpl:Landroidx/hardware/SyncFenceImpl;

    return-void
.end method

.method public static final createNativeSyncFence()Landroidx/hardware/SyncFenceCompat;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/hardware/SyncFenceCompat;->Companion:Landroidx/hardware/SyncFenceCompat$Companion;

    invoke-virtual {v0}, Landroidx/hardware/SyncFenceCompat$Companion;->createNativeSyncFence()Landroidx/hardware/SyncFenceCompat;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final await(J)Z
    .locals 1

    .line 98
    iget-object v0, p0, Landroidx/hardware/SyncFenceCompat;->mImpl:Landroidx/hardware/SyncFenceImpl;

    invoke-interface {v0, p1, p2}, Landroidx/hardware/SyncFenceImpl;->await(J)Z

    move-result p1

    return p1
.end method

.method public final awaitForever()Z
    .locals 1

    .line 104
    iget-object v0, p0, Landroidx/hardware/SyncFenceCompat;->mImpl:Landroidx/hardware/SyncFenceImpl;

    invoke-interface {v0}, Landroidx/hardware/SyncFenceImpl;->awaitForever()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .line 110
    iget-object v0, p0, Landroidx/hardware/SyncFenceCompat;->mImpl:Landroidx/hardware/SyncFenceImpl;

    invoke-interface {v0}, Landroidx/hardware/SyncFenceImpl;->close()V

    return-void
.end method

.method public final getMImpl$graphics_core_release()Landroidx/hardware/SyncFenceImpl;
    .locals 1

    .line 40
    iget-object v0, p0, Landroidx/hardware/SyncFenceCompat;->mImpl:Landroidx/hardware/SyncFenceImpl;

    return-object v0
.end method

.method public final getSignalTimeNanos()J
    .locals 2

    .line 120
    iget-object v0, p0, Landroidx/hardware/SyncFenceCompat;->mImpl:Landroidx/hardware/SyncFenceImpl;

    invoke-interface {v0}, Landroidx/hardware/SyncFenceImpl;->getSignalTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public final isValid()Z
    .locals 1

    .line 127
    iget-object v0, p0, Landroidx/hardware/SyncFenceCompat;->mImpl:Landroidx/hardware/SyncFenceImpl;

    invoke-interface {v0}, Landroidx/hardware/SyncFenceImpl;->isValid()Z

    move-result v0

    return v0
.end method
