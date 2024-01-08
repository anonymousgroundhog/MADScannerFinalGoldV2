.class public Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;
.super Ljava/lang/Object;
.source "CholeskyOuterForm_MT_DDRB.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F64;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F64<",
        "Lorg/ejml/data/DMatrixRBlock;",
        ">;"
    }
.end annotation


# instance fields
.field private T:Lorg/ejml/data/DMatrixRBlock;

.field private final det:Lorg/ejml/data/Complex_F64;

.field private final lower:Z

.field private final subA:Lorg/ejml/data/DSubmatrixD1;

.field private final subB:Lorg/ejml/data/DSubmatrixD1;

.field private final subC:Lorg/ejml/data/DSubmatrixD1;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lorg/ejml/data/DSubmatrixD1;

    invoke-direct {v0}, Lorg/ejml/data/DSubmatrixD1;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subA:Lorg/ejml/data/DSubmatrixD1;

    .line 57
    new-instance v0, Lorg/ejml/data/DSubmatrixD1;

    invoke-direct {v0}, Lorg/ejml/data/DSubmatrixD1;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subB:Lorg/ejml/data/DSubmatrixD1;

    .line 58
    new-instance v0, Lorg/ejml/data/DSubmatrixD1;

    invoke-direct {v0}, Lorg/ejml/data/DSubmatrixD1;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subC:Lorg/ejml/data/DSubmatrixD1;

    .line 61
    new-instance v0, Lorg/ejml/data/Complex_F64;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F64;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->det:Lorg/ejml/data/Complex_F64;

    .line 69
    iput-boolean p1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->lower:Z

    return-void
.end method

