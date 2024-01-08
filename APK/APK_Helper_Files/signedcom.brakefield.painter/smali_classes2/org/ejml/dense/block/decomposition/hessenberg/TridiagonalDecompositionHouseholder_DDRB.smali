.class public Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;
.super Ljava/lang/Object;
.source "TridiagonalDecompositionHouseholder_DDRB.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64<",
        "Lorg/ejml/data/DMatrixRBlock;",
        ">;"
    }
.end annotation


# instance fields
.field protected A:Lorg/ejml/data/DMatrixRBlock;

.field protected V:Lorg/ejml/data/DMatrixRBlock;

.field protected gammas:[D

.field protected tmp:Lorg/ejml/data/DMatrixRBlock;

.field protected zerosM:Lorg/ejml/data/DMatrixRMaj;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lorg/ejml/data/DMatrixRBlock;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRBlock;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->V:Lorg/ejml/data/DMatrixRBlock;

    .line 65
    new-instance v0, Lorg/ejml/data/DMatrixRBlock;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRBlock;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->tmp:Lorg/ejml/data/DMatrixRBlock;

    new-array v0, v1, [D

    .line 66
    iput-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->gammas:[D

    .line 69
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->zerosM:Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method

.method private copyZeros(Lorg/ejml/data/DSubmatrixD1;)V
    .locals 7

    .line 171
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v2, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    move v3, v1

    :goto_1
    if-gt v3, v2, :cond_0

    .line 175
    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->zerosM:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p1, v2, v3}, Lorg/ejml/data/DSubmatrixD1;->get(II)D

    move-result-wide v5

    invoke-virtual {v4, v2, v3, v5, v6}, Lorg/ejml/data/DMatrixRMaj;->unsafe_set(IID)V

    const-wide/16 v4, 0x0

    .line 176
    invoke-virtual {p1, v2, v3, v4, v5}, Lorg/ejml/data/DSubmatrixD1;->set(IID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 179
    :cond_0
    iget v3, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/DMatrixD1;

    iget v4, v4, Lorg/ejml/data/DMatrixD1;->numCols:I

    if-ge v3, v4, :cond_1

    .line 180
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->zerosM:Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v2, v4}, Lorg/ejml/data/DSubmatrixD1;->get(II)D

    move-result-wide v5

    invoke-virtual {v3, v2, v4, v5, v6}, Lorg/ejml/data/DMatrixRMaj;->unsafe_set(IID)V

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 181
    invoke-virtual {p1, v2, v4, v5, v6}, Lorg/ejml/data/DSubmatrixD1;->set(IID)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private init(Lorg/ejml/data/DMatrixRBlock;)V
    .locals 4

    .line 286
    iput-object p1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    .line 288
    iget p1, p1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 289
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->V:Lorg/ejml/data/DMatrixRBlock;

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v2, v2, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/ejml/data/DMatrixRBlock;->reshape(IIIZ)V

    .line 290
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->tmp:Lorg/ejml/data/DMatrixRBlock;

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v2, v2, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/ejml/data/DMatrixRBlock;->reshape(IIIZ)V

    .line 292
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->gammas:[D

    array-length p1, p1

    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-ge p1, v0, :cond_0

    .line 293
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget p1, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->gammas:[D

    .line 295
    :cond_0
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->zerosM:Lorg/ejml/data/DMatrixRMaj;

    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    return-void
.end method

.method public static multPlusTransA(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V
    .locals 19

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 264
    iget v4, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 267
    iget v5, v3, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v5, v0

    move v14, v5

    :goto_0
    iget v5, v3, Lorg/ejml/data/DSubmatrixD1;->row1:I

    if-ge v14, v5, :cond_1

    .line 268
    iget v5, v3, Lorg/ejml/data/DSubmatrixD1;->row1:I

    sub-int/2addr v5, v14

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 270
    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v6, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    iget v6, v3, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int v6, v14, v6

    iget v7, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v4

    add-int v16, v5, v6

    move v13, v14

    .line 272
    :goto_1
    iget v5, v3, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-ge v13, v5, :cond_0

    .line 273
    iget v5, v3, Lorg/ejml/data/DSubmatrixD1;->col1:I

    sub-int/2addr v5, v13

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 275
    iget-object v5, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget v5, v5, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v14

    mul-int v6, v13, v15

    add-int v10, v5, v6

    .line 276
    iget v5, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v6, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget v6, v6, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v5, v6

    iget v6, v3, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v6, v13, v6

    iget v7, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v4

    add-int v9, v5, v6

    .line 278
    iget-object v5, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/DMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v6, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v6, Lorg/ejml/data/DMatrixD1;

    iget-object v6, v6, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v7, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget-object v7, v7, Lorg/ejml/data/DMatrixD1;->data:[D

    move/from16 v8, v16

    move v11, v4

    move v12, v15

    move/from16 v18, v13

    move/from16 v13, v17

    invoke-static/range {v5 .. v13}, Lorg/ejml/dense/block/InnerMultiplication_DDRB;->blockMultPlusTransA([D[D[DIIIIII)V

    add-int v13, v18, v0

    goto :goto_1

    :cond_0
    add-int/2addr v14, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private replaceZeros(Lorg/ejml/data/DSubmatrixD1;)V
    .locals 6

    .line 187
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v2, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    move v3, v1

    :goto_1
    if-gt v3, v2, :cond_0

    .line 191
    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->zerosM:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v4, v2, v3}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v4

    invoke-virtual {p1, v2, v3, v4, v5}, Lorg/ejml/data/DSubmatrixD1;->set(IID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 194
    :cond_0
    iget v3, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/DMatrixD1;

    iget v4, v4, Lorg/ejml/data/DMatrixD1;->numCols:I

    if-ge v3, v4, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 195
    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->zerosM:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v4, v2, v3}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v4

    invoke-virtual {p1, v2, v3, v4, v5}, Lorg/ejml/data/DSubmatrixD1;->set(IID)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/DMatrixRBlock;)Z
    .locals 13

    .line 211
    iget v0, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ne v0, v1, :cond_2

    .line 214
    invoke-direct {p0, p1}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->init(Lorg/ejml/data/DMatrixRBlock;)V

    .line 216
    new-instance v0, Lorg/ejml/data/DSubmatrixD1;

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    invoke-direct {v0, v1}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;)V

    .line 217
    new-instance v1, Lorg/ejml/data/DSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->V:Lorg/ejml/data/DMatrixRBlock;

    invoke-direct {v1, v2}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;)V

    .line 218
    new-instance v2, Lorg/ejml/data/DSubmatrixD1;

    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    invoke-direct {v2, v3}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;)V

    .line 220
    iget v3, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_1

    .line 224
    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v7, v7, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget-object v8, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v8, v8, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    sub-int/2addr v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 226
    iput v5, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iput v5, v0, Lorg/ejml/data/DSubmatrixD1;->col0:I

    .line 227
    iput v5, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iput v5, v0, Lorg/ejml/data/DSubmatrixD1;->row0:I

    .line 229
    iget v8, v2, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v8, v7

    iput v8, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 231
    iput v5, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    .line 232
    iput v7, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 233
    iget-object v7, v1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/DMatrixD1;

    iget v8, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v9, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    invoke-virtual {v7, v8, v9, v4}, Lorg/ejml/data/DMatrixD1;->reshape(IIZ)V

    .line 236
    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v7, v7, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget-object v8, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->gammas:[D

    invoke-static {v7, v0, v8, v1}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalHelper_DDRB;->tridiagUpperRow(ILorg/ejml/data/DSubmatrixD1;[DLorg/ejml/data/DSubmatrixD1;)V

    .line 239
    iget v7, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v8, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-ge v7, v8, :cond_0

    .line 241
    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v7, v7, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    sub-int/2addr v7, v6

    iget-object v8, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v8, v8, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    invoke-virtual {v2, v7, v8}, Lorg/ejml/data/DSubmatrixD1;->get(II)D

    move-result-wide v7

    .line 242
    iget-object v9, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v9, v9, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    sub-int/2addr v9, v6

    iget-object v10, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v10, v10, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v9, v10, v11, v12}, Lorg/ejml/data/DSubmatrixD1;->set(IID)V

    .line 245
    iget-object v9, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v9, v9, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    invoke-static {v9, v2, v1, v0}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->multPlusTransA(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    .line 246
    iget-object v9, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v9, v9, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    invoke-static {v9, v1, v2, v0}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->multPlusTransA(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    .line 248
    iget-object v9, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v9, v9, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    sub-int/2addr v9, v6

    iget-object v6, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v6, v6, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    invoke-virtual {v2, v9, v6, v7, v8}, Lorg/ejml/data/DSubmatrixD1;->set(IID)V

    .line 222
    :cond_0
    iget-object v6, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v6, v6, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    add-int/2addr v5, v6

    goto :goto_0

    :cond_1
    return v6

    .line 212
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input matrix must be square."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 55
    check-cast p1, Lorg/ejml/data/DMatrixRBlock;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->decompose(Lorg/ejml/data/DMatrixRBlock;)Z

    move-result p1

    return p1
.end method

.method public getDiagonal([D[D)V
    .locals 4

    .line 202
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget-object v0, v0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    aput-wide v2, p1, v1

    const/4 v0, 0x1

    .line 203
    :goto_0
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ge v0, v1, :cond_0

    .line 204
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    invoke-virtual {v1, v0, v0}, Lorg/ejml/data/DMatrixRBlock;->get(II)D

    move-result-wide v1

    aput-wide v1, p1, v0

    add-int/lit8 v1, v0, -0x1

    .line 205
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    invoke-virtual {v2, v1, v0}, Lorg/ejml/data/DMatrixRBlock;->get(II)D

    move-result-wide v2

    aput-wide v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getQ(Lorg/ejml/data/DMatrixRBlock;Z)Lorg/ejml/data/DMatrixRBlock;
    .locals 11

    .line 95
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v2, v2, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->initializeQ(Lorg/ejml/data/DMatrixRBlock;IIIZ)Lorg/ejml/data/DMatrixRBlock;

    move-result-object p1

    .line 97
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 98
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->V:Lorg/ejml/data/DMatrixRBlock;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v2, v2, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    invoke-virtual {v1, v0, v2, v3}, Lorg/ejml/data/DMatrixRBlock;->reshape(IIZ)V

    .line 99
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->tmp:Lorg/ejml/data/DMatrixRBlock;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v2, v2, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    invoke-virtual {v1, v0, v2, v3}, Lorg/ejml/data/DMatrixRBlock;->reshape(IIZ)V

    .line 101
    new-instance v0, Lorg/ejml/data/DSubmatrixD1;

    invoke-direct {v0, p1}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;)V

    .line 102
    new-instance v1, Lorg/ejml/data/DSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    invoke-direct {v1, v2}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;)V

    .line 103
    new-instance v2, Lorg/ejml/data/DSubmatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->V:Lorg/ejml/data/DMatrixRBlock;

    invoke-direct {v2, v4}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;)V

    .line 104
    new-instance v4, Lorg/ejml/data/DSubmatrixD1;

    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->tmp:Lorg/ejml/data/DMatrixRBlock;

    invoke-direct {v4, v5}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;)V

    .line 106
    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v5, v5, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    .line 108
    iget-object v6, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v6, v6, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    rem-int v6, v5, v6

    sub-int v6, v5, v6

    if-ne v6, v5, :cond_0

    .line 110
    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v7, v7, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    sub-int/2addr v6, v7

    :cond_0
    if-gez v6, :cond_1

    move v6, v3

    :cond_1
    :goto_0
    if-ltz v6, :cond_5

    .line 116
    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v7, v7, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    sub-int v8, v5, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 118
    iput v6, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    .line 119
    iput v7, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 120
    iget-object v8, v2, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v8, Lorg/ejml/data/DMatrixD1;

    iget v9, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v10, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    invoke-virtual {v8, v9, v10, v3}, Lorg/ejml/data/DMatrixD1;->reshape(IIZ)V

    if-eqz p2, :cond_2

    .line 123
    iput v6, v4, Lorg/ejml/data/DSubmatrixD1;->row0:I

    .line 124
    iget-object v8, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v8, v8, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iput v8, v4, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 125
    iput v3, v4, Lorg/ejml/data/DSubmatrixD1;->col0:I

    .line 126
    iput v7, v4, Lorg/ejml/data/DSubmatrixD1;->col1:I

    goto :goto_1

    .line 128
    :cond_2
    iput v6, v4, Lorg/ejml/data/DSubmatrixD1;->col0:I

    .line 129
    iput v7, v4, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 131
    :goto_1
    iget-object v8, v4, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v8, Lorg/ejml/data/DMatrixD1;

    iget v9, v4, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v10, v4, Lorg/ejml/data/DSubmatrixD1;->col1:I

    invoke-virtual {v8, v9, v10, v3}, Lorg/ejml/data/DMatrixD1;->reshape(IIZ)V

    .line 133
    iput v6, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    .line 134
    iput v6, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    .line 135
    iget v8, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v8, v7

    iput v8, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 138
    invoke-direct {p0, v1}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->copyZeros(Lorg/ejml/data/DSubmatrixD1;)V

    .line 141
    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v7, v7, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget-object v8, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->gammas:[D

    invoke-static {v7, v1, v2, v8, v6}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalHelper_DDRB;->computeW_row(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;[DI)V

    .line 143
    iput v6, v0, Lorg/ejml/data/DSubmatrixD1;->col0:I

    .line 144
    iput v6, v0, Lorg/ejml/data/DSubmatrixD1;->row0:I

    if-eqz p2, :cond_3

    .line 155
    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v7, v7, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    invoke-static {v7, v0, v1, v4}, Lorg/ejml/dense/block/MatrixMult_DDRB;->multTransB(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    goto :goto_2

    .line 157
    :cond_3
    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v7, v7, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    invoke-static {v7, v1, v0, v4}, Lorg/ejml/dense/block/MatrixMult_DDRB;->mult(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    :goto_2
    if-eqz p2, :cond_4

    .line 160
    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v7, v7, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    invoke-static {v7, v4, v2, v0}, Lorg/ejml/dense/block/MatrixMult_DDRB;->multPlus(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    goto :goto_3

    .line 162
    :cond_4
    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v7, v7, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    invoke-static {v7, v2, v4, v0}, Lorg/ejml/dense/block/MatrixMult_DDRB;->multPlusTransA(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    .line 164
    :goto_3
    invoke-direct {p0, v1}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->replaceZeros(Lorg/ejml/data/DSubmatrixD1;)V

    .line 115
    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v7, v7, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    sub-int/2addr v6, v7

    goto :goto_0

    :cond_5
    return-object p1
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 55
    check-cast p1, Lorg/ejml/data/DMatrixRBlock;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->getQ(Lorg/ejml/data/DMatrixRBlock;Z)Lorg/ejml/data/DMatrixRBlock;

    move-result-object p1

    return-object p1
.end method

.method public getT(Lorg/ejml/data/DMatrixRBlock;)Lorg/ejml/data/DMatrixRBlock;
    .locals 7

    if-nez p1, :cond_0

    .line 74
    new-instance p1, Lorg/ejml/data/DMatrixRBlock;

    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v2, v2, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    invoke-direct {p1, v0, v1, v2}, Lorg/ejml/data/DMatrixRBlock;-><init>(III)V

    goto :goto_0

    .line 76
    :cond_0
    iget v0, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ne v0, v1, :cond_2

    iget v0, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-ne v0, v1, :cond_2

    const-wide/16 v0, 0x0

    .line 79
    invoke-static {p1, v0, v1}, Lorg/ejml/dense/row/CommonOps_DDRM;->fill(Lorg/ejml/data/DMatrixD1;D)V

    .line 82
    :goto_0
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget-object v0, v0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-virtual {p1, v1, v1, v2, v3}, Lorg/ejml/data/DMatrixRBlock;->set(IID)V

    const/4 v0, 0x1

    .line 83
    :goto_1
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ge v0, v1, :cond_1

    .line 84
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Lorg/ejml/data/DMatrixRBlock;->get(II)D

    move-result-wide v3

    .line 85
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DMatrixRBlock;

    invoke-virtual {v1, v0, v0}, Lorg/ejml/data/DMatrixRBlock;->get(II)D

    move-result-wide v5

    invoke-virtual {p1, v0, v0, v5, v6}, Lorg/ejml/data/DMatrixRBlock;->set(IID)V

    .line 86
    invoke-virtual {p1, v2, v0, v3, v4}, Lorg/ejml/data/DMatrixRBlock;->set(IID)V

    .line 87
    invoke-virtual {p1, v0, v2, v3, v4}, Lorg/ejml/data/DMatrixRBlock;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p1

    .line 77
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "T must have the same dimensions as the input matrix"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getT(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 55
    check-cast p1, Lorg/ejml/data/DMatrixRBlock;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->getT(Lorg/ejml/data/DMatrixRBlock;)Lorg/ejml/data/DMatrixRBlock;

    move-result-object p1

    return-object p1
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
