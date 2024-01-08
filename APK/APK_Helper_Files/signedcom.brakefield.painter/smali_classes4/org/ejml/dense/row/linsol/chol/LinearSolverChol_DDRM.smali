.class public Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_DDRM;
.source "LinearSolverChol_DDRM.java"


# instance fields
.field decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;

.field n:I

.field t:[D

.field vv:[D


# direct methods
.method public constructor <init>(Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_DDRM;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;

    return-void
.end method

.method public static solveLower(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;[D)V
    .locals 9

    .line 97
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    .line 98
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_0

    .line 100
    iget-object v5, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    mul-int v6, v4, v0

    add-int/2addr v6, v3

    aget-wide v5, v5, v6

    aput-wide v5, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 102
    :cond_0
    iget-object v4, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    invoke-static {v4, p3, v1}, Lorg/ejml/dense/row/decomposition/TriangularSolver_DDRM;->solveL([D[DI)V

    .line 105
    iget-object v4, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    invoke-static {v4, p3, v1}, Lorg/ejml/dense/row/decomposition/TriangularSolver_DDRM;->solveTranL([D[DI)V

    move v4, v2

    :goto_2
    if-ge v4, v1, :cond_1

    .line 106
    iget-object v5, p2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    mul-int v6, v4, v0

    add-int/2addr v6, v3

    aget-wide v7, p3, v4

    aput-wide v7, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getDecomposition()Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F64;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;

    return-object v0
.end method

.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->getDecomposition()Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F64;

    move-result-object v0

    return-object v0
.end method

.method public invert(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 2

    .line 117
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->n:I

    if-ne v0, v1, :cond_2

    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->n:I

    if-ne v0, v1, :cond_2

    .line 120
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->t:[D

    if-eq v0, v1, :cond_1

    .line 124
    iget-object p1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    .line 126
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->isLower()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->setToInverseL([D)V

    return-void

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Implement"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Passing in the same matrix that was decomposed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected matrix dimension"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 31
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->invert(Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public modifiesA()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->inputModified()Z

    move-result v0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public quality()D
    .locals 2

    .line 62
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->getT()Lorg/ejml/data/DMatrixRMaj;

    move-result-object v0

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_DDRM;->qualityTriangular(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 2

    .line 45
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_1

    .line 48
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->_setA(Lorg/ejml/data/DMatrixRMaj;)V

    .line 50
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget p1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iput p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->n:I

    .line 52
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->_getVV()[D

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->vv:[D

    .line 53
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->getT()Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    iget-object p1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->t:[D

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Matrix must be square"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 31
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->setA(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public setToInverseL([D)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    .line 141
    :goto_0
    iget v3, v0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->n:I

    const-wide/16 v4, 0x0

    if-ge v2, v3, :cond_3

    .line 142
    iget-object v6, v0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->t:[D

    mul-int/2addr v3, v2

    add-int/2addr v3, v2

    aget-wide v6, v6, v3

    move v3, v1

    :goto_1
    if-gt v3, v2, :cond_2

    if-ne v2, v3, :cond_0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_0
    move-wide v8, v4

    :goto_2
    add-int/lit8 v10, v2, -0x1

    :goto_3
    if-lt v10, v3, :cond_1

    .line 146
    iget-object v11, v0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->t:[D

    iget v12, v0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->n:I

    mul-int v13, v2, v12

    add-int/2addr v13, v10

    aget-wide v13, v11, v13

    mul-int/2addr v12, v3

    add-int/2addr v12, v10

    aget-wide v11, p1, v12

    mul-double/2addr v13, v11

    sub-double/2addr v8, v13

    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    .line 148
    :cond_1
    iget v10, v0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->n:I

    mul-int/2addr v10, v3

    add-int/2addr v10, v2

    div-double/2addr v8, v6

    aput-wide v8, p1, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, -0x1

    :goto_4
    if-ltz v3, :cond_7

    .line 154
    iget-object v2, v0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->t:[D

    iget v6, v0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->n:I

    mul-int/2addr v6, v3

    add-int/2addr v6, v3

    aget-wide v6, v2, v6

    move v2, v1

    :goto_5
    if-gt v2, v3, :cond_6

    if-ge v3, v2, :cond_4

    move-wide v8, v4

    goto :goto_6

    .line 157
    :cond_4
    iget v8, v0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->n:I

    mul-int/2addr v8, v2

    add-int/2addr v8, v3

    aget-wide v8, p1, v8

    :goto_6
    add-int/lit8 v10, v3, 0x1

    .line 158
    :goto_7
    iget v11, v0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->n:I

    if-ge v10, v11, :cond_5

    .line 159
    iget-object v12, v0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->t:[D

    mul-int v13, v10, v11

    add-int/2addr v13, v3

    aget-wide v12, v12, v13

    mul-int/2addr v11, v2

    add-int/2addr v11, v10

    aget-wide v14, p1, v11

    mul-double/2addr v12, v14

    sub-double/2addr v8, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_5
    mul-int v10, v3, v11

    add-int/2addr v10, v2

    mul-int/2addr v11, v2

    add-int/2addr v11, v3

    div-double/2addr v8, v6

    .line 161
    aput-wide v8, p1, v11

    aput-wide v8, p1, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_7
    return-void
.end method

.method public solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 2

    .line 82
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->n:I

    if-ne v0, v1, :cond_2

    .line 85
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    if-eqz v0, :cond_1

    .line 87
    iget v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->n:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 89
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->isLower()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->vv:[D

    invoke-static {v0, p1, p2, v1}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->solveLower(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;[D)V

    return-void

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Implement"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const/4 p2, 0x0

    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/guides/DR/isVGwxqXMxDjgS;->YkKbFvNme:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected matrix size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 31
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method
