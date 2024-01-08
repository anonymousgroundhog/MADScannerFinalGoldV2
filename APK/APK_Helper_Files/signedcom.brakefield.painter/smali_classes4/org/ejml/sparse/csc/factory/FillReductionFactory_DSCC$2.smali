.class Lorg/ejml/sparse/csc/factory/FillReductionFactory_DSCC$2;
.super Lorg/ejml/sparse/ComputePermutation;
.source "FillReductionFactory_DSCC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/sparse/csc/factory/FillReductionFactory_DSCC;->create(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/sparse/ComputePermutation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ejml/sparse/ComputePermutation<",
        "Lorg/ejml/data/DMatrixSparseCSC;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(ZZ)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lorg/ejml/sparse/ComputePermutation;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public process(Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lorg/ejml/sparse/csc/factory/FillReductionFactory_DSCC$2;->prow:Lorg/ejml/data/IGrowArray;

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-virtual {v0, v1}, Lorg/ejml/data/IGrowArray;->reshape(I)V

    .line 71
    iget-object v0, p0, Lorg/ejml/sparse/csc/factory/FillReductionFactory_DSCC$2;->pcol:Lorg/ejml/data/IGrowArray;

    iget p1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-virtual {v0, p1}, Lorg/ejml/data/IGrowArray;->reshape(I)V

    .line 72
    iget-object p1, p0, Lorg/ejml/sparse/csc/factory/FillReductionFactory_DSCC$2;->prow:Lorg/ejml/data/IGrowArray;

    invoke-static {p1}, Lorg/ejml/sparse/csc/factory/FillReductionFactory_DSCC;->access$000(Lorg/ejml/data/IGrowArray;)V

    .line 73
    iget-object p1, p0, Lorg/ejml/sparse/csc/factory/FillReductionFactory_DSCC$2;->pcol:Lorg/ejml/data/IGrowArray;

    invoke-static {p1}, Lorg/ejml/sparse/csc/factory/FillReductionFactory_DSCC;->access$000(Lorg/ejml/data/IGrowArray;)V

    return-void
.end method

.method public bridge synthetic process(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 66
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/factory/FillReductionFactory_DSCC$2;->process(Lorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method