.method private decomposeLower()Z
    .locals 9

    .line 92
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    .line 94
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subA:Lorg/ejml/data/DSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    invoke-virtual {v1, v2}, Lorg/ejml/data/DSubmatrixD1;->set(Lorg/ejml/data/Matrix;)V

    .line 95
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subB:Lorg/ejml/data/DSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    invoke-virtual {v1, v2}, Lorg/ejml/data/DSubmatrixD1;->set(Lorg/ejml/data/Matrix;)V

    .line 96
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subC:Lorg/ejml/data/DSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    invoke-virtual {v1, v2}, Lorg/ejml/data/DSubmatrixD1;->set(Lorg/ejml/data/Matrix;)V

    const/4 v7, 0x0

    move v8, v7

    .line 98
    :goto_0
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-ge v8, v1, :cond_2

    .line 99
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    sub-int/2addr v1, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 102
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subA:Lorg/ejml/data/DSubmatrixD1;

    iput v8, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subA:Lorg/ejml/data/DSubmatrixD1;

    add-int v3, v8, v1

    iput v3, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    .line 103
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subA:Lorg/ejml/data/DSubmatrixD1;

    iget v4, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iput v4, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subA:Lorg/ejml/data/DSubmatrixD1;

    iget v4, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iput v4, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 105
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subB:Lorg/ejml/data/DSubmatrixD1;

    iput v8, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subB:Lorg/ejml/data/DSubmatrixD1;

    iput v3, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    .line 106
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subB:Lorg/ejml/data/DSubmatrixD1;

    iput v3, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subB:Lorg/ejml/data/DSubmatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    iget v4, v4, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iput v4, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 108
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subC:Lorg/ejml/data/DSubmatrixD1;

    iput v3, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subC:Lorg/ejml/data/DSubmatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    iget v4, v4, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iput v4, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    .line 109
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subC:Lorg/ejml/data/DSubmatrixD1;

    iput v3, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subC:Lorg/ejml/data/DSubmatrixD1;

    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    iget v3, v3, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iput v3, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 113
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subA:Lorg/ejml/data/DSubmatrixD1;

    invoke-static {v2}, Lorg/ejml/dense/block/decomposition/chol/InnerCholesky_DDRB;->lower(Lorg/ejml/data/DSubmatrixD1;)Z

    move-result v2

    if-nez v2, :cond_0

    return v7

    :cond_0
    if-ne v1, v0, :cond_1

    const/4 v2, 0x0

    .line 119
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subA:Lorg/ejml/data/DSubmatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subB:Lorg/ejml/data/DSubmatrixD1;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v1, v0

    invoke-static/range {v1 .. v6}, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB;->solveBlock(IZLorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;ZZ)V

    .line 122
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subC:Lorg/ejml/data/DSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subB:Lorg/ejml/data/DSubmatrixD1;

    invoke-static {v0, v1, v2}, Lorg/ejml/dense/block/InnerRankUpdate_MT_DDRB;->symmRankNMinus_L(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    :cond_1
    add-int/2addr v8, v0

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lorg/ejml/dense/block/MatrixOps_DDRB;->zeroTriangle(ZLorg/ejml/data/DMatrixRBlock;)V

    return v1
.end method

.method private decomposeUpper()Z
    .locals 9

    .line 132
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    .line 134
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subA:Lorg/ejml/data/DSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    invoke-virtual {v1, v2}, Lorg/ejml/data/DSubmatrixD1;->set(Lorg/ejml/data/Matrix;)V

    .line 135
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subB:Lorg/ejml/data/DSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    invoke-virtual {v1, v2}, Lorg/ejml/data/DSubmatrixD1;->set(Lorg/ejml/data/Matrix;)V

    .line 136
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subC:Lorg/ejml/data/DSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    invoke-virtual {v1, v2}, Lorg/ejml/data/DSubmatrixD1;->set(Lorg/ejml/data/Matrix;)V

    const/4 v7, 0x0

    move v8, v7

    .line 138
    :goto_0
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-ge v8, v1, :cond_2

    .line 139
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    sub-int/2addr v1, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 142
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subA:Lorg/ejml/data/DSubmatrixD1;

    iput v8, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subA:Lorg/ejml/data/DSubmatrixD1;

    add-int v3, v8, v1

    iput v3, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    .line 143
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subA:Lorg/ejml/data/DSubmatrixD1;

    iget v4, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iput v4, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subA:Lorg/ejml/data/DSubmatrixD1;

    iget v4, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iput v4, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 145
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subB:Lorg/ejml/data/DSubmatrixD1;

    iput v3, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subB:Lorg/ejml/data/DSubmatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    iget v4, v4, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iput v4, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    .line 146
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subB:Lorg/ejml/data/DSubmatrixD1;

    iput v8, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subB:Lorg/ejml/data/DSubmatrixD1;

    iput v3, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 148
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subC:Lorg/ejml/data/DSubmatrixD1;

    iput v3, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subC:Lorg/ejml/data/DSubmatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    iget v4, v4, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iput v4, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    .line 149
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subC:Lorg/ejml/data/DSubmatrixD1;

    iput v3, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subC:Lorg/ejml/data/DSubmatrixD1;

    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    iget v3, v3, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iput v3, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 153
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subA:Lorg/ejml/data/DSubmatrixD1;

    invoke-static {v2}, Lorg/ejml/dense/block/decomposition/chol/InnerCholesky_DDRB;->upper(Lorg/ejml/data/DSubmatrixD1;)Z

    move-result v2

    if-nez v2, :cond_0

    return v7

    :cond_0
    if-ne v1, v0, :cond_1

    const/4 v2, 0x1

    .line 159
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subA:Lorg/ejml/data/DSubmatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subB:Lorg/ejml/data/DSubmatrixD1;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v1, v0

    invoke-static/range {v1 .. v6}, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB;->solveBlock(IZLorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;ZZ)V

    .line 162
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subC:Lorg/ejml/data/DSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->subB:Lorg/ejml/data/DSubmatrixD1;

    invoke-static {v0, v1, v2}, Lorg/ejml/dense/block/InnerRankUpdate_MT_DDRB;->symmRankNMinus_U(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    :cond_1
    add-int/2addr v8, v0

    goto :goto_0

    .line 166
    :cond_2
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    invoke-static {v7, v0}, Lorg/ejml/dense/block/MatrixOps_DDRB;->zeroTriangle(ZLorg/ejml/data/DMatrixRBlock;)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public computeDeterminant()Lorg/ejml/data/Complex_F64;
    .locals 10

    .line 189
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    move v4, v3

    .line 190
    :goto_0
    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    iget v5, v5, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-ge v4, v5, :cond_1

    .line 192
    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    iget v5, v5, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 195
    iget-object v6, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    iget v6, v6, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    mul-int/2addr v6, v4

    mul-int v7, v4, v5

    add-int/2addr v6, v7

    move v7, v3

    :goto_1
    if-ge v7, v5, :cond_0

    .line 199
    iget-object v8, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    iget-object v8, v8, Lorg/ejml/data/DMatrixRBlock;->data:[D

    aget-wide v8, v8, v6

    mul-double/2addr v1, v8

    add-int/lit8 v8, v5, 0x1

    add-int/2addr v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v4, v0

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->det:Lorg/ejml/data/Complex_F64;

    mul-double/2addr v1, v1

    iput-wide v1, v0, Lorg/ejml/data/Complex_F64;->real:D

    .line 205
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->det:Lorg/ejml/data/Complex_F64;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lorg/ejml/data/Complex_F64;->imaginary:D

    .line 207
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->det:Lorg/ejml/data/Complex_F64;

    return-object v0
.end method

.method public decompose(Lorg/ejml/data/DMatrixRBlock;)Z
    .locals 2

    .line 80
    iget v0, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ne v0, v1, :cond_1

    .line 83
    iput-object p1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    .line 85
    iget-boolean p1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->lower:Z

    if-eqz p1, :cond_0

    .line 86
    invoke-direct {p0}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->decomposeLower()Z

    move-result p1

    return p1

    .line 88
    :cond_0
    invoke-direct {p0}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->decomposeUpper()Z

    move-result p1

    return p1

    .line 81
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A must be square"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 46
    check-cast p1, Lorg/ejml/data/DMatrixRBlock;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->decompose(Lorg/ejml/data/DMatrixRBlock;)Z

    move-result p1

    return p1
.end method

.method public getT(Lorg/ejml/data/DMatrixRBlock;)Lorg/ejml/data/DMatrixRBlock;
    .locals 1

    if-nez p1, :cond_0

    .line 179
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    return-object p1

    .line 180
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->T:Lorg/ejml/data/DMatrixRBlock;

    invoke-virtual {p1, v0}, Lorg/ejml/data/DMatrixRBlock;->set(Lorg/ejml/data/DMatrixRBlock;)V

    return-object p1
.end method

.method public bridge synthetic getT(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 46
    check-cast p1, Lorg/ejml/data/DMatrixRBlock;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->getT(Lorg/ejml/data/DMatrixRBlock;)Lorg/ejml/data/DMatrixRBlock;

    move-result-object p1

    return-object p1
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLower()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_MT_DDRB;->lower:Z

    return v0
.end method
