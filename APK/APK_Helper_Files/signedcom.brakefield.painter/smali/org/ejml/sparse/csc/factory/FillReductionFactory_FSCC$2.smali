.class Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC$2;
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

    .line 68
    invoke-direct {p0, p1, p2}, Lorg/ejml/sparse/ComputePermutation;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public process(Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC$2;->prow:Lorg/ejml/data/IGrowArray;

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-virtual {v0, v1}, Lorg/ejml/data/IGrowArray;->reshape(I)V

    .line 73
    iget-object v0, p0, Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC$2;->pcol:Lorg/ejml/data/IGrowArray;

    iget p1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-virtual {v0, p1}, Lorg/ejml/data/IGrowArray;->reshape(I)V

    .line 74
    iget-object p1, p0, Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC$2;->prow:Lorg/ejml/data/IGrowArray;

    invoke-static {p1}, Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC;->access$000(Lorg/ejml/data/IGrowArray;)V

    .line 75
    iget-object p1, p0, Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC$2;->pcol:Lorg/ejml/data/IGrowArray;

    invoke-static {p1}, Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC;->access$000(Lorg/ejml/data/IGrowArray;)V

    return-void
.end method

.method public bridge synthetic process(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 68
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/factory/FillReductionFactory_FSCC$2;->process(Lorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method
