.class public Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;
.super Ljava/lang/Object;
.source "CholeskyOuterForm_FDRB.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F32;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F32<",
        "Lorg/ejml/data/FMatrixRBlock;",
        ">;"
    }
.end annotation


# instance fields
.field private T:Lorg/ejml/data/FMatrixRBlock;

.field private final det:Lorg/ejml/data/Complex_F32;

.field private final lower:Z

.field private final subA:Lorg/ejml/data/FSubmatrixD1;

.field private final subB:Lorg/ejml/data/FSubmatrixD1;

.field private final subC:Lorg/ejml/data/FSubmatrixD1;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lorg/ejml/data/FSubmatrixD1;

    invoke-direct {v0}, Lorg/ejml/data/FSubmatrixD1;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subA:Lorg/ejml/data/FSubmatrixD1;

    .line 60
    new-instance v0, Lorg/ejml/data/FSubmatrixD1;

    invoke-direct {v0}, Lorg/ejml/data/FSubmatrixD1;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subB:Lorg/ejml/data/FSubmatrixD1;

    .line 61
    new-instance v0, Lorg/ejml/data/FSubmatrixD1;

    invoke-direct {v0}, Lorg/ejml/data/FSubmatrixD1;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subC:Lorg/ejml/data/FSubmatrixD1;

    .line 64
    new-instance v0, Lorg/ejml/data/Complex_F32;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F32;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->det:Lorg/ejml/data/Complex_F32;

    .line 72
    iput-boolean p1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->lower:Z

    return-void
.end method

