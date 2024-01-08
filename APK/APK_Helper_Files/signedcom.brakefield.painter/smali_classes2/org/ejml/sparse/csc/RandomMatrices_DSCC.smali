.class public Lorg/ejml/sparse/csc/RandomMatrices_DSCC;
.super Ljava/lang/Object;
.source "RandomMatrices_DSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureNotSingular(Lorg/ejml/data/DMatrixSparseCSC;Ljava/util/Random;)V
    .locals 8

    .line 385
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-static {v0, p1}, Lorg/ejml/UtilEjml;->shuffled(ILjava/util/Random;)[I

    move-result-object v0

    .line 386
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 388
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 390
    aget v3, v0, v2

    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    invoke-virtual {p0, v3, v2, v4, v5}, Lorg/ejml/data/DMatrixSparseCSC;->set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static generateUniform(IIIDDLjava/util/Random;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 17

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p7

    if-gt v2, v0, :cond_b

    mul-int v4, v2, v1

    int-to-long v4, v4

    .line 307
    invoke-static {v4, v5}, Ljava/lang/Math;->toIntExact(J)I

    move-result v4

    .line 309
    new-instance v5, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-direct {v5, v0, v1, v4}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    const/4 v4, 0x1

    .line 310
    iput-boolean v4, v5, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    if-nez v2, :cond_0

    return-object v5

    .line 316
    :cond_0
    new-array v6, v1, [I

    .line 317
    invoke-static {v6, v2}, Ljava/util/Arrays;->fill([II)V

    .line 318
    invoke-virtual {v5, v6}, Lorg/ejml/data/DMatrixSparseCSC;->histogramToStructure([I)V

    .line 320
    new-array v6, v0, [Z

    int-to-float v7, v2

    int-to-float v8, v0

    div-float/2addr v7, v8

    float-to-double v7, v7

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    cmpl-double v7, v7, v9

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

    .line 329
    invoke-static {v6, v4}, Ljava/util/Arrays;->fill([ZZ)V

    goto :goto_2

    .line 331
    :cond_2
    invoke-static {v6, v8}, Ljava/util/Arrays;->fill([ZZ)V

    :goto_2
    mul-int v10, v9, v2

    if-eqz v7, :cond_6

    move v11, v8

    :goto_3
    sub-int v12, v0, v2

    if-ge v11, v12, :cond_4

    .line 339
    invoke-virtual {v3, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    .line 341
    :goto_4
    aget-boolean v13, v6, v12

    if-nez v13, :cond_3

    .line 342
    invoke-virtual {v3, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    goto :goto_4

    .line 345
    :cond_3
    aput-boolean v8, v6, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    move v11, v8

    :goto_5
    if-ge v11, v0, :cond_9

    .line 349
    aget-boolean v12, v6, v11

    if-eqz v12, :cond_5

    .line 350
    iget-object v12, v5, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aput v11, v12, v10

    .line 351
    iget-object v12, v5, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    invoke-virtual/range {p7 .. p7}, Ljava/util/Random;->nextDouble()D

    move-result-wide v13

    sub-double v15, p5, p3

    mul-double/2addr v13, v15

    add-double v13, v13, p3

    aput-wide v13, v12, v10

    add-int/lit8 v10, v10, 0x1

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_6
    move v11, v8

    :goto_6
    if-ge v11, v2, :cond_8

    .line 357
    invoke-virtual {v3, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    .line 360
    :goto_7
    aget-boolean v13, v6, v12

    if-eqz v13, :cond_7

    .line 361
    invoke-virtual {v3, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    goto :goto_7

    .line 364
    :cond_7
    aput-boolean v4, v6, v12

    .line 365
    iget-object v13, v5, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aput v12, v13, v10

    .line 366
    iget-object v12, v5, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    invoke-virtual/range {p7 .. p7}, Ljava/util/Random;->nextDouble()D

    move-result-wide v13

    sub-double v15, p5, p3

    mul-double/2addr v13, v15

    add-double v13, v13, p3

    aput-wide v13, v12, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 370
    :cond_8
    iget-object v11, v5, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    sub-int v12, v10, v2

    invoke-static {v11, v12, v10}, Ljava/util/Arrays;->sort([III)V

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_a
    return-object v5

    .line 304
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "numRows must be greater than nzEntriesPerColumn"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static nonzero(IIDDLjava/util/Random;)I
    .locals 2

    mul-int/2addr p0, p1

    int-to-double p0, p0

    .line 230
    invoke-virtual {p6}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    sub-double/2addr p4, p2

    mul-double/2addr v0, p4

    add-double/2addr v0, p2

    mul-double/2addr p0, v0

    const-wide/high16 p2, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, p2

    double-to-int p0, p0

    return p0
.end method

.method public static rectangle(IIIDDLjava/util/Random;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 7

    .line 50
    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->exceedsMaxMatrixSize(II)Z

    move-result v0

    if-nez v0, :cond_2

    mul-int v0, p0, p1

    .line 53
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 54
    invoke-static {v0, p2, p7}, Lorg/ejml/UtilEjml;->shuffled(IILjava/util/Random;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 55
    invoke-static {v0, v1, p2}, Ljava/util/Arrays;->sort([III)V

    .line 57
    new-instance v2, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-direct {v2, p0, p1, p2}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    const/4 v3, 0x1

    .line 58
    iput-boolean v3, v2, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    .line 61
    new-array p1, p1, [I

    move v4, v1

    :goto_0
    if-ge v4, p2, :cond_0

    .line 63
    aget v5, v0, v4

    div-int/2addr v5, p0

    aget v6, p1, v5

    add-int/2addr v6, v3

    aput v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v2, p1}, Lorg/ejml/data/DMatrixSparseCSC;->histogramToStructure([I)V

    :goto_1
    if-ge v1, p2, :cond_1

    .line 70
    aget p1, v0, v1

    rem-int/2addr p1, p0

    .line 72
    iget-object v3, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aput p1, v3, v1

    .line 73
    iget-object p1, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    invoke-virtual {p7}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    sub-double v5, p5, p3

    mul-double/2addr v3, v5

    add-double/2addr v3, p3

    aput-wide v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v2

    .line 51
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Due to how a random matrix is created, rows*cols < Integer.MAX_VALUE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static rectangle(IIILjava/util/Random;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 8

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    move v0, p0

    move v1, p1

    move v2, p2

    move-object v7, p3

    .line 80
    invoke-static/range {v0 .. v7}, Lorg/ejml/sparse/csc/RandomMatrices_DSCC;->rectangle(IIIDDLjava/util/Random;)Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p0

    return-object p0
.end method

.method public static symmetric(IIDDLjava/util/Random;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 9

    .line 96
    invoke-static {p0, p0}, Lorg/ejml/UtilEjml;->exceedsMaxMatrixSize(II)Z

    move-result v0

    if-nez v0, :cond_5

    if-ltz p0, :cond_4

    mul-int v0, p0, p0

    add-int/2addr v0, p0

    .line 102
    div-int/lit8 v0, v0, 0x2

    .line 104
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

    .line 107
    aput v6, v1, v4

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    :cond_1
    invoke-static {v1, v0, v2, p1, p6}, Lorg/ejml/UtilEjml;->shuffle([IIIILjava/util/Random;)V

    .line 113
    invoke-static {v1, v2, p1}, Ljava/util/Arrays;->sort([III)V

    .line 116
    new-instance v0, Lorg/ejml/data/DMatrixSparseTriplet;

    mul-int/lit8 v3, p1, 0x2

    invoke-direct {v0, p0, p0, v3}, Lorg/ejml/data/DMatrixSparseTriplet;-><init>(III)V

    :goto_2
    if-ge v2, p1, :cond_3

    .line 118
    aget v3, v1, v2

    .line 119
    div-int v4, v3, p0

    .line 120
    rem-int/2addr v3, p0

    .line 122
    invoke-virtual {p6}, Ljava/util/Random;->nextDouble()D

    move-result-wide v5

    sub-double v7, p4, p2

    mul-double/2addr v5, v7

    add-double/2addr v5, p2

    if-ne v4, v3, :cond_2

    .line 125
    invoke-virtual {v0, v4, v3, v5, v6}, Lorg/ejml/data/DMatrixSparseTriplet;->addItem(IID)V

    goto :goto_3

    .line 127
    :cond_2
    invoke-virtual {v0, v4, v3, v5, v6}, Lorg/ejml/data/DMatrixSparseTriplet;->addItem(IID)V

    .line 128
    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/ejml/data/DMatrixSparseTriplet;->addItem(IID)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 132
    :cond_3
    new-instance p1, Lorg/ejml/data/DMatrixSparseCSC;

    iget p2, v0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    invoke-direct {p1, p0, p0, p2}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    .line 133
    invoke-static {v0, p1}, Lorg/ejml/ops/DConvertMatrixStruct;->convert(Lorg/ejml/data/DMatrixSparseTriplet;Lorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;

    return-object p1

    .line 99
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

    .line 97
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Due to how a random matrix is created, N*N < Integer.MAX_VALUE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static symmetricPosDef(IDLjava/util/Random;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 10

    .line 262
    invoke-static {p0, p0}, Lorg/ejml/UtilEjml;->exceedsMaxMatrixSize(II)Z

    move-result v0

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-gtz v2, :cond_3

    .line 269
    new-instance v2, Lorg/ejml/data/DMatrixRMaj;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 270
    new-instance v4, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v4, p0, p0}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    :goto_0
    const/4 v5, 0x0

    if-ge v3, p0, :cond_1

    .line 273
    invoke-virtual {p3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    cmpl-double v6, v6, p1

    if-ltz v6, :cond_0

    .line 274
    invoke-virtual {p3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    sub-double/2addr v6, v0

    invoke-virtual {v2, v3, v5, v6, v7}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 277
    :cond_1
    invoke-static {v2, v2, v4}, Lorg/ejml/dense/row/CommonOps_DDRM;->multTransB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;

    :goto_1
    if-ge v5, p0, :cond_2

    .line 280
    invoke-virtual {p3}, Ljava/util/Random;->nextDouble()D

    move-result-wide p1

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double/2addr p1, v2

    add-double/2addr p1, v0

    invoke-virtual {v4, v5, v5, p1, p2}, Lorg/ejml/data/DMatrixRMaj;->add(IID)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 283
    :cond_2
    new-instance p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-direct {p1, p0, p0, p0}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    .line 284
    sget-wide p2, Lorg/ejml/UtilEjml;->TEST_F64:D

    invoke-static {v4, p1, p2, p3}, Lorg/ejml/ops/DConvertMatrixStruct;->convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixSparseCSC;D)Lorg/ejml/data/DMatrixSparseCSC;

    return-object p1

    .line 266
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid value for probabilityZero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 263
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Due to how a random matrix is created, width*width < Integer.MAX_VALUE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static triangle(ZIDDLjava/util/Random;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 8

    add-int/lit8 v0, p1, -0x1

    mul-int/2addr v0, v0

    .line 244
    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-virtual {p6}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    sub-double/2addr p4, p2

    mul-double/2addr v2, p4

    add-double/2addr v2, p2

    mul-double/2addr v0, v2

    double-to-int p2, v0

    add-int v2, p2, p1

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    move v0, p1

    move-object v7, p6

    .line 247
    invoke-static/range {v0 .. v7}, Lorg/ejml/sparse/csc/RandomMatrices_DSCC;->triangleUpper(IIIDDLjava/util/Random;)Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    move v0, p1

    move-object v7, p6

    .line 249
    invoke-static/range {v0 .. v7}, Lorg/ejml/sparse/csc/RandomMatrices_DSCC;->triangleLower(IIIDDLjava/util/Random;)Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p0

    return-object p0
.end method

.method public static triangleLower(IIIDDLjava/util/Random;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 19

    move/from16 v0, p0

    move/from16 v1, p1

    sub-int v2, v0, v1

    .line 157
    new-array v3, v0, [I

    .line 158
    new-array v4, v0, [I

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v0, :cond_3

    add-int/lit8 v8, v0, -0x1

    add-int v9, v8, v1

    if-ge v6, v9, :cond_0

    .line 162
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

    .line 164
    aput v7, v4, v6

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    add-int/2addr v7, v2

    move/from16 v6, p2

    .line 169
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 170
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int v8, v6, v2

    sub-int/2addr v7, v2

    move-object/from16 v2, p7

    .line 175
    invoke-static {v7, v8, v2}, Lorg/ejml/UtilEjml;->shuffled(IILjava/util/Random;)[I

    move-result-object v7

    .line 176
    invoke-static {v7, v5, v8}, Ljava/util/Arrays;->sort([III)V

    .line 178
    new-instance v9, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-direct {v9, v0, v0, v6}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    .line 181
    new-array v6, v0, [I

    move v10, v5

    move v11, v10

    :goto_2
    if-ge v10, v0, :cond_6

    if-lt v10, v1, :cond_4

    .line 185
    aget v12, v6, v10

    add-int/lit8 v12, v12, 0x1

    aput v12, v6, v10

    :cond_4
    :goto_3
    if-ge v11, v8, :cond_5

    .line 186
    aget v12, v7, v11

    aget v13, v4, v10

    if-ge v12, v13, :cond_5

    .line 187
    aget v12, v6, v10

    add-int/lit8 v12, v12, 0x1

    aput v12, v6, v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 193
    :cond_6
    invoke-virtual {v9, v6}, Lorg/ejml/data/DMatrixSparseCSC;->histogramToStructure([I)V

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

    .line 202
    iget-object v13, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    sub-int v14, v6, v1

    aput v14, v13, v10

    .line 203
    iget-object v13, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    add-int/lit8 v14, v10, 0x1

    invoke-virtual/range {p7 .. p7}, Ljava/util/Random;->nextDouble()D

    move-result-wide v15

    sub-double v17, p5, p3

    mul-double v15, v15, v17

    add-double v15, v15, p3

    aput-wide v15, v13, v10

    :goto_6
    move v10, v14

    :cond_8
    if-ge v11, v8, :cond_9

    .line 207
    aget v13, v7, v11

    aget v14, v4, v6

    if-ge v13, v14, :cond_9

    add-int/lit8 v11, v11, 0x1

    .line 209
    aget v14, v3, v6

    sub-int/2addr v13, v14

    add-int/2addr v13, v12

    .line 211
    iget-object v14, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aput v13, v14, v10

    .line 212
    iget-object v13, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    add-int/lit8 v14, v10, 0x1

    invoke-virtual/range {p7 .. p7}, Ljava/util/Random;->nextDouble()D

    move-result-wide v15

    sub-double v17, p5, p3

    mul-double v15, v15, v17

    add-double v15, v15, p3

    aput-wide v15, v13, v10

    goto :goto_6

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_a
    return-object v9
.end method

.method public static triangleUpper(IIIDDLjava/util/Random;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 0

    .line 221
    invoke-static/range {p0 .. p7}, Lorg/ejml/sparse/csc/RandomMatrices_DSCC;->triangleLower(IIIDDLjava/util/Random;)Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p0

    .line 222
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixSparseCSC;->createLike()Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p1

    const/4 p2, 0x0

    .line 224
    invoke-static {p0, p1, p2}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->transpose(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)Lorg/ejml/data/DMatrixSparseCSC;

    return-object p1
.end method
