.class Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC$1;
.super Lorg/ejml/sparse/ComputePermutation;
.source "FillReductionFactory_FSCC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC;->create(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/sparse/ComputePermutation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ejml/sparse/ComputePermutation<",
        "Lorg/ejml/data/FMatrixSparseCSC;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(ZZ)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/ejml/sparse/ComputePermutation;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public process(Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 4

    .line 54
    iget-object v0, p0, Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC$1;->prow:Lorg/ejml/data/IGrowArray;

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-virtual {v0, v1}, Lorg/ejml/data/IGrowArray;->reshape(I)V

    .line 55
    iget-object v0, p0, Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC$1;->pcol:Lorg/ejml/data/IGrowArray;

    iget p1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-virtual {v0, p1}, Lorg/ejml/data/IGrowArray;->reshape(I)V

    .line 56
    iget-object p1, p0, Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC$1;->prow:Lorg/ejml/data/IGrowArray;

    invoke-static {p1}, Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC;->access$000(Lorg/ejml/data/IGrowArray;)V

    .line 57
    iget-object p1, p0, Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC$1;->pcol:Lorg/ejml/data/IGrowArray;

    invoke-static {p1}, Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC;->access$000(Lorg/ejml/data/IGrowArray;)V

    .line 59
    sget-object p1, Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC;->rand:Ljava/util/Random;

    monitor-enter p1

    .line 60
    :try_start_0
    new-instance v0, Ljava/util/Random;

    sget-object v1, Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC;->rand:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 61
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iget-object p1, p0, Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC$1;->prow:Lorg/ejml/data/IGrowArray;

    iget-object p1, p1, Lorg/ejml/data/IGrowArray;->data:[I

    iget-object v1, p0, Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC$1;->prow:Lorg/ejml/data/IGrowArray;

    iget v1, v1, Lorg/ejml/data/IGrowArray;->length:I

    iget-object v2, p0, Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC$1;->prow:Lorg/ejml/data/IGrowArray;

    iget v2, v2, Lorg/ejml/data/IGrowArray;->length:I

    const/4 v3, 0x0

    invoke-static {p1, v1, v3, v2, v0}, Lorg/ejml/UtilEjml;->shuffle([IIIILjava/util/Random;)V

    .line 63
    iget-object p1, p0, Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC$1;->pcol:Lorg/ejml/data/IGrowArray;

    iget-object p1, p1, Lorg/ejml/data/IGrowArray;->data:[I

    iget-object v1, p0, Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC$1;->pcol:Lorg/ejml/data/IGrowArray;

    iget v1, v1, Lorg/ejml/data/IGrowArray;->length:I

    iget-object v2, p0, Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC$1;->pcol:Lorg/ejml/data/IGrowArray;

    iget v2, v2, Lorg/ejml/data/IGrowArray;->length:I

    invoke-static {p1, v1, v3, v2, v0}, Lorg/ejml/UtilEjml;->shuffle([IIIILjava/util/Random;)V

    return-void

    :catchall_0
    move-exception v0

    .line 61
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic process(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 50
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC$1;->process(Lorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method
