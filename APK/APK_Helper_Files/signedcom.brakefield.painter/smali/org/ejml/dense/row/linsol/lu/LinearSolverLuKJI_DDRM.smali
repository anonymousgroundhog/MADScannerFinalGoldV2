.class public Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_DDRM;
.super Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_DDRM;
.source "LinearSolverLuKJI_DDRM.java"


# instance fields
.field private dataLU:[D

.field private pivot:[I


# direct methods
.method public constructor <init>(Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_DDRM;-><init>(Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;)V

    return-void
.end method


# virtual methods
.method public setA(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuBase_DDRM;->setA(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    .line 46
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_DDRM;->decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->getPivot()[I

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_DDRM;->pivot:[I

    .line 47
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_DDRM;->decomp:Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->getLU()Lorg/ejml/data/DMatrixRMaj;

    move-result-object v0

    iget-object v0, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_DDRM;->dataLU:[D

    return p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 32
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_DDRM;->setA(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 12

    .line 62
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_DDRM;->numRows:I

    if-ne v0, v1, :cond_8

    .line 65
    iget v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_DDRM;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    if-eq p1, p2, :cond_7

    .line 68
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_DDRM;->pivot:[I

    invoke-static {v0, p1, p2}, Lorg/ejml/dense/row/SpecializedOps_DDRM;->copyChangeRow([ILorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    .line 74
    iget p1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    .line 75
    iget-object p2, p2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v0, 0x0

    move v1, v0

    .line 78
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_DDRM;->numCols:I

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    move v3, v2

    .line 79
    :goto_1
    iget v4, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_DDRM;->numCols:I

    if-ge v3, v4, :cond_1

    move v4, v0

    :goto_2
    if-ge v4, p1, :cond_0

    mul-int v5, v3, p1

    add-int/2addr v5, v4

    .line 81
    aget-wide v6, p2, v5

    mul-int v8, v1, p1

    add-int/2addr v8, v4

    aget-wide v8, p2, v8

    iget-object v10, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_DDRM;->dataLU:[D

    iget v11, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_DDRM;->numCols:I

    mul-int/2addr v11, v3

    add-int/2addr v11, v1

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    aput-wide v6, p2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0

    .line 86
    :cond_2
    iget v1, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_DDRM;->numCols:I

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-ltz v1, :cond_6

    move v2, v0

    :goto_4
    if-ge v2, p1, :cond_3

    mul-int v3, v1, p1

    add-int/2addr v3, v2

    .line 88
    aget-wide v4, p2, v3

    iget-object v6, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_DDRM;->dataLU:[D

    iget v7, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_DDRM;->numCols:I

    mul-int/2addr v7, v1

    add-int/2addr v7, v1

    aget-wide v6, v6, v7

    div-double/2addr v4, v6

    aput-wide v4, p2, v3

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

    .line 92
    aget-wide v5, p2, v4

    mul-int v7, v1, p1

    add-int/2addr v7, v3

    aget-wide v7, p2, v7

    iget-object v9, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_DDRM;->dataLU:[D

    iget v10, p0, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_DDRM;->numCols:I

    mul-int/2addr v10, v2

    add-int/2addr v10, v1

    aget-wide v9, v9, v10

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    aput-wide v5, p2, v4

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

    .line 70
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Current doesn\'t support using the same matrix instance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected matrix size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 32
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLuKJI_DDRM;->solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method
