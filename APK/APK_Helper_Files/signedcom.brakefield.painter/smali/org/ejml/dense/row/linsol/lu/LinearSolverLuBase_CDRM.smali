.class public abstract Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_CDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_CDRM;
.source "LinearSolverLuBase_CDRM.java"


# instance fields
.field protected decomp:Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;


# direct methods
.method protected constructor <init>(Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_CDRM;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_CDRM;->decomp:Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;

    return-void
.end method


# virtual methods
.method public getDecomposition()Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_CDRM;->decomp:Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;

    return-object v0
.end method

.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_CDRM;->getDecomposition()Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;

    move-result-object v0

    return-object v0
.end method

.method public invert(Lorg/ejml/data/CMatrixRMaj;)V
    .locals 9

    .line 54
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_CDRM;->decomp:Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->_getVV()[F

    move-result-object v0

    .line 55
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_CDRM;->decomp:Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;

    invoke-virtual {v1}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->getLU()Lorg/ejml/data/CMatrixRMaj;

    move-result-object v1

    .line 57
    iget v2, v1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, v1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-virtual {p1, v2, v1}, Lorg/ejml/data/CMatrixRMaj;->reshape(II)V

    .line 59
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_CDRM;->A:Lorg/ejml/data/CMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    .line 61
    iget-object v2, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    .line 62
    invoke-virtual {p1}, Lorg/ejml/data/CMatrixRMaj;->getRowStride()I

    move-result p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    mul-int/lit8 v5, v1, 0x2

    const/4 v6, 0x0

    .line 66
    invoke-static {v0, v3, v5, v6}, Ljava/util/Arrays;->fill([FIIF)V

    mul-int/lit8 v5, v4, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    .line 67
    aput v7, v0, v5

    add-int/lit8 v7, v5, 0x1

    .line 68
    aput v6, v0, v7

    .line 70
    iget-object v6, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_CDRM;->decomp:Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;

    invoke-virtual {v6, v0}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->_solveVectorInternal([F)V

    move v6, v3

    :goto_1
    if-ge v6, v1, :cond_0

    mul-int/lit8 v7, v6, 0x2

    .line 74
    aget v8, v0, v7

    aput v8, v2, v5

    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 75
    aget v7, v0, v7

    aput v7, v2, v8

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v5, p1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 31
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_CDRM;->invert(Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public modifiesA()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public quality()D
    .locals 2

    .line 49
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_CDRM;->decomp:Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->quality()D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/CMatrixRMaj;)Z
    .locals 1

    .line 42
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_CDRM;->_setA(Lorg/ejml/data/CMatrixRMaj;)V

    .line 44
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_CDRM;->decomp:Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 31
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_CDRM;->setA(Lorg/ejml/data/CMatrixRMaj;)Z

    move-result p1

    return p1
.end method
