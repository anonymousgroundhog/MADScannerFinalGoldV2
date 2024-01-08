.class public Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_FDRM;
.super Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_FDRM;
.source "LinearSolverLuKJI_FDRM.java"


# instance fields
.field private dataLU:[F

.field private pivot:[I


# direct methods
.method public constructor <init>(Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_FDRM;-><init>(Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;)V

    return-void
.end method


# virtual methods
.method public setA(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_FDRM;->setA(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    .line 48
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_FDRM;->decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->getPivot()[I

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_FDRM;->pivot:[I

    .line 49
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_FDRM;->decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->getLU()Lorg/ejml/data/FMatrixRMaj;

    move-result-object v0

    iget-object v0, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_FDRM;->dataLU:[F

    return p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 33
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_FDRM;->setA(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 10

    .line 64
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_FDRM;->numRows:I

    if-ne v0, v1, :cond_8

    .line 67
    iget v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_FDRM;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    if-eq p1, p2, :cond_7

    .line 70
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_FDRM;->pivot:[I

    invoke-static {v0, p1, p2}, Lorg/ejml/dense/row/SpecializedOps_FDRM;->copyChangeRow([ILorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    .line 76
    iget p1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    .line 77
    iget-object p2, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v0, 0x0

    move v1, v0

    .line 80
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_FDRM;->numCols:I

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    move v3, v2

    .line 81
    :goto_1
    iget v4, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_FDRM;->numCols:I

    if-ge v3, v4, :cond_1

    move v4, v0

    :goto_2
    if-ge v4, p1, :cond_0

    mul-int v5, v3, p1

    add-int/2addr v5, v4

    .line 83
    aget v6, p2, v5

    mul-int v7, v1, p1

    add-int/2addr v7, v4

    aget v7, p2, v7

    iget-object v8, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_FDRM;->dataLU:[F

    iget v9, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_FDRM;->numCols:I

    mul-int/2addr v9, v3

    add-int/2addr v9, v1

    aget v8, v8, v9

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    aput v6, p2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0

    .line 88
    :cond_2
    iget v1, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_FDRM;->numCols:I

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-ltz v1, :cond_6

    move v2, v0

    :goto_4
    if-ge v2, p1, :cond_3

    mul-int v3, v1, p1

    add-int/2addr v3, v2

    .line 90
    aget v4, p2, v3

    iget-object v5, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_FDRM;->dataLU:[F

    iget v6, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_FDRM;->numCols:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v1

    aget v5, v5, v6

    div-float/2addr v4, v5

    aput v4, p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    move v2, v0

    :goto_5
    if-ge v2, v1, :cond_5

    move v3, v0

    :goto_6
    if-ge v3, p1, :cond_4

    mul-int v4, v2, p1

    add-int/2addr v4, v3

    .line 94
    aget v5, p2, v4

    mul-int v6, v1, p1

    add-int/2addr v6, v3

    aget v6, p2, v6

    iget-object v7, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_FDRM;->dataLU:[F

    iget v8, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_FDRM;->numCols:I

    mul-int/2addr v8, v2

    add-int/2addr v8, v1

    aget v7, v7, v8

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    aput v5, p2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_6
    return-void

    .line 72
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Current doesn\'t support using the same matrix instance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected matrix size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 33
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_FDRM;->solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method
