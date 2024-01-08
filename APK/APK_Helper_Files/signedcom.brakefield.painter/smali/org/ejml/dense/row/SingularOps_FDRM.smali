.class public Lorg/ejml/dense/row/SingularOps_FDRM;
.super Ljava/lang/Object;
.source "SingularOps_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSvdMatrixSize(Lorg/ejml/data/FMatrixRMaj;ZLorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Z)V
    .locals 4

    .line 320
    iget v0, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 321
    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v2, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

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

    .line 325
    iget p2, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne p2, v0, :cond_1

    goto :goto_1

    .line 326
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    if-nez p1, :cond_4

    .line 327
    iget p0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne p0, v0, :cond_3

    goto :goto_2

    .line 328
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    if-eqz p3, :cond_10

    if-eqz p4, :cond_6

    .line 332
    iget p0, p3, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne p0, v0, :cond_5

    goto :goto_3

    .line 333
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_3
    if-nez p4, :cond_10

    .line 334
    iget p0, p3, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne p0, v0, :cond_7

    goto :goto_7

    .line 335
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-eqz p0, :cond_a

    .line 338
    iget p1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget p4, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne p1, p4, :cond_9

    goto :goto_4

    .line 339
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_4
    if-eqz p3, :cond_c

    .line 340
    iget p1, p3, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget p4, p3, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne p1, p4, :cond_b

    goto :goto_5

    .line 341
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_5
    const-string p1, "Unexpected size of W"

    if-eqz p0, :cond_e

    .line 342
    iget p0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget p4, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne p0, p4, :cond_d

    goto :goto_6

    .line 343
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_6
    if-eqz p3, :cond_10

    .line 344
    iget p0, p3, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget p2, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne p0, p2, :cond_f

    goto :goto_7

    .line 345
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_7
    return-void
.end method

