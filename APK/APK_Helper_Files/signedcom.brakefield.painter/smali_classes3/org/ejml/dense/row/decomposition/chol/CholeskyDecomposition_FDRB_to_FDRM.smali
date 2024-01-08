.class public Lorg/ejml/dense/row/decomposition/chol/CholeskyDecomposition_FDRB_to_FDRM;
.super Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;
.source "CholeskyDecomposition_FDRB_to_FDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F32;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;",
        "Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F32<",
        "Lorg/ejml/data/FMatrixRMaj;",
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
            "Lorg/ejml/data/FMatrixRBlock;",
            ">;I)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;-><init>(Lorg/ejml/interfaces/decomposition/DecompositionInterface;I)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 44
    new-instance v0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;

    invoke-direct {v0, p1}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;-><init>(Z)V

    sget p1, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH:I

    invoke-direct {p0, v0, p1}, Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;-><init>(Lorg/ejml/interfaces/decomposition/DecompositionInterface;I)V

    return-void
.end method


# virtual methods
.method public computeDeterminant()Lorg/ejml/data/Complex_F32;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecomposition_FDRB_to_FDRM;->alg:Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    check-cast v0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;

    invoke-virtual {v0}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->computeDeterminant()Lorg/ejml/data/Complex_F32;

    move-result-object v0

    return-object v0
.end method

.method public getT(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 3

    .line 58
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecomposition_FDRB_to_FDRM;->alg:Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    check-cast v0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->getT(Lorg/ejml/data/FMatrixRBlock;)Lorg/ejml/data/FMatrixRBlock;

    move-result-object v0

    if-nez p1, :cond_0

    .line 61
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    iget v1, v0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v2, v0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    invoke-direct {p1, v1, v2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 64
    :cond_0
    invoke-static {v0, p1}, Lorg/ejml/dense/block/MatrixOps_FDRB;->convert(Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    return-object p1
.end method

.method public bridge synthetic getT(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecomposition_FDRB_to_FDRM;->getT(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public isLower()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecomposition_FDRB_to_FDRM;->alg:Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    check-cast v0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;

    invoke-virtual {v0}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->isLower()Z

    move-result v0

    return v0
.end method
