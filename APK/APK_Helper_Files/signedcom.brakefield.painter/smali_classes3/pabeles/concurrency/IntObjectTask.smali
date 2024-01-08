.class public Lpabeles/concurrency/IntObjectTask;
.super Ljava/util/concurrent/ForkJoinTask;
.source "IntObjectTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ForkJoinTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final consumer:Lpabeles/concurrency/IntObjectConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpabeles/concurrency/IntObjectConsumer<",
            "TT;>;"
        }
    .end annotation
.end field

.field final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final idx0:I

.field final idx1:I

.field final maxThreads:I

.field next:Lpabeles/concurrency/IntObjectTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpabeles/concurrency/IntObjectTask<",
            "TT;>;"
        }
    .end annotation
.end field

.field final step:I

.field final whichThread:I

.field final workspace:Lpabeles/concurrency/GrowArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpabeles/concurrency/GrowArray<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIIIILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntObjectConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Lpabeles/concurrency/GrowArray<",
            "TT;>;",
            "Lpabeles/concurrency/IntObjectConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    .line 54
    iput p1, p0, Lpabeles/concurrency/IntObjectTask;->idx0:I

    .line 55
    iput p2, p0, Lpabeles/concurrency/IntObjectTask;->idx1:I

    .line 56
    iput p3, p0, Lpabeles/concurrency/IntObjectTask;->step:I

    .line 57
    iput p4, p0, Lpabeles/concurrency/IntObjectTask;->maxThreads:I

    .line 58
    iput p5, p0, Lpabeles/concurrency/IntObjectTask;->whichThread:I

    .line 59
    iput-object p7, p0, Lpabeles/concurrency/IntObjectTask;->consumer:Lpabeles/concurrency/IntObjectConsumer;

    .line 60
    iput-object p6, p0, Lpabeles/concurrency/IntObjectTask;->workspace:Lpabeles/concurrency/GrowArray;

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lpabeles/concurrency/IntObjectTask;->data:Ljava/lang/Object;

    return-void
.end method

