.class public Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;
.super Ljava/lang/Object;
.source "ApplyFillReductionPermutation_DSCC.java"


# instance fields
.field Aperm:Lorg/ejml/data/DMatrixSparseCSC;

.field private fillReduce:Lorg/ejml/sparse/ComputePermutation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/sparse/ComputePermutation<",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            ">;"
        }
    .end annotation
.end field

.field gw:Lorg/ejml/data/IGrowArray;

.field pinv:[I

.field symmetric:Z


# direct methods
.method public constructor <init>(Lorg/ejml/sparse/ComputePermutation;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/sparse/ComputePermutation<",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            ">;Z)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/ejml/data/DMatrixSparseCSC;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->Aperm:Lorg/ejml/data/DMatrixSparseCSC;

    new-array v0, v2, [I

    .line 40
    iput-object v0, p0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->pinv:[I

    .line 42
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/IGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    .line 48
    iput-object p1, p0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->fillReduce:Lorg/ejml/sparse/ComputePermutation;

    .line 49
    iput-boolean p2, p0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->symmetric:Z

    return-void
.end method


# virtual methods
.method public apply(Lorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 3

    .line 60
    iget-object v0, p0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->fillReduce:Lorg/ejml/sparse/ComputePermutation;

    if-nez v0, :cond_0

    return-object p1

    .line 62
    :cond_0
    invoke-virtual {v0, p1}, Lorg/ejml/sparse/ComputePermutation;->process(Lorg/ejml/data/Matrix;)V

    .line 64
    iget-object v0, p0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->fillReduce:Lorg/ejml/sparse/ComputePermutation;

    invoke-virtual {v0}, Lorg/ejml/sparse/ComputePermutation;->getRow()Lorg/ejml/data/IGrowArray;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 68
    iget-object v1, p0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->pinv:[I

    array-length v1, v1

    iget v2, v0, Lorg/ejml/data/IGrowArray;->length:I

    if-ge v1, v2, :cond_1

    .line 69
    iget v1, v0, Lorg/ejml/data/IGrowArray;->length:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->pinv:[I

    .line 70
    :cond_1
    iget-object v1, v0, Lorg/ejml/data/IGrowArray;->data:[I

    iget-object v2, p0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->pinv:[I

    iget v0, v0, Lorg/ejml/data/IGrowArray;->length:I

    invoke-static {v1, v2, v0}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->permutationInverse([I[II)V

    .line 71
    iget-boolean v0, p0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->symmetric:Z

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->pinv:[I

    iget-object v1, p0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->Aperm:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v2, p0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    invoke-static {p1, v0, v1, v2}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->permuteSymmetric(Lorg/ejml/data/DMatrixSparseCSC;[ILorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)V

    goto :goto_0

    .line 74
    :cond_2
    iget-object v0, p0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->pinv:[I

    iget-object v1, p0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->Aperm:Lorg/ejml/data/DMatrixSparseCSC;

    invoke-static {v0, p1, v1}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->permuteRowInv([ILorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V

    .line 75
    :goto_0
    iget-object p1, p0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->Aperm:Lorg/ejml/data/DMatrixSparseCSC;

    return-object p1

    .line 66
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No row permutation matrix"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getArrayP()[I
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->fillReduce:Lorg/ejml/sparse/ComputePermutation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/ejml/sparse/ComputePermutation;->getRow()Lorg/ejml/data/IGrowArray;

    move-result-object v0

    iget-object v0, v0, Lorg/ejml/data/IGrowArray;->data:[I

    :goto_0
    return-object v0
.end method

.method public getArrayPinv()[I
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->fillReduce:Lorg/ejml/sparse/ComputePermutation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->pinv:[I

    :goto_0
    return-object v0
.end method

.method public getArrayQ()[I
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->fillReduce:Lorg/ejml/sparse/ComputePermutation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/ejml/sparse/ComputePermutation;->getColumn()Lorg/ejml/data/IGrowArray;

    move-result-object v0

    iget-object v0, v0, Lorg/ejml/data/IGrowArray;->data:[I

    :goto_0
    return-object v0
.end method

.method public getFillReduce()Lorg/ejml/sparse/ComputePermutation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/sparse/ComputePermutation<",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->fillReduce:Lorg/ejml/sparse/ComputePermutation;

    return-object v0
.end method

.method public getGw()Lorg/ejml/data/IGrowArray;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    return-object v0
.end method

.method public isApplied()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->fillReduce:Lorg/ejml/sparse/ComputePermutation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setGw(Lorg/ejml/data/IGrowArray;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    return-void
.end method
