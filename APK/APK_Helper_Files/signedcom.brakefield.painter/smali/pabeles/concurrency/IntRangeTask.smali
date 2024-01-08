.class public Lpabeles/concurrency/IntRangeTask;
.super Ljava/util/concurrent/ForkJoinTask;
.source "IntRangeTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ForkJoinTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final consumer:Lpabeles/concurrency/IntRangeConsumer;

.field final max:I

.field final min:I

.field next:Lpabeles/concurrency/IntRangeTask;

.field final step:I

.field final stepLength:I


# direct methods
.method public constructor <init>(IIIILpabeles/concurrency/IntRangeConsumer;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    .line 41
    iput p1, p0, Lpabeles/concurrency/IntRangeTask;->step:I

    .line 42
    iput p2, p0, Lpabeles/concurrency/IntRangeTask;->min:I

    .line 43
    iput p3, p0, Lpabeles/concurrency/IntRangeTask;->max:I

    .line 44
    iput p4, p0, Lpabeles/concurrency/IntRangeTask;->stepLength:I

    .line 45
    iput-object p5, p0, Lpabeles/concurrency/IntRangeTask;->consumer:Lpabeles/concurrency/IntRangeConsumer;

    return-void
.end method

.method public constructor <init>(IIILpabeles/concurrency/IntRangeConsumer;)V
    .locals 6

    const/4 v1, -0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 49
    invoke-direct/range {v0 .. v5}, Lpabeles/concurrency/IntRangeTask;-><init>(IIIILpabeles/concurrency/IntRangeConsumer;)V

    return-void
.end method


# virtual methods
.method protected exec()Z
    .locals 12

    .line 60
    iget v0, p0, Lpabeles/concurrency/IntRangeTask;->max:I

    iget v1, p0, Lpabeles/concurrency/IntRangeTask;->min:I

    sub-int/2addr v0, v1

    iget v2, p0, Lpabeles/concurrency/IntRangeTask;->stepLength:I

    div-int/2addr v0, v2

    .line 62
    iget v3, p0, Lpabeles/concurrency/IntRangeTask;->step:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    move-object v2, v1

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_1

    .line 68
    new-instance v4, Lpabeles/concurrency/IntRangeTask;

    iget v8, p0, Lpabeles/concurrency/IntRangeTask;->min:I

    iget v9, p0, Lpabeles/concurrency/IntRangeTask;->max:I

    iget v10, p0, Lpabeles/concurrency/IntRangeTask;->stepLength:I

    iget-object v11, p0, Lpabeles/concurrency/IntRangeTask;->consumer:Lpabeles/concurrency/IntRangeConsumer;

    move-object v6, v4

    move v7, v3

    invoke-direct/range {v6 .. v11}, Lpabeles/concurrency/IntRangeTask;-><init>(IIIILpabeles/concurrency/IntRangeConsumer;)V

    if-nez v1, :cond_0

    move-object v1, v4

    goto :goto_1

    .line 72
    :cond_0
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpabeles/concurrency/IntRangeTask;

    iput-object v4, v2, Lpabeles/concurrency/IntRangeTask;->next:Lpabeles/concurrency/IntRangeTask;

    .line 75
    :goto_1
    invoke-virtual {v4}, Lpabeles/concurrency/IntRangeTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    add-int/lit8 v3, v3, 0x1

    move-object v2, v4

    goto :goto_0

    .line 78
    :cond_1
    iget v0, p0, Lpabeles/concurrency/IntRangeTask;->stepLength:I

    mul-int/2addr v3, v0

    iget v0, p0, Lpabeles/concurrency/IntRangeTask;->min:I

    add-int/2addr v3, v0

    .line 79
    iget-object v0, p0, Lpabeles/concurrency/IntRangeTask;->consumer:Lpabeles/concurrency/IntRangeConsumer;

    iget v2, p0, Lpabeles/concurrency/IntRangeTask;->max:I

    invoke-interface {v0, v3, v2}, Lpabeles/concurrency/IntRangeConsumer;->accept(II)V

    :goto_2
    if-eqz v1, :cond_3

    .line 83
    invoke-virtual {v1}, Lpabeles/concurrency/IntRangeTask;->join()Ljava/lang/Object;

    .line 84
    iget-object v1, v1, Lpabeles/concurrency/IntRangeTask;->next:Lpabeles/concurrency/IntRangeTask;

    goto :goto_2

    :cond_2
    mul-int/2addr v3, v2

    add-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 89
    iget-object v0, p0, Lpabeles/concurrency/IntRangeTask;->consumer:Lpabeles/concurrency/IntRangeConsumer;

    invoke-interface {v0, v3, v2}, Lpabeles/concurrency/IntRangeConsumer;->accept(II)V

    :cond_3
    return v5
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lpabeles/concurrency/IntRangeTask;->getRawResult()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public getRawResult()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic setRawResult(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lpabeles/concurrency/IntRangeTask;->setRawResult(Ljava/lang/Void;)V

    return-void
.end method

.method protected setRawResult(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
