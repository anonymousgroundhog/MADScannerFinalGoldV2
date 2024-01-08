.class public Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_DDRB;
.super Ljava/lang/Object;
.source "CholeskyOuterSolver_DDRB.java"

# interfaces
.implements Lorg/ejml/interfaces/linsol/LinearSolverDense;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
        "Lorg/ejml/data/DMatrixRBlock;",
        ">;"
    }
.end annotation


# instance fields
.field private blockLength:I

.field private final decomposer:Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_DDRB;

.field private final workspace:Lpabeles/concurrency/GrowArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/DGrowArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$EUv0wajhkQEpjMTqSP4N1q46jtI()Lorg/ejml/data/DGrowArray;
    .locals 1

    new-instance v0, Lorg/ejml/data/DGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/DGrowArray;-><init>()V

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_DDRB;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_DDRB;-><init>(Z)V

    iput-object v0, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_DDRB;->decomposer:Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_DDRB;

    .line 70
    new-instance v0, Lpabeles/concurrency/GrowArray;

    new-instance v1, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_DDRB$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_DDRB$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V

    iput-object v0, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_DDRB;->workspace:Lpabeles/concurrency/GrowArray;

    return-void
.end method


# virtual methods
.method public getDecomposition()Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F64;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRBlock;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_DDRB;->decomposer:Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_DDRB;

    return-object v0
.end method

.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_DDRB;->getDecomposition()Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F64;

    move-result-object v0

    return-object v0
.end method

.method public invert(Lorg/ejml/data/DMatrixRBlock;)V
    .locals 5

    .line 127
    iget-object v0, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_DDRB;->decomposer:Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_DDRB;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_DDRB;->getT(Lorg/ejml/data/DMatrixRBlock;)Lorg/ejml/data/DMatrixRBlock;

    move-result-object v0

    .line 128
    iget v1, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v2, v0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget v2, v0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 132
    invoke-static {v1, p1}, Lorg/ejml/dense/block/MatrixOps_DDRB;->zeroTriangle(ZLorg/ejml/data/DMatrixRBlock;)V

    .line 134
    new-instance v2, Lorg/ejml/data/DSubmatrixD1;

    invoke-direct {v2, v0}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;)V

    .line 135
    new-instance v0, Lorg/ejml/data/DSubmatrixD1;

    invoke-direct {v0, p1}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;)V

    .line 140
    iget p1, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_DDRB;->blockLength:I

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_DDRB;->workspace:Lpabeles/concurrency/GrowArray;

    invoke-static {p1, v3, v2, v0, v4}, Lorg/ejml/dense/block/TriangularSolver_DDRB;->invert(IZLorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lpabeles/concurrency/GrowArray;)V

    .line 145
    iget p1, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_DDRB;->blockLength:I

    invoke-static {p1, v2, v0, v1}, Lorg/ejml/dense/block/TriangularSolver_DDRB;->solveL(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Z)V

    return-void

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected number or rows and/or columns"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 60
    check-cast p1, Lorg/ejml/data/DMatrixRBlock;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_DDRB;->invert(Lorg/ejml/data/DMatrixRBlock;)V

    return-void
.end method

.method public modifiesA()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_DDRB;->decomposer:Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_DDRB;

    invoke-virtual {v0}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_DDRB;->inputModified()Z

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

    .line 91
    iget-object v0, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_DDRB;->decomposer:Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_DDRB;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_DDRB;->getT(Lorg/ejml/data/DMatrixRBlock;)Lorg/ejml/data/DMatrixRBlock;

    move-result-object v0

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_DDRM;->qualityTriangular(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/DMatrixRBlock;)Z
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_DDRB;->decomposer:Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_DDRB;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_DDRB;->decompose(Lorg/ejml/data/DMatrixRBlock;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 84
    :cond_0
    iget p1, p1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iput p1, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_DDRB;->blockLength:I

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 60
    check-cast p1, Lorg/ejml/data/DMatrixRBlock;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_DDRB;->setA(Lorg/ejml/data/DMatrixRBlock;)Z

    move-result p1

    return p1
.end method

.method public solve(Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRBlock;)V
    .locals 5

    .line 100
    iget v0, p1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget v1, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_DDRB;->blockLength:I

    if-ne v0, v1, :cond_2

    .line 103
    new-instance v0, Lorg/ejml/data/DSubmatrixD1;

    iget-object v1, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_DDRB;->decomposer:Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_DDRB;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_DDRB;->getT(Lorg/ejml/data/DMatrixRBlock;)Lorg/ejml/data/DMatrixRBlock;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;)V

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 106
    iget p2, v0, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v2, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    invoke-virtual {p1, p2, v2}, Lorg/ejml/data/DMatrixRBlock;->create(II)Lorg/ejml/data/Matrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/DMatrixRBlock;

    goto :goto_0

    .line 108
    :cond_0
    iget v2, v0, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v3, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget v4, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_DDRB;->blockLength:I

    invoke-virtual {p2, v2, v3, v4, v1}, Lorg/ejml/data/DMatrixRBlock;->reshape(IIIZ)V

    .line 114
    :goto_0
    iget v2, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_DDRB;->blockLength:I

    new-instance v3, Lorg/ejml/data/DSubmatrixD1;

    invoke-direct {v3, p1}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;)V

    invoke-static {v2, v1, v0, v3, v1}, Lorg/ejml/dense/block/TriangularSolver_DDRB;->solve(IZLorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Z)V

    .line 117
    iget v2, p0, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_DDRB;->blockLength:I

    new-instance v3, Lorg/ejml/data/DSubmatrixD1;

    invoke-direct {v3, p1}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;)V

    const/4 v4, 0x1

    invoke-static {v2, v1, v0, v3, v4}, Lorg/ejml/dense/block/TriangularSolver_DDRB;->solve(IZLorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Z)V

    if-eqz p2, :cond_1

    .line 121
    invoke-static {p1, p2}, Lorg/ejml/dense/block/MatrixOps_DDRB;->extractAligned(Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRBlock;)V

    :cond_1
    return-void

    .line 101
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected blocklength in B."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 60
    check-cast p1, Lorg/ejml/data/DMatrixRBlock;

    check-cast p2, Lorg/ejml/data/DMatrixRBlock;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/block/linsol/chol/CholeskyOuterSolver_DDRB;->solve(Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRBlock;)V

    return-void
.end method
