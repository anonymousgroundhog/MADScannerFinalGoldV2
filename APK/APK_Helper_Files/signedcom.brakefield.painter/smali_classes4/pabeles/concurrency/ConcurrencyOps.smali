.class public Lpabeles/concurrency/ConcurrencyOps;
.super Ljava/lang/Object;
.source "ConcurrencyOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpabeles/concurrency/ConcurrencyOps$Reset;,
        Lpabeles/concurrency/ConcurrencyOps$NewInstance;
    }
.end annotation


# static fields
.field private static pool:Ljava/util/concurrent/ForkJoinPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/util/concurrent/ForkJoinPool;

    invoke-direct {v0}, Ljava/util/concurrent/ForkJoinPool;-><init>()V

    sput-object v0, Lpabeles/concurrency/ConcurrencyOps;->pool:Ljava/util/concurrent/ForkJoinPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxThreads()I
    .locals 1

    .line 51
    sget-object v0, Lpabeles/concurrency/ConcurrencyOps;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool;->getParallelism()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$loopFor$0(IILjava/util/function/IntConsumer;)V
    .locals 0

    .line 63
    invoke-static {p0, p1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method static synthetic lambda$loopFor$1(Ljava/util/function/IntConsumer;III)V
    .locals 0

    mul-int/2addr p3, p2

    add-int/2addr p1, p3

    .line 85
    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method static synthetic lambda$loopFor$2(ILjava/util/function/IntConsumer;II)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-static {v0, p0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntConsumer;II)V

    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public static loopBlocks(IIILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntRangeObjectConsumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(III",
            "Lpabeles/concurrency/GrowArray<",
            "TT;>;",
            "Lpabeles/concurrency/IntRangeObjectConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 222
    sget-object v4, Lpabeles/concurrency/ConcurrencyOps;->pool:Ljava/util/concurrent/ForkJoinPool;

    .line 223
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinPool;->getParallelism()I

    move-result v0

    sub-int v1, p1, p0

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-ltz v1, :cond_1

    .line 231
    invoke-static {v1, p2, v0}, Lpabeles/concurrency/ConcurrencyOps;->selectBlockSize(III)I

    move-result v5

    move v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    .line 233
    invoke-static/range {v0 .. v5}, Lpabeles/concurrency/ConcurrencyOps;->runLoopBlocks(IILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntRangeObjectConsumer;Ljava/util/concurrent/ForkJoinPool;I)V

    return-void

    .line 229
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "end must be more than start. "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, " -> "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static loopBlocks(IIILpabeles/concurrency/IntRangeConsumer;)V
    .locals 3

    .line 131
    sget-object v0, Lpabeles/concurrency/ConcurrencyOps;->pool:Ljava/util/concurrent/ForkJoinPool;

    .line 132
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool;->getParallelism()I

    move-result v1

    sub-int v2, p1, p0

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-ltz v2, :cond_1

    .line 140
    invoke-static {v2, p2, v1}, Lpabeles/concurrency/ConcurrencyOps;->selectBlockSize(III)I

    move-result p2

    .line 143
    :try_start_0
    new-instance v1, Lpabeles/concurrency/IntRangeTask;

    invoke-direct {v1, p0, p1, p2, p3}, Lpabeles/concurrency/IntRangeTask;-><init>(IIILpabeles/concurrency/IntRangeConsumer;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 145
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    .line 138
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "end must be more than start. "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, " -> "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static loopBlocks(IILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntRangeObjectConsumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Lpabeles/concurrency/GrowArray<",
            "TT;>;",
            "Lpabeles/concurrency/IntRangeObjectConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 195
    sget-object v4, Lpabeles/concurrency/ConcurrencyOps;->pool:Ljava/util/concurrent/ForkJoinPool;

    .line 196
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinPool;->getParallelism()I

    move-result v0

    sub-int v1, p1, p0

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-ltz v1, :cond_1

    const/4 v2, 0x1

    .line 206
    div-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 208
    invoke-static/range {v0 .. v5}, Lpabeles/concurrency/ConcurrencyOps;->runLoopBlocks(IILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntRangeObjectConsumer;Ljava/util/concurrent/ForkJoinPool;I)V

    return-void

    .line 202
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "end must be more than start. "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, " -> "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static loopBlocks(IILpabeles/concurrency/IntRangeConsumer;)V
    .locals 4

    .line 166
    sget-object v0, Lpabeles/concurrency/ConcurrencyOps;->pool:Ljava/util/concurrent/ForkJoinPool;

    .line 167
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool;->getParallelism()I

    move-result v1

    sub-int v2, p1, p0

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-ltz v2, :cond_1

    const/4 v3, 0x1

    .line 177
    div-int/2addr v2, v1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 180
    :try_start_0
    new-instance v2, Lpabeles/concurrency/IntRangeTask;

    invoke-direct {v2, p0, p1, v1, p2}, Lpabeles/concurrency/IntRangeTask;-><init>(IIILpabeles/concurrency/IntRangeConsumer;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 182
    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 173
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "end must be more than start. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " -> "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static loopFor(IIILjava/util/function/IntConsumer;)V
    .locals 2

    if-lez p2, :cond_2

    if-lt p0, p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p1, p0

    .line 84
    :try_start_0
    div-int v0, p1, p2

    rem-int/2addr p1, p2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    add-int/2addr v0, p1

    .line 85
    sget-object p1, Lpabeles/concurrency/ConcurrencyOps;->pool:Ljava/util/concurrent/ForkJoinPool;

    new-instance v1, Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p3, p0, p2}, Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda1;-><init>(ILjava/util/function/IntConsumer;II)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 87
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    .line 79
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step must be a positive number."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loopFor(IIILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntObjectConsumer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(III",
            "Lpabeles/concurrency/GrowArray<",
            "TT;>;",
            "Lpabeles/concurrency/IntObjectConsumer<",
            "TT;>;)V"
        }
    .end annotation

    if-lez p2, :cond_1

    if-lt p0, p1, :cond_0

    return-void

    .line 106
    :cond_0
    :try_start_0
    sget-object v0, Lpabeles/concurrency/ConcurrencyOps;->pool:Ljava/util/concurrent/ForkJoinPool;

    new-instance v9, Lpabeles/concurrency/IntObjectTask;

    sget-object v1, Lpabeles/concurrency/ConcurrencyOps;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool;->getParallelism()I

    move-result v5

    const/4 v6, -0x1

    move-object v1, v9

    move v2, p0

    move v3, p1

    move v4, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lpabeles/concurrency/IntObjectTask;-><init>(IIIIILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntObjectConsumer;)V

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 108
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    .line 102
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step must be a positive number."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loopFor(IILjava/util/function/IntConsumer;)V
    .locals 2

    .line 63
    :try_start_0
    sget-object v0, Lpabeles/concurrency/ConcurrencyOps;->pool:Ljava/util/concurrent/ForkJoinPool;

    new-instance v1, Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda2;-><init>(IILjava/util/function/IntConsumer;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 65
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static max(IILjava/lang/Class;Lpabeles/concurrency/IntProducerNumber;)Ljava/lang/Number;
    .locals 2

    .line 274
    :try_start_0
    sget-object v0, Lpabeles/concurrency/ConcurrencyOps;->pool:Ljava/util/concurrent/ForkJoinPool;

    new-instance v1, Lpabeles/concurrency/IntOperatorTask$Max;

    invoke-direct {v1, p0, p1, p2, p3}, Lpabeles/concurrency/IntOperatorTask$Max;-><init>(IILjava/lang/Class;Lpabeles/concurrency/IntProducerNumber;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 276
    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static min(IILjava/lang/Class;Lpabeles/concurrency/IntProducerNumber;)Ljava/lang/Number;
    .locals 2

    .line 291
    :try_start_0
    sget-object v0, Lpabeles/concurrency/ConcurrencyOps;->pool:Ljava/util/concurrent/ForkJoinPool;

    new-instance v1, Lpabeles/concurrency/IntOperatorTask$Min;

    invoke-direct {v1, p0, p1, p2, p3}, Lpabeles/concurrency/IntOperatorTask$Min;-><init>(IILjava/lang/Class;Lpabeles/concurrency/IntProducerNumber;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 293
    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static runLoopBlocks(IILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntRangeObjectConsumer;Ljava/util/concurrent/ForkJoinPool;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Lpabeles/concurrency/GrowArray<",
            "TT;>;",
            "Lpabeles/concurrency/IntRangeObjectConsumer<",
            "TT;>;",
            "Ljava/util/concurrent/ForkJoinPool;",
            "I)V"
        }
    .end annotation

    .line 238
    invoke-virtual {p2}, Lpabeles/concurrency/GrowArray;->reset()V

    .line 240
    :try_start_0
    new-instance v6, Lpabeles/concurrency/IntRangeObjectTask;

    move-object v0, v6

    move v1, p0

    move v2, p1

    move v3, p5

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lpabeles/concurrency/IntRangeObjectTask;-><init>(IIILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntRangeObjectConsumer;)V

    invoke-virtual {p4, v6}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 242
    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static selectBlockSize(III)I
    .locals 0

    .line 151
    div-int p2, p0, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x1

    .line 153
    div-int p1, p0, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 154
    div-int/2addr p0, p1

    return p0
.end method

.method public static setMaxThreads(I)V
    .locals 2

    .line 44
    new-instance v0, Ljava/util/concurrent/ForkJoinPool;

    const/4 v1, 0x1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ForkJoinPool;-><init>(I)V

    sput-object v0, Lpabeles/concurrency/ConcurrencyOps;->pool:Ljava/util/concurrent/ForkJoinPool;

    return-void
.end method

.method public static sum(IILjava/lang/Class;Lpabeles/concurrency/IntProducerNumber;)Ljava/lang/Number;
    .locals 2

    .line 257
    :try_start_0
    sget-object v0, Lpabeles/concurrency/ConcurrencyOps;->pool:Ljava/util/concurrent/ForkJoinPool;

    new-instance v1, Lpabeles/concurrency/IntOperatorTask$Sum;

    invoke-direct {v1, p0, p1, p2, p3}, Lpabeles/concurrency/IntOperatorTask$Sum;-><init>(IILjava/lang/Class;Lpabeles/concurrency/IntProducerNumber;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 259
    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