.method private decomposeLower()Z
    .locals 9

    .line 95
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    .line 97
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subA:Lorg/ejml/data/FSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    invoke-virtual {v1, v2}, Lorg/ejml/data/FSubmatrixD1;->set(Lorg/ejml/data/Matrix;)V

    .line 98
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subB:Lorg/ejml/data/FSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    invoke-virtual {v1, v2}, Lorg/ejml/data/FSubmatrixD1;->set(Lorg/ejml/data/Matrix;)V

    .line 99
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subC:Lorg/ejml/data/FSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    invoke-virtual {v1, v2}, Lorg/ejml/data/FSubmatrixD1;->set(Lorg/ejml/data/Matrix;)V

    const/4 v7, 0x0

    move v8, v7

    .line 101
    :goto_0
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ge v8, v1, :cond_2

    .line 102
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    sub-int/2addr v1, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 105
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subA:Lorg/ejml/data/FSubmatrixD1;

    iput v8, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subA:Lorg/ejml/data/FSubmatrixD1;

    add-int v3, v8, v1

    iput v3, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    .line 106
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subA:Lorg/ejml/data/FSubmatrixD1;

    iget v4, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    iput v4, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subA:Lorg/ejml/data/FSubmatrixD1;

    iget v4, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iput v4, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 108
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subB:Lorg/ejml/data/FSubmatrixD1;

    iput v8, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subB:Lorg/ejml/data/FSubmatrixD1;

    iput v3, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    .line 109
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subB:Lorg/ejml/data/FSubmatrixD1;

    iput v3, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subB:Lorg/ejml/data/FSubmatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    iget v4, v4, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iput v4, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 111
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subC:Lorg/ejml/data/FSubmatrixD1;

    iput v3, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subC:Lorg/ejml/data/FSubmatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    iget v4, v4, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iput v4, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    .line 112
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subC:Lorg/ejml/data/FSubmatrixD1;

    iput v3, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subC:Lorg/ejml/data/FSubmatrixD1;

    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    iget v3, v3, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iput v3, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 116
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subA:Lorg/ejml/data/FSubmatrixD1;

    invoke-static {v2}, Lorg/ejml/dense/block/decomposition/chol/InnerCholesky_FDRB;->lower(Lorg/ejml/data/FSubmatrixD1;)Z

    move-result v2

    if-nez v2, :cond_0

    return v7

    :cond_0
    if-ne v1, v0, :cond_1

    const/4 v2, 0x0

    .line 122
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subA:Lorg/ejml/data/FSubmatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subB:Lorg/ejml/data/FSubmatrixD1;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v1, v0

    invoke-static/range {v1 .. v6}, Lorg/ejml/dense/block/TriangularSolver_FDRB;->solveBlock(IZLorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;ZZ)V

    .line 125
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subC:Lorg/ejml/data/FSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subB:Lorg/ejml/data/FSubmatrixD1;

    invoke-static {v0, v1, v2}, Lorg/ejml/dense/block/InnerRankUpdate_FDRB;->symmRankNMinus_L(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V

    :cond_1
    add-int/2addr v8, v0

    goto :goto_0

    .line 129
    :cond_2
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lorg/ejml/dense/block/MatrixOps_FDRB;->zeroTriangle(ZLorg/ejml/data/FMatrixRBlock;)V

    return v1
.end method

.method private decomposeUpper()Z
    .locals 9

    .line 135
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    .line 137
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subA:Lorg/ejml/data/FSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    invoke-virtual {v1, v2}, Lorg/ejml/data/FSubmatrixD1;->set(Lorg/ejml/data/Matrix;)V

    .line 138
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subB:Lorg/ejml/data/FSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    invoke-virtual {v1, v2}, Lorg/ejml/data/FSubmatrixD1;->set(Lorg/ejml/data/Matrix;)V

    .line 139
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subC:Lorg/ejml/data/FSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    invoke-virtual {v1, v2}, Lorg/ejml/data/FSubmatrixD1;->set(Lorg/ejml/data/Matrix;)V

    const/4 v7, 0x0

    move v8, v7

    .line 141
    :goto_0
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ge v8, v1, :cond_2

    .line 142
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    sub-int/2addr v1, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 145
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subA:Lorg/ejml/data/FSubmatrixD1;

    iput v8, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subA:Lorg/ejml/data/FSubmatrixD1;

    add-int v3, v8, v1

    iput v3, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    .line 146
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subA:Lorg/ejml/data/FSubmatrixD1;

    iget v4, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    iput v4, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subA:Lorg/ejml/data/FSubmatrixD1;

    iget v4, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iput v4, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 148
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subB:Lorg/ejml/data/FSubmatrixD1;

    iput v3, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subB:Lorg/ejml/data/FSubmatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    iget v4, v4, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iput v4, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    .line 149
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subB:Lorg/ejml/data/FSubmatrixD1;

    iput v8, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subB:Lorg/ejml/data/FSubmatrixD1;

    iput v3, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 151
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subC:Lorg/ejml/data/FSubmatrixD1;

    iput v3, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subC:Lorg/ejml/data/FSubmatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    iget v4, v4, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iput v4, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    .line 152
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subC:Lorg/ejml/data/FSubmatrixD1;

    iput v3, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subC:Lorg/ejml/data/FSubmatrixD1;

    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    iget v3, v3, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iput v3, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 156
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subA:Lorg/ejml/data/FSubmatrixD1;

    invoke-static {v2}, Lorg/ejml/dense/block/decomposition/chol/InnerCholesky_FDRB;->upper(Lorg/ejml/data/FSubmatrixD1;)Z

    move-result v2

    if-nez v2, :cond_0

    return v7

    :cond_0
    if-ne v1, v0, :cond_1

    const/4 v2, 0x1

    .line 162
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subA:Lorg/ejml/data/FSubmatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subB:Lorg/ejml/data/FSubmatrixD1;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v1, v0

    invoke-static/range {v1 .. v6}, Lorg/ejml/dense/block/TriangularSolver_FDRB;->solveBlock(IZLorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;ZZ)V

    .line 165
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subC:Lorg/ejml/data/FSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->subB:Lorg/ejml/data/FSubmatrixD1;

    invoke-static {v0, v1, v2}, Lorg/ejml/dense/block/InnerRankUpdate_FDRB;->symmRankNMinus_U(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V

    :cond_1
    add-int/2addr v8, v0

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    invoke-static {v7, v0}, Lorg/ejml/dense/block/MatrixOps_FDRB;->zeroTriangle(ZLorg/ejml/data/FMatrixRBlock;)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public computeDeterminant()Lorg/ejml/data/Complex_F32;
    .locals 8

    .line 192
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    move v3, v2

    .line 193
    :goto_0
    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    iget v4, v4, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ge v3, v4, :cond_1

    .line 195
    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    iget v4, v4, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    sub-int/2addr v4, v3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 198
    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    iget v5, v5, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    mul-int/2addr v5, v3

    mul-int v6, v3, v4

    add-int/2addr v5, v6

    move v6, v2

    :goto_1
    if-ge v6, v4, :cond_0

    .line 202
    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    iget-object v7, v7, Lorg/ejml/data/FMatrixRBlock;->data:[F

    aget v7, v7, v5

    mul-float/2addr v1, v7

    add-int/lit8 v7, v4, 0x1

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v3, v0

    goto :goto_0

    .line 207
    :cond_1
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->det:Lorg/ejml/data/Complex_F32;

    mul-float/2addr v1, v1

    iput v1, v0, Lorg/ejml/data/Complex_F32;->real:F

    .line 208
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->det:Lorg/ejml/data/Complex_F32;

    const/4 v1, 0x0

    iput v1, v0, Lorg/ejml/data/Complex_F32;->imaginary:F

    .line 210
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->det:Lorg/ejml/data/Complex_F32;

    return-object v0
.end method

.method public decompose(Lorg/ejml/data/FMatrixRBlock;)Z
    .locals 2

    .line 83
    iget v0, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ne v0, v1, :cond_1

    .line 86
    iput-object p1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    .line 88
    iget-boolean p1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->lower:Z

    if-eqz p1, :cond_0

    .line 89
    invoke-direct {p0}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->decomposeLower()Z

    move-result p1

    return p1

    .line 91
    :cond_0
    invoke-direct {p0}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->decomposeUpper()Z

    move-result p1

    return p1

    .line 84
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A must be square"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 49
    check-cast p1, Lorg/ejml/data/FMatrixRBlock;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->decompose(Lorg/ejml/data/FMatrixRBlock;)Z

    move-result p1

    return p1
.end method

.method public getT(Lorg/ejml/data/FMatrixRBlock;)Lorg/ejml/data/FMatrixRBlock;
    .locals 1

    if-nez p1, :cond_0

    .line 182
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    return-object p1

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->T:Lorg/ejml/data/FMatrixRBlock;

    invoke-virtual {p1, v0}, Lorg/ejml/data/FMatrixRBlock;->set(Lorg/ejml/data/FMatrixRBlock;)V

    return-object p1
.end method

.method public bridge synthetic getT(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 49
    check-cast p1, Lorg/ejml/data/FMatrixRBlock;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->getT(Lorg/ejml/data/FMatrixRBlock;)Lorg/ejml/data/FMatrixRBlock;

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

    .line 176
    iget-boolean v0, p0, Lorg/ejml/dense/block/decomposition/chol/CholeskyOuterForm_FDRB;->lower:Z

    return v0
.end method
