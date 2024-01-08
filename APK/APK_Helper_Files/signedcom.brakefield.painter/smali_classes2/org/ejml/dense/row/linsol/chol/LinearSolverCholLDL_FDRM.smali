.class public Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_FDRM;
.source "LinearSolverCholLDL_FDRM.java"


# instance fields
.field private d:[F

.field private final decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;

.field private el:[F

.field private n:I

.field private vv:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_FDRM;-><init>()V

    .line 47
    new-instance v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;

    return-void
.end method

.method public constructor <init>(Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_FDRM;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;

    return-void
.end method

.method private solveInternal()V
    .locals 4

    .line 108
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->el:[F

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->vv:[F

    iget v2, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->n:I

    invoke-static {v0, v1, v2}, Lorg/ejml/dense/row/decomposition/TriangularSolver_FDRM;->solveL([F[FI)V

    const/4 v0, 0x0

    .line 111
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->n:I

    if-ge v0, v1, :cond_0

    .line 112
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->vv:[F

    aget v2, v1, v0

    iget-object v3, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->d:[F

    aget v3, v3, v0

    div-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->el:[F

    iget-object v2, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->vv:[F

    invoke-static {v0, v2, v1}, Lorg/ejml/dense/row/decomposition/TriangularSolver_FDRM;->solveTranL([F[FI)V

    return-void
.end method


# virtual methods
.method public getDecomposition()Lorg/ejml/interfaces/decomposition/CholeskyLDLDecomposition_F32;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/CholeskyLDLDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;

    return-object v0
.end method

.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->getDecomposition()Lorg/ejml/interfaces/decomposition/CholeskyLDLDecomposition_F32;

    move-result-object v0

    return-object v0
.end method

.method public invert(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 10

    .line 126
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->n:I

    if-ne v0, v1, :cond_a

    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->n:I

    if-ne v0, v1, :cond_a

    .line 130
    iget-object p1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v0, 0x0

    move v1, v0

    .line 133
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->n:I

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v1, v2, :cond_3

    move v2, v0

    :goto_1
    if-gt v2, v1, :cond_2

    if-ne v1, v2, :cond_0

    move v5, v4

    goto :goto_2

    :cond_0
    move v5, v3

    :goto_2
    add-int/lit8 v6, v1, -0x1

    :goto_3
    if-lt v6, v2, :cond_1

    .line 137
    iget-object v7, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->el:[F

    iget v8, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->n:I

    mul-int v9, v1, v8

    add-int/2addr v9, v6

    aget v7, v7, v9

    mul-int/2addr v8, v2

    add-int/2addr v8, v6

    aget v8, p1, v8

    mul-float/2addr v7, v8

    sub-float/2addr v5, v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 139
    :cond_1
    iget v6, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->n:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v1

    aput v5, p1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v0

    .line 144
    :goto_4
    iget v2, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->n:I

    if-ge v1, v2, :cond_5

    .line 145
    iget-object v2, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->d:[F

    aget v2, v2, v1

    div-float v2, v4, v2

    move v5, v0

    :goto_5
    if-gt v5, v1, :cond_4

    .line 147
    iget v6, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->n:I

    mul-int/2addr v6, v5

    add-int/2addr v6, v1

    aget v7, p1, v6

    mul-float/2addr v7, v2

    aput v7, p1, v6

    add-int/lit8 v5, v5, 0x1

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

    move v4, v3

    goto :goto_8

    .line 154
    :cond_6
    iget v4, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->n:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v2

    aget v4, p1, v4

    :goto_8
    add-int/lit8 v5, v2, 0x1

    .line 155
    :goto_9
    iget v6, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->n:I

    if-ge v5, v6, :cond_7

    .line 156
    iget-object v7, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->el:[F

    mul-int v8, v5, v6

    add-int/2addr v8, v2

    aget v7, v7, v8

    mul-int/2addr v6, v1

    add-int/2addr v6, v5

    aget v6, p1, v6

    mul-float/2addr v7, v6

    sub-float/2addr v4, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_7
    mul-int v5, v2, v6

    add-int/2addr v5, v1

    mul-int/2addr v6, v1

    add-int/2addr v6, v2

    .line 158
    aput v4, p1, v6

    aput v4, p1, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_9
    return-void

    .line 127
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected matrix dimension"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 32
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->invert(Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public modifiesA()Z
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->inputModified()Z

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

    .line 67
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->getL()Lorg/ejml/data/FMatrixRMaj;

    move-result-object v0

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_FDRM;->diagProd(Lorg/ejml/data/FMatrix1Row;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 1

    .line 52
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->_setA(Lorg/ejml/data/FMatrixRMaj;)V

    .line 54
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget p1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iput p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->n:I

    .line 56
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->_getVV()[F

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->vv:[F

    .line 57
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->getL()Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    iget-object p1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->el:[F

    .line 58
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->decomposer:Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionLDL_FDRM;->getDiagonal()[F

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->d:[F

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 32
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->setA(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 6

    .line 87
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-eq v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->n:I

    if-eq v0, v1, :cond_1

    iget v0, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->n:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected matrix size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_1
    :goto_0
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    .line 93
    iget-object p1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    .line 94
    iget-object p2, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_4

    move v3, v1

    .line 97
    :goto_2
    iget v4, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->n:I

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->vv:[F

    mul-int v5, v3, v0

    add-int/2addr v5, v2

    aget v5, p1, v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 98
    :cond_2
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->solveInternal()V

    move v3, v1

    .line 99
    :goto_3
    iget v4, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->n:I

    if-ge v3, v4, :cond_3

    mul-int v4, v3, v0

    add-int/2addr v4, v2

    iget-object v5, p0, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->vv:[F

    aget v5, v5, v3

    aput v5, p2, v4

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

    .line 32
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/chol/LinearSolverCholLDL_FDRM;->solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method
