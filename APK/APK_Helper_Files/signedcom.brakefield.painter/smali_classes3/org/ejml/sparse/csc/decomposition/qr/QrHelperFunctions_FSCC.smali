.class public Lorg/ejml/sparse/csc/decomposition/qr/QrHelperFunctions_FSCC;
.super Ljava/lang/Object;
.source "QrHelperFunctions_FSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyHouseholder(Lorg/ejml/data/FMatrixSparseCSC;IF[F)V
    .locals 5

    .line 52
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v0, v0, p1

    .line 53
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v1, p1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 58
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v3, v3, v2

    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v2

    aget v4, p3, v4

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    mul-float/2addr v1, p2

    :goto_1
    if-ge v0, p1, :cond_1

    .line 64
    iget-object p2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget p2, p2, v0

    aget v2, p3, p2

    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v3, v3, v0

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    aput v2, p3, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static computeHouseholder([FIIFLorg/ejml/data/FScalar;)F
    .locals 4

    const/4 v0, 0x0

    move v1, p1

    move v2, v0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 116
    aget v3, p0, v1

    div-float/2addr v3, p3

    aput v3, p0, v1

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    float-to-double v1, v2

    .line 119
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 120
    aget v2, p0, p1

    cmpg-float v0, v2, v0

    if-gez v0, :cond_1

    neg-float v1, v1

    :cond_1
    add-float/2addr v2, v1

    div-float v0, v2, v1

    .line 124
    iput v0, p4, Lorg/ejml/data/FScalar;->value:F

    const/high16 p4, 0x3f800000    # 1.0f

    .line 125
    aput p4, p0, p1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_2

    .line 127
    aget p4, p0, p1

    div-float/2addr p4, v2

    aput p4, p0, p1

    goto :goto_1

    :cond_2
    neg-float p0, v1

    mul-float/2addr p0, p3

    return p0
.end method

.method public static rank1UpdateMultR(Lorg/ejml/data/FMatrixSparseCSC;IFLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)V
    .locals 13

    move-object v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 87
    iget v0, v8, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, v9, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 90
    iput v0, v10, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    .line 91
    iget v1, v8, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iput v1, v10, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    .line 92
    iput v0, v10, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    move v11, v0

    .line 94
    :goto_0
    iget v0, v9, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v11, v0, :cond_0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p3

    move v3, v11

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 95
    invoke-static/range {v0 .. v5}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->dotInnerColumns(Lorg/ejml/data/FMatrixSparseCSC;ILorg/ejml/data/FMatrixSparseCSC;ILorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    move v12, p2

    neg-float v2, v12

    mul-float v3, v2, v0

    move v0, v1

    move-object/from16 v1, p3

    move v2, v11

    move-object v4, p0

    move v5, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 96
    invoke-static/range {v0 .. v7}, Lorg/ejml/sparse/csc/misc/ImplCommonOps_FSCC;->addColAppend(FLorg/ejml/data/FMatrixSparseCSC;IFLorg/ejml/data/FMatrixSparseCSC;ILorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 88
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of rows in V and A must match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
