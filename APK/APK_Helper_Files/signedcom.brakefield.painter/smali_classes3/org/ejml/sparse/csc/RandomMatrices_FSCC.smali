.class public Lorg/ejml/sparse/csc/RandomMatrices_FSCC;
.super Ljava/lang/Object;
.source "RandomMatrices_FSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureNotSingular(Lorg/ejml/data/FMatrixSparseCSC;Ljava/util/Random;)V
    .locals 6

    .line 387
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-static {v0, p1}, Lorg/ejml/UtilEjml;->shuffled(ILjava/util/Random;)[I

    move-result-object v0

    .line 388
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 390
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 392
    aget v3, v0, v2

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    invoke-virtual {p0, v3, v2, v4}, Lorg/ejml/data/FMatrixSparseCSC;->set(IIF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static generateUniform(IIIFFLjava/util/Random;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 15

    move v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p5

    if-gt v2, v0, :cond_b

    mul-int v4, v2, v1

    int-to-long v4, v4

    .line 309
    invoke-static {v4, v5}, Ljava/lang/Math;->toIntExact(J)I

    move-result v4

    .line 311
    new-instance v5, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-direct {v5, p0, v1, v4}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    const/4 v4, 0x1

    .line 312
    iput-boolean v4, v5, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    if-nez v2, :cond_0

    return-object v5

    .line 318
    :cond_0
    new-array v6, v1, [I

    .line 319
    invoke-static {v6, v2}, Ljava/util/Arrays;->fill([II)V

    .line 320
    invoke-virtual {v5, v6}, Lorg/ejml/data/FMatrixSparseCSC;->histogramToStructure([I)V

    .line 322
    new-array v6, v0, [Z

    int-to-float v7, v2

    int-to-float v8, v0

    div-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    cmpl-float v7, v7, v8

    const/4 v8, 0x0

    if-lez v7, :cond_1

    move v7, v4

    goto :goto_0

    :cond_1
    move v7, v8

    :goto_0
    move v9, v8

    :goto_1
    if-ge v9, v1, :cond_a

    if-eqz v7, :cond_2

    .line 331
    invoke-static {v6, v4}, Ljava/util/Arrays;->fill([ZZ)V

    goto :goto_2

    .line 333
    :cond_2
    invoke-static {v6, v8}, Ljava/util/Arrays;->fill([ZZ)V

    :goto_2
    mul-int v10, v9, v2

    if-eqz v7, :cond_6

    move v11, v8

    :goto_3
    sub-int v12, v0, v2

    if-ge v11, v12, :cond_4

    .line 341
    invoke-virtual {v3, p0}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    .line 343
    :goto_4
    aget-boolean v13, v6, v12

    if-nez v13, :cond_3

    .line 344
    invoke-virtual {v3, p0}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    goto :goto_4

    .line 347
    :cond_3
    aput-boolean v8, v6, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    move v11, v8

    :goto_5
    if-ge v11, v0, :cond_9

    .line 351
    aget-boolean v12, v6, v11

    if-eqz v12, :cond_5

    .line 352
    iget-object v12, v5, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aput v11, v12, v10

    .line 353
    iget-object v12, v5, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v13

    sub-float v14, p4, p3

    mul-float/2addr v13, v14

    add-float v13, v13, p3

    aput v13, v12, v10

    add-int/lit8 v10, v10, 0x1

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_6
    move v11, v8

    :goto_6
    if-ge v11, v2, :cond_8

    .line 359
    invoke-virtual {v3, p0}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    .line 362
    :goto_7
    aget-boolean v13, v6, v12

    if-eqz v13, :cond_7

    .line 363
    invoke-virtual {v3, p0}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    goto :goto_7

    .line 366
    :cond_7
    aput-boolean v4, v6, v12

    .line 367
    iget-object v13, v5, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aput v12, v13, v10

    .line 368
    iget-object v12, v5, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v13

    sub-float v14, p4, p3

    mul-float/2addr v13, v14

    add-float v13, v13, p3

    aput v13, v12, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 372
    :cond_8
    iget-object v11, v5, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    sub-int v12, v10, v2

    invoke-static {v11, v12, v10}, Ljava/util/Arrays;->sort([III)V

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_a
    return-object v5

    .line 306
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "numRows must be greater than nzEntriesPerColumn"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static nonzero(IIFFLjava/util/Random;)I
    .locals 0

    mul-int/2addr p0, p1

    int-to-float p0, p0

    .line 232
    invoke-virtual {p4}, Ljava/util/Random;->nextFloat()F

    move-result p1

    sub-float/2addr p3, p2

    mul-float/2addr p1, p3

    add-float/2addr p1, p2

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static rectangle(IIIFFLjava/util/Random;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 7

    .line 52
    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->exceedsMaxMatrixSize(II)Z

    move-result v0

    if-nez v0, :cond_2

    mul-int v0, p0, p1

    .line 55
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 56
    invoke-static {v0, p2, p5}, Lorg/ejml/UtilEjml;->shuffled(IILjava/util/Random;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 57
    invoke-static {v0, v1, p2}, Ljava/util/Arrays;->sort([III)V

    .line 59
    new-instance v2, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-direct {v2, p0, p1, p2}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    const/4 v3, 0x1

    .line 60
    iput-boolean v3, v2, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    .line 63
    new-array p1, p1, [I

    move v4, v1

    :goto_0
    if-ge v4, p2, :cond_0

    .line 65
    aget v5, v0, v4

    div-int/2addr v5, p0

    aget v6, p1, v5

    add-int/2addr v6, v3

    aput v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v2, p1}, Lorg/ejml/data/FMatrixSparseCSC;->histogramToStructure([I)V

    :goto_1
    if-ge v1, p2, :cond_1

    .line 72
    aget p1, v0, v1

    rem-int/2addr p1, p0

    .line 74
    iget-object v3, v2, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aput p1, v3, v1

    .line 75
    iget-object p1, v2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    invoke-virtual {p5}, Ljava/util/Random;->nextFloat()F

    move-result v3

    sub-float v4, p4, p3

    mul-float/2addr v3, v4

    add-float/2addr v3, p3

    aput v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v2

    .line 53
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Due to how a random matrix is created, rows*cols < Integer.MAX_VALUE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static rectangle(IIILjava/util/Random;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 6

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    .line 82
    invoke-static/range {v0 .. v5}, Lorg/ejml/sparse/csc/RandomMatrices_FSCC;->rectangle(IIIFFLjava/util/Random;)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p0

    return-object p0
.end method

.method public static symmetric(IIFFLjava/util/Random;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 7

    .line 98
    invoke-static {p0, p0}, Lorg/ejml/UtilEjml;->exceedsMaxMatrixSize(II)Z

    move-result v0

    if-nez v0, :cond_5

    if-ltz p0, :cond_4

    mul-int v0, p0, p0

    add-int/2addr v0, p0

    .line 104
    div-int/lit8 v0, v0, 0x2

    .line 106
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, p0, :cond_1

    move v5, v3

    :goto_1
    if-ge v5, p0, :cond_0

    mul-int v6, v3, p0

    add-int/2addr v6, v5

    .line 109
    aput v6, v1, v4

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    :cond_1
    invoke-static {v1, v0, v2, p1, p4}, Lorg/ejml/UtilEjml;->shuffle([IIIILjava/util/Random;)V

    .line 115
    invoke-static {v1, v2, p1}, Ljava/util/Arrays;->sort([III)V

    .line 118
    new-instance v0, Lorg/ejml/data/FMatrixSparseTriplet;

    mul-int/lit8 v3, p1, 0x2

    invoke-direct {v0, p0, p0, v3}, Lorg/ejml/data/FMatrixSparseTriplet;-><init>(III)V

    :goto_2
    if-ge v2, p1, :cond_3

    .line 120
    aget v3, v1, v2

    .line 121
    div-int v4, v3, p0

    .line 122
    rem-int/2addr v3, p0

    .line 124
    invoke-virtual {p4}, Ljava/util/Random;->nextFloat()F

    move-result v5

    sub-float v6, p3, p2

    mul-float/2addr v5, v6

    add-float/2addr v5, p2

    if-ne v4, v3, :cond_2

    .line 127
    invoke-virtual {v0, v4, v3, v5}, Lorg/ejml/data/FMatrixSparseTriplet;->addItem(IIF)V

    goto :goto_3

    .line 129
    :cond_2
    invoke-virtual {v0, v4, v3, v5}, Lorg/ejml/data/FMatrixSparseTriplet;->addItem(IIF)V

    .line 130
    invoke-virtual {v0, v3, v4, v5}, Lorg/ejml/data/FMatrixSparseTriplet;->addItem(IIF)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 134
    :cond_3
    new-instance p1, Lorg/ejml/data/FMatrixSparseCSC;

    iget p2, v0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    invoke-direct {p1, p0, p0, p2}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    .line 135
    invoke-static {v0, p1}, Lorg/ejml/ops/FConvertMatrixStruct;->convert(Lorg/ejml/data/FMatrixSparseTriplet;Lorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;

    return-object p1

    .line 101
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Matrix must have a positive size. N="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Due to how a random matrix is created, N*N < Integer.MAX_VALUE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static symmetricPosDef(IFLjava/util/Random;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 7

    .line 264
    invoke-static {p0, p0}, Lorg/ejml/UtilEjml;->exceedsMaxMatrixSize(II)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-gtz v1, :cond_3

    .line 271
    new-instance v1, Lorg/ejml/data/FMatrixRMaj;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 272
    new-instance v3, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v3, p0, p0}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    :goto_0
    const/4 v4, 0x0

    if-ge v2, p0, :cond_1

    .line 275
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v5

    cmpl-float v5, v5, p1

    if-ltz v5, :cond_0

    .line 276
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    sub-float/2addr v5, v0

    invoke-virtual {v1, v2, v4, v5}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 279
    :cond_1
    invoke-static {v1, v1, v3}, Lorg/ejml/dense/row/CommonOps_FDRM;->multTransB(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;

    :goto_1
    if-ge v4, p0, :cond_2

    .line 282
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    invoke-virtual {v3, v4, v4, p1}, Lorg/ejml/data/FMatrixRMaj;->add(IIF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 285
    :cond_2
    new-instance p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-direct {p1, p0, p0, p0}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    .line 286
    sget p0, Lorg/ejml/UtilEjml;->TEST_F32:F

    invoke-static {v3, p1, p0}, Lorg/ejml/ops/FConvertMatrixStruct;->convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixSparseCSC;F)Lorg/ejml/data/FMatrixSparseCSC;

    return-object p1

    .line 268
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid value for probabilityZero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 265
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Due to how a random matrix is created, width*width < Integer.MAX_VALUE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static triangle(ZIFFLjava/util/Random;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 6

    add-int/lit8 v0, p1, -0x1

    mul-int/2addr v0, v0

    .line 246
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p4}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-float/2addr p3, p2

    mul-float/2addr v1, p3

    add-float/2addr v1, p2

    mul-float/2addr v0, v1

    float-to-int p2, v0

    add-int v2, p2, p1

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move v0, p1

    move-object v5, p4

    .line 249
    invoke-static/range {v0 .. v5}, Lorg/ejml/sparse/csc/RandomMatrices_FSCC;->triangleUpper(IIIFFLjava/util/Random;)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move v0, p1

    move-object v5, p4

    .line 251
    invoke-static/range {v0 .. v5}, Lorg/ejml/sparse/csc/RandomMatrices_FSCC;->triangleLower(IIIFFLjava/util/Random;)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p0

    return-object p0
.end method

.method public static triangleLower(IIIFFLjava/util/Random;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 17

    move/from16 v0, p0

    move/from16 v1, p1

    sub-int v2, v0, v1

    .line 159
    new-array v3, v0, [I

    .line 160
    new-array v4, v0, [I

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v0, :cond_3

    add-int/lit8 v8, v0, -0x1

    add-int v9, v8, v1

    if-ge v6, v9, :cond_0

    .line 164
    aput v7, v3, v6

    :cond_0
    if-ge v6, v1, :cond_1

    move v8, v0

    goto :goto_1

    :cond_1
    sub-int/2addr v8, v6

    add-int/2addr v8, v1

    :goto_1
    add-int/2addr v7, v8

    if-ge v6, v9, :cond_2

    .line 166
    aput v7, v4, v6

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    add-int/2addr v7, v2

    move/from16 v6, p2

    .line 171
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 172
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int v8, v6, v2

    sub-int/2addr v7, v2

    move-object/from16 v2, p5

    .line 177
    invoke-static {v7, v8, v2}, Lorg/ejml/UtilEjml;->shuffled(IILjava/util/Random;)[I

    move-result-object v7

    .line 178
    invoke-static {v7, v5, v8}, Ljava/util/Arrays;->sort([III)V

    .line 180
    new-instance v9, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-direct {v9, v0, v0, v6}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    .line 183
    new-array v6, v0, [I

    move v10, v5

    move v11, v10

    :goto_2
    if-ge v10, v0, :cond_6

    if-lt v10, v1, :cond_4

    .line 187
    aget v12, v6, v10

    add-int/lit8 v12, v12, 0x1

    aput v12, v6, v10

    :cond_4
    :goto_3
    if-ge v11, v8, :cond_5

    .line 188
    aget v12, v7, v11

    aget v13, v4, v10

    if-ge v12, v13, :cond_5

    .line 189
    aget v12, v6, v10

    add-int/lit8 v12, v12, 0x1

    aput v12, v6, v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 195
    :cond_6
    invoke-virtual {v9, v6}, Lorg/ejml/data/FMatrixSparseCSC;->histogramToStructure([I)V

    move v6, v5

    move v10, v6

    move v11, v10

    :goto_4
    if-ge v6, v0, :cond_a

    if-lt v6, v1, :cond_7

    sub-int v12, v6, v1

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_7
    move v12, v5

    :goto_5
    if-lt v6, v1, :cond_8

    .line 204
    iget-object v13, v9, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    sub-int v14, v6, v1

    aput v14, v13, v10

    .line 205
    iget-object v13, v9, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    add-int/lit8 v14, v10, 0x1

    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v15

    sub-float v16, p4, p3

    mul-float v15, v15, v16

    add-float v15, v15, p3

    aput v15, v13, v10

    :goto_6
    move v10, v14

    :cond_8
    if-ge v11, v8, :cond_9

    .line 209
    aget v13, v7, v11

    aget v14, v4, v6

    if-ge v13, v14, :cond_9

    add-int/lit8 v11, v11, 0x1

    .line 211
    aget v14, v3, v6

    sub-int/2addr v13, v14

    add-int/2addr v13, v12

    .line 213
    iget-object v14, v9, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aput v13, v14, v10

    .line 214
    iget-object v13, v9, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    add-int/lit8 v14, v10, 0x1

    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v15

    sub-float v16, p4, p3

    mul-float v15, v15, v16

    add-float v15, v15, p3

    aput v15, v13, v10

    goto :goto_6

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_a
    return-object v9
.end method

.method public static triangleUpper(IIIFFLjava/util/Random;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 0

    .line 223
    invoke-static/range {p0 .. p5}, Lorg/ejml/sparse/csc/RandomMatrices_FSCC;->triangleLower(IIIFFLjava/util/Random;)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p0

    .line 224
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixSparseCSC;->createLike()Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p1

    const/4 p2, 0x0

    .line 226
    invoke-static {p0, p1, p2}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->transpose(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)Lorg/ejml/data/FMatrixSparseCSC;

    return-object p1
.end method
