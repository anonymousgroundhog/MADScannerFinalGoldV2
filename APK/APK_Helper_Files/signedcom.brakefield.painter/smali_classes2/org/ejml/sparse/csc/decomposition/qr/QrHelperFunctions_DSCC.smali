.class public Lorg/ejml/sparse/csc/decomposition/qr/QrHelperFunctions_DSCC;
.super Ljava/lang/Object;
.source "QrHelperFunctions_DSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyHouseholder(Lorg/ejml/data/DMatrixSparseCSC;ID[D)V
    .locals 8

    .line 50
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v0, v0, p1

    .line 51
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v1, p1

    const-wide/16 v1, 0x0

    move v3, v0

    :goto_0
    if-ge v3, p1, :cond_0

    .line 56
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v4, v4, v3

    iget-object v6, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v6, v6, v3

    aget-wide v6, p4, v6

    mul-double/2addr v4, v6

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    mul-double/2addr v1, p2

    :goto_1
    if-ge v0, p1, :cond_1

    .line 62
    iget-object p2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget p2, p2, v0

    aget-wide v3, p4, p2

    iget-object p3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v5, p3, v0

    mul-double/2addr v5, v1

    sub-double/2addr v3, v5

    aput-wide v3, p4, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static computeHouseholder([DIIDLorg/ejml/data/DScalar;)D
    .locals 7

    const-wide/16 v0, 0x0

    move v2, p1

    move-wide v3, v0

    :goto_0
    if-ge v2, p2, :cond_0

    .line 114
    aget-wide v5, p0, v2

    div-double/2addr v5, p3

    aput-wide v5, p0, v2

    mul-double/2addr v5, v5

    add-double/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 118
    aget-wide v4, p0, p1

    cmpg-double v0, v4, v0

    if-gez v0, :cond_1

    neg-double v2, v2

    :cond_1
    add-double/2addr v4, v2

    div-double v0, v4, v2

    .line 122
    iput-wide v0, p5, Lorg/ejml/data/DScalar;->value:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 123
    aput-wide v0, p0, p1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_2

    .line 125
    aget-wide v0, p0, p1

    div-double/2addr v0, v4

    aput-wide v0, p0, p1

    goto :goto_1

    :cond_2
    neg-double p0, v2

    mul-double/2addr p0, p3

    return-wide p0
.end method

.method public static rank1UpdateMultR(Lorg/ejml/data/DMatrixSparseCSC;IDLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    .line 85
    iget v0, v10, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, v11, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 88
    iput v0, v12, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    .line 89
    iget v1, v10, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iput v1, v12, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    .line 90
    iput v0, v12, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    move v13, v0

    .line 92
    :goto_0
    iget v0, v11, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v13, v0, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move v3, v13

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    .line 93
    invoke-static/range {v0 .. v5}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->dotInnerColumns(Lorg/ejml/data/DMatrixSparseCSC;ILorg/ejml/data/DMatrixSparseCSC;ILorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v14, p2

    neg-double v4, v14

    mul-double/2addr v4, v0

    move-wide v0, v2

    move-object/from16 v2, p4

    move v3, v13

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 94
    invoke-static/range {v0 .. v9}, Lorg/ejml/sparse/csc/misc/ImplCommonOps_DSCC;->addColAppend(DLorg/ejml/data/DMatrixSparseCSC;IDLorg/ejml/data/DMatrixSparseCSC;ILorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of rows in V and A must match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
