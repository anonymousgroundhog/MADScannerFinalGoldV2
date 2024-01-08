.class public Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;
.super Ljava/lang/Object;
.source "QrLeftLookingDecomposition_DSCC.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/QRSparseDecomposition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/QRSparseDecomposition<",
        "Lorg/ejml/data/DMatrixSparseCSC;",
        ">;"
    }
.end annotation


# instance fields
.field Beta:Lorg/ejml/data/DScalar;

.field R:Lorg/ejml/data/DMatrixSparseCSC;

.field V:Lorg/ejml/data/DMatrixSparseCSC;

.field applyReduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;

.field beta:[D

.field private decomposed:Z

.field gwork:Lorg/ejml/data/IGrowArray;

.field gx:Lorg/ejml/data/DGrowArray;

.field private locked:Z

.field m:I

.field m2:I

.field n:I

.field singular:Z

.field structure:Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;

.field structureP:[I

.field x:[D


# direct methods
.method public constructor <init>(Lorg/ejml/sparse/ComputePermutation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/sparse/ComputePermutation<",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lorg/ejml/data/DMatrixSparseCSC;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    .line 51
    new-instance v0, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-direct {v0, v1, v1, v2}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->R:Lorg/ejml/data/DMatrixSparseCSC;

    new-array v0, v2, [D

    .line 53
    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->beta:[D

    .line 54
    new-instance v0, Lorg/ejml/data/DScalar;

    invoke-direct {v0}, Lorg/ejml/data/DScalar;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->Beta:Lorg/ejml/data/DScalar;

    new-array v0, v2, [D

    .line 57
    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->x:[D

    .line 59
    new-instance v0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;

    invoke-direct {v0}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->structure:Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;

    new-array v0, v2, [I

    .line 60
    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->structureP:[I

    .line 61
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/IGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->gwork:Lorg/ejml/data/IGrowArray;

    .line 62
    new-instance v0, Lorg/ejml/data/DGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/DGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->gx:Lorg/ejml/data/DGrowArray;

    .line 68
    iput-boolean v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->decomposed:Z

    .line 70
    iput-boolean v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->locked:Z

    .line 73
    new-instance v0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;

    invoke-direct {v0, p1, v2}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;-><init>(Lorg/ejml/sparse/ComputePermutation;Z)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->applyReduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;

    .line 76
    iget-object p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->structure:Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;

    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->gwork:Lorg/ejml/data/IGrowArray;

    invoke-virtual {p1, v0}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->setGwork(Lorg/ejml/data/IGrowArray;)V

    return-void
.end method

.method private initializeDecomposition(Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 3

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->singular:Z

    .line 178
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->structure:Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->getFicticousRowCount()I

    move-result v0

    iput v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->m2:I

    .line 179
    iget v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iput v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->m:I

    .line 180
    iget p1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iput p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->n:I

    .line 182
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->beta:[D

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 183
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->beta:[D

    .line 185
    :cond_0
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->x:[D

    array-length v0, v0

    iget v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->m2:I

    if-ge v0, v1, :cond_1

    .line 186
    new-array v0, v1, [D

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->x:[D

    .line 187
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->structureP:[I

    .line 190
    :cond_1
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->structure:Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;

    iget v2, v2, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->nz_in_V:I

    invoke-virtual {v0, v1, p1, v2}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    .line 191
    iget-object p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->R:Lorg/ejml/data/DMatrixSparseCSC;

    iget v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->m2:I

    iget v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->n:I

    iget-object v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->structure:Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;

    iget v2, v2, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->nz_in_R:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    return-void
.end method

.method private performDecomposition(Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 100
    iget-object v2, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->gwork:Lorg/ejml/data/IGrowArray;

    iget-object v2, v2, Lorg/ejml/data/IGrowArray;->data:[I

    .line 101
    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->applyReduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;

    invoke-virtual {v3}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->getArrayQ()[I

    move-result-object v3

    .line 102
    iget-object v4, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->structure:Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;

    invoke-virtual {v4}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->getParent()[I

    move-result-object v4

    .line 103
    iget-object v5, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->structure:Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;

    invoke-virtual {v5}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->getLeftMost()[I

    move-result-object v5

    .line 105
    iget-object v6, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->structure:Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;

    invoke-virtual {v6}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->getPinv()[I

    move-result-object v6

    .line 106
    iget v7, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->m2:I

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 109
    invoke-static {v2, v9, v7, v8}, Ljava/util/Arrays;->fill([IIII)V

    .line 110
    iget-object v8, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->x:[D

    iget v10, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->m2:I

    const-wide/16 v11, 0x0

    invoke-static {v8, v9, v10, v11, v12}, Ljava/util/Arrays;->fill([DIID)V

    .line 113
    iget-object v8, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->R:Lorg/ejml/data/DMatrixSparseCSC;

    iput v9, v8, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    .line 114
    iget-object v8, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    iput v9, v8, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    move v8, v9

    .line 117
    :goto_0
    iget v10, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->n:I

    if-ge v8, v10, :cond_9

    .line 118
    iget-object v10, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->R:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v10, v10, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget-object v13, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->R:Lorg/ejml/data/DMatrixSparseCSC;

    iget v13, v13, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v13, v10, v8

    .line 119
    iget-object v10, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v10, v10, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget-object v13, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    iget v15, v13, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v15, v10, v8

    .line 120
    aput v8, v2, v8

    .line 121
    iget-object v10, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v10, v10, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget-object v13, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    iget v14, v13, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/lit8 v9, v14, 0x1

    iput v9, v13, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v8, v10, v14

    .line 122
    iget v9, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->n:I

    if-eqz v3, :cond_0

    .line 123
    aget v10, v3, v8

    goto :goto_1

    :cond_0
    move v10, v8

    .line 125
    :goto_1
    iget-object v13, v1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v13, v13, v10

    .line 126
    iget-object v14, v1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    const/4 v11, 0x1

    add-int/2addr v10, v11

    aget v10, v14, v10

    :goto_2
    if-ge v13, v10, :cond_4

    .line 129
    iget-object v12, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v12, v12, v13

    aget v12, v5, v12

    const/4 v14, 0x0

    .line 131
    :goto_3
    aget v11, v2, v12

    if-eq v11, v8, :cond_1

    add-int/lit8 v11, v14, 0x1

    add-int/2addr v14, v7

    .line 132
    aput v12, v2, v14

    .line 133
    aput v8, v2, v12

    .line 131
    aget v12, v4, v12

    move v14, v11

    goto :goto_3

    :cond_1
    :goto_4
    if-lez v14, :cond_2

    add-int/lit8 v9, v9, -0x1

    add-int v11, v7, v9

    add-int/lit8 v14, v14, -0x1

    add-int v12, v7, v14

    .line 136
    aget v12, v2, v12

    aput v12, v2, v11

    goto :goto_4

    .line 138
    :cond_2
    iget-object v11, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v11, v11, v13

    aget v11, v6, v11

    .line 139
    iget-object v12, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->x:[D

    iget-object v14, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v16, v14, v13

    aput-wide v16, v12, v11

    if-le v11, v8, :cond_3

    .line 140
    aget v12, v2, v11

    if-ge v12, v8, :cond_3

    .line 141
    iget-object v12, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v12, v12, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget-object v14, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    iget v1, v14, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    move-object/from16 v20, v3

    add-int/lit8 v3, v1, 0x1

    iput v3, v14, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v11, v12, v1

    .line 142
    aput v8, v2, v11

    goto :goto_5

    :cond_3
    move-object/from16 v20, v3

    :goto_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, v20

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v20, v3

    .line 146
    :goto_6
    iget v1, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->n:I

    if-ge v9, v1, :cond_6

    add-int v1, v7, v9

    .line 147
    aget v1, v2, v1

    .line 148
    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v10, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->beta:[D

    aget-wide v10, v10, v1

    iget-object v12, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->x:[D

    invoke-static {v3, v1, v10, v11, v12}, Lorg/ejml/sparse/csc/decomposition/qr/QrHelperFunctions_DSCC;->applyHouseholder(Lorg/ejml/data/DMatrixSparseCSC;ID[D)V

    .line 149
    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->R:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v3, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget-object v10, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->R:Lorg/ejml/data/DMatrixSparseCSC;

    iget v10, v10, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v1, v3, v10

    .line 150
    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->R:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v3, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v10, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->R:Lorg/ejml/data/DMatrixSparseCSC;

    iget v11, v10, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v10, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget-object v10, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->x:[D

    aget-wide v12, v10, v1

    aput-wide v12, v3, v11

    const-wide/16 v11, 0x0

    .line 151
    aput-wide v11, v10, v1

    .line 152
    aget v3, v4, v1

    if-ne v3, v8, :cond_5

    .line 153
    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    invoke-static {v3, v1, v3, v8, v2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_DSCC;->addRowsInAInToC(Lorg/ejml/data/DMatrixSparseCSC;ILorg/ejml/data/DMatrixSparseCSC;I[I)V

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_6
    move v1, v15

    .line 156
    :goto_7
    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    iget v3, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v1, v3, :cond_7

    .line 157
    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v3, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v9, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->x:[D

    iget-object v10, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v10, v10, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v10, v10, v1

    aget-wide v9, v9, v10

    aput-wide v9, v3, v1

    .line 158
    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->x:[D

    iget-object v9, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v9, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v9, v9, v1

    const-wide/16 v10, 0x0

    aput-wide v10, v3, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 160
    :cond_7
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->R:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->R:Lorg/ejml/data/DMatrixSparseCSC;

    iget v3, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v8, v1, v3

    .line 161
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    iget v3, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    sub-int/2addr v3, v15

    invoke-static {v1, v15, v3}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->findMax([DII)D

    move-result-wide v17

    const-wide/16 v9, 0x0

    cmpl-double v1, v17, v9

    if-nez v1, :cond_8

    const/4 v1, 0x1

    .line 163
    iput-boolean v1, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->singular:Z

    .line 164
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->R:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->R:Lorg/ejml/data/DMatrixSparseCSC;

    iget v3, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput-wide v9, v1, v3

    .line 165
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->beta:[D

    aput-wide v9, v1, v8

    goto :goto_8

    .line 167
    :cond_8
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->R:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->R:Lorg/ejml/data/DMatrixSparseCSC;

    iget v3, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget-object v11, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v14, v11, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v11, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    iget v11, v11, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget-object v12, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->Beta:Lorg/ejml/data/DScalar;

    move/from16 v16, v11

    move-object/from16 v19, v12

    invoke-static/range {v14 .. v19}, Lorg/ejml/sparse/csc/decomposition/qr/QrHelperFunctions_DSCC;->computeHouseholder([DIIDLorg/ejml/data/DScalar;)D

    move-result-wide v11

    aput-wide v11, v1, v3

    .line 168
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->beta:[D

    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->Beta:Lorg/ejml/data/DScalar;

    iget-wide v11, v3, Lorg/ejml/data/DScalar;->value:D

    aput-wide v11, v1, v8

    .line 170
    :goto_8
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->R:Lorg/ejml/data/DMatrixSparseCSC;

    iget v3, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    const/4 v11, 0x1

    add-int/2addr v3, v11

    iput v3, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    move-wide v11, v9

    move-object/from16 v3, v20

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 172
    :cond_9
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->R:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v2, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->n:I

    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->R:Lorg/ejml/data/DMatrixSparseCSC;

    iget v3, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v3, v1, v2

    .line 173
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v2, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->n:I

    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    iget v3, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v3, v1, v2

    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/DMatrixSparseCSC;)Z
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->applyReduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;

    invoke-virtual {v0, p1}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->apply(Lorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p1

    .line 83
    iget-boolean v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->decomposed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->locked:Z

    if-nez v0, :cond_2

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->structure:Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;

    invoke-virtual {v0, p1}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->process(Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 89
    :cond_1
    invoke-direct {p0, p1}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->initializeDecomposition(Lorg/ejml/data/DMatrixSparseCSC;)V

    .line 93
    :cond_2
    invoke-direct {p0, p1}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->performDecomposition(Lorg/ejml/data/DMatrixSparseCSC;)V

    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->decomposed:Z

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->decompose(Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public getBeta(I)D
    .locals 2

    .line 270
    iget v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->n:I

    if-ge p1, v0, :cond_0

    .line 272
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->beta:[D

    aget-wide v0, v0, p1

    return-wide v0

    .line 271
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index is out of bounds"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBeta()[D
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->beta:[D

    return-object v0
.end method

.method public getFillPermutation()[I
    .locals 2

    .line 276
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->applyReduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->getArrayP()[I

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 278
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No permutation. Should have called isFillPermuted()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGwork()Lorg/ejml/data/IGrowArray;
    .locals 1

    .line 246
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->gwork:Lorg/ejml/data/IGrowArray;

    return-object v0
.end method

.method public getGx()Lorg/ejml/data/DGrowArray;
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->gx:Lorg/ejml/data/DGrowArray;

    return-object v0
.end method

.method public getQ(Lorg/ejml/data/DMatrixSparseCSC;Z)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 197
    new-instance p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-direct {p1, v0, v0, v1}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    :cond_0
    if-eqz p2, :cond_1

    .line 200
    iget-object p2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    iget p2, p2, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->n:I

    invoke-virtual {p1, p2, v2, v1}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object p2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    iget p2, p2, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->m:I

    invoke-virtual {p1, p2, v2, v1}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    .line 203
    :goto_0
    iget-object p2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    iget p2, p2, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v2, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-static {p2, v2}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->identity(II)Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p2

    .line 205
    iget-object v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    iget v2, v2, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    sub-int/2addr v2, v0

    move v0, v2

    :goto_1
    if-ltz v0, :cond_2

    .line 206
    iget-object v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v3, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->beta:[D

    aget-wide v4, v3, v0

    iget-object v8, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->gwork:Lorg/ejml/data/IGrowArray;

    iget-object v9, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->gx:Lorg/ejml/data/DGrowArray;

    move v3, v0

    move-object v6, p2

    move-object v7, p1

    invoke-static/range {v2 .. v9}, Lorg/ejml/sparse/csc/decomposition/qr/QrHelperFunctions_DSCC;->rank1UpdateMultR(Lorg/ejml/data/DMatrixSparseCSC;IDLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)V

    .line 207
    invoke-virtual {p2, p1}, Lorg/ejml/data/DMatrixSparseCSC;->set(Lorg/ejml/data/Matrix;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 211
    :cond_2
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->structure:Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;

    iget-object v0, v0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->pinv:[I

    iget-object v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->structureP:[I

    iget-object v3, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    iget v3, v3, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-static {v0, v2, v3}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->permutationInverse([I[II)V

    .line 212
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->structureP:[I

    invoke-static {v0, p1, p2}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->permuteRowInv([ILorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V

    .line 215
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    iget v0, v0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->m:I

    if-le v0, v2, :cond_3

    .line 216
    invoke-static {p2, v1, v2, p1}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->extractRows(Lorg/ejml/data/DMatrixSparseCSC;IILorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;

    goto :goto_2

    .line 218
    :cond_3
    invoke-virtual {p1, p2}, Lorg/ejml/data/DMatrixSparseCSC;->set(Lorg/ejml/data/Matrix;)V

    :goto_2
    return-object p1
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->getQ(Lorg/ejml/data/DMatrixSparseCSC;Z)Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p1

    return-object p1
.end method

.method public getR()Lorg/ejml/data/DMatrixSparseCSC;
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->R:Lorg/ejml/data/DMatrixSparseCSC;

    return-object v0
.end method

.method public getR(Lorg/ejml/data/DMatrixSparseCSC;Z)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 226
    new-instance p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-direct {p1, v0, v0, v0}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    .line 228
    :cond_0
    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->R:Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p1, v1}, Lorg/ejml/data/DMatrixSparseCSC;->set(Lorg/ejml/data/Matrix;)V

    .line 229
    iget v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->m:I

    iget v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->n:I

    if-le v1, v2, :cond_2

    if-eqz p2, :cond_1

    move v1, v2

    .line 231
    :cond_1
    iput v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    goto :goto_0

    :cond_2
    if-le v2, v1, :cond_3

    .line 232
    iget-object p2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    iget p2, p2, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->m:I

    if-eq p2, v1, :cond_3

    .line 233
    new-instance p2, Lorg/ejml/data/DMatrixSparseCSC;

    iget v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->m:I

    iget v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->n:I

    invoke-direct {p2, v1, v2, v0}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    .line 234
    iget v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->m:I

    invoke-static {p1, v0, v1, p2}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->extractRows(Lorg/ejml/data/DMatrixSparseCSC;IILorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;

    .line 235
    invoke-virtual {p1, p2}, Lorg/ejml/data/DMatrixSparseCSC;->set(Lorg/ejml/data/Matrix;)V

    :cond_3
    :goto_0
    return-object p1
.end method

.method public bridge synthetic getR(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->getR(Lorg/ejml/data/DMatrixSparseCSC;Z)Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p1

    return-object p1
.end method

.method public getStructure()Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->structure:Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;

    return-object v0
.end method

.method public getV()Lorg/ejml/data/DMatrixSparseCSC;
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->V:Lorg/ejml/data/DMatrixSparseCSC;

    return-object v0
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFillPermutated()Z
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->applyReduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->isApplied()Z

    move-result v0

    return v0
.end method

.method public isSingular()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->singular:Z

    return v0
.end method

.method public isStructureLocked()Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->locked:Z

    return v0
.end method

.method public setStructureLocked(Z)V
    .locals 0

    .line 292
    iput-boolean p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrLeftLookingDecomposition_DSCC;->locked:Z

    return-void
.end method
