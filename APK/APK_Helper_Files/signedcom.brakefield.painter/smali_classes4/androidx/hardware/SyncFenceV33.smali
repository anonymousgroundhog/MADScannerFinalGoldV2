.class public final Landroidx/hardware/SyncFenceV33;
.super Ljava/lang/Object;
.source "SyncFenceV33.kt"

# interfaces
.implements Landroidx/hardware/SyncFenceImpl;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u0001B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\tH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000bH\u0016J\u0008\u0010\u0010\u001a\u00020\tH\u0016R\u0014\u0010\u0005\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/hardware/SyncFenceV33;",
        "Landroidx/hardware/SyncFenceImpl;",
        "syncFence",
        "Landroid/hardware/SyncFence;",
        "(Landroid/hardware/SyncFence;)V",
        "mSyncFence",
        "getMSyncFence$graphics_core_release",
        "()Landroid/hardware/SyncFence;",
        "await",
        "",
        "timeoutNanos",
        "",
        "awaitForever",
        "close",
        "",
        "getSignalTimeNanos",
        "isValid",
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
.field private final mSyncFence:Landroid/hardware/SyncFence;


# direct methods
.method public constructor <init>(Landroid/hardware/SyncFence;)V
    .locals 1

    const-string/jumbo v0, "syncFence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Landroidx/hardware/SyncFenceV33;->mSyncFence:Landroid/hardware/SyncFence;

    return-void
.end method


# virtual methods
.method public await(J)Z
    .locals 1

    .line 32
    iget-object v0, p0, Landroidx/hardware/SyncFenceV33;->mSyncFence:Landroid/hardware/SyncFence;

    invoke-static {p1, p2}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/hardware/SyncFence;->await(Ljava/time/Duration;)Z

    move-result p1

    return p1
.end method

.method public awaitForever()Z
    .locals 1

    .line 39
    iget-object v0, p0, Landroidx/hardware/SyncFenceV33;->mSyncFence:Landroid/hardware/SyncFence;

    invoke-virtual {v0}, Landroid/hardware/SyncFence;->awaitForever()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .line 46
    iget-object v0, p0, Landroidx/hardware/SyncFenceV33;->mSyncFence:Landroid/hardware/SyncFence;

    invoke-virtual {v0}, Landroid/hardware/SyncFence;->close()V

    return-void
.end method

.method public final getMSyncFence$graphics_core_release()Landroid/hardware/SyncFence;
    .locals 1

    .line 26
    iget-object v0, p0, Landroidx/hardware/SyncFenceV33;->mSyncFence:Landroid/hardware/SyncFence;

    return-object v0
.end method

.method public getSignalTimeNanos()J
    .locals 2

    .line 53
    iget-object v0, p0, Landroidx/hardware/SyncFenceV33;->mSyncFence:Landroid/hardware/SyncFence;

    invoke-virtual {v0}, Landroid/hardware/SyncFence;->getSignalTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public isValid()Z
    .locals 1

    .line 61
    iget-object v0, p0, Landroidx/hardware/SyncFenceV33;->mSyncFence:Landroid/hardware/SyncFence;

    invoke-virtual {v0}, Landroid/hardware/SyncFence;->isValid()Z

    move-result v0

    return v0
.end method
