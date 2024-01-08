.class public Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;
.super Ljava/lang/Object;
.source "TridiagonalDecompositionHouseholder_MT_FDRB.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32<",
        "Lorg/ejml/data/FMatrixRBlock;",
        ">;"
    }
.end annotation


# instance fields
.field protected A:Lorg/ejml/data/FMatrixRBlock;

.field protected V:Lorg/ejml/data/FMatrixRBlock;

.field protected gammas:[F

.field protected tmp:Lorg/ejml/data/FMatrixRBlock;

.field protected zerosM:Lorg/ejml/data/FMatrixRMaj;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lorg/ejml/data/FMatrixRBlock;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRBlock;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->V:Lorg/ejml/data/FMatrixRBlock;

    .line 65
    new-instance v0, Lorg/ejml/data/FMatrixRBlock;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRBlock;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->tmp:Lorg/ejml/data/FMatrixRBlock;

    new-array v0, v1, [F

    .line 66
    iput-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->gammas:[F

    .line 69
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->zerosM:Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method

.method private copyZeros(Lorg/ejml/data/FSubmatrixD1;)V
    .locals 6

    .line 171
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

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
    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->zerosM:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p1, v2, v3}, Lorg/ejml/data/FSubmatrixD1;->get(II)F

    move-result v5

    invoke-virtual {v4, v2, v3, v5}, Lorg/ejml/data/FMatrixRMaj;->unsafe_set(IIF)V

    const/4 v4, 0x0

    .line 176
    invoke-virtual {p1, v2, v3, v4}, Lorg/ejml/data/FSubmatrixD1;->set(IIF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 179
    :cond_0
    iget v3, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/FMatrixD1;

    iget v4, v4, Lorg/ejml/data/FMatrixD1;->numCols:I

    if-ge v3, v4, :cond_1

    .line 180
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->zerosM:Lorg/ejml/data/FMatrixRMaj;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v2, v4}, Lorg/ejml/data/FSubmatrixD1;->get(II)F

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Lorg/ejml/data/FMatrixRMaj;->unsafe_set(IIF)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 181
    invoke-virtual {p1, v2, v4, v3}, Lorg/ejml/data/FSubmatrixD1;->set(IIF)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private init(Lorg/ejml/data/FMatrixRBlock;)V
    .locals 4

    .line 284
    iput-object p1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    .line 286
    iget p1, p1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 287
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->V:Lorg/ejml/data/FMatrixRBlock;

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v2, v2, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/ejml/data/FMatrixRBlock;->reshape(IIIZ)V

    .line 288
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->tmp:Lorg/ejml/data/FMatrixRBlock;

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v2, v2, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/ejml/data/FMatrixRBlock;->reshape(IIIZ)V

    .line 290
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->gammas:[F

    array-length p1, p1

    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ge p1, v0, :cond_0

    .line 291
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget p1, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->gammas:[F

    .line 293
    :cond_0
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->zerosM:Lorg/ejml/data/FMatrixRMaj;

    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    return-void
.end method

.method static synthetic lambda$multPlusTransA$0(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;ILorg/ejml/data/FSubmatrixD1;I)V
    .locals 16

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v12, p4

    .line 267
    iget v3, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    sub-int v3, v3, p5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 269
    iget v3, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v4, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/FMatrixD1;

    iget v4, v4, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v3, v4

    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int v4, p5, v4

    iget v5, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v4, v5

    mul-int v4, v4, p3

    add-int v14, v3, v4

    move/from16 v15, p5

    .line 271
    :goto_0
    iget v3, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-ge v15, v3, :cond_0

    .line 272
    iget v3, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    sub-int/2addr v3, v15

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 274
    iget-object v3, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/FMatrixD1;

    iget v3, v3, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int v3, v3, p5

    mul-int v4, v15, v13

    add-int v8, v3, v4

    .line 275
    iget v3, v12, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v4, v12, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/FMatrixD1;

    iget v4, v4, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v3, v4

    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v4, v15, v4

    iget v5, v12, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v4, v5

    mul-int v4, v4, p3

    add-int v7, v3, v4

    .line 277
    iget-object v3, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/FMatrixD1;

    iget-object v3, v3, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v4, v12, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/FMatrixD1;

    iget-object v4, v4, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v5, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v5, Lorg/ejml/data/FMatrixD1;

    iget-object v5, v5, Lorg/ejml/data/FMatrixD1;->data:[F

    move v6, v14

    move/from16 v9, p3

    move v10, v13

    invoke-static/range {v3 .. v11}, Lorg/ejml/dense/block/InnerMultiplication_FDRB;->blockMultPlusTransA([F[F[FIIIIII)V

    add-int/2addr v15, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static multPlusTransA(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V
    .locals 9

    .line 264
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 266
    iget v0, p3, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v0, p0

    iget v7, p3, Lorg/ejml/data/FSubmatrixD1;->row1:I

    new-instance v8, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB$$ExternalSyntheticLambda0;

    move-object v1, v8

    move v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB$$ExternalSyntheticLambda0;-><init>(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;ILorg/ejml/data/FSubmatrixD1;)V

    invoke-static {v0, v7, p0, v8}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IIILjava/util/function/IntConsumer;)V

    return-void
.end method

.method private replaceZeros(Lorg/ejml/data/FSubmatrixD1;)V
    .locals 5

    .line 187
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

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
    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->zerosM:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v4, v2, v3}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Lorg/ejml/data/FSubmatrixD1;->set(IIF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 194
    :cond_0
    iget v3, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v4, Lorg/ejml/data/FMatrixD1;

    iget v4, v4, Lorg/ejml/data/FMatrixD1;->numCols:I

    if-ge v3, v4, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 195
    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->zerosM:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v4, v2, v3}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Lorg/ejml/data/FSubmatrixD1;->set(IIF)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/FMatrixRBlock;)Z
    .locals 11

    .line 211
    iget v0, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ne v0, v1, :cond_2

    .line 214
    invoke-direct {p0, p1}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->init(Lorg/ejml/data/FMatrixRBlock;)V

    .line 216
    new-instance v0, Lorg/ejml/data/FSubmatrixD1;

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    invoke-direct {v0, v1}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;)V

    .line 217
    new-instance v1, Lorg/ejml/data/FSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->V:Lorg/ejml/data/FMatrixRBlock;

    invoke-direct {v1, v2}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;)V

    .line 218
    new-instance v2, Lorg/ejml/data/FSubmatrixD1;

    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    invoke-direct {v2, v3}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;)V

    .line 220
    iget v3, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_1

    .line 224
    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v7, v7, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget-object v8, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v8, v8, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    sub-int/2addr v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 226
    iput v5, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    iput v5, v0, Lorg/ejml/data/FSubmatrixD1;->col0:I

    .line 227
    iput v5, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iput v5, v0, Lorg/ejml/data/FSubmatrixD1;->row0:I

    .line 229
    iget v8, v2, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v8, v7

    iput v8, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 231
    iput v5, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    .line 232
    iput v7, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 233
    iget-object v7, v1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v7, Lorg/ejml/data/FMatrixD1;

    iget v8, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v9, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    invoke-virtual {v7, v8, v9, v4}, Lorg/ejml/data/FMatrixD1;->reshape(IIZ)V

    .line 236
    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v7, v7, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget-object v8, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->gammas:[F

    invoke-static {v7, v0, v8, v1}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalHelper_FDRB;->tridiagUpperRow(ILorg/ejml/data/FSubmatrixD1;[FLorg/ejml/data/FSubmatrixD1;)V

    .line 239
    iget v7, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v8, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ge v7, v8, :cond_0

    .line 241
    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v7, v7, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    sub-int/2addr v7, v6

    iget-object v8, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v8, v8, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    invoke-virtual {v2, v7, v8}, Lorg/ejml/data/FSubmatrixD1;->get(II)F

    move-result v7

    .line 242
    iget-object v8, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v8, v8, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    sub-int/2addr v8, v6

    iget-object v9, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v9, v9, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v2, v8, v9, v10}, Lorg/ejml/data/FSubmatrixD1;->set(IIF)V

    .line 245
    iget-object v8, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v8, v8, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    invoke-static {v8, v2, v1, v0}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->multPlusTransA(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V

    .line 246
    iget-object v8, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v8, v8, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    invoke-static {v8, v1, v2, v0}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->multPlusTransA(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V

    .line 248
    iget-object v8, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v8, v8, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    sub-int/2addr v8, v6

    iget-object v6, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v6, v6, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    invoke-virtual {v2, v8, v6, v7}, Lorg/ejml/data/FSubmatrixD1;->set(IIF)V

    .line 222
    :cond_0
    iget-object v6, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v6, v6, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

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

    .line 54
    check-cast p1, Lorg/ejml/data/FMatrixRBlock;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->decompose(Lorg/ejml/data/FMatrixRBlock;)Z

    move-result p1

    return p1
.end method

.method public getDiagonal([F[F)V
    .locals 3

    .line 202
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget-object v0, v0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    aput v0, p1, v1

    const/4 v0, 0x1

    .line 203
    :goto_0
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ge v0, v1, :cond_0

    .line 204
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    invoke-virtual {v1, v0, v0}, Lorg/ejml/data/FMatrixRBlock;->get(II)F

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v1, v0, -0x1

    .line 205
    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    invoke-virtual {v2, v1, v0}, Lorg/ejml/data/FMatrixRBlock;->get(II)F

    move-result v2

    aput v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getQ(Lorg/ejml/data/FMatrixRBlock;Z)Lorg/ejml/data/FMatrixRBlock;
    .locals 11

    .line 95
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v2, v2, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_FDRB;->initializeQ(Lorg/ejml/data/FMatrixRBlock;IIIZ)Lorg/ejml/data/FMatrixRBlock;

    move-result-object p1

    .line 97
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 98
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->V:Lorg/ejml/data/FMatrixRBlock;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v2, v2, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    invoke-virtual {v1, v0, v2, v3}, Lorg/ejml/data/FMatrixRBlock;->reshape(IIZ)V

    .line 99
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->tmp:Lorg/ejml/data/FMatrixRBlock;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v2, v2, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    invoke-virtual {v1, v0, v2, v3}, Lorg/ejml/data/FMatrixRBlock;->reshape(IIZ)V

    .line 101
    new-instance v0, Lorg/ejml/data/FSubmatrixD1;

    invoke-direct {v0, p1}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;)V

    .line 102
    new-instance v1, Lorg/ejml/data/FSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    invoke-direct {v1, v2}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;)V

    .line 103
    new-instance v2, Lorg/ejml/data/FSubmatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->V:Lorg/ejml/data/FMatrixRBlock;

    invoke-direct {v2, v4}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;)V

    .line 104
    new-instance v4, Lorg/ejml/data/FSubmatrixD1;

    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->tmp:Lorg/ejml/data/FMatrixRBlock;

    invoke-direct {v4, v5}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;)V

    .line 106
    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v5, v5, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    .line 108
    iget-object v6, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v6, v6, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    rem-int v6, v5, v6

    sub-int v6, v5, v6

    if-ne v6, v5, :cond_0

    .line 110
    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v7, v7, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    sub-int/2addr v6, v7

    :cond_0
    if-gez v6, :cond_1

    move v6, v3

    :cond_1
    :goto_0
    if-ltz v6, :cond_5

    .line 116
    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v7, v7, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    sub-int v8, v5, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 118
    iput v6, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    .line 119
    iput v7, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 120
    iget-object v8, v2, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v8, Lorg/ejml/data/FMatrixD1;

    iget v9, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v10, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    invoke-virtual {v8, v9, v10, v3}, Lorg/ejml/data/FMatrixD1;->reshape(IIZ)V

    if-eqz p2, :cond_2

    .line 123
    iput v6, v4, Lorg/ejml/data/FSubmatrixD1;->row0:I

    .line 124
    iget-object v8, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v8, v8, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iput v8, v4, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 125
    iput v3, v4, Lorg/ejml/data/FSubmatrixD1;->col0:I

    .line 126
    iput v7, v4, Lorg/ejml/data/FSubmatrixD1;->col1:I

    goto :goto_1

    .line 128
    :cond_2
    iput v6, v4, Lorg/ejml/data/FSubmatrixD1;->col0:I

    .line 129
    iput v7, v4, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 131
    :goto_1
    iget-object v8, v4, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v8, Lorg/ejml/data/FMatrixD1;

    iget v9, v4, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v10, v4, Lorg/ejml/data/FSubmatrixD1;->col1:I

    invoke-virtual {v8, v9, v10, v3}, Lorg/ejml/data/FMatrixD1;->reshape(IIZ)V

    .line 133
    iput v6, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    .line 134
    iput v6, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    .line 135
    iget v8, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v8, v7

    iput v8, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 138
    invoke-direct {p0, v1}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->copyZeros(Lorg/ejml/data/FSubmatrixD1;)V

    .line 141
    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v7, v7, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget-object v8, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->gammas:[F

    invoke-static {v7, v1, v2, v8, v6}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalHelper_FDRB;->computeW_row(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;[FI)V

    .line 143
    iput v6, v0, Lorg/ejml/data/FSubmatrixD1;->col0:I

    .line 144
    iput v6, v0, Lorg/ejml/data/FSubmatrixD1;->row0:I

    if-eqz p2, :cond_3

    .line 155
    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v7, v7, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    invoke-static {v7, v0, v1, v4}, Lorg/ejml/dense/block/MatrixMult_MT_FDRB;->multTransB(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V

    goto :goto_2

    .line 157
    :cond_3
    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v7, v7, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    invoke-static {v7, v1, v0, v4}, Lorg/ejml/dense/block/MatrixMult_MT_FDRB;->mult(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V

    :goto_2
    if-eqz p2, :cond_4

    .line 160
    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v7, v7, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    invoke-static {v7, v4, v2, v0}, Lorg/ejml/dense/block/MatrixMult_MT_FDRB;->multPlus(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V

    goto :goto_3

    .line 162
    :cond_4
    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v7, v7, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    invoke-static {v7, v2, v4, v0}, Lorg/ejml/dense/block/MatrixMult_MT_FDRB;->multPlusTransA(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V

    .line 164
    :goto_3
    invoke-direct {p0, v1}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->replaceZeros(Lorg/ejml/data/FSubmatrixD1;)V

    .line 115
    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v7, v7, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    sub-int/2addr v6, v7

    goto :goto_0

    :cond_5
    return-object p1
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 54
    check-cast p1, Lorg/ejml/data/FMatrixRBlock;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->getQ(Lorg/ejml/data/FMatrixRBlock;Z)Lorg/ejml/data/FMatrixRBlock;

    move-result-object p1

    return-object p1
.end method

.method public getT(Lorg/ejml/data/FMatrixRBlock;)Lorg/ejml/data/FMatrixRBlock;
    .locals 4

    if-nez p1, :cond_0

    .line 74
    new-instance p1, Lorg/ejml/data/FMatrixRBlock;

    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v2, v2, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    invoke-direct {p1, v0, v1, v2}, Lorg/ejml/data/FMatrixRBlock;-><init>(III)V

    goto :goto_0

    .line 76
    :cond_0
    iget v0, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ne v0, v1, :cond_2

    iget v0, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 79
    invoke-static {p1, v0}, Lorg/ejml/dense/row/CommonOps_FDRM;->fill(Lorg/ejml/data/FMatrixD1;F)V

    .line 82
    :goto_0
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget-object v0, v0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1, v1, v1, v0}, Lorg/ejml/data/FMatrixRBlock;->set(IIF)V

    const/4 v0, 0x1

    .line 83
    :goto_1
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ge v0, v1, :cond_1

    .line 84
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Lorg/ejml/data/FMatrixRBlock;->get(II)F

    move-result v1

    .line 85
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FMatrixRBlock;

    invoke-virtual {v3, v0, v0}, Lorg/ejml/data/FMatrixRBlock;->get(II)F

    move-result v3

    invoke-virtual {p1, v0, v0, v3}, Lorg/ejml/data/FMatrixRBlock;->set(IIF)V

    .line 86
    invoke-virtual {p1, v2, v0, v1}, Lorg/ejml/data/FMatrixRBlock;->set(IIF)V

    .line 87
    invoke-virtual {p1, v0, v2, v1}, Lorg/ejml/data/FMatrixRBlock;->set(IIF)V

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

    .line 54
    check-cast p1, Lorg/ejml/data/FMatrixRBlock;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRB;->getT(Lorg/ejml/data/FMatrixRBlock;)Lorg/ejml/data/FMatrixRBlock;

    move-result-object p1

    return-object p1
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