.method public static descendingOrder(Lorg/ejml/data/FMatrixRMaj;ZLorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Z)V
    .locals 8

    .line 217
    iget v0, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 219
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/SingularOps_FDRM;->checkSvdMatrixSize(Lorg/ejml/data/FMatrixRMaj;ZLorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Z)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    move v4, v1

    move v5, v2

    :goto_1
    if-ge v4, v0, :cond_1

    .line 227
    invoke-virtual {p2, v4, v4}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v6

    cmpl-float v7, v6, v3

    if-lez v7, :cond_0

    move v5, v4

    move v3, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-ne v5, v1, :cond_2

    goto :goto_2

    :cond_2
    if-ne v5, v2, :cond_3

    goto :goto_3

    .line 244
    :cond_3
    invoke-virtual {p2, v1, v1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v2

    .line 245
    invoke-virtual {p2, v1, v1, v3}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    .line 246
    invoke-virtual {p2, v5, v5, v2}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    if-eqz p3, :cond_4

    .line 249
    invoke-static {p3, p4, v1, v5}, Lorg/ejml/dense/row/SingularOps_FDRM;->swapRowOrCol(Lorg/ejml/data/FMatrixRMaj;ZII)V

    :cond_4
    if-eqz p0, :cond_5

    .line 253
    invoke-static {p0, p1, v1, v5}, Lorg/ejml/dense/row/SingularOps_FDRM;->swapRowOrCol(Lorg/ejml/data/FMatrixRMaj;ZII)V

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method public static descendingOrder(Lorg/ejml/data/FMatrixRMaj;Z[FILorg/ejml/data/FMatrixRMaj;Z)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_6

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    move v3, v0

    move v4, v1

    :goto_1
    if-ge v3, p3, :cond_1

    .line 283
    aget v5, p2, v3

    cmpl-float v6, v5, v2

    if-lez v6, :cond_0

    move v4, v3

    move v2, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-ne v4, v0, :cond_2

    goto :goto_2

    :cond_2
    if-ne v4, v1, :cond_3

    goto :goto_3

    .line 300
    :cond_3
    aget v1, p2, v0

    .line 301
    aput v2, p2, v0

    .line 302
    aput v1, p2, v4

    if-eqz p4, :cond_4

    .line 305
    invoke-static {p4, p5, v0, v4}, Lorg/ejml/dense/row/SingularOps_FDRM;->swapRowOrCol(Lorg/ejml/data/FMatrixRMaj;ZII)V

    :cond_4
    if-eqz p0, :cond_5

    .line 309
    invoke-static {p0, p1, v0, v4}, Lorg/ejml/dense/row/SingularOps_FDRM;->swapRowOrCol(Lorg/ejml/data/FMatrixRMaj;ZII)V

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method public static nullSpace(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;Lorg/ejml/data/FMatrixRMaj;F)Lorg/ejml/data/FMatrixRMaj;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "F)",
            "Lorg/ejml/data/FMatrixRMaj;"
        }
    .end annotation

    .line 386
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numberOfSingularValues()I

    move-result v0

    .line 387
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getSingularValues()[F

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 389
    invoke-interface {p0, v2, v3}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getV(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    move-result-object v2

    check-cast v2, Lorg/ejml/data/FMatrixRMaj;

    .line 391
    iget v3, v2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numCols()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 396
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numCols()I

    move-result v3

    sub-int/2addr v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_1

    .line 399
    aget v6, v1, v5

    cmpg-float v6, v6, p2

    if-gtz v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 406
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numCols()I

    move-result v5

    invoke-direct {p1, v3, v5}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_1

    .line 408
    :cond_2
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numCols()I

    move-result v5

    invoke-virtual {p1, v3, v5}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    :goto_1
    move v9, v4

    move v11, v9

    :goto_2
    if-ge v11, v0, :cond_4

    .line 414
    aget v3, v1, v11

    cmpg-float v3, v3, p2

    if-gtz v3, :cond_3

    add-int/lit8 v5, v11, 0x1

    const/4 v6, 0x0

    .line 415
    iget v7, v2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    add-int/lit8 v12, v9, 0x1

    const/4 v10, 0x0

    move-object v3, v2

    move v4, v11

    move-object v8, p1

    invoke-static/range {v3 .. v10}, Lorg/ejml/dense/row/CommonOps_FDRM;->extract(Lorg/ejml/data/FMatrix;IIIILorg/ejml/data/FMatrix;II)V

    move v9, v12

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    move v4, v0

    .line 418
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numCols()I

    move-result p2

    if-ge v4, p2, :cond_5

    add-int/lit8 v0, v4, 0x1

    const/4 v6, 0x0

    .line 419
    iget v7, v2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    add-int/lit8 p2, v9, 0x1

    const/4 v10, 0x0

    move-object v3, v2

    move v5, v0

    move-object v8, p1

    invoke-static/range {v3 .. v10}, Lorg/ejml/dense/row/CommonOps_FDRM;->extract(Lorg/ejml/data/FMatrix;IIIILorg/ejml/data/FMatrix;II)V

    move v9, p2

    goto :goto_3

    .line 422
    :cond_5
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_FDRM;->transpose(Lorg/ejml/data/FMatrixRMaj;)V

    return-object p1

    .line 392
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p1, 0x0

    sget-object p1, Lkotlin/sequences/xWeI/kyamZJaSaxi;->TWiMCwtONrrorLr:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static nullVector(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;ZLorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;Z",
            "Lorg/ejml/data/FMatrixRMaj;",
            ")",
            "Lorg/ejml/data/FMatrixRMaj;"
        }
    .end annotation

    .line 497
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numberOfSingularValues()I

    move-result v0

    .line 498
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getSingularValues()[F

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    .line 500
    invoke-interface {p0, v3, v4}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getV(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-interface {p0, v3, v2}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getU(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    move-result-object v3

    :goto_0
    check-cast v3, Lorg/ejml/data/FMatrixRMaj;

    move-object v5, v3

    const-string v3, "Can\'t compute the null space using a compact SVD for a matrix of this size."

    if-eqz p1, :cond_3

    .line 503
    iget v6, v5, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numCols()I

    move-result v7

    if-ne v6, v7, :cond_2

    if-nez p2, :cond_1

    .line 508
    new-instance p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numCols()I

    move-result v3

    invoke-direct {p2, v3, v4}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_1

    .line 510
    :cond_1
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numCols()I

    move-result v3

    invoke-virtual {p2, v3, v4}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    goto :goto_1

    .line 504
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 513
    :cond_3
    iget v6, v5, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numRows()I

    move-result v7

    if-ne v6, v7, :cond_a

    if-nez p2, :cond_4

    .line 518
    new-instance p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numRows()I

    move-result v3

    invoke-direct {p2, v3, v4}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_1

    .line 520
    :cond_4
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numRows()I

    move-result v3

    invoke-virtual {p2, v3, v4}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    :goto_1
    if-eqz p1, :cond_6

    .line 526
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numCols()I

    move-result v3

    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numRows()I

    move-result v6

    if-le v3, v6, :cond_6

    .line 527
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numCols()I

    move-result p0

    :goto_2
    sub-int/2addr p0, v4

    :cond_5
    move v7, p0

    goto :goto_4

    :cond_6
    if-nez p1, :cond_7

    .line 528
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numCols()I

    move-result v3

    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numRows()I

    move-result v6

    if-ge v3, v6, :cond_7

    .line 529
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numRows()I

    move-result p0

    goto :goto_2

    :cond_7
    const/4 p0, -0x1

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    :goto_3
    if-ge v2, v0, :cond_5

    .line 535
    aget v4, v1, v2

    cmpg-float v6, v4, v3

    if-gez v6, :cond_8

    move p0, v2

    move v3, v4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :goto_4
    if-eqz p1, :cond_9

    const/4 p0, 0x0

    .line 544
    iget v8, v5, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    move v6, v7

    move v7, p0

    move-object v11, p2

    invoke-static/range {v5 .. v11}, Lorg/ejml/dense/row/SpecializedOps_FDRM;->subvector(Lorg/ejml/data/FMatrix1Row;IIIZILorg/ejml/data/FMatrix1Row;)V

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    .line 546
    iget v8, v5, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v11, p2

    invoke-static/range {v5 .. v11}, Lorg/ejml/dense/row/SpecializedOps_FDRM;->subvector(Lorg/ejml/data/FMatrix1Row;IIIZILorg/ejml/data/FMatrix1Row;)V

    :goto_5
    return-object p2

    .line 514
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static nullity(Lorg/ejml/data/FMatrixRMaj;F)I
    .locals 4

    .line 664
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v2}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    move-result-object v0

    .line 666
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->inputModified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->copy()Lorg/ejml/data/FMatrixRMaj;

    move-result-object p0

    .line 669
    :cond_0
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 673
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getSingularValues()[F

    move-result-object p0

    move v0, v3

    .line 676
    :goto_0
    array-length v1, p0

    if-ge v3, v1, :cond_2

    .line 677
    aget v1, p0, v3

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0

    .line 670
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "SVD Failed!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static nullity(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32<",
            "*>;)I"
        }
    .end annotation

    .line 629
    invoke-static {p0}, Lorg/ejml/dense/row/SingularOps_FDRM;->singularThreshold(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;)F

    move-result v0

    .line 630
    invoke-static {p0, v0}, Lorg/ejml/dense/row/SingularOps_FDRM;->nullity(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;F)I

    move-result p0

    return p0
.end method

.method public static nullity(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;F)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32<",
            "*>;F)I"
        }
    .end annotation

    .line 644
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getSingularValues()[F

    move-result-object v0

    .line 646
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numberOfSingularValues()I

    move-result v1

    .line 648
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numCols()I

    move-result p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    .line 651
    aget v4, v0, v2

    cmpg-float v4, v4, p1

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

.method public static nullspaceQR(Lorg/ejml/data/FMatrixRMaj;I)Lorg/ejml/data/FMatrixRMaj;
    .locals 3

    .line 435
    new-instance v0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM;-><init>()V

    .line 437
    new-instance v1, Lorg/ejml/data/FMatrixRMaj;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 439
    invoke-virtual {v0, p0, p1, v1}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM;->process(Lorg/ejml/data/FMatrixRMaj;ILorg/ejml/data/FMatrixRMaj;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v1

    .line 440
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Solver failed. try SVD based method instead?"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static nullspaceQRP(Lorg/ejml/data/FMatrixRMaj;I)Lorg/ejml/data/FMatrixRMaj;
    .locals 3

    .line 454
    new-instance v0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM;-><init>()V

    .line 456
    new-instance v1, Lorg/ejml/data/FMatrixRMaj;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 458
    invoke-virtual {v0, p0, p1, v1}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM;->process(Lorg/ejml/data/FMatrixRMaj;ILorg/ejml/data/FMatrixRMaj;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v1

    .line 459
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Solver failed. try SVD based method instead?"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static nullspaceSVD(Lorg/ejml/data/FMatrixRMaj;I)Lorg/ejml/data/FMatrixRMaj;
    .locals 3

    .line 472
    new-instance v0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_FDRM;-><init>()V

    .line 474
    new-instance v1, Lorg/ejml/data/FMatrixRMaj;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 476
    invoke-interface {v0, p0, p1, v1}, Lorg/ejml/interfaces/SolveNullSpace;->process(Lorg/ejml/data/Matrix;ILorg/ejml/data/Matrix;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v1

    .line 477
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Solver failed. try SVD based method instead?"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static rank(Lorg/ejml/data/FMatrixRMaj;)I
    .locals 4

    .line 132
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v2}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->inputModified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->copy()Lorg/ejml/data/FMatrixRMaj;

    move-result-object p0

    .line 137
    :cond_0
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 141
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numberOfSingularValues()I

    move-result p0

    .line 142
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getSingularValues()[F

    move-result-object v0

    .line 144
    invoke-static {v0, p0}, Lorg/ejml/dense/row/SingularOps_FDRM;->singularThreshold([FI)F

    move-result p0

    move v1, v3

    .line 146
    :goto_0
    array-length v2, v0

    if-ge v3, v2, :cond_2

    .line 147
    aget v2, v0, v3

    cmpl-float v2, v2, p0

    if-ltz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1

    .line 138
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "SVD Failed!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static rank(Lorg/ejml/data/FMatrixRMaj;F)I
    .locals 4

    .line 105
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v2}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->inputModified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->copy()Lorg/ejml/data/FMatrixRMaj;

    move-result-object p0

    .line 110
    :cond_0
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 114
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getSingularValues()[F

    move-result-object p0

    move v0, v3

    .line 117
    :goto_0
    array-length v1, p0

    if-ge v3, v1, :cond_2

    .line 118
    aget v1, p0, v3

    cmpl-float v1, v1, p1

    if-ltz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0

    .line 111
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    sget-object p1, Landroidx/constraintlayout/motion/widget/Opu/AFxbOaHHHN;->jWSUhvphNpLCR:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static rank(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32<",
            "*>;)I"
        }
    .end annotation

    .line 594
    invoke-static {p0}, Lorg/ejml/dense/row/SingularOps_FDRM;->singularThreshold(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;)F

    move-result v0

    .line 595
    invoke-static {p0, v0}, Lorg/ejml/dense/row/SingularOps_FDRM;->rank(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;F)I

    move-result p0

    return p0
.end method

.method public static rank(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;F)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32<",
            "*>;F)I"
        }
    .end annotation

    .line 609
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getSingularValues()[F

    move-result-object v0

    .line 611
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numberOfSingularValues()I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p0, :cond_1

    .line 614
    aget v3, v0, v1

    cmpl-float v3, v3, p1

    if-lez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static ratioSmallestOverLargest([F)F
    .locals 5

    .line 80
    array-length v0, p0

    if-nez v0, :cond_0

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 83
    aget v0, p0, v0

    const/4 v1, 0x1

    move v2, v1

    move v1, v0

    .line 86
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 87
    aget v3, p0, v2

    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    cmpg-float v4, v3, v0

    if-gez v4, :cond_2

    move v0, v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    div-float/2addr v0, v1

    return v0
.end method

.method public static singularThreshold(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32<",
            "*>;)F"
        }
    .end annotation

    .line 560
    sget v0, Lorg/ejml/UtilEjml;->F_EPS:F

    invoke-static {p0, v0}, Lorg/ejml/dense/row/SingularOps_FDRM;->singularThreshold(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;F)F

    move-result p0

    return p0
.end method

.method public static singularThreshold(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;F)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32<",
            "*>;F)F"
        }
    .end annotation

    .line 565
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getSingularValues()[F

    move-result-object v0

    .line 567
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numberOfSingularValues()I

    move-result p0

    .line 569
    invoke-static {v0, p0, p1}, Lorg/ejml/dense/row/SingularOps_FDRM;->singularThreshold([FIF)F

    move-result p0

    return p0
.end method

.method private static singularThreshold([FI)F
    .locals 1

    .line 573
    sget v0, Lorg/ejml/UtilEjml;->F_EPS:F

    invoke-static {p0, p1, v0}, Lorg/ejml/dense/row/SingularOps_FDRM;->singularThreshold([FIF)F

    move-result p0

    return p0
.end method

.method private static singularThreshold([FIF)F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 579
    aget v2, p0, v1

    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    int-to-float p0, p1

    mul-float/2addr p0, v0

    mul-float/2addr p0, p2

    return p0
.end method

.method public static singularValues(Lorg/ejml/data/FMatrixRMaj;)[F
    .locals 4

    .line 50
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3, v3}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->inputModified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->copy()Lorg/ejml/data/FMatrixRMaj;

    move-result-object p0

    .line 55
    :cond_0
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 59
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getSingularValues()[F

    move-result-object p0

    .line 60
    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numberOfSingularValues()I

    move-result v0

    invoke-static {p0, v2, v0}, Ljava/util/Arrays;->sort([FII)V

    .line 63
    :goto_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    if-ge v2, v0, :cond_1

    .line 64
    aget v0, p0, v2

    .line 65
    array-length v1, p0

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    aget v1, p0, v1

    aput v1, p0, v2

    .line 66
    array-length v1, p0

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    aput v0, p0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    .line 56
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "SVD Failed!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static svd(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FGrowArray;Lorg/ejml/data/FMatrixRMaj;)Z
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

    .line 170
    :goto_1
    iget v4, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v5, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    .line 171
    invoke-static {v4, v5, v2, v3, v0}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    move-result-object v4

    .line 173
    invoke-interface {v4}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->inputModified()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 174
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->copy()Lorg/ejml/data/FMatrixRMaj;

    move-result-object p0

    .line 177
    :cond_2
    invoke-interface {v4, p0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result v5

    if-nez v5, :cond_3

    return v1

    .line 181
    :cond_3
    iget v5, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget p0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {v5, p0}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-eqz v2, :cond_4

    .line 184
    invoke-interface {v4, p1, v1}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getU(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    :cond_4
    if-eqz v3, :cond_5

    .line 186
    invoke-interface {v4, p3, v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getV(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    .line 188
    :cond_5
    invoke-virtual {p2, v9}, Lorg/ejml/data/FGrowArray;->reshape(I)Lorg/ejml/data/FGrowArray;

    .line 189
    invoke-interface {v4}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getSingularValues()[F

    move-result-object p0

    iget-object v2, p2, Lorg/ejml/data/FGrowArray;->data:[F

    invoke-static {p0, v1, v2, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    .line 191
    iget-object v8, p2, Lorg/ejml/data/FGrowArray;->data:[F

    const/4 v11, 0x1

    move-object v6, p1

    move-object v10, p3

    invoke-static/range {v6 .. v11}, Lorg/ejml/dense/row/SingularOps_FDRM;->descendingOrder(Lorg/ejml/data/FMatrixRMaj;Z[FILorg/ejml/data/FMatrixRMaj;Z)V

    return v0
.end method

.method private static swapRowOrCol(Lorg/ejml/data/FMatrixRMaj;ZII)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 353
    :goto_0
    iget p1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v0, p1, :cond_1

    .line 354
    invoke-virtual {p0, p2, v0}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result p1

    .line 355
    invoke-virtual {p0, p3, v0}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    .line 356
    invoke-virtual {p0, p3, v0, p1}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_0
    :goto_1
    iget p1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v0, p1, :cond_1

    .line 361
    invoke-virtual {p0, v0, p2}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result p1

    .line 362
    invoke-virtual {p0, v0, p3}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v1

    invoke-virtual {p0, v0, p2, v1}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    .line 363
    invoke-virtual {p0, v0, p3, p1}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
