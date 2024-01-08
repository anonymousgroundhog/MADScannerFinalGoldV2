.class public abstract Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_ZDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_ZDRM;
.source "LinearSolverLuBase_ZDRM.java"


# instance fields
.field protected decomp:Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;


# direct methods
.method protected constructor <init>(Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_ZDRM;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_ZDRM;->decomp:Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;

    return-void
.end method


# virtual methods
.method public getDecomposition()Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_ZDRM;->decomp:Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;

    return-object v0
.end method

.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_ZDRM;->getDecomposition()Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 30
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_ZDRM;->invert(Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public invert(Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 11

    .line 52
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_ZDRM;->decomp:Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->_getVV()[D

    move-result-object v0

    .line 53
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_ZDRM;->decomp:Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;

    invoke-virtual {v1}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->getLU()Lorg/ejml/data/ZMatrixRMaj;

    move-result-object v1

    .line 55
    iget v2, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-virtual {p1, v2, v1}, Lorg/ejml/data/ZMatrixRMaj;->reshape(II)V

    .line 57
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_ZDRM;->A:Lorg/ejml/data/ZMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    .line 59
    iget-object v2, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    .line 60
    invoke-virtual {p1}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    mul-int/lit8 v5, v1, 0x2

    const-wide/16 v6, 0x0

    .line 64
    invoke-static {v0, v3, v5, v6, v7}, Ljava/util/Arrays;->fill([DIID)V

    mul-int/lit8 v5, v4, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 65
    aput-wide v8, v0, v5

    add-int/lit8 v8, v5, 0x1

    .line 66
    aput-wide v6, v0, v8

    .line 68
    iget-object v6, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_ZDRM;->decomp:Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;

    invoke-virtual {v6, v0}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->_solveVectorInternal([D)V

    move v6, v3

    :goto_1
    if-ge v6, v1, :cond_0

    mul-int/lit8 v7, v6, 0x2

    .line 72
    aget-wide v8, v0, v7

    aput-wide v8, v2, v5

    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 73
    aget-wide v9, v0, v7

    aput-wide v9, v2, v8

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v5, p1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
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

    .line 47
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_ZDRM;->decomp:Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->quality()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 30
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_ZDRM;->setA(Lorg/ejml/data/ZMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public setA(Lorg/ejml/data/ZMatrixRMaj;)Z
    .locals 1

    .line 40
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_ZDRM;->_setA(Lorg/ejml/data/ZMatrixRMaj;)V

    .line 42
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_ZDRM;->decomp:Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    return p1
.end method
