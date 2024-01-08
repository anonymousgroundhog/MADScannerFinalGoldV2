.class public final Landroidx/graphics/opengl/FrameBufferPool;
.super Ljava/lang/Object;
.source "FrameBufferPool.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/opengl/FrameBufferPool$Companion;,
        Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFrameBufferPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrameBufferPool.kt\nandroidx/graphics/opengl/FrameBufferPool\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,248:1\n1#2:249\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u0000 %2\u00020\u0001:\u0002%&B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\tJ\u0006\u0010\u001b\u001a\u00020\u001cJ\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 J\u001a\u0010!\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u001e2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010$R\u0011\u0010\n\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\r\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n \u0013*\u0004\u0018\u00010\u00120\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00020\u00190\u0018j\u0008\u0012\u0004\u0012\u00020\u0019`\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Landroidx/graphics/opengl/FrameBufferPool;",
        "",
        "width",
        "",
        "height",
        "format",
        "usage",
        "",
        "maxPoolSize",
        "(IIIJI)V",
        "allocationCount",
        "getAllocationCount",
        "()I",
        "isClosed",
        "",
        "()Z",
        "mBuffersAvailable",
        "mCondition",
        "Ljava/util/concurrent/locks/Condition;",
        "kotlin.jvm.PlatformType",
        "mIsClosed",
        "mLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "mPool",
        "Ljava/util/ArrayList;",
        "Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;",
        "Lkotlin/collections/ArrayList;",
        "close",
        "",
        "obtain",
        "Landroidx/graphics/opengl/FrameBuffer;",
        "eglSpec",
        "Landroidx/graphics/opengl/egl/EGLSpec;",
        "release",
        "frameBuffer",
        "fence",
        "Landroidx/hardware/SyncFenceCompat;",
        "Companion",
        "FrameBufferEntry",
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
.field public static final Companion:Landroidx/graphics/opengl/FrameBufferPool$Companion;

.field private static final TAG:Ljava/lang/String; = "FrameBufferPool"

.field private static final isAvailable:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final signaledFence:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final format:I

.field private final height:I

.field private mBuffersAvailable:I

.field private final mCondition:Ljava/util/concurrent/locks/Condition;

.field private mIsClosed:Z

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final maxPoolSize:I

