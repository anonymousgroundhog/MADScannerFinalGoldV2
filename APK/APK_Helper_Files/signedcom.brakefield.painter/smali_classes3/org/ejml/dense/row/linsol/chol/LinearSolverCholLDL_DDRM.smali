.class public Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_DDRM;
.source "LinearSolverCholLDL_DDRM.java"


# instance fields
.field private d:[D

.field private final decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;

.field private el:[D

.field private n:I

.field private vv:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_DDRM;-><init>()V

    .line 45
    new-instance v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;

    return-void
.end method

.method public constructor <init>(Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_DDRM;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;

    return-void
.end method

.method private solveInternal()V
    .locals 6

    .line 106
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->el:[D

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->vv:[D

    iget v2, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->n:I

    invoke-static {v0, v1, v2}, Lorg/ejml/dense/row/decomposition/TriangularSolver_DDRM;->solveL([D[DI)V

    const/4 v0, 0x0

    .line 109
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->n:I

    if-ge v0, v1, :cond_0

    .line 110
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->vv:[D

    aget-wide v2, v1, v0

    iget-object v4, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->d:[D

    aget-wide v4, v4, v0

    div-double/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->el:[D

    iget-object v2, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->vv:[D

    invoke-static {v0, v2, v1}, Lorg/ejml/dense/row/decomposition/TriangularSolver_DDRM;->solveTranL([D[DI)V

    return-void
.end method


# virtual methods
.method public getDecomposition()Lorg/ejml/interfaces/decomposition/CholeskyLDLDecomposition_F64;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/CholeskyLDLDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;

    return-object v0
.end method

.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->getDecomposition()Lorg/ejml/interfaces/decomposition/CholeskyLDLDecomposition_F64;

    move-result-object v0

    return-object v0
.end method

.method public invert(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 14

    .line 124
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->n:I

    if-ne v0, v1, :cond_a

    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->n:I

    if-ne v0, v1, :cond_a

    .line 128
    iget-object p1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v0, 0x0

    move v1, v0

    .line 131
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->n:I

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-ge v1, v2, :cond_3

    move v2, v0

    :goto_1
    if-gt v2, v1, :cond_2

    if-ne v1, v2, :cond_0

    move-wide v7, v5

    goto :goto_2

    :cond_0
    move-wide v7, v3

    :goto_2
    add-int/lit8 v9, v1, -0x1

    :goto_3
    if-lt v9, v2, :cond_1

    .line 135
    iget-object v10, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->el:[D

    iget v11, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->n:I

    mul-int v12, v1, v11

    add-int/2addr v12, v9

    aget-wide v12, v10, v12

    mul-int/2addr v11, v2

    add-int/2addr v11, v9

    aget-wide v10, p1, v11

    mul-double/2addr v12, v10

    sub-double/2addr v7, v12

    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 137
    :cond_1
    iget v9, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->n:I

    mul-int/2addr v9, v2

    add-int/2addr v9, v1

    aput-wide v7, p1, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v0

    .line 142
    :goto_4
    iget v2, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->n:I

    if-ge v1, v2, :cond_5

    .line 143
    iget-object v2, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->d:[D

    aget-wide v7, v2, v1

    div-double v7, v5, v7

    move v2, v0

    :goto_5
    if-gt v2, v1, :cond_4

    .line 145
    iget v9, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->n:I

    mul-int/2addr v9, v2

    add-int/2addr v9, v1

    aget-wide v10, p1, v9

    mul-double/2addr v10, v7

    aput-wide v10, p1, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, -0x1

    :goto_6
    if-ltz v2, :cond_9

    move v1, v0

    :goto_7
    if-gt v1, v2, :cond_8

    if-ge v2, v1, :cond_6

    move-wide v5, v3

    goto :goto_8

    .line 152
    :cond_6
    iget v5, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->n:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v2

    aget-wide v5, p1, v5

    :goto_8
    add-int/lit8 v7, v2, 0x1

    .line 153
    :goto_9
    iget v8, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->n:I

    if-ge v7, v8, :cond_7

    .line 154
    iget-object v9, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->el:[D

    mul-int v10, v7, v8

    add-int/2addr v10, v2

    aget-wide v9, v9, v10

    mul-int/2addr v8, v1

    add-int/2addr v8, v7

    aget-wide v11, p1, v8

    mul-double/2addr v9, v11

    sub-double/2addr v5, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_7
    mul-int v7, v2, v8

    add-int/2addr v7, v1

    mul-int/2addr v8, v1

    add-int/2addr v8, v2

    .line 156
    aput-wide v5, p1, v8

    aput-wide v5, p1, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_9
    return-void

    .line 125
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected matrix dimension"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 31
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->invert(Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public modifiesA()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->inputModified()Z

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

    .line 65
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->getL()Lorg/ejml/data/DMatrixRMaj;

    move-result-object v0

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_DDRM;->diagProd(Lorg/ejml/data/DMatrix1Row;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 1

    .line 50
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->_setA(Lorg/ejml/data/DMatrixRMaj;)V

    .line 52
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget p1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iput p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->n:I

    .line 54
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->_getVV()[D

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->vv:[D

    .line 55
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->getL()Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    iget-object p1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->el:[D

    .line 56
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_DDRM;->getDiagonal()[D

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->d:[D

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 31
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->setA(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 7

    .line 85
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-eq v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->n:I

    if-eq v0, v1, :cond_1

    iget v0, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->n:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected matrix size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_1
    :goto_0
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    .line 91
    iget-object p1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    .line 92
    iget-object p2, p2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_4

    move v3, v1

    .line 95
    :goto_2
    iget v4, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->n:I

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->vv:[D

    mul-int v5, v3, v0

    add-int/2addr v5, v2

    aget-wide v5, p1, v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 96
    :cond_2
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->solveInternal()V

    move v3, v1

    .line 97
    :goto_3
    iget v4, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->n:I

    if-ge v3, v4, :cond_3

    mul-int v4, v3, v0

    add-int/2addr v4, v2

    iget-object v5, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->vv:[D

    aget-wide v5, v5, v3

    aput-wide v5, p2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 31
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_DDRM;->solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method
