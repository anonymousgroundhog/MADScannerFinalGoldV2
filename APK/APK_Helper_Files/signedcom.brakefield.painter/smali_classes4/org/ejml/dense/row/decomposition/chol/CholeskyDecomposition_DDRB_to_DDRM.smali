.class public Lorg/ejml/dense/row/decomposition/chol/CholeskyDecomposition_DDRB_to_DDRM;
.super Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;
.source "CholeskyDecomposition_DDRB_to_DDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F64;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;",
        "Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F64<",
        "Lorg/ejml/data/DMatrixRMaj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/ejml/interfaces/decomposition/DecompositionInterface;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/DecompositionInterface<",
            "Lorg/ejml/data/DMatrixRBlock;",
            ">;I)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;-><init>(Lorg/ejml/interfaces/decomposition/DecompositionInterface;I)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 42
    new-instance v0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_DDRB;

    invoke-direct {v0, p1}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_DDRB;-><init>(Z)V

    sget p1, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH:I

    invoke-direct {p0, v0, p1}, Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;-><init>(Lorg/ejml/interfaces/decomposition/DecompositionInterface;I)V

    return-void
.end method


# virtual methods
.method public computeDeterminant()Lorg/ejml/data/Complex_F64;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecomposition_DDRB_to_DDRM;->alg:Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    check-cast v0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_DDRB;

    invoke-virtual {v0}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_DDRB;->computeDeterminant()Lorg/ejml/data/Complex_F64;

    move-result-object v0

    return-object v0
.end method

.method public getT(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 3

    .line 56
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecomposition_DDRB_to_DDRM;->alg:Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    check-cast v0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_DDRB;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_DDRB;->getT(Lorg/ejml/data/DMatrixRBlock;)Lorg/ejml/data/DMatrixRBlock;

    move-result-object v0

    if-nez p1, :cond_0

    .line 59
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    iget v1, v0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v2, v0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    invoke-direct {p1, v1, v2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 62
    :cond_0
    invoke-static {v0, p1}, Lorg/ejml/dense/block/MatrixOps_DDRB;->convert(Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    return-object p1
.end method

.method public bridge synthetic getT(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecomposition_DDRB_to_DDRM;->getT(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public isLower()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecomposition_DDRB_to_DDRM;->alg:Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    check-cast v0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_DDRB;

    invoke-virtual {v0}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_DDRB;->isLower()Z

    move-result v0

    return v0
.end method
