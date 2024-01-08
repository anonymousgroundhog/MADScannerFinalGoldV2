.class public final Landroidx/graphics/RenderQueue;
.super Ljava/lang/Object;
.source "RenderQueue.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/RenderQueue$FrameCallback;,
        Landroidx/graphics/RenderQueue$FrameProducer;,
        Landroidx/graphics/RenderQueue$Request;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0000\u0018\u00002\u00020\u0001:\u0003\u001f !B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u0016\u001a\u00020\u0010J\u000e\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0015J\u0008\u0010\u0019\u001a\u00020\u0010H\u0002J\u0010\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0015H\u0003J\u0008\u0010\u001b\u001a\u00020\u0012H\u0002J\u0006\u0010\u001c\u001a\u00020\u0012J\u001e\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00122\u000e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/graphics/RenderQueue;",
        "",
        "handlerThread",
        "Landroidx/graphics/utils/HandlerThreadExecutor;",
        "frameProducer",
        "Landroidx/graphics/RenderQueue$FrameProducer;",
        "frameCallback",
        "Landroidx/graphics/RenderQueue$FrameCallback;",
        "(Landroidx/graphics/utils/HandlerThreadExecutor;Landroidx/graphics/RenderQueue$FrameProducer;Landroidx/graphics/RenderQueue$FrameCallback;)V",
        "cancelRequestsRunnable",
        "Ljava/lang/Runnable;",
        "mIsCancelling",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "mIsReleasing",
        "mReleaseCallback",
        "Lkotlin/Function0;",
        "",
        "mRequestPending",
        "",
        "mRequests",
        "Lkotlin/collections/ArrayDeque;",
        "Landroidx/graphics/RenderQueue$Request;",
        "cancelPending",
        "enqueue",
        "request",
        "executeReleaseCallback",
        "executeRequest",
        "isPendingRequest",
        "isReleased",
        "release",
        "onReleaseComplete",
        "FrameCallback",
        "FrameProducer",
        "Request",
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
.field private final cancelRequestsRunnable:Ljava/lang/Runnable;

.field private final frameCallback:Landroidx/graphics/RenderQueue$FrameCallback;

.field private final frameProducer:Landroidx/graphics/RenderQueue$FrameProducer;

.field private final handlerThread:Landroidx/graphics/utils/HandlerThreadExecutor;

.field private final mIsCancelling:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsReleasing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mReleaseCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestPending:Z

.field private final mRequests:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque<",
            "Landroidx/graphics/RenderQueue$Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Rr_78hJbMEiU4Ef4P0XLW-twH9I(Landroidx/graphics/RenderQueue$Request;Landroidx/graphics/RenderQueue;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/graphics/RenderQueue;->enqueue$lambda$0(Landroidx/graphics/RenderQueue$Request;Landroidx/graphics/RenderQueue;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WgDsMXqVu-nP5ilKM5_iWO6biRI(Landroidx/graphics/RenderQueue;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/graphics/RenderQueue;->release$lambda$1(Landroidx/graphics/RenderQueue;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dxwSTrJ5wpJ_jLWsxqYiyb1xeCY(Landroidx/graphics/RenderQueue;)V
    .locals 0

    invoke-static {p0}, Landroidx/graphics/RenderQueue;->cancelRequestsRunnable$lambda$2(Landroidx/graphics/RenderQueue;)V

    return-void
.end method

