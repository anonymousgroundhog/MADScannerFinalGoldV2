.class public Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;
.super Ljava/lang/Object;
.source "LuUpLooking_FSCC.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/LUSparseDecomposition_F32;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/LUSparseDecomposition_F32<",
        "Lorg/ejml/data/FMatrixSparseCSC;",
        ">;"
    }
.end annotation


# instance fields
.field private final L:Lorg/ejml/data/FMatrixSparseCSC;

.field private final U:Lorg/ejml/data/FMatrixSparseCSC;

.field private final applyReduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;

.field private final gw:Lorg/ejml/data/IGrowArray;

.field private final gxi:Lorg/ejml/data/IGrowArray;

.field private pinv:[I

.field private singular:Z

.field private x:[F


# direct methods
.method public constructor <init>(Lorg/ejml/sparse/ComputePermutation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/sparse/ComputePermutation<",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lorg/ejml/data/FMatrixSparseCSC;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    .line 50
    new-instance v0, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-direct {v0, v1, v1, v1}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->U:Lorg/ejml/data/FMatrixSparseCSC;

    new-array v0, v1, [I

    .line 53
    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->pinv:[I

    new-array v0, v1, [F

    .line 56
    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->x:[F

    .line 57
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/IGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->gxi:Lorg/ejml/data/IGrowArray;

    .line 58
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/IGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    .line 64
    new-instance v0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;

    invoke-direct {v0, p1, v1}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;-><init>(Lorg/ejml/sparse/ComputePermutation;Z)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->applyReduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;

    return-void
.end method

.method private initialize(Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 5

    .line 74
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    .line 75
    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    .line 76
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 78
    iget-object v3, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget v4, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v2

    invoke-virtual {v3, v0, v0, v4}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    .line 79
    iget-object v3, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    const/4 v4, 0x0

    iput v4, v3, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    .line 80
    iget-object v3, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->U:Lorg/ejml/data/FMatrixSparseCSC;

    iget p1, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p1, v2

    invoke-virtual {v3, v0, v1, p1}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    .line 81
    iget-object p1, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->U:Lorg/ejml/data/FMatrixSparseCSC;

    iput v4, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    .line 83
    iput-boolean v4, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->singular:Z

    .line 84
    iget-object p1, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->pinv:[I

    array-length p1, p1

    if-eq p1, v0, :cond_0

    .line 85
    new-array p1, v0, [I

    iput-object p1, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->pinv:[I

    .line 86
    new-array p1, v0, [F

    iput-object p1, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->x:[F

    :cond_0
    move p1, v4

    :goto_0
    if-ge p1, v0, :cond_1

    .line 90
    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->pinv:[I

    const/4 v2, -0x1

    aput v2, v1, p1

    .line 91
    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aput v4, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private performLU(Lorg/ejml/data/FMatrixSparseCSC;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 96
    iget v1, v9, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    .line 97
    iget v10, v9, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    .line 98
    iget-object v2, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->applyReduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;

    invoke-virtual {v2}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;->getArrayP()[I

    move-result-object v11

    .line 100
    iget-object v2, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    mul-int/lit8 v3, v1, 0x2

    invoke-static {v2, v3, v1}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;II)[I

    move-result-object v12

    const/4 v14, 0x0

    :goto_0
    const/4 v15, 0x1

    if-ge v14, v10, :cond_a

    .line 105
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget-object v2, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget v2, v2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v2, v1, v14

    .line 106
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->U:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget-object v2, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->U:Lorg/ejml/data/FMatrixSparseCSC;

    iget v2, v2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v2, v1, v14

    .line 109
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget v1, v1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/2addr v1, v10

    iget-object v2, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v2, v2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 110
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v2, v1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v10

    invoke-virtual {v1, v2, v15}, Lorg/ejml/data/FMatrixSparseCSC;->growMaxLength(IZ)V

    .line 111
    :cond_0
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->U:Lorg/ejml/data/FMatrixSparseCSC;

    iget v1, v1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/2addr v1, v10

    iget-object v2, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->U:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v2, v2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 112
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->U:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v2, v1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v10

    invoke-virtual {v1, v2, v15}, Lorg/ejml/data/FMatrixSparseCSC;->growMaxLength(IZ)V

    :cond_1
    if-eqz v11, :cond_2

    .line 114
    aget v1, v11, v14

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v14

    .line 115
    :goto_1
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    const/4 v2, 0x1

    iget-object v5, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->x:[F

    iget-object v6, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->pinv:[I

    iget-object v7, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->gxi:Lorg/ejml/data/IGrowArray;

    move-object/from16 v3, p1

    move-object v8, v12

    invoke-static/range {v1 .. v8}, Lorg/ejml/sparse/csc/misc/TriangularSolver_FSCC;->solveColB(Lorg/ejml/data/FMatrixSparseCSC;ZLorg/ejml/data/FMatrixSparseCSC;I[F[ILorg/ejml/data/IGrowArray;[I)I

    move-result v1

    .line 116
    iget-object v2, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->gxi:Lorg/ejml/data/IGrowArray;

    iget-object v2, v2, Lorg/ejml/data/IGrowArray;->data:[I

    const v4, -0x800001

    move v5, v1

    const/4 v6, -0x1

    :goto_2
    if-ge v5, v10, :cond_5

    .line 123
    aget v7, v2, v5

    .line 124
    iget-object v8, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->pinv:[I

    aget v8, v8, v7

    if-gez v8, :cond_3

    .line 126
    iget-object v8, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->x:[F

    aget v8, v8, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v16, v8, v4

    if-lez v16, :cond_4

    move v6, v7

    move v4, v8

    goto :goto_3

    .line 131
    :cond_3
    iget-object v8, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->U:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v8, v8, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget-object v13, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->U:Lorg/ejml/data/FMatrixSparseCSC;

    iget v13, v13, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget-object v15, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->pinv:[I

    aget v15, v15, v7

    aput v15, v8, v13

    .line 132
    iget-object v8, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->U:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v8, v8, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v13, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->U:Lorg/ejml/data/FMatrixSparseCSC;

    iget v15, v13, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/lit8 v3, v15, 0x1

    iput v3, v13, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->x:[F

    aget v3, v3, v7

    aput v3, v8, v15

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    const/4 v15, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, -0x1

    if-eq v6, v3, :cond_9

    const/4 v3, 0x0

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_6

    goto :goto_5

    .line 148
    :cond_6
    iget-object v4, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->x:[F

    aget v4, v4, v6

    .line 149
    iget-object v5, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->U:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v5, v5, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget-object v7, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->U:Lorg/ejml/data/FMatrixSparseCSC;

    iget v7, v7, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v14, v5, v7

    .line 150
    iget-object v5, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->U:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v5, v5, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v7, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->U:Lorg/ejml/data/FMatrixSparseCSC;

    iget v8, v7, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v7, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v4, v5, v8

    .line 151
    iget-object v5, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->pinv:[I

    aput v14, v5, v6

    .line 152
    iget-object v5, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v5, v5, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget-object v7, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget v7, v7, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v6, v5, v7

    .line 153
    iget-object v5, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v5, v5, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v6, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget v7, v6, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v6, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v7

    :goto_4
    if-ge v1, v10, :cond_8

    .line 156
    aget v5, v2, v1

    .line 157
    iget-object v6, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->pinv:[I

    aget v6, v6, v5

    if-gez v6, :cond_7

    .line 158
    iget-object v6, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v6, v6, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget-object v7, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget v7, v7, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v5, v6, v7

    .line 159
    iget-object v6, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v6, v6, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v7, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget v8, v7, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v7, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget-object v7, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->x:[F

    aget v7, v7, v5

    div-float/2addr v7, v4

    aput v7, v6, v8

    .line 161
    :cond_7
    iget-object v6, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->x:[F

    aput v3, v6, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_9
    :goto_5
    const/4 v1, 0x1

    .line 136
    iput-boolean v1, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->singular:Z

    const/4 v1, 0x0

    return v1

    :cond_a
    const/4 v1, 0x0

    .line 165
    iget-object v2, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v2, v2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget v3, v3, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v3, v2, v10

    .line 166
    iget-object v2, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->U:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v2, v2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->U:Lorg/ejml/data/FMatrixSparseCSC;

    iget v3, v3, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v3, v2, v10

    move v13, v1

    .line 167
    :goto_6
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget v1, v1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v13, v1, :cond_b

    .line 168
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget-object v2, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->pinv:[I

    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v3, v3, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v13

    aget v2, v2, v3

    aput v2, v1, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public computeDeterminant()Lorg/ejml/data/Complex_F32;
    .locals 4

    .line 185
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->pinv:[I

    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->U:Lorg/ejml/data/FMatrixSparseCSC;

    iget v1, v1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget-object v2, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    iget-object v2, v2, Lorg/ejml/data/IGrowArray;->data:[I

    invoke-static {v0, v1, v2}, Lorg/ejml/UtilEjml;->permutationSign([II[I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    .line 186
    :goto_0
    iget-object v2, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->U:Lorg/ejml/data/FMatrixSparseCSC;

    iget v2, v2, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v1, v2, :cond_0

    .line 187
    iget-object v2, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->U:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v2, v2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v3, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->U:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v3, v3, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v1, v1, 0x1

    aget v3, v3, v1

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    mul-float/2addr v0, v2

    goto :goto_0

    .line 189
    :cond_0
    new-instance v1, Lorg/ejml/data/Complex_F32;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/ejml/data/Complex_F32;-><init>(FF)V

    return-object v1
.end method

.method public decompose(Lorg/ejml/data/FMatrixSparseCSC;)Z
    .locals 1

    .line 69
    invoke-direct {p0, p1}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->initialize(Lorg/ejml/data/FMatrixSparseCSC;)V

    .line 70
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->applyReduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;

    invoke-virtual {v0, p1}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;->apply(Lorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->performLU(Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 43
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->decompose(Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public getGw()Lorg/ejml/data/IGrowArray;
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    return-object v0
.end method

.method public getGxi()Lorg/ejml/data/IGrowArray;
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->gxi:Lorg/ejml/data/IGrowArray;

    return-object v0
.end method

.method public getL()Lorg/ejml/data/FMatrixSparseCSC;
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    return-object v0
.end method

.method public getLower(Lorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 2

    if-nez p1, :cond_0

    .line 195
    new-instance p1, Lorg/ejml/data/FMatrixSparseCSC;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v1, v1, v0}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p1, v0}, Lorg/ejml/data/FMatrixSparseCSC;->set(Lorg/ejml/data/Matrix;)V

    return-object p1
.end method

.method public bridge synthetic getLower(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 43
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->getLower(Lorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p1

    return-object p1
.end method

.method public getPinv()[I
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->pinv:[I

    return-object v0
.end method

.method public getReduceFill()Lorg/ejml/sparse/ComputePermutation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/sparse/ComputePermutation<",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->applyReduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;->getFillReduce()Lorg/ejml/sparse/ComputePermutation;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Check to see if there is any fill reduce ordering to apply first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReducePermutation()[I
    .locals 2

    .line 264
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->applyReduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;->getArrayP()[I

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Check to see if there is any fill reduce ordering to apply first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRowPivot(Lorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 3

    if-nez p1, :cond_0

    .line 211
    new-instance p1, Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget v0, v0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget v1, v1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    .line 212
    :cond_0
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget v0, v0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget v1, v1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget-object v2, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget v2, v2, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    .line 213
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->pinv:[I

    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget v1, v1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->permutationMatrix([IZILorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;

    return-object p1
.end method

.method public bridge synthetic getRowPivot(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 43
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->getRowPivot(Lorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p1

    return-object p1
.end method

.method public getRowPivotV(Lorg/ejml/data/IGrowArray;)[I
    .locals 2

    .line 219
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->pinv:[I

    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget v1, v1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-static {v0, v1, p1}, Lorg/ejml/UtilEjml;->pivotVector([IILorg/ejml/data/IGrowArray;)[I

    move-result-object p1

    return-object p1
.end method

.method public getU()Lorg/ejml/data/FMatrixSparseCSC;
    .locals 1

    .line 249
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->U:Lorg/ejml/data/FMatrixSparseCSC;

    return-object v0
.end method

.method public getUpper(Lorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 2

    if-nez p1, :cond_0

    .line 203
    new-instance p1, Lorg/ejml/data/FMatrixSparseCSC;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v1, v1, v0}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    .line 204
    :cond_0
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->U:Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p1, v0}, Lorg/ejml/data/FMatrixSparseCSC;->set(Lorg/ejml/data/Matrix;)V

    return-object p1
.end method

.method public bridge synthetic getUpper(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 43
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->getUpper(Lorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p1

    return-object p1
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReduceFill()Z
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->applyReduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_FSCC;->isApplied()Z

    move-result v0

    return v0
.end method

.method public isSingular()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_FSCC;->singular:Z

    return v0
.end method

.method public isStructureLocked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setStructureLocked(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 273
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t lock a LU decomposition. Pivots change depending on numerical values and not justthe matrix\'s structure"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
