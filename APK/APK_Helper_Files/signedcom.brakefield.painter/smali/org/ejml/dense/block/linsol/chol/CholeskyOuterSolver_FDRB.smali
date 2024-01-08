.class public Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_FDRB;
.super Ljava/lang/Object;
.source "CholeskyOuterSolver_FDRB.java"

# interfaces
.implements Lorg/ejml/interfaces/linsol/LinearSolverDense;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
        "Lorg/ejml/data/FMatrixRBlock;",
        ">;"
    }
.end annotation


# instance fields
.field private blockLength:I

.field private final decomposer:Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;

.field private final workspace:Lpabeles/concurrency/GrowArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/FGrowArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$pq654f7UQ7aW8eY1DSwJEDd0k2c()Lorg/ejml/data/FGrowArray;
    .locals 1

    new-instance v0, Lorg/ejml/data/FGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/FGrowArray;-><init>()V

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;-><init>(Z)V

    iput-object v0, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_FDRB;->decomposer:Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;

    .line 72
    new-instance v0, Lpabeles/concurrency/GrowArray;

    new-instance v1, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_FDRB$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_FDRB$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V

    iput-object v0, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_FDRB;->workspace:Lpabeles/concurrency/GrowArray;

    return-void
.end method


# virtual methods
.method public getDecomposition()Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F32;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRBlock;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_FDRB;->decomposer:Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;

    return-object v0
.end method

.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_FDRB;->getDecomposition()Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F32;

    move-result-object v0

    return-object v0
.end method

.method public invert(Lorg/ejml/data/FMatrixRBlock;)V
    .locals 5

    .line 129
    iget-object v0, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_FDRB;->decomposer:Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->getT(Lorg/ejml/data/FMatrixRBlock;)Lorg/ejml/data/FMatrixRBlock;

    move-result-object v0

    .line 130
    iget v1, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v2, v0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v2, v0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 134
    invoke-static {v1, p1}, Lorg/ejml/dense/block/MatrixOps_FDRB;->zeroTriangle(ZLorg/ejml/data/FMatrixRBlock;)V

    .line 136
    new-instance v2, Lorg/ejml/data/FSubmatrixD1;

    invoke-direct {v2, v0}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;)V

    .line 137
    new-instance v0, Lorg/ejml/data/FSubmatrixD1;

    invoke-direct {v0, p1}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;)V

    .line 142
    iget p1, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_FDRB;->blockLength:I

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_FDRB;->workspace:Lpabeles/concurrency/GrowArray;

    invoke-static {p1, v3, v2, v0, v4}, Lorg/ejml/dense/block/TriangularSolver_FDRB;->invert(IZLorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lpabeles/concurrency/GrowArray;)V

    .line 147
    iget p1, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_FDRB;->blockLength:I

    invoke-static {p1, v2, v0, v1}, Lorg/ejml/dense/block/TriangularSolver_FDRB;->solveL(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Z)V

    return-void

    .line 131
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected number or rows and/or columns"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 61
    check-cast p1, Lorg/ejml/data/FMatrixRBlock;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_FDRB;->invert(Lorg/ejml/data/FMatrixRBlock;)V

    return-void
.end method

.method public modifiesA()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_FDRB;->decomposer:Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;

    invoke-virtual {v0}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->inputModified()Z

    move-result v0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public quality()D
    .locals 2

    .line 93
    iget-object v0, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_FDRB;->decomposer:Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->getT(Lorg/ejml/data/FMatrixRBlock;)Lorg/ejml/data/FMatrixRBlock;

    move-result-object v0

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_FDRM;->qualityTriangular(Lorg/ejml/data/FMatrixD1;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/FMatrixRBlock;)Z
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_FDRB;->decomposer:Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->decompose(Lorg/ejml/data/FMatrixRBlock;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 86
    :cond_0
    iget p1, p1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iput p1, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_FDRB;->blockLength:I

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 61
    check-cast p1, Lorg/ejml/data/FMatrixRBlock;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_FDRB;->setA(Lorg/ejml/data/FMatrixRBlock;)Z

    move-result p1

    return p1
.end method

.method public solve(Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRBlock;)V
    .locals 5

    .line 102
    iget v0, p1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v1, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_FDRB;->blockLength:I

    if-ne v0, v1, :cond_2

    .line 105
    new-instance v0, Lorg/ejml/data/FSubmatrixD1;

    iget-object v1, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_FDRB;->decomposer:Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->getT(Lorg/ejml/data/FMatrixRBlock;)Lorg/ejml/data/FMatrixRBlock;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;)V

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 108
    iget p2, v0, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v2, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    invoke-virtual {p1, p2, v2}, Lorg/ejml/data/FMatrixRBlock;->create(II)Lorg/ejml/data/Matrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrixRBlock;

    goto :goto_0

    .line 110
    :cond_0
    iget v2, v0, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v3, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v4, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_FDRB;->blockLength:I

    invoke-virtual {p2, v2, v3, v4, v1}, Lorg/ejml/data/FMatrixRBlock;->reshape(IIIZ)V

    .line 116
    :goto_0
    iget v2, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_FDRB;->blockLength:I

    new-instance v3, Lorg/ejml/data/FSubmatrixD1;

    invoke-direct {v3, p1}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;)V

    invoke-static {v2, v1, v0, v3, v1}, Lorg/ejml/dense/block/TriangularSolver_FDRB;->solve(IZLorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Z)V

    .line 119
    iget v2, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_FDRB;->blockLength:I

    new-instance v3, Lorg/ejml/data/FSubmatrixD1;

    invoke-direct {v3, p1}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;)V

    const/4 v4, 0x1

    invoke-static {v2, v1, v0, v3, v4}, Lorg/ejml/dense/block/TriangularSolver_FDRB;->solve(IZLorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Z)V

    if-eqz p2, :cond_1

    .line 123
    invoke-static {p1, p2}, Lorg/ejml/dense/block/MatrixOps_FDRB;->extractAligned(Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRBlock;)V

    :cond_1
    return-void

    .line 103
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected blocklength in B."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 61
    check-cast p1, Lorg/ejml/data/FMatrixRBlock;

    check-cast p2, Lorg/ejml/data/FMatrixRBlock;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_FDRB;->solve(Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRBlock;)V

    return-void
.end method
