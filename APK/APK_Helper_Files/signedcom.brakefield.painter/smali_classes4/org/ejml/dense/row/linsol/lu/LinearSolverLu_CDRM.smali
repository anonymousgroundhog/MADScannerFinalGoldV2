.class public Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_CDRM;
.super Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_CDRM;
.source "LinearSolverLu_CDRM.java"


# direct methods
.method public constructor <init>(Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_CDRM;-><init>(Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;)V

    return-void
.end method


# virtual methods
.method public solve(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 10

    .line 40
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_CDRM;->numRows:I

    if-ne v0, v1, :cond_3

    .line 42
    iget v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_CDRM;->numCols:I

    iget v1, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/CMatrixRMaj;->reshape(II)V

    .line 44
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    .line 45
    invoke-virtual {p1}, Lorg/ejml/data/CMatrixRMaj;->getRowStride()I

    move-result v1

    .line 47
    iget-object p1, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    .line 48
    iget-object p2, p2, Lorg/ejml/data/CMatrixRMaj;->data:[F

    .line 50
    iget-object v2, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_CDRM;->decomp:Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;

    invoke-virtual {v2}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->_getVV()[F

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    mul-int/lit8 v5, v4, 0x2

    move v6, v3

    move v7, v5

    .line 59
    :goto_1
    iget v8, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_CDRM;->numRows:I

    if-ge v6, v8, :cond_0

    mul-int/lit8 v8, v6, 0x2

    .line 60
    aget v9, p1, v7

    aput v9, v2, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v7, 0x1

    .line 61
    aget v9, p1, v9

    aput v9, v2, v8

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v7, v1

    goto :goto_1

    .line 63
    :cond_0
    iget-object v6, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_CDRM;->decomp:Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;

    invoke-virtual {v6, v2}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->_solveVectorInternal([F)V

    move v6, v3

    .line 65
    :goto_2
    iget v7, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_CDRM;->numRows:I

    if-ge v6, v7, :cond_1

    mul-int/lit8 v7, v6, 0x2

    .line 66
    aget v8, v2, v7

    aput v8, p2, v5

    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 67
    aget v7, v2, v7

    aput v7, p2, v8

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 41
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected dimensions for B"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 31
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p2, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_CDRM;->solve(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method