.method public constructor <init>(Landroidx/graphics/utils/HandlerThreadExecutor;Landroidx/graphics/RenderQueue$FrameProducer;Landroidx/graphics/RenderQueue$FrameCallback;)V
    .locals 1

    const-string v0, "handlerThread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frameProducer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frameCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroidx/graphics/RenderQueue;->handlerThread:Landroidx/graphics/utils/HandlerThreadExecutor;

    .line 34
    iput-object p2, p0, Landroidx/graphics/RenderQueue;->frameProducer:Landroidx/graphics/RenderQueue$FrameProducer;

    .line 35
    iput-object p3, p0, Landroidx/graphics/RenderQueue;->frameCallback:Landroidx/graphics/RenderQueue$FrameCallback;

    .line 89
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/graphics/RenderQueue;->mIsCancelling:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    new-instance p1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/graphics/RenderQueue;->mRequests:Lkotlin/collections/ArrayDeque;

    .line 111
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/graphics/RenderQueue;->mIsReleasing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 217
    new-instance p1, Landroidx/graphics/RenderQueue$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/graphics/RenderQueue$$ExternalSyntheticLambda0;-><init>(Landroidx/graphics/RenderQueue;)V

    iput-object p1, p0, Landroidx/graphics/RenderQueue;->cancelRequestsRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$executeReleaseCallback(Landroidx/graphics/RenderQueue;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/graphics/RenderQueue;->executeReleaseCallback()V

    return-void
.end method

.method public static final synthetic access$executeRequest(Landroidx/graphics/RenderQueue;Landroidx/graphics/RenderQueue$Request;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroidx/graphics/RenderQueue;->executeRequest(Landroidx/graphics/RenderQueue$Request;)V

    return-void
.end method

.method public static final synthetic access$getFrameCallback$p(Landroidx/graphics/RenderQueue;)Landroidx/graphics/RenderQueue$FrameCallback;
    .locals 0

    .line 32
    iget-object p0, p0, Landroidx/graphics/RenderQueue;->frameCallback:Landroidx/graphics/RenderQueue$FrameCallback;

    return-object p0
.end method

.method public static final synthetic access$getMIsCancelling$p(Landroidx/graphics/RenderQueue;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 32
    iget-object p0, p0, Landroidx/graphics/RenderQueue;->mIsCancelling:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getMIsReleasing$p(Landroidx/graphics/RenderQueue;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 32
    iget-object p0, p0, Landroidx/graphics/RenderQueue;->mIsReleasing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getMRequests$p(Landroidx/graphics/RenderQueue;)Lkotlin/collections/ArrayDeque;
    .locals 0

    .line 32
    iget-object p0, p0, Landroidx/graphics/RenderQueue;->mRequests:Lkotlin/collections/ArrayDeque;

    return-object p0
.end method

.method public static final synthetic access$setMRequestPending$p(Landroidx/graphics/RenderQueue;Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Landroidx/graphics/RenderQueue;->mRequestPending:Z

    return-void
.end method

.method private static final cancelRequestsRunnable$lambda$2(Landroidx/graphics/RenderQueue;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Landroidx/graphics/RenderQueue;->mRequests:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->clear()V

    .line 222
    iget-boolean v0, p0, Landroidx/graphics/RenderQueue;->mRequestPending:Z

    if-nez v0, :cond_0

    .line 223
    iget-object p0, p0, Landroidx/graphics/RenderQueue;->mIsCancelling:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method private static final enqueue$lambda$0(Landroidx/graphics/RenderQueue$Request;Landroidx/graphics/RenderQueue;)V
    .locals 1

    const-string v0, "$request"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-interface {p0}, Landroidx/graphics/RenderQueue$Request;->onEnqueued()V

    .line 120
    invoke-direct {p1, p0}, Landroidx/graphics/RenderQueue;->executeRequest(Landroidx/graphics/RenderQueue$Request;)V

    return-void
.end method

.method private final executeReleaseCallback()V
    .locals 1

    .line 210
    iget-object v0, p0, Landroidx/graphics/RenderQueue;->mReleaseCallback:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Landroidx/graphics/RenderQueue;->mReleaseCallback:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method private final executeRequest(Landroidx/graphics/RenderQueue$Request;)V
    .locals 2

    .line 172
    iget-boolean v0, p0, Landroidx/graphics/RenderQueue;->mRequestPending:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Landroidx/graphics/RenderQueue;->mRequestPending:Z

    .line 174
    invoke-interface {p1}, Landroidx/graphics/RenderQueue$Request;->execute()V

    .line 175
    iget-object p1, p0, Landroidx/graphics/RenderQueue;->frameProducer:Landroidx/graphics/RenderQueue$FrameProducer;

    iget-object v0, p0, Landroidx/graphics/RenderQueue;->handlerThread:Landroidx/graphics/utils/HandlerThreadExecutor;

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/graphics/RenderQueue$executeRequest$1;

    invoke-direct {v1, p0}, Landroidx/graphics/RenderQueue$executeRequest$1;-><init>(Landroidx/graphics/RenderQueue;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, v0, v1}, Landroidx/graphics/RenderQueue$FrameProducer;->renderFrame(Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Landroidx/graphics/RenderQueue;->mRequests:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/graphics/RenderQueue$Request;

    if-eqz v0, :cond_1

    .line 195
    invoke-interface {v0}, Landroidx/graphics/RenderQueue$Request;->getId()I

    move-result v0

    invoke-interface {p1}, Landroidx/graphics/RenderQueue$Request;->getId()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 196
    :cond_1
    iget-object v0, p0, Landroidx/graphics/RenderQueue;->mRequests:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0, p1}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private final isPendingRequest()Z
    .locals 2

    .line 163
    iget-boolean v0, p0, Landroidx/graphics/RenderQueue;->mRequestPending:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/graphics/RenderQueue;->mRequests:Lkotlin/collections/ArrayDeque;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private static final release$lambda$1(Landroidx/graphics/RenderQueue;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iput-object p1, p0, Landroidx/graphics/RenderQueue;->mReleaseCallback:Lkotlin/jvm/functions/Function0;

    .line 151
    invoke-direct {p0}, Landroidx/graphics/RenderQueue;->isPendingRequest()Z

    move-result p1

    if-nez p1, :cond_0

    .line 153
    invoke-direct {p0}, Landroidx/graphics/RenderQueue;->executeReleaseCallback()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final cancelPending()V
    .locals 2

    .line 130
    iget-object v0, p0, Landroidx/graphics/RenderQueue;->mIsReleasing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Landroidx/graphics/RenderQueue;->mIsCancelling:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 132
    iget-object v0, p0, Landroidx/graphics/RenderQueue;->handlerThread:Landroidx/graphics/utils/HandlerThreadExecutor;

    invoke-virtual {v0, p0}, Landroidx/graphics/utils/HandlerThreadExecutor;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Landroidx/graphics/RenderQueue;->handlerThread:Landroidx/graphics/utils/HandlerThreadExecutor;

    iget-object v1, p0, Landroidx/graphics/RenderQueue;->cancelRequestsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/graphics/utils/HandlerThreadExecutor;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final enqueue(Landroidx/graphics/RenderQueue$Request;)V
    .locals 2

    const/4 v0, 0x0

    sget-object v0, Lkotlin/sequences/xWeI/PLNIgvxmKA;->yhbcNV:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Landroidx/graphics/RenderQueue;->mIsReleasing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Landroidx/graphics/RenderQueue;->handlerThread:Landroidx/graphics/utils/HandlerThreadExecutor;

    new-instance v1, Landroidx/graphics/RenderQueue$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0}, Landroidx/graphics/RenderQueue$$ExternalSyntheticLambda1;-><init>(Landroidx/graphics/RenderQueue$Request;Landroidx/graphics/RenderQueue;)V

    invoke-virtual {v0, p0, v1}, Landroidx/graphics/utils/HandlerThreadExecutor;->post(Ljava/lang/Object;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final isReleased()Z
    .locals 1

    .line 204
    iget-object v0, p0, Landroidx/graphics/RenderQueue;->mIsReleasing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final release(ZLkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Landroidx/graphics/RenderQueue;->mIsReleasing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p0}, Landroidx/graphics/RenderQueue;->cancelPending()V

    .line 149
    :cond_0
    iget-object p1, p0, Landroidx/graphics/RenderQueue;->handlerThread:Landroidx/graphics/utils/HandlerThreadExecutor;

    new-instance v0, Landroidx/graphics/RenderQueue$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Landroidx/graphics/RenderQueue$$ExternalSyntheticLambda2;-><init>(Landroidx/graphics/RenderQueue;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v0}, Landroidx/graphics/utils/HandlerThreadExecutor;->post(Ljava/lang/Runnable;)V

    .line 156
    iget-object p1, p0, Landroidx/graphics/RenderQueue;->mIsReleasing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method
