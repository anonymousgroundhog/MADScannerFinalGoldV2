.class public Lorg/ejml/dense/row/SingularOps_DDRM;
.super Ljava/lang/Object;
.source "SingularOps_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSvdMatrixSize(Lorg/ejml/data/DMatrixRMaj;ZLorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Z)V
    .locals 4

    .line 318
    iget v0, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 319
    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v2, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Unexpected size of matrix V"

    const-string v3, "Unexpected size of matrix U"

    if-eqz v1, :cond_8

    if-eqz p0, :cond_4

    if-eqz p1, :cond_2

    .line 323
    iget p2, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne p2, v0, :cond_1

    goto :goto_1

    .line 324
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    if-nez p1, :cond_4

    .line 325
    iget p0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne p0, v0, :cond_3

    goto :goto_2

    .line 326
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    if-eqz p3, :cond_10

    if-eqz p4, :cond_6

    .line 330
    iget p0, p3, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne p0, v0, :cond_5

    goto :goto_3

    .line 331
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_3
    if-nez p4, :cond_10

    .line 332
    iget p0, p3, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne p0, v0, :cond_7

    goto :goto_7

    .line 333
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-eqz p0, :cond_a

    .line 336
    iget p1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget p4, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne p1, p4, :cond_9

    goto :goto_4

    .line 337
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_4
    if-eqz p3, :cond_c

    .line 338
    iget p1, p3, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget p4, p3, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne p1, p4, :cond_b

    goto :goto_5

    .line 339
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_5
    const-string p1, "Unexpected size of W"

    if-eqz p0, :cond_e

    .line 340
    iget p0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget p4, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne p0, p4, :cond_d

    goto :goto_6

    .line 341
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_6
    if-eqz p3, :cond_10

    .line 342
    iget p0, p3, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget p2, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne p0, p2, :cond_f

    goto :goto_7

    .line 343
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_7
    return-void
.end method

