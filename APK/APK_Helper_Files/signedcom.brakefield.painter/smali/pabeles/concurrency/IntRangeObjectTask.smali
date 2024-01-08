.class public Lpabeles/concurrency/IntRangeObjectTask;
.super Ljava/util/concurrent/ForkJoinTask;
.source "IntRangeObjectTask.java"


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
.field final consumer:Lpabeles/concurrency/IntRangeObjectConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpabeles/concurrency/IntRangeObjectConsumer<",
            "TT;>;"
        }
    .end annotation
.end field

.field final max:I

.field final min:I

.field next:Lpabeles/concurrency/IntRangeObjectTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpabeles/concurrency/IntRangeObjectTask<",
            "TT;>;"
        }
    .end annotation
.end field

.field final step:I

.field final stepLength:I

.field final workspace:Lpabeles/concurrency/GrowArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpabeles/concurrency/GrowArray<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIIILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntRangeObjectConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lpabeles/concurrency/GrowArray<",
            "TT;>;",
            "Lpabeles/concurrency/IntRangeObjectConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    .line 45
    iput p1, p0, Lpabeles/concurrency/IntRangeObjectTask;->step:I

    .line 46
    iput p2, p0, Lpabeles/concurrency/IntRangeObjectTask;->min:I

    .line 47
    iput p3, p0, Lpabeles/concurrency/IntRangeObjectTask;->max:I

    .line 48
    iput p4, p0, Lpabeles/concurrency/IntRangeObjectTask;->stepLength:I

    .line 49
    iput-object p6, p0, Lpabeles/concurrency/IntRangeObjectTask;->consumer:Lpabeles/concurrency/IntRangeObjectConsumer;

    .line 50
    iput-object p5, p0, Lpabeles/concurrency/IntRangeObjectTask;->workspace:Lpabeles/concurrency/GrowArray;

    return-void
.end method

.method public constructor <init>(IIILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntRangeObjectConsumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lpabeles/concurrency/GrowArray<",
            "TT;>;",
            "Lpabeles/concurrency/IntRangeObjectConsumer<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v1, -0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 56
    invoke-direct/range {v0 .. v6}, Lpabeles/concurrency/IntRangeObjectTask;-><init>(IIIILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntRangeObjectConsumer;)V

    return-void
.end method


# virtual methods
.method protected exec()Z
    .locals 13

    .line 67
    iget v0, p0, Lpabeles/concurrency/IntRangeObjectTask;->max:I

    iget v1, p0, Lpabeles/concurrency/IntRangeObjectTask;->min:I

    sub-int/2addr v0, v1

    iget v2, p0, Lpabeles/concurrency/IntRangeObjectTask;->stepLength:I

    div-int/2addr v0, v2

    .line 69
    iget v3, p0, Lpabeles/concurrency/IntRangeObjectTask;->step:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    .line 71
    iget-object v1, p0, Lpabeles/concurrency/IntRangeObjectTask;->workspace:Lpabeles/concurrency/GrowArray;

    invoke-virtual {v1, v0}, Lpabeles/concurrency/GrowArray;->resize(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    move-object v2, v1

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_1

    .line 78
    new-instance v4, Lpabeles/concurrency/IntRangeObjectTask;

    iget v8, p0, Lpabeles/concurrency/IntRangeObjectTask;->min:I

    iget v9, p0, Lpabeles/concurrency/IntRangeObjectTask;->max:I

    iget v10, p0, Lpabeles/concurrency/IntRangeObjectTask;->stepLength:I

    iget-object v11, p0, Lpabeles/concurrency/IntRangeObjectTask;->workspace:Lpabeles/concurrency/GrowArray;

    iget-object v12, p0, Lpabeles/concurrency/IntRangeObjectTask;->consumer:Lpabeles/concurrency/IntRangeObjectConsumer;

    move-object v6, v4

    move v7, v3

    invoke-direct/range {v6 .. v12}, Lpabeles/concurrency/IntRangeObjectTask;-><init>(IIIILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntRangeObjectConsumer;)V

    if-nez v1, :cond_0

    move-object v1, v4

    goto :goto_1

    .line 82
    :cond_0
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpabeles/concurrency/IntRangeObjectTask;

    iput-object v4, v2, Lpabeles/concurrency/IntRangeObjectTask;->next:Lpabeles/concurrency/IntRangeObjectTask;

    .line 85
    :goto_1
    invoke-virtual {v4}, Lpabeles/concurrency/IntRangeObjectTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    add-int/lit8 v3, v3, 0x1

    move-object v2, v4

    goto :goto_0

    .line 88
    :cond_1
    iget v0, p0, Lpabeles/concurrency/IntRangeObjectTask;->stepLength:I

    mul-int/2addr v3, v0

    iget v0, p0, Lpabeles/concurrency/IntRangeObjectTask;->min:I

    add-int/2addr v3, v0

    .line 89
    iget-object v0, p0, Lpabeles/concurrency/IntRangeObjectTask;->consumer:Lpabeles/concurrency/IntRangeObjectConsumer;

    iget-object v2, p0, Lpabeles/concurrency/IntRangeObjectTask;->workspace:Lpabeles/concurrency/GrowArray;

    invoke-virtual {v2, v4}, Lpabeles/concurrency/GrowArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget v4, p0, Lpabeles/concurrency/IntRangeObjectTask;->max:I

    invoke-interface {v0, v2, v3, v4}, Lpabeles/concurrency/IntRangeObjectConsumer;->accept(Ljava/lang/Object;II)V

    :goto_2
    if-eqz v1, :cond_3

    .line 93
    invoke-virtual {v1}, Lpabeles/concurrency/IntRangeObjectTask;->join()Ljava/lang/Object;

    .line 94
    iget-object v1, v1, Lpabeles/concurrency/IntRangeObjectTask;->next:Lpabeles/concurrency/IntRangeObjectTask;

    goto :goto_2

    :cond_2
    mul-int v0, v3, v2

    add-int/2addr v0, v1

    add-int/2addr v2, v0

    .line 99
    iget-object v1, p0, Lpabeles/concurrency/IntRangeObjectTask;->consumer:Lpabeles/concurrency/IntRangeObjectConsumer;

    iget-object v4, p0, Lpabeles/concurrency/IntRangeObjectTask;->workspace:Lpabeles/concurrency/GrowArray;

    invoke-virtual {v4, v3}, Lpabeles/concurrency/GrowArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3, v0, v2}, Lpabeles/concurrency/IntRangeObjectConsumer;->accept(Ljava/lang/Object;II)V

    :cond_3
    return v5
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lpabeles/concurrency/IntRangeObjectTask;->getRawResult()Ljava/lang/Void;

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

    .line 29
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lpabeles/concurrency/IntRangeObjectTask;->setRawResult(Ljava/lang/Void;)V

    return-void
.end method

.method protected setRawResult(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
