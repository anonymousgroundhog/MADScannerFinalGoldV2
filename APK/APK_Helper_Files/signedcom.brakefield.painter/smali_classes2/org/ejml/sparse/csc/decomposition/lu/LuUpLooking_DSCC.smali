.class public Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;
.super Ljava/lang/Object;
.source "LuUpLooking_DSCC.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/LUSparseDecomposition_F64;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/LUSparseDecomposition_F64<",
        "Lorg/ejml/data/DMatrixSparseCSC;",
        ">;"
    }
.end annotation


# instance fields
.field private final L:Lorg/ejml/data/DMatrixSparseCSC;

.field private final U:Lorg/ejml/data/DMatrixSparseCSC;

.field private final applyReduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;

.field private final gw:Lorg/ejml/data/IGrowArray;

.field private final gxi:Lorg/ejml/data/IGrowArray;

.field private pinv:[I

.field private singular:Z

.field private x:[D


# direct methods
.method public constructor <init>(Lorg/ejml/sparse/ComputePermutation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/sparse/ComputePermutation<",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lorg/ejml/data/DMatrixSparseCSC;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    .line 48
    new-instance v0, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-direct {v0, v1, v1, v1}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->U:Lorg/ejml/data/DMatrixSparseCSC;

    new-array v0, v1, [I

    .line 51
    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->pinv:[I

    new-array v0, v1, [D

    .line 54
    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->x:[D

    .line 55
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/IGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->gxi:Lorg/ejml/data/IGrowArray;

    .line 56
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/IGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    .line 62
    new-instance v0, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;

    invoke-direct {v0, p1, v1}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;-><init>(Lorg/ejml/sparse/ComputePermutation;Z)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->applyReduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;

    return-void
.end method

.method private initialize(Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 5

    .line 72
    iget v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    .line 73
    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    .line 74
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 76
    iget-object v3, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget v4, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v2

    invoke-virtual {v3, v0, v0, v4}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    .line 77
    iget-object v3, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    const/4 v4, 0x0

    iput v4, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    .line 78
    iget-object v3, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->U:Lorg/ejml/data/DMatrixSparseCSC;

    iget p1, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p1, v2

    invoke-virtual {v3, v0, v1, p1}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    .line 79
    iget-object p1, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->U:Lorg/ejml/data/DMatrixSparseCSC;

    iput v4, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    .line 81
    iput-boolean v4, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->singular:Z

    .line 82
    iget-object p1, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->pinv:[I

    array-length p1, p1

    if-eq p1, v0, :cond_0

    .line 83
    new-array p1, v0, [I

    iput-object p1, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->pinv:[I

    .line 84
    new-array p1, v0, [D

    iput-object p1, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->x:[D

    :cond_0
    move p1, v4

    :goto_0
    if-ge p1, v0, :cond_1

    .line 88
    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->pinv:[I

    const/4 v2, -0x1

    aput v2, v1, p1

    .line 89
    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aput v4, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private performLU(Lorg/ejml/data/DMatrixSparseCSC;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 94
    iget v1, v9, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    .line 95
    iget v10, v9, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    .line 96
    iget-object v2, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->applyReduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;

    invoke-virtual {v2}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->getArrayP()[I

    move-result-object v11

    .line 98
    iget-object v2, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    mul-int/lit8 v3, v1, 0x2

    invoke-static {v2, v3, v1}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;II)[I

    move-result-object v12

    const/4 v14, 0x0

    :goto_0
    const/4 v15, 0x1

    if-ge v14, v10, :cond_a

    .line 103
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget-object v2, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget v2, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v2, v1, v14

    .line 104
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->U:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget-object v2, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->U:Lorg/ejml/data/DMatrixSparseCSC;

    iget v2, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v2, v1, v14

    .line 107
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/2addr v1, v10

    iget-object v2, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v2, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 108
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v2, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v10

    invoke-virtual {v1, v2, v15}, Lorg/ejml/data/DMatrixSparseCSC;->growMaxLength(IZ)V

    .line 109
    :cond_0
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->U:Lorg/ejml/data/DMatrixSparseCSC;

    iget v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/2addr v1, v10

    iget-object v2, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->U:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v2, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 110
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->U:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v2, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v10

    invoke-virtual {v1, v2, v15}, Lorg/ejml/data/DMatrixSparseCSC;->growMaxLength(IZ)V

    :cond_1
    if-eqz v11, :cond_2

    .line 112
    aget v1, v11, v14

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v14

    .line 113
    :goto_1
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    const/4 v2, 0x1

    iget-object v5, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->x:[D

    iget-object v6, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->pinv:[I

    iget-object v7, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->gxi:Lorg/ejml/data/IGrowArray;

    move-object/from16 v3, p1

    move-object v8, v12

    invoke-static/range {v1 .. v8}, Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;->solveColB(Lorg/ejml/data/DMatrixSparseCSC;ZLorg/ejml/data/DMatrixSparseCSC;I[D[ILorg/ejml/data/IGrowArray;[I)I

    move-result v1

    .line 114
    iget-object v2, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->gxi:Lorg/ejml/data/IGrowArray;

    iget-object v2, v2, Lorg/ejml/data/IGrowArray;->data:[I

    const-wide v4, -0x10000000000001L

    move v6, v1

    const/4 v7, -0x1

    :goto_2
    if-ge v6, v10, :cond_5

    .line 121
    aget v8, v2, v6

    .line 122
    iget-object v13, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->pinv:[I

    aget v13, v13, v8

    if-gez v13, :cond_4

    .line 124
    iget-object v13, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->x:[D

    aget-wide v16, v13, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    cmpl-double v13, v16, v4

    if-lez v13, :cond_3

    move v7, v8

    move-wide/from16 v4, v16

    :cond_3
    move/from16 v18, v1

    goto :goto_3

    .line 129
    :cond_4
    iget-object v13, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->U:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v13, v13, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget-object v15, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->U:Lorg/ejml/data/DMatrixSparseCSC;

    iget v15, v15, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->pinv:[I

    aget v3, v3, v8

    aput v3, v13, v15

    .line 130
    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->U:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v3, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v13, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->U:Lorg/ejml/data/DMatrixSparseCSC;

    iget v15, v13, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    move/from16 v18, v1

    add-int/lit8 v1, v15, 0x1

    iput v1, v13, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->x:[D

    aget-wide v19, v1, v8

    aput-wide v19, v3, v15

    :goto_3
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v18

    const/4 v15, 0x1

    goto :goto_2

    :cond_5
    move/from16 v18, v1

    const/4 v1, -0x1

    if-eq v7, v1, :cond_9

    const-wide/16 v19, 0x0

    cmpg-double v1, v4, v19

    if-gtz v1, :cond_6

    goto :goto_5

    .line 146
    :cond_6
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->x:[D

    aget-wide v3, v1, v7

    .line 147
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->U:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget-object v5, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->U:Lorg/ejml/data/DMatrixSparseCSC;

    iget v5, v5, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v14, v1, v5

    .line 148
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->U:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v5, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->U:Lorg/ejml/data/DMatrixSparseCSC;

    iget v6, v5, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/lit8 v8, v6, 0x1

    iput v8, v5, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput-wide v3, v1, v6

    .line 149
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->pinv:[I

    aput v14, v1, v7

    .line 150
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget-object v5, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget v5, v5, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v7, v1, v5

    .line 151
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v5, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget v6, v5, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v5, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    aput-wide v7, v1, v6

    move/from16 v1, v18

    :goto_4
    if-ge v1, v10, :cond_8

    .line 154
    aget v5, v2, v1

    .line 155
    iget-object v6, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->pinv:[I

    aget v6, v6, v5

    if-gez v6, :cond_7

    .line 156
    iget-object v6, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v6, v6, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget-object v7, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget v7, v7, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v5, v6, v7

    .line 157
    iget-object v6, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v6, v6, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v7, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget v8, v7, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v7, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget-object v7, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->x:[D

    aget-wide v16, v7, v5

    div-double v16, v16, v3

    aput-wide v16, v6, v8

    .line 159
    :cond_7
    iget-object v6, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->x:[D

    aput-wide v19, v6, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_9
    :goto_5
    const/4 v1, 0x1

    .line 134
    iput-boolean v1, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->singular:Z

    const/4 v1, 0x0

    return v1

    :cond_a
    const/4 v1, 0x0

    .line 163
    iget-object v2, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v2, v2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget v3, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v3, v2, v10

    .line 164
    iget-object v2, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->U:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v2, v2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->U:Lorg/ejml/data/DMatrixSparseCSC;

    iget v3, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v3, v2, v10

    move v13, v1

    .line 165
    :goto_6
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v13, v1, :cond_b

    .line 166
    iget-object v1, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget-object v2, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->pinv:[I

    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v3, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

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
.method public computeDeterminant()Lorg/ejml/data/Complex_F64;
    .locals 5

    .line 183
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->pinv:[I

    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->U:Lorg/ejml/data/DMatrixSparseCSC;

    iget v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget-object v2, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    iget-object v2, v2, Lorg/ejml/data/IGrowArray;->data:[I

    invoke-static {v0, v1, v2}, Lorg/ejml/UtilEjml;->permutationSign([II[I)I

    move-result v0

    int-to-double v0, v0

    const/4 v2, 0x0

    .line 184
    :goto_0
    iget-object v3, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->U:Lorg/ejml/data/DMatrixSparseCSC;

    iget v3, v3, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v2, v3, :cond_0

    .line 185
    iget-object v3, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->U:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v3, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v4, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->U:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v4, v4, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v2, v2, 0x1

    aget v4, v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-wide v3, v3, v4

    mul-double/2addr v0, v3

    goto :goto_0

    .line 187
    :cond_0
    new-instance v2, Lorg/ejml/data/Complex_F64;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v0, v1, v3, v4}, Lorg/ejml/data/Complex_F64;-><init>(DD)V

    return-object v2
.end method

.method public decompose(Lorg/ejml/data/DMatrixSparseCSC;)Z
    .locals 1

    .line 67
    invoke-direct {p0, p1}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->initialize(Lorg/ejml/data/DMatrixSparseCSC;)V

    .line 68
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->applyReduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;

    invoke-virtual {v0, p1}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->apply(Lorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->performLU(Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->decompose(Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public getGw()Lorg/ejml/data/IGrowArray;
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    return-object v0
.end method

.method public getGxi()Lorg/ejml/data/IGrowArray;
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->gxi:Lorg/ejml/data/IGrowArray;

    return-object v0
.end method

.method public getL()Lorg/ejml/data/DMatrixSparseCSC;
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    return-object v0
.end method

.method public getLower(Lorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 2

    if-nez p1, :cond_0

    .line 193
    new-instance p1, Lorg/ejml/data/DMatrixSparseCSC;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v1, v1, v0}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    .line 194
    :cond_0
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p1, v0}, Lorg/ejml/data/DMatrixSparseCSC;->set(Lorg/ejml/data/Matrix;)V

    return-object p1
.end method

.method public bridge synthetic getLower(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->getLower(Lorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p1

    return-object p1
.end method

.method public getPinv()[I
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->pinv:[I

    return-object v0
.end method

.method public getReduceFill()Lorg/ejml/sparse/ComputePermutation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/sparse/ComputePermutation<",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            ">;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->applyReduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->getFillReduce()Lorg/ejml/sparse/ComputePermutation;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 257
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Check to see if there is any fill reduce ordering to apply first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReducePermutation()[I
    .locals 2

    .line 262
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->applyReduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->getArrayP()[I

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 264
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Check to see if there is any fill reduce ordering to apply first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRowPivot(Lorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 3

    if-nez p1, :cond_0

    .line 209
    new-instance p1, Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget v0, v0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    .line 210
    :cond_0
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget v0, v0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget-object v2, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget v2, v2, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    .line 211
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->pinv:[I

    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->permutationMatrix([IZILorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;

    return-object p1
.end method

.method public bridge synthetic getRowPivot(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->getRowPivot(Lorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p1

    return-object p1
.end method

.method public getRowPivotV(Lorg/ejml/data/IGrowArray;)[I
    .locals 2

    .line 217
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->pinv:[I

    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-static {v0, v1, p1}, Lorg/ejml/UtilEjml;->pivotVector([IILorg/ejml/data/IGrowArray;)[I

    move-result-object p1

    return-object p1
.end method

.method public getU()Lorg/ejml/data/DMatrixSparseCSC;
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->U:Lorg/ejml/data/DMatrixSparseCSC;

    return-object v0
.end method

.method public getUpper(Lorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 2

    if-nez p1, :cond_0

    .line 201
    new-instance p1, Lorg/ejml/data/DMatrixSparseCSC;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v1, v1, v0}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->U:Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p1, v0}, Lorg/ejml/data/DMatrixSparseCSC;->set(Lorg/ejml/data/Matrix;)V

    return-object p1
.end method

.method public bridge synthetic getUpper(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->getUpper(Lorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;

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

    .line 251
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->applyReduce:Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;

    invoke-virtual {v0}, Lorg/ejml/sparse/csc/misc/ApplyFillReductionPermutation_DSCC;->isApplied()Z

    move-result v0

    return v0
.end method

.method public isSingular()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lorg/ejml/sparse/csc/decomposition/lu/LuUpLooking_DSCC;->singular:Z

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

    .line 271
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t lock a LU decomposition. Pivots change depending on numerical values and not justthe matrix\'s structure"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
