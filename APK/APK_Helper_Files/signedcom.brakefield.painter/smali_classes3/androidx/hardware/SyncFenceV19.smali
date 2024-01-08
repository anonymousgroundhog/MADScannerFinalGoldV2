.class public final Landroidx/hardware/SyncFenceV19;
.super Ljava/lang/Object;
.source "SyncFenceV19.kt"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Landroidx/hardware/SyncFenceImpl;


# annotations
.annotation runtime Landroidx/graphics/utils/JniVisible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/hardware/SyncFenceV19$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0008\u0001\u0018\u0000 \u00182\u00020\u00012\u00020\u0002:\u0001\u0018B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\tH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0004H\u0003J\u0008\u0010\u0010\u001a\u00020\u000eH\u0004J\u0008\u0010\u0011\u001a\u00020\u000bH\u0017J\u0008\u0010\u0012\u001a\u00020\tH\u0016J\u0011\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0004H\u0083 J\u0011\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004H\u0083 J\u0011\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0004H\u0083 J\u0019\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0004H\u0083 R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/hardware/SyncFenceV19;",
        "Ljava/lang/AutoCloseable;",
        "Landroidx/hardware/SyncFenceImpl;",
        "fd",
        "",
        "(I)V",
        "fenceLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "await",
        "",
        "timeoutNanos",
        "",
        "awaitForever",
        "close",
        "",
        "dupeFileDescriptor",
        "finalize",
        "getSignalTimeNanos",
        "isValid",
        "nClose",
        "nDup",
        "nGetSignalTime",
        "nWait",
        "timeoutMillis",
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
.field public static final Companion:Landroidx/hardware/SyncFenceV19$Companion;


# instance fields
.field private fd:I

.field private final fenceLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/hardware/SyncFenceV19$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/hardware/SyncFenceV19$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/hardware/SyncFenceV19;->Companion:Landroidx/hardware/SyncFenceV19$Companion;

    const-string v0, "graphics-core"

    .line 147
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Landroidx/hardware/SyncFenceV19;->fd:I

    .line 40
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Landroidx/hardware/SyncFenceV19;->fenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method private final dupeFileDescriptor()I
    .locals 2
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation

    .line 66
    iget-object v0, p0, Landroidx/hardware/SyncFenceV19;->fenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 67
    :try_start_0
    invoke-virtual {p0}, Landroidx/hardware/SyncFenceV19;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget v1, p0, Landroidx/hardware/SyncFenceV19;->fd:I

    invoke-direct {p0, v1}, Landroidx/hardware/SyncFenceV19;->nDup(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 67
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private final native nClose(I)V
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation
.end method

.method private final native nDup(I)I
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation
.end method

.method private final native nGetSignalTime(I)J
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation
.end method

.method private final native nWait(II)Z
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation
.end method


# virtual methods
.method public await(J)Z
    .locals 3

    .line 84
    iget-object v0, p0, Landroidx/hardware/SyncFenceV19;->fenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 85
    :try_start_0
    invoke-virtual {p0}, Landroidx/hardware/SyncFenceV19;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 90
    :cond_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    long-to-int p1, p1

    .line 92
    :goto_0
    iget p2, p0, Landroidx/hardware/SyncFenceV19;->fd:I

    invoke-direct {p0, p2, p1}, Landroidx/hardware/SyncFenceV19;->nWait(II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    .line 95
    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public awaitForever()Z
    .locals 2

    const-wide/16 v0, -0x1

    .line 106
    invoke-virtual {p0, v0, v1}, Landroidx/hardware/SyncFenceV19;->await(J)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2

    .line 113
    iget-object v0, p0, Landroidx/hardware/SyncFenceV19;->fenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 114
    :try_start_0
    invoke-virtual {p0}, Landroidx/hardware/SyncFenceV19;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget v1, p0, Landroidx/hardware/SyncFenceV19;->fd:I

    invoke-direct {p0, v1}, Landroidx/hardware/SyncFenceV19;->nClose(I)V

    const/4 v1, -0x1

    .line 116
    iput v1, p0, Landroidx/hardware/SyncFenceV19;->fd:I

    .line 118
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method protected final finalize()V
    .locals 0

    .line 122
    invoke-virtual {p0}, Landroidx/hardware/SyncFenceV19;->close()V

    return-void
.end method

.method public getSignalTimeNanos()J
    .locals 3

    .line 56
    iget-object v0, p0, Landroidx/hardware/SyncFenceV19;->fenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 57
    :try_start_0
    invoke-virtual {p0}, Landroidx/hardware/SyncFenceV19;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget v1, p0, Landroidx/hardware/SyncFenceV19;->fd:I

    invoke-direct {p0, v1}, Landroidx/hardware/SyncFenceV19;->nGetSignalTime(I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    .line 56
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public isValid()Z
    .locals 3

    .line 46
    iget-object v0, p0, Landroidx/hardware/SyncFenceV19;->fenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 47
    :try_start_0
    iget v1, p0, Landroidx/hardware/SyncFenceV19;->fd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 46
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
