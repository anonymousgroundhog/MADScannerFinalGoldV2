.class public Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;
.super Ljava/lang/Object;
.source "QrLeftLookingDecomposition_FSCC.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/QRSparseDecomposition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/QRSparseDecomposition<",
        "Lorg/ejml/data/FMatrixSparseCSC;",
        ">;"
    }
.end annotation


# instance fields
.field Beta:Lorg/ejml/data/FScalar;

.field R:Lorg/ejml/data/FMatrixSparseCSC;

.field V:Lorg/ejml/data/FMatrixSparseCSC;

.field applyReduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;

.field beta:[F

.field private decomposed:Z

.field gwork:Lorg/ejml/data/IGrowArray;

.field gx:Lorg/ejml/data/FGrowArray;

.field private locked:Z

.field m:I

.field m2:I

.field n:I

.field singular:Z

.field structure:Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;

.field structureP:[I

.field x:[F


# direct methods
.method public constructor <init>(Lorg/ejml/sparse/ComputePermutation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/sparse/ComputePermutation<",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/ejml/data/FMatrixSparseCSC;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    .line 53
    new-instance v0, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-direct {v0, v1, v1, v2}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->R:Lorg/ejml/data/FMatrixSparseCSC;

    new-array v0, v2, [F

    .line 55
    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->beta:[F

    .line 56
    new-instance v0, Lorg/ejml/data/FScalar;

    invoke-direct {v0}, Lorg/ejml/data/FScalar;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->Beta:Lorg/ejml/data/FScalar;

    new-array v0, v2, [F

    .line 59
    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->x:[F

    .line 61
    new-instance v0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;

    invoke-direct {v0}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->structure:Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;

    new-array v0, v2, [I

    .line 62
    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->structureP:[I

    .line 63
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/IGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->gwork:Lorg/ejml/data/IGrowArray;

    .line 64
    new-instance v0, Lorg/ejml/data/FGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/FGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->gx:Lorg/ejml/data/FGrowArray;

    .line 70
    iput-boolean v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->decomposed:Z

    .line 72
    iput-boolean v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->locked:Z

    .line 75
    new-instance v0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;

    invoke-direct {v0, p1, v2}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;-><init>(Lorg/ejml/sparse/ComputePermutation;Z)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->applyReduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;

    .line 78
    iget-object p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->structure:Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;

    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->gwork:Lorg/ejml/data/IGrowArray;

    invoke-virtual {p1, v0}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->setGwork(Lorg/ejml/data/IGrowArray;)V

    return-void
.end method

.method private initializeDecomposition(Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 3

    const/4 v0, 0x0

    .line 179
    iput-boolean v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->singular:Z

    .line 180
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->structure:Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->getFicticousRowCount()I

    move-result v0

    iput v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->m2:I

    .line 181
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iput v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->m:I

    .line 182
    iget p1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iput p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->n:I

    .line 184
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->beta:[F

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 185
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->beta:[F

    .line 187
    :cond_0
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->x:[F

    array-length v0, v0

    iget v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->m2:I

    if-ge v0, v1, :cond_1

    .line 188
    new-array v0, v1, [F

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->x:[F

    .line 189
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->structureP:[I

    .line 192
    :cond_1
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->structure:Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;

    iget v2, v2, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->nz_in_V:I

    invoke-virtual {v0, v1, p1, v2}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    .line 193
    iget-object p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->R:Lorg/ejml/data/FMatrixSparseCSC;

    iget v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->m2:I

    iget v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->n:I

    iget-object v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->structure:Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;

    iget v2, v2, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->nz_in_R:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    return-void
.end method

.method private performDecomposition(Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 102
    iget-object v2, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->gwork:Lorg/ejml/data/IGrowArray;

    iget-object v2, v2, Lorg/ejml/data/IGrowArray;->data:[I

    .line 103
    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->applyReduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;

    invoke-virtual {v3}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;->getArrayQ()[I

    move-result-object v3

    .line 104
    iget-object v4, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->structure:Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;

    invoke-virtual {v4}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->getParent()[I

    move-result-object v4

    .line 105
    iget-object v5, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->structure:Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;

    invoke-virtual {v5}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->getLeftMost()[I

    move-result-object v5

    .line 107
    iget-object v6, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->structure:Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;

    invoke-virtual {v6}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->getPinv()[I

    move-result-object v6

    .line 108
    iget v7, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->m2:I

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 111
    invoke-static {v2, v9, v7, v8}, Ljava/util/Arrays;->fill([IIII)V

    .line 112
    iget-object v8, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->x:[F

    iget v10, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->m2:I

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Ljava/util/Arrays;->fill([FIIF)V

    .line 115
    iget-object v8, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->R:Lorg/ejml/data/FMatrixSparseCSC;

    iput v9, v8, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    .line 116
    iget-object v8, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    iput v9, v8, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    move v8, v9

    .line 119
    :goto_0
    iget v10, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->n:I

    if-ge v8, v10, :cond_9

    .line 120
    iget-object v10, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->R:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v10, v10, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget-object v12, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->R:Lorg/ejml/data/FMatrixSparseCSC;

    iget v12, v12, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v12, v10, v8

    .line 121
    iget-object v10, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v10, v10, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget-object v12, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    iget v12, v12, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v12, v10, v8

    .line 122
    aput v8, v2, v8

    .line 123
    iget-object v10, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v10, v10, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget-object v13, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    iget v14, v13, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v13, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v8, v10, v14

    .line 124
    iget v10, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->n:I

    if-eqz v3, :cond_0

    .line 125
    aget v13, v3, v8

    goto :goto_1

    :cond_0
    move v13, v8

    .line 127
    :goto_1
    iget-object v14, v1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v14, v14, v13

    .line 128
    iget-object v15, v1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    const/4 v9, 0x1

    add-int/2addr v13, v9

    aget v13, v15, v13

    :goto_2
    if-ge v14, v13, :cond_4

    .line 131
    iget-object v15, v1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v15, v15, v14

    aget v15, v5, v15

    const/16 v16, 0x0

    .line 133
    :goto_3
    aget v9, v2, v15

    if-eq v9, v8, :cond_1

    add-int/lit8 v9, v16, 0x1

    add-int v16, v7, v16

    .line 134
    aput v15, v2, v16

    .line 135
    aput v8, v2, v15

    .line 133
    aget v15, v4, v15

    move/from16 v16, v9

    goto :goto_3

    :cond_1
    :goto_4
    if-lez v16, :cond_2

    add-int/lit8 v10, v10, -0x1

    add-int v9, v7, v10

    add-int/lit8 v16, v16, -0x1

    add-int v15, v7, v16

    .line 138
    aget v15, v2, v15

    aput v15, v2, v9

    goto :goto_4

    .line 140
    :cond_2
    iget-object v9, v1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v9, v9, v14

    aget v9, v6, v9

    .line 141
    iget-object v15, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->x:[F

    iget-object v11, v1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v11, v11, v14

    aput v11, v15, v9

    if-le v9, v8, :cond_3

    .line 142
    aget v11, v2, v9

    if-ge v11, v8, :cond_3

    .line 143
    iget-object v11, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v11, v11, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget-object v15, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    iget v1, v15, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    move-object/from16 v17, v3

    add-int/lit8 v3, v1, 0x1

    iput v3, v15, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v9, v11, v1

    .line 144
    aput v8, v2, v9

    goto :goto_5

    :cond_3
    move-object/from16 v17, v3

    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, v17

    const/4 v9, 0x1

    const/4 v11, 0x0

    goto :goto_2

    :cond_4
    move-object/from16 v17, v3

    .line 148
    :goto_6
    iget v1, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->n:I

    if-ge v10, v1, :cond_6

    add-int v1, v7, v10

    .line 149
    aget v1, v2, v1

    .line 150
    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v9, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->beta:[F

    aget v9, v9, v1

    iget-object v11, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->x:[F

    invoke-static {v3, v1, v9, v11}, Lorg/ejml/sparse/csc/decomposition/qr/QrHelperFunctions_FSCC;->applyHouseholder(Lorg/ejml/data/FMatrixSparseCSC;IF[F)V

    .line 151
    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->R:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v3, v3, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget-object v9, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->R:Lorg/ejml/data/FMatrixSparseCSC;

    iget v9, v9, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v1, v3, v9

    .line 152
    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->R:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v3, v3, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v9, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->R:Lorg/ejml/data/FMatrixSparseCSC;

    iget v11, v9, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/lit8 v13, v11, 0x1

    iput v13, v9, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget-object v9, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->x:[F

    aget v13, v9, v1

    aput v13, v3, v11

    const/4 v3, 0x0

    .line 153
    aput v3, v9, v1

    .line 154
    aget v3, v4, v1

    if-ne v3, v8, :cond_5

    .line 155
    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    invoke-static {v3, v1, v3, v8, v2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_FSCC;->addRowsInAInToC(Lorg/ejml/data/FMatrixSparseCSC;ILorg/ejml/data/FMatrixSparseCSC;I[I)V

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_6
    move v1, v12

    .line 158
    :goto_7
    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    iget v3, v3, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v1, v3, :cond_7

    .line 159
    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v3, v3, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v9, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->x:[F

    iget-object v10, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v10, v10, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v10, v10, v1

    aget v9, v9, v10

    aput v9, v3, v1

    .line 160
    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->x:[F

    iget-object v9, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v9, v9, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v9, v9, v1

    const/4 v10, 0x0

    aput v10, v3, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 162
    :cond_7
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->R:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->R:Lorg/ejml/data/FMatrixSparseCSC;

    iget v3, v3, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v8, v1, v3

    .line 163
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    iget v3, v3, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    sub-int/2addr v3, v12

    invoke-static {v1, v12, v3}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->findMax([FII)F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v9, v1, v3

    if-nez v9, :cond_8

    const/4 v9, 0x1

    .line 165
    iput-boolean v9, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->singular:Z

    .line 166
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->R:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v9, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->R:Lorg/ejml/data/FMatrixSparseCSC;

    iget v9, v9, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v3, v1, v9

    .line 167
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->beta:[F

    aput v3, v1, v8

    goto :goto_8

    .line 169
    :cond_8
    iget-object v9, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->R:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v9, v9, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v10, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->R:Lorg/ejml/data/FMatrixSparseCSC;

    iget v10, v10, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget-object v11, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v11, v11, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v13, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    iget v13, v13, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget-object v14, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->Beta:Lorg/ejml/data/FScalar;

    invoke-static {v11, v12, v13, v1, v14}, Lorg/ejml/sparse/csc/decomposition/qr/QrHelperFunctions_FSCC;->computeHouseholder([FIIFLorg/ejml/data/FScalar;)F

    move-result v1

    aput v1, v9, v10

    .line 170
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->beta:[F

    iget-object v9, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->Beta:Lorg/ejml/data/FScalar;

    iget v9, v9, Lorg/ejml/data/FScalar;->value:F

    aput v9, v1, v8

    .line 172
    :goto_8
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->R:Lorg/ejml/data/FMatrixSparseCSC;

    iget v9, v1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    const/4 v10, 0x1

    add-int/2addr v9, v10

    iput v9, v1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    move v11, v3

    move-object/from16 v3, v17

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 174
    :cond_9
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->R:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v2, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->n:I

    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->R:Lorg/ejml/data/FMatrixSparseCSC;

    iget v3, v3, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v3, v1, v2

    .line 175
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v2, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->n:I

    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    iget v3, v3, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v3, v1, v2

    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/FMatrixSparseCSC;)Z
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->applyReduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;

    invoke-virtual {v0, p1}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;->apply(Lorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p1

    .line 85
    iget-boolean v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->decomposed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->locked:Z

    if-nez v0, :cond_2

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->structure:Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;

    invoke-virtual {v0, p1}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->process(Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 91
    :cond_1
    invoke-direct {p0, p1}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->initializeDecomposition(Lorg/ejml/data/FMatrixSparseCSC;)V

    .line 95
    :cond_2
    invoke-direct {p0, p1}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->performDecomposition(Lorg/ejml/data/FMatrixSparseCSC;)V

    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->decomposed:Z

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 43
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->decompose(Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public getBeta(I)F
    .locals 1

    .line 272
    iget v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->n:I

    if-ge p1, v0, :cond_0

    .line 274
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->beta:[F

    aget p1, v0, p1

    return p1

    .line 273
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index is out of bounds"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBeta()[F
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->beta:[F

    return-object v0
.end method

.method public getFillPermutation()[I
    .locals 2

    .line 278
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->applyReduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;->getArrayP()[I

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 280
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No permutation. Should have called isFillPermuted()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGwork()Lorg/ejml/data/IGrowArray;
    .locals 1

    .line 248
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->gwork:Lorg/ejml/data/IGrowArray;

    return-object v0
.end method

.method public getGx()Lorg/ejml/data/FGrowArray;
    .locals 1

    .line 252
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->gx:Lorg/ejml/data/FGrowArray;

    return-object v0
.end method

.method public getQ(Lorg/ejml/data/FMatrixSparseCSC;Z)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 199
    new-instance p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-direct {p1, v0, v0, v1}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    :cond_0
    if-eqz p2, :cond_1

    .line 202
    iget-object p2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    iget p2, p2, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->n:I

    invoke-virtual {p1, p2, v2, v1}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object p2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    iget p2, p2, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->m:I

    invoke-virtual {p1, p2, v2, v1}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    .line 205
    :goto_0
    iget-object p2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    iget p2, p2, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v2, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-static {p2, v2}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->identity(II)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p2

    .line 207
    iget-object v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    iget v2, v2, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    sub-int/2addr v2, v0

    move v0, v2

    :goto_1
    if-ltz v0, :cond_2

    .line 208
    iget-object v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v3, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->beta:[F

    aget v4, v3, v0

    iget-object v7, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->gwork:Lorg/ejml/data/IGrowArray;

    iget-object v8, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->gx:Lorg/ejml/data/FGrowArray;

    move v3, v0

    move-object v5, p2

    move-object v6, p1

    invoke-static/range {v2 .. v8}, Lorg/ejml/sparse/csc/decomposition/qr/QrHelperFunctions_FSCC;->rank1UpdateMultR(Lorg/ejml/data/FMatrixSparseCSC;IFLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)V

    .line 209
    invoke-virtual {p2, p1}, Lorg/ejml/data/FMatrixSparseCSC;->set(Lorg/ejml/data/Matrix;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 213
    :cond_2
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->structure:Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;

    iget-object v0, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->pinv:[I

    iget-object v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->structureP:[I

    iget-object v3, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    iget v3, v3, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-static {v0, v2, v3}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->permutationInverse([I[II)V

    .line 214
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->structureP:[I

    invoke-static {v0, p1, p2}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->permuteRowInv([ILorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V

    .line 217
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    iget v0, v0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->m:I

    if-le v0, v2, :cond_3

    .line 218
    invoke-static {p2, v1, v2, p1}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->extractRows(Lorg/ejml/data/FMatrixSparseCSC;IILorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;

    goto :goto_2

    .line 220
    :cond_3
    invoke-virtual {p1, p2}, Lorg/ejml/data/FMatrixSparseCSC;->set(Lorg/ejml/data/Matrix;)V

    :goto_2
    return-object p1
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 43
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->getQ(Lorg/ejml/data/FMatrixSparseCSC;Z)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p1

    return-object p1
.end method

.method public getR()Lorg/ejml/data/FMatrixSparseCSC;
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->R:Lorg/ejml/data/FMatrixSparseCSC;

    return-object v0
.end method

.method public getR(Lorg/ejml/data/FMatrixSparseCSC;Z)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 228
    new-instance p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-direct {p1, v0, v0, v0}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    .line 230
    :cond_0
    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->R:Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p1, v1}, Lorg/ejml/data/FMatrixSparseCSC;->set(Lorg/ejml/data/Matrix;)V

    .line 231
    iget v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->m:I

    iget v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->n:I

    if-le v1, v2, :cond_2

    if-eqz p2, :cond_1

    move v1, v2

    .line 233
    :cond_1
    iput v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    goto :goto_0

    :cond_2
    if-le v2, v1, :cond_3

    .line 234
    iget-object p2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    iget p2, p2, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->m:I

    if-eq p2, v1, :cond_3

    .line 235
    new-instance p2, Lorg/ejml/data/FMatrixSparseCSC;

    iget v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->m:I

    iget v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->n:I

    invoke-direct {p2, v1, v2, v0}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    .line 236
    iget v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->m:I

    invoke-static {p1, v0, v1, p2}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->extractRows(Lorg/ejml/data/FMatrixSparseCSC;IILorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;

    .line 237
    invoke-virtual {p1, p2}, Lorg/ejml/data/FMatrixSparseCSC;->set(Lorg/ejml/data/Matrix;)V

    :cond_3
    :goto_0
    return-object p1
.end method

.method public bridge synthetic getR(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 43
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->getR(Lorg/ejml/data/FMatrixSparseCSC;Z)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p1

    return-object p1
.end method

.method public getStructure()Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->structure:Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;

    return-object v0
.end method

.method public getV()Lorg/ejml/data/FMatrixSparseCSC;
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->V:Lorg/ejml/data/FMatrixSparseCSC;

    return-object v0
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFillPermutated()Z
    .locals 1

    .line 285
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->applyReduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;->isApplied()Z

    move-result v0

    return v0
.end method

.method public isSingular()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->singular:Z

    return v0
.end method

.method public isStructureLocked()Z
    .locals 1

    .line 299
    iget-boolean v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->locked:Z

    return v0
.end method

.method public setStructureLocked(Z)V
    .locals 0

    .line 294
    iput-boolean p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_FSCC;->locked:Z

    return-void
.end method