.method public static descendingOrder(Lorg/ejml/data/DMatrixRMaj;ZLorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Z)V
    .locals 10

    .line 215
    iget v0, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 217
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/SingularOps_DDRM;->checkSvdMatrixSize(Lorg/ejml/data/DMatrixRMaj;ZLorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Z)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    const/4 v2, -0x1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    move v5, v1

    move v6, v2

    :goto_1
    if-ge v5, v0, :cond_1

    .line 225
    invoke-virtual {p2, v5, v5}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v7

    cmpl-double v9, v7, v3

    if-lez v9, :cond_0

    move v6, v5

    move-wide v3, v7

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    if-ne v6, v1, :cond_2

    goto :goto_2

    :cond_2
    if-ne v6, v2, :cond_3

    goto :goto_3

    .line 242
    :cond_3
    invoke-virtual {p2, v1, v1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v7

    .line 243
    invoke-virtual {p2, v1, v1, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    .line 244
    invoke-virtual {p2, v6, v6, v7, v8}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    if-eqz p3, :cond_4

    .line 247
    invoke-static {p3, p4, v1, v6}, Lorg/ejml/dense/row/SingularOps_DDRM;->swapRowOrCol(Lorg/ejml/data/DMatrixRMaj;ZII)V

    :cond_4
    if-eqz p0, :cond_5

    .line 251
    invoke-static {p0, p1, v1, v6}, Lorg/ejml/dense/row/SingularOps_DDRM;->swapRowOrCol(Lorg/ejml/data/DMatrixRMaj;ZII)V

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method public static descendingOrder(Lorg/ejml/data/DMatrixRMaj;Z[DILorg/ejml/data/DMatrixRMaj;Z)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_6

    const/4 v1, -0x1

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    move v4, v0

    move v5, v1

    :goto_1
    if-ge v4, p3, :cond_1

    .line 281
    aget-wide v6, p2, v4

    cmpl-double v8, v6, v2

    if-lez v8, :cond_0

    move v5, v4

    move-wide v2, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-ne v5, v0, :cond_2

    goto :goto_2

    :cond_2
    if-ne v5, v1, :cond_3

    goto :goto_3

    .line 298
    :cond_3
    aget-wide v6, p2, v0

    .line 299
    aput-wide v2, p2, v0

    .line 300
    aput-wide v6, p2, v5

    if-eqz p4, :cond_4

    .line 303
    invoke-static {p4, p5, v0, v5}, Lorg/ejml/dense/row/SingularOps_DDRM;->swapRowOrCol(Lorg/ejml/data/DMatrixRMaj;ZII)V

    :cond_4
    if-eqz p0, :cond_5

    .line 307
    invoke-static {p0, p1, v0, v5}, Lorg/ejml/dense/row/SingularOps_DDRM;->swapRowOrCol(Lorg/ejml/data/DMatrixRMaj;ZII)V

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method public static nullSpace(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;Lorg/ejml/data/DMatrixRMaj;D)Lorg/ejml/data/DMatrixRMaj;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "D)",
            "Lorg/ejml/data/DMatrixRMaj;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 384
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numberOfSingularValues()I

    move-result v1

    .line 385
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getSingularValues()[D

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v5, p0

    .line 387
    invoke-interface {p0, v3, v4}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getV(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    move-result-object v3

    check-cast v3, Lorg/ejml/data/DMatrixRMaj;

    .line 389
    iget v4, v3, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numCols()I

    move-result v6

    if-ne v4, v6, :cond_6

    .line 394
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numCols()I

    move-result v4

    sub-int/2addr v4, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v1, :cond_1

    .line 397
    aget-wide v8, v2, v7

    cmpg-double v8, v8, p2

    if-gtz v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 404
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numCols()I

    move-result v7

    invoke-direct {v0, v4, v7}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_1

    .line 406
    :cond_2
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numCols()I

    move-result v7

    invoke-virtual {v0, v4, v7}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    :goto_1
    move v4, v6

    move v12, v4

    :goto_2
    if-ge v4, v1, :cond_4

    .line 412
    aget-wide v6, v2, v4

    cmpg-double v6, v6, p2

    if-gtz v6, :cond_3

    add-int/lit8 v8, v4, 0x1

    const/4 v9, 0x0

    .line 413
    iget v10, v3, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    add-int/lit8 v14, v12, 0x1

    const/4 v13, 0x0

    move-object v6, v3

    move v7, v4

    move-object v11, v0

    invoke-static/range {v6 .. v13}, Lorg/ejml/dense/row/CommonOps_DDRM;->extract(Lorg/ejml/data/DMatrix;IIIILorg/ejml/data/DMatrix;II)V

    move v12, v14

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    move v7, v1

    .line 416
    :goto_3
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numCols()I

    move-result v1

    if-ge v7, v1, :cond_5

    add-int/lit8 v1, v7, 0x1

    const/4 v9, 0x0

    .line 417
    iget v10, v3, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    add-int/lit8 v2, v12, 0x1

    const/4 v13, 0x0

    move-object v6, v3

    move v8, v1

    move-object v11, v0

    invoke-static/range {v6 .. v13}, Lorg/ejml/dense/row/CommonOps_DDRM;->extract(Lorg/ejml/data/DMatrix;IIIILorg/ejml/data/DMatrix;II)V

    move v7, v1

    move v12, v2

    goto :goto_3

    .line 420
    :cond_5
    invoke-static {v0}, Lorg/ejml/dense/row/CommonOps_DDRM;->transpose(Lorg/ejml/data/DMatrixRMaj;)V

    return-object v0

    .line 390
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t compute the null space using a compact SVD for a matrix of this size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static nullVector(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;ZLorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;Z",
            "Lorg/ejml/data/DMatrixRMaj;",
            ")",
            "Lorg/ejml/data/DMatrixRMaj;"
        }
    .end annotation

    .line 495
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numberOfSingularValues()I

    move-result v0

    .line 496
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getSingularValues()[D

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    .line 498
    invoke-interface {p0, v3, v4}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getV(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-interface {p0, v3, v2}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getU(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    move-result-object v3

    :goto_0
    check-cast v3, Lorg/ejml/data/DMatrixRMaj;

    move-object v5, v3

    const-string v3, "Can\'t compute the null space using a compact SVD for a matrix of this size."

    if-eqz p1, :cond_3

    .line 501
    iget v6, v5, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numCols()I

    move-result v7

    if-ne v6, v7, :cond_2

    if-nez p2, :cond_1

    .line 506
    new-instance p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numCols()I

    move-result v3

    invoke-direct {p2, v3, v4}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_1

    .line 508
    :cond_1
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numCols()I

    move-result v3

    invoke-virtual {p2, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    goto :goto_1

    .line 502
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 511
    :cond_3
    iget v6, v5, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numRows()I

    move-result v7

    if-ne v6, v7, :cond_a

    if-nez p2, :cond_4

    .line 516
    new-instance p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numRows()I

    move-result v3

    invoke-direct {p2, v3, v4}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_1

    .line 518
    :cond_4
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numRows()I

    move-result v3

    invoke-virtual {p2, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    :goto_1
    if-eqz p1, :cond_6

    .line 524
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numCols()I

    move-result v3

    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numRows()I

    move-result v6

    if-le v3, v6, :cond_6

    .line 525
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numCols()I

    move-result p0

    :goto_2
    sub-int/2addr p0, v4

    :cond_5
    move v7, p0

    goto :goto_4

    :cond_6
    if-nez p1, :cond_7

    .line 526
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numCols()I

    move-result v3

    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numRows()I

    move-result v6

    if-ge v3, v6, :cond_7

    .line 527
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numRows()I

    move-result p0

    goto :goto_2

    :cond_7
    const/4 p0, -0x1

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_3
    if-ge v2, v0, :cond_5

    .line 533
    aget-wide v6, v1, v2

    cmpg-double v8, v6, v3

    if-gez v8, :cond_8

    move p0, v2

    move-wide v3, v6

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :goto_4
    if-eqz p1, :cond_9

    const/4 p0, 0x0

    .line 542
    iget v8, v5, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    move v6, v7

    move v7, p0

    move-object v11, p2

    invoke-static/range {v5 .. v11}, Lorg/ejml/dense/row/SpecializedOps_DDRM;->subvector(Lorg/ejml/data/DMatrix1Row;IIIZILorg/ejml/data/DMatrix1Row;)V

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    .line 544
    iget v8, v5, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v11, p2

    invoke-static/range {v5 .. v11}, Lorg/ejml/dense/row/SpecializedOps_DDRM;->subvector(Lorg/ejml/data/DMatrix1Row;IIIZILorg/ejml/data/DMatrix1Row;)V

    :goto_5
    return-object p2

    .line 512
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static nullity(Lorg/ejml/data/DMatrixRMaj;D)I
    .locals 4

    .line 662
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v2}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    move-result-object v0

    .line 664
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->inputModified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->copy()Lorg/ejml/data/DMatrixRMaj;

    move-result-object p0

    .line 667
    :cond_0
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 671
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getSingularValues()[D

    move-result-object p0

    move v0, v3

    .line 674
    :goto_0
    array-length v1, p0

    if-ge v3, v1, :cond_2

    .line 675
    aget-wide v1, p0, v3

    cmpg-double v1, v1, p1

    if-gtz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0

    .line 668
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "SVD Failed!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static nullity(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64<",
            "*>;)I"
        }
    .end annotation

    .line 627
    invoke-static {p0}, Lorg/ejml/dense/row/SingularOps_DDRM;->singularThreshold(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;)D

    move-result-wide v0

    .line 628
    invoke-static {p0, v0, v1}, Lorg/ejml/dense/row/SingularOps_DDRM;->nullity(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;D)I

    move-result p0

    return p0
.end method

.method public static nullity(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;D)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64<",
            "*>;D)I"
        }
    .end annotation

    .line 642
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getSingularValues()[D

    move-result-object v0

    .line 644
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numberOfSingularValues()I

    move-result v1

    .line 646
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numCols()I

    move-result p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    .line 649
    aget-wide v4, v0, v2

    cmpg-double v4, v4, p1

    if-gtz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v3, p0

    sub-int/2addr v3, v1

    return v3
.end method

.method public static nullspaceQR(Lorg/ejml/data/DMatrixRMaj;I)Lorg/ejml/data/DMatrixRMaj;
    .locals 3

    .line 433
    new-instance v0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM;-><init>()V

    .line 435
    new-instance v1, Lorg/ejml/data/DMatrixRMaj;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 437
    invoke-virtual {v0, p0, p1, v1}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM;->process(Lorg/ejml/data/DMatrixRMaj;ILorg/ejml/data/DMatrixRMaj;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v1

    .line 438
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Solver failed. try SVD based method instead?"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static nullspaceQRP(Lorg/ejml/data/DMatrixRMaj;I)Lorg/ejml/data/DMatrixRMaj;
    .locals 3

    .line 452
    new-instance v0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM;-><init>()V

    .line 454
    new-instance v1, Lorg/ejml/data/DMatrixRMaj;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 456
    invoke-virtual {v0, p0, p1, v1}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM;->process(Lorg/ejml/data/DMatrixRMaj;ILorg/ejml/data/DMatrixRMaj;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v1

    .line 457
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Solver failed. try SVD based method instead?"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static nullspaceSVD(Lorg/ejml/data/DMatrixRMaj;I)Lorg/ejml/data/DMatrixRMaj;
    .locals 3

    .line 470
    new-instance v0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_DDRM;-><init>()V

    .line 472
    new-instance v1, Lorg/ejml/data/DMatrixRMaj;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 474
    invoke-interface {v0, p0, p1, v1}, Lorg/ejml/interfaces/SolveNullSpace;->process(Lorg/ejml/data/Matrix;ILorg/ejml/data/Matrix;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v1

    .line 475
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Solver failed. try SVD based method instead?"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static rank(Lorg/ejml/data/DMatrixRMaj;)I
    .locals 6

    .line 130
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v2}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    move-result-object v0

    .line 132
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->inputModified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->copy()Lorg/ejml/data/DMatrixRMaj;

    move-result-object p0

    .line 135
    :cond_0
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 139
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numberOfSingularValues()I

    move-result p0

    .line 140
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getSingularValues()[D

    move-result-object v0

    .line 142
    invoke-static {v0, p0}, Lorg/ejml/dense/row/SingularOps_DDRM;->singularThreshold([DI)D

    move-result-wide v1

    move p0, v3

    .line 144
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 145
    aget-wide v4, v0, v3

    cmpl-double v4, v4, v1

    if-ltz v4, :cond_1

    add-int/lit8 p0, p0, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return p0

    .line 136
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "SVD Failed!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static rank(Lorg/ejml/data/DMatrixRMaj;D)I
    .locals 4

    .line 103
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v2}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->inputModified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->copy()Lorg/ejml/data/DMatrixRMaj;

    move-result-object p0

    .line 108
    :cond_0
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 112
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getSingularValues()[D

    move-result-object p0

    move v0, v3

    .line 115
    :goto_0
    array-length v1, p0

    if-ge v3, v1, :cond_2

    .line 116
    aget-wide v1, p0, v3

    cmpl-double v1, v1, p1

    if-ltz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0

    .line 109
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "SVD Failed!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static rank(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64<",
            "*>;)I"
        }
    .end annotation

    .line 592
    invoke-static {p0}, Lorg/ejml/dense/row/SingularOps_DDRM;->singularThreshold(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;)D

    move-result-wide v0

    .line 593
    invoke-static {p0, v0, v1}, Lorg/ejml/dense/row/SingularOps_DDRM;->rank(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;D)I

    move-result p0

    return p0
.end method

.method public static rank(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;D)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64<",
            "*>;D)I"
        }
    .end annotation

    .line 607
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getSingularValues()[D

    move-result-object v0

    .line 609
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numberOfSingularValues()I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p0, :cond_1

    .line 612
    aget-wide v3, v0, v1

    cmpl-double v3, v3, p1

    if-lez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static ratioSmallestOverLargest([D)D
    .locals 8

    .line 78
    array-length v0, p0

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    .line 81
    aget-wide v0, p0, v0

    const/4 v2, 0x1

    move v4, v2

    move-wide v2, v0

    .line 84
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_3

    .line 85
    aget-wide v5, p0, v4

    cmpl-double v7, v5, v2

    if-lez v7, :cond_1

    move-wide v2, v5

    goto :goto_1

    :cond_1
    cmpg-double v7, v5, v0

    if-gez v7, :cond_2

    move-wide v0, v5

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static singularThreshold(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64<",
            "*>;)D"
        }
    .end annotation

    .line 558
    sget-wide v0, Lorg/ejml/UtilEjml;->EPS:D

    invoke-static {p0, v0, v1}, Lorg/ejml/dense/row/SingularOps_DDRM;->singularThreshold(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static singularThreshold(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;D)D
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64<",
            "*>;D)D"
        }
    .end annotation

    .line 563
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getSingularValues()[D

    move-result-object v0

    .line 565
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numberOfSingularValues()I

    move-result p0

    .line 567
    invoke-static {v0, p0, p1, p2}, Lorg/ejml/dense/row/SingularOps_DDRM;->singularThreshold([DID)D

    move-result-wide p0

    return-wide p0
.end method

.method private static singularThreshold([DI)D
    .locals 2

    .line 571
    sget-wide v0, Lorg/ejml/UtilEjml;->EPS:D

    invoke-static {p0, p1, v0, v1}, Lorg/ejml/dense/row/SingularOps_DDRM;->singularThreshold([DID)D

    move-result-wide p0

    return-wide p0
.end method

.method private static singularThreshold([DID)D
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 577
    aget-wide v3, p0, v2

    cmpl-double v5, v3, v0

    if-lez v5, :cond_0

    move-wide v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    int-to-double p0, p1

    mul-double/2addr p0, v0

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method public static singularValues(Lorg/ejml/data/DMatrixRMaj;)[D
    .locals 6

    .line 48
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3, v3}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    move-result-object v0

    .line 50
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->inputModified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->copy()Lorg/ejml/data/DMatrixRMaj;

    move-result-object p0

    .line 53
    :cond_0
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 57
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getSingularValues()[D

    move-result-object p0

    .line 58
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numberOfSingularValues()I

    move-result v0

    invoke-static {p0, v2, v0}, Ljava/util/Arrays;->sort([DII)V

    .line 61
    :goto_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    if-ge v2, v0, :cond_1

    .line 62
    aget-wide v0, p0, v2

    .line 63
    array-length v4, p0

    sub-int/2addr v4, v2

    sub-int/2addr v4, v3

    aget-wide v4, p0, v4

    aput-wide v4, p0, v2

    .line 64
    array-length v4, p0

    sub-int/2addr v4, v2

    sub-int/2addr v4, v3

    aput-wide v0, p0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    .line 54
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "SVD Failed!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static svd(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DGrowArray;Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    .line 168
    :goto_1
    iget v4, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v5, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    .line 169
    invoke-static {v4, v5, v2, v3, v0}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    move-result-object v4

    .line 171
    invoke-interface {v4}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->inputModified()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 172
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->copy()Lorg/ejml/data/DMatrixRMaj;

    move-result-object p0

    .line 175
    :cond_2
    invoke-interface {v4, p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result v5

    if-nez v5, :cond_3

    return v1

    .line 179
    :cond_3
    iget v5, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget p0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {v5, p0}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-eqz v2, :cond_4

    .line 182
    invoke-interface {v4, p1, v1}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getU(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    :cond_4
    if-eqz v3, :cond_5

    .line 184
    invoke-interface {v4, p3, v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getV(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    .line 186
    :cond_5
    invoke-virtual {p2, v9}, Lorg/ejml/data/DGrowArray;->reshape(I)Lorg/ejml/data/DGrowArray;

    .line 187
    invoke-interface {v4}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getSingularValues()[D

    move-result-object p0

    iget-object v2, p2, Lorg/ejml/data/DGrowArray;->data:[D

    invoke-static {p0, v1, v2, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    .line 189
    iget-object v8, p2, Lorg/ejml/data/DGrowArray;->data:[D

    const/4 v11, 0x1

    move-object v6, p1

    move-object v10, p3

    invoke-static/range {v6 .. v11}, Lorg/ejml/dense/row/SingularOps_DDRM;->descendingOrder(Lorg/ejml/data/DMatrixRMaj;Z[DILorg/ejml/data/DMatrixRMaj;Z)V

    return v0
.end method

.method private static swapRowOrCol(Lorg/ejml/data/DMatrixRMaj;ZII)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 351
    :goto_0
    iget p1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v0, p1, :cond_1

    .line 352
    invoke-virtual {p0, p2, v0}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v1

    .line 353
    invoke-virtual {p0, p3, v0}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v3

    invoke-virtual {p0, p2, v0, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    .line 354
    invoke-virtual {p0, p3, v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_0
    :goto_1
    iget p1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v0, p1, :cond_1

    .line 359
    invoke-virtual {p0, v0, p2}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v1

    .line 360
    invoke-virtual {p0, v0, p3}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v3

    invoke-virtual {p0, v0, p2, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    .line 361
    invoke-virtual {p0, v0, p3, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