.field private final usage:J

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/opengl/FrameBufferPool$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/opengl/FrameBufferPool$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/opengl/FrameBufferPool;->Companion:Landroidx/graphics/opengl/FrameBufferPool$Companion;

    .line 215
    sget-object v0, Landroidx/graphics/opengl/FrameBufferPool$Companion$signaledFence$1;->INSTANCE:Landroidx/graphics/opengl/FrameBufferPool$Companion$signaledFence$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Landroidx/graphics/opengl/FrameBufferPool;->signaledFence:Lkotlin/jvm/functions/Function1;

    .line 220
    sget-object v0, Landroidx/graphics/opengl/FrameBufferPool$Companion$isAvailable$1;->INSTANCE:Landroidx/graphics/opengl/FrameBufferPool$Companion$isAvailable$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Landroidx/graphics/opengl/FrameBufferPool;->isAvailable:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>(IIIJI)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landroidx/graphics/opengl/FrameBufferPool;->width:I

    .line 42
    iput p2, p0, Landroidx/graphics/opengl/FrameBufferPool;->height:I

    .line 47
    iput p3, p0, Landroidx/graphics/opengl/FrameBufferPool;->format:I

    .line 52
    iput-wide p4, p0, Landroidx/graphics/opengl/FrameBufferPool;->usage:J

    .line 58
    iput p6, p0, Landroidx/graphics/opengl/FrameBufferPool;->maxPoolSize:I

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/graphics/opengl/FrameBufferPool;->mPool:Ljava/util/ArrayList;

    .line 69
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Landroidx/graphics/opengl/FrameBufferPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 70
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Landroidx/graphics/opengl/FrameBufferPool;->mCondition:Ljava/util/concurrent/locks/Condition;

    if-lez p6, :cond_0

    return-void

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pool size must be at least 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic release$default(Landroidx/graphics/opengl/FrameBufferPool;Landroidx/graphics/opengl/FrameBuffer;Landroidx/hardware/SyncFenceCompat;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 138
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/graphics/opengl/FrameBufferPool;->release(Landroidx/graphics/opengl/FrameBuffer;Landroidx/hardware/SyncFenceCompat;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    .line 188
    iget-object v0, p0, Landroidx/graphics/opengl/FrameBufferPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 189
    :try_start_0
    iget-boolean v1, p0, Landroidx/graphics/opengl/FrameBufferPool;->mIsClosed:Z

    if-nez v1, :cond_4

    .line 190
    iget-object v1, p0, Landroidx/graphics/opengl/FrameBufferPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;

    .line 191
    invoke-virtual {v2}, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->getFrameBuffer()Landroidx/graphics/opengl/FrameBuffer;

    move-result-object v3

    .line 192
    invoke-virtual {v2}, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 193
    invoke-virtual {v2}, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->getFence()Landroidx/hardware/SyncFenceCompat;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 194
    invoke-virtual {v2}, Landroidx/hardware/SyncFenceCompat;->awaitForever()Z

    .line 195
    invoke-virtual {v2}, Landroidx/hardware/SyncFenceCompat;->close()V

    .line 197
    :cond_1
    invoke-virtual {v3}, Landroidx/graphics/opengl/FrameBuffer;->close()V

    goto :goto_0

    .line 200
    :cond_2
    iget v1, p0, Landroidx/graphics/opengl/FrameBufferPool;->mBuffersAvailable:I

    iget-object v2, p0, Landroidx/graphics/opengl/FrameBufferPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 201
    iget-object v1, p0, Landroidx/graphics/opengl/FrameBufferPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_3
    const/4 v1, 0x1

    .line 203
    iput-boolean v1, p0, Landroidx/graphics/opengl/FrameBufferPool;->mIsClosed:Z

    .line 205
    :cond_4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final getAllocationCount()I
    .locals 1

    .line 85
    iget-object v0, p0, Landroidx/graphics/opengl/FrameBufferPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final isClosed()Z
    .locals 2

    .line 180
    iget-object v0, p0, Landroidx/graphics/opengl/FrameBufferPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Landroidx/graphics/opengl/FrameBufferPool;->mIsClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final obtain(Landroidx/graphics/opengl/egl/EGLSpec;)Landroidx/graphics/opengl/FrameBuffer;
    .locals 9

    const-string v0, "eglSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Landroidx/graphics/opengl/FrameBufferPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 94
    :try_start_0
    iget-boolean v1, p0, Landroidx/graphics/opengl/FrameBufferPool;->mIsClosed:Z

    if-nez v1, :cond_3

    .line 98
    :goto_0
    iget v1, p0, Landroidx/graphics/opengl/FrameBufferPool;->mBuffersAvailable:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/graphics/opengl/FrameBufferPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroidx/graphics/opengl/FrameBufferPool;->maxPoolSize:I

    if-lt v1, v2, :cond_0

    const-string v1, "FrameBufferPool"

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting for FrameBuffer to become available, current allocation count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 102
    iget-object v3, p0, Landroidx/graphics/opengl/FrameBufferPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Landroidx/graphics/opengl/FrameBufferPool;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    .line 106
    :cond_0
    sget-object v1, Landroidx/graphics/opengl/FrameBufferPool;->Companion:Landroidx/graphics/opengl/FrameBufferPool$Companion;

    iget-object v2, p0, Landroidx/graphics/opengl/FrameBufferPool;->mPool:Ljava/util/ArrayList;

    sget-object v3, Landroidx/graphics/opengl/FrameBufferPool;->isAvailable:Lkotlin/jvm/functions/Function1;

    sget-object v4, Landroidx/graphics/opengl/FrameBufferPool;->signaledFence:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v2, v3, v4}, Landroidx/graphics/opengl/FrameBufferPool$Companion;->findEntryWith$graphics_core_release(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 108
    iget p1, p0, Landroidx/graphics/opengl/FrameBufferPool;->mBuffersAvailable:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/graphics/opengl/FrameBufferPool;->mBuffersAvailable:I

    .line 109
    invoke-virtual {v1, v2}, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->setAvailable(Z)V

    .line 110
    invoke-virtual {v1}, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->getFence()Landroidx/hardware/SyncFenceCompat;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 111
    invoke-virtual {p1}, Landroidx/hardware/SyncFenceCompat;->awaitForever()Z

    .line 112
    invoke-virtual {p1}, Landroidx/hardware/SyncFenceCompat;->close()V

    .line 114
    :cond_1
    invoke-virtual {v1}, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->getFrameBuffer()Landroidx/graphics/opengl/FrameBuffer;

    move-result-object p1

    goto :goto_1

    .line 116
    :cond_2
    new-instance v1, Landroidx/graphics/opengl/FrameBuffer;

    .line 119
    iget v3, p0, Landroidx/graphics/opengl/FrameBufferPool;->width:I

    .line 120
    iget v4, p0, Landroidx/graphics/opengl/FrameBufferPool;->height:I

    .line 121
    iget v5, p0, Landroidx/graphics/opengl/FrameBufferPool;->format:I

    const/4 v6, 0x1

    .line 123
    iget-wide v7, p0, Landroidx/graphics/opengl/FrameBufferPool;->usage:J

    .line 118
    invoke-static/range {v3 .. v8}, Landroid/hardware/HardwareBuffer;->create(IIIIJ)Landroid/hardware/HardwareBuffer;

    move-result-object v3

    const-string v4, "create(\n                \u2026age\n                    )"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-direct {v1, p1, v3}, Landroidx/graphics/opengl/FrameBuffer;-><init>(Landroidx/graphics/opengl/egl/EGLSpec;Landroid/hardware/HardwareBuffer;)V

    .line 126
    iget-object p1, p0, Landroidx/graphics/opengl/FrameBufferPool;->mPool:Ljava/util/ArrayList;

    new-instance v3, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;-><init>(Landroidx/graphics/opengl/FrameBuffer;Landroidx/hardware/SyncFenceCompat;Z)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v1

    .line 107
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 95
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to obtain frame buffer from FrameBufferPool that has already been closed"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 107
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final release(Landroidx/graphics/opengl/FrameBuffer;Landroidx/hardware/SyncFenceCompat;)V
    .locals 5

    const-string v0, "frameBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Landroidx/graphics/opengl/FrameBufferPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 140
    :try_start_0
    iget-object v1, p0, Landroidx/graphics/opengl/FrameBufferPool;->mPool:Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;

    invoke-virtual {v4}, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->getFrameBuffer()Landroidx/graphics/opengl/FrameBuffer;

    move-result-object v4

    if-ne v4, p1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    check-cast v2, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;

    if-eqz v2, :cond_6

    .line 145
    invoke-virtual {v2}, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_4

    .line 146
    invoke-virtual {v2}, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->getFrameBuffer()Landroidx/graphics/opengl/FrameBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/graphics/opengl/FrameBuffer;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 147
    invoke-virtual {v2, p2}, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->setFence(Landroidx/hardware/SyncFenceCompat;)V

    .line 148
    invoke-virtual {v2, v3}, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->setAvailable(Z)V

    .line 149
    iget p2, p0, Landroidx/graphics/opengl/FrameBufferPool;->mBuffersAvailable:I

    add-int/2addr p2, v3

    iput p2, p0, Landroidx/graphics/opengl/FrameBufferPool;->mBuffersAvailable:I

    goto :goto_2

    .line 155
    :cond_3
    iget-object p2, p0, Landroidx/graphics/opengl/FrameBufferPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 159
    :cond_4
    :goto_2
    iget-boolean p2, p0, Landroidx/graphics/opengl/FrameBufferPool;->mIsClosed:Z

    if-nez p2, :cond_5

    .line 160
    iget-object p1, p0, Landroidx/graphics/opengl/FrameBufferPool;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_3

    .line 164
    :cond_5
    invoke-virtual {p1}, Landroidx/graphics/opengl/FrameBuffer;->close()V

    .line 165
    iget p1, p0, Landroidx/graphics/opengl/FrameBufferPool;->mBuffersAvailable:I

    iget-object p2, p0, Landroidx/graphics/opengl/FrameBufferPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p1, p2, :cond_7

    .line 166
    iget-object p1, p0, Landroidx/graphics/opengl/FrameBufferPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    .line 169
    :cond_6
    invoke-virtual {p1}, Landroidx/graphics/opengl/FrameBuffer;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 176
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 173
    :cond_8
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No entry associated with this framebuffer instance. Was this frame buffer created from a different FrameBufferPool?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 139
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