.method private computeIndex(III)I
    .locals 1

    .line 119
    iget v0, p0, Lpabeles/concurrency/IntObjectTask;->idx0:I

    mul-int/2addr p1, p3

    div-int/2addr p1, p2

    iget p2, p0, Lpabeles/concurrency/IntObjectTask;->step:I

    mul-int/2addr p1, p2

    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method protected exec()Z
    .locals 15

    .line 72
    iget v0, p0, Lpabeles/concurrency/IntObjectTask;->whichThread:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_4

    .line 74
    iget v0, p0, Lpabeles/concurrency/IntObjectTask;->idx1:I

    iget v1, p0, Lpabeles/concurrency/IntObjectTask;->idx0:I

    sub-int v3, v0, v1

    iget v4, p0, Lpabeles/concurrency/IntObjectTask;->step:I

    div-int/2addr v3, v4

    sub-int/2addr v0, v1

    rem-int/2addr v0, v4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    add-int/2addr v3, v0

    .line 77
    iget v0, p0, Lpabeles/concurrency/IntObjectTask;->maxThreads:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 80
    iget-object v4, p0, Lpabeles/concurrency/IntObjectTask;->workspace:Lpabeles/concurrency/GrowArray;

    invoke-virtual {v4}, Lpabeles/concurrency/GrowArray;->reset()V

    .line 81
    iget-object v4, p0, Lpabeles/concurrency/IntObjectTask;->workspace:Lpabeles/concurrency/GrowArray;

    invoke-virtual {v4, v0}, Lpabeles/concurrency/GrowArray;->resize(I)V

    const/4 v4, 0x0

    move v10, v1

    move-object v1, v4

    :goto_1
    add-int/lit8 v5, v0, -0x1

    if-ge v10, v5, :cond_2

    .line 88
    invoke-direct {p0, v10, v0, v3}, Lpabeles/concurrency/IntObjectTask;->computeIndex(III)I

    move-result v6

    add-int/lit8 v13, v10, 0x1

    .line 89
    invoke-direct {p0, v13, v0, v3}, Lpabeles/concurrency/IntObjectTask;->computeIndex(III)I

    move-result v7

    .line 90
    new-instance v14, Lpabeles/concurrency/IntObjectTask;

    iget v8, p0, Lpabeles/concurrency/IntObjectTask;->step:I

    const/4 v9, -0x1

    iget-object v11, p0, Lpabeles/concurrency/IntObjectTask;->workspace:Lpabeles/concurrency/GrowArray;

    iget-object v12, p0, Lpabeles/concurrency/IntObjectTask;->consumer:Lpabeles/concurrency/IntObjectConsumer;

    move-object v5, v14

    invoke-direct/range {v5 .. v12}, Lpabeles/concurrency/IntObjectTask;-><init>(IIIIILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntObjectConsumer;)V

    if-nez v4, :cond_1

    move-object v4, v14

    goto :goto_2

    .line 94
    :cond_1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpabeles/concurrency/IntObjectTask;

    iput-object v14, v1, Lpabeles/concurrency/IntObjectTask;->next:Lpabeles/concurrency/IntObjectTask;

    .line 97
    :goto_2
    invoke-virtual {v14}, Lpabeles/concurrency/IntObjectTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    move v10, v13

    move-object v1, v14

    goto :goto_1

    .line 100
    :cond_2
    invoke-direct {p0, v5, v0, v3}, Lpabeles/concurrency/IntObjectTask;->computeIndex(III)I

    move-result v0

    :goto_3
    iget v1, p0, Lpabeles/concurrency/IntObjectTask;->idx1:I

    if-ge v0, v1, :cond_3

    .line 101
    iget-object v1, p0, Lpabeles/concurrency/IntObjectTask;->consumer:Lpabeles/concurrency/IntObjectConsumer;

    iget-object v3, p0, Lpabeles/concurrency/IntObjectTask;->workspace:Lpabeles/concurrency/GrowArray;

    invoke-virtual {v3, v5}, Lpabeles/concurrency/GrowArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Lpabeles/concurrency/IntObjectConsumer;->accept(Ljava/lang/Object;I)V

    .line 100
    iget v1, p0, Lpabeles/concurrency/IntObjectTask;->step:I

    add-int/2addr v0, v1

    goto :goto_3

    :cond_3
    :goto_4
    if-eqz v4, :cond_5

    .line 106
    invoke-virtual {v4}, Lpabeles/concurrency/IntObjectTask;->join()Ljava/lang/Object;

    .line 107
    iget-object v4, v4, Lpabeles/concurrency/IntObjectTask;->next:Lpabeles/concurrency/IntObjectTask;

    goto :goto_4

    .line 110
    :cond_4
    iget-object v1, p0, Lpabeles/concurrency/IntObjectTask;->workspace:Lpabeles/concurrency/GrowArray;

    invoke-virtual {v1, v0}, Lpabeles/concurrency/GrowArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 111
    iget v1, p0, Lpabeles/concurrency/IntObjectTask;->idx0:I

    :goto_5
    iget v3, p0, Lpabeles/concurrency/IntObjectTask;->idx1:I

    if-ge v1, v3, :cond_5

    .line 112
    iget-object v3, p0, Lpabeles/concurrency/IntObjectTask;->consumer:Lpabeles/concurrency/IntObjectConsumer;

    invoke-interface {v3, v0, v1}, Lpabeles/concurrency/IntObjectConsumer;->accept(Ljava/lang/Object;I)V

    .line 111
    iget v3, p0, Lpabeles/concurrency/IntObjectTask;->step:I

    add-int/2addr v1, v3

    goto :goto_5

    :cond_5
    return v2
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lpabeles/concurrency/IntObjectTask;->getRawResult()Ljava/lang/Void;

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

    .line 33
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lpabeles/concurrency/IntObjectTask;->setRawResult(Ljava/lang/Void;)V

    return-void
.end method

.method protected setRawResult(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
