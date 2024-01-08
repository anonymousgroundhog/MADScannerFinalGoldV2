.class public Lorg/ejml/dense/row/SpecializedOps_DDRM;
.super Ljava/lang/Object;
.source "SpecializedOps_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addIdentity(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;D)V
    .locals 7

    .line 279
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v0, v1, :cond_4

    .line 281
    iget v0, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v0, v1, :cond_3

    iget v0, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v0, v1, :cond_3

    .line 284
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    move v4, v1

    :goto_1
    if-ge v4, v0, :cond_1

    if-ne v2, v4, :cond_0

    .line 290
    invoke-virtual {p0, v3}, Lorg/ejml/data/DMatrix1Row;->get(I)D

    move-result-wide v5

    add-double/2addr v5, p2

    invoke-virtual {p1, v3, v5, v6}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    goto :goto_2

    .line 292
    :cond_0
    invoke-virtual {p0, v3}, Lorg/ejml/data/DMatrix1Row;->get(I)D

    move-result-wide v5

    invoke-virtual {p1, v3, v5, v6}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    :goto_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 282
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "B must be the same shape as A"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 280
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A must be square"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static copyChangeRow([ILorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 6

    if-nez p2, :cond_0

    .line 99
    new-instance p2, Lorg/ejml/data/DMatrixRMaj;

    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-direct {p2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 100
    :cond_0
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_2

    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_2

    :goto_0
    const/4 v0, 0x0

    .line 104
    :goto_1
    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v0, v1, :cond_1

    .line 105
    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v1, v0

    .line 106
    aget v2, p0, v0

    iget v3, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v2, v3

    .line 108
    iget-object v3, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v4, p2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v5, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {v3, v2, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p2

    .line 101
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "src and dst must have the same dimensions."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static copyTriangle(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;
    .locals 5

    if-nez p1, :cond_0

    .line 124
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 125
    :cond_0
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_3

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 130
    iget p2, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_1
    if-ge v0, p2, :cond_2

    .line 132
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v1, v0

    add-int/2addr v1, v0

    .line 133
    iget-object v2, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v3, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v4, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    sub-int/2addr v4, v0

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    :cond_1
    :goto_2
    iget p2, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v0, p2, :cond_2

    add-int/lit8 p2, v0, 0x1

    .line 137
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 138
    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v0, v2

    .line 139
    iget-object v2, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v3, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    invoke-static {v2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, p2

    goto :goto_2

    :cond_2
    return-object p1

    .line 126
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "src and dst must have the same dimensions."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createReflector(Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrixRMaj;
    .locals 4

    .line 52
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_DDRM;->fastNormF(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    mul-double/2addr v0, v0

    div-double/2addr v2, v0

    .line 58
    invoke-virtual {p0}, Lorg/ejml/data/DMatrix1Row;->getNumElements()I

    move-result v0

    invoke-static {v0}, Lorg/ejml/dense/row/CommonOps_DDRM;->identity(I)Lorg/ejml/data/DMatrixRMaj;

    move-result-object v0

    .line 59
    invoke-static {v2, v3, p0, p0, v0}, Lorg/ejml/dense/row/CommonOps_DDRM;->multAddTransB(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    return-object v0

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "u must be a vector"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createReflector(Lorg/ejml/data/DMatrixRMaj;D)Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 81
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v0

    invoke-static {v0}, Lorg/ejml/dense/row/CommonOps_DDRM;->identity(I)Lorg/ejml/data/DMatrixRMaj;

    move-result-object v0

    neg-double p1, p1

    .line 85
    invoke-static {p1, p2, p0, p0, v0}, Lorg/ejml/dense/row/CommonOps_DDRM;->multAddTransB(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    return-object v0

    .line 82
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "u must be a vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static diagProd(Lorg/ejml/data/DMatrix1Row;)D
    .locals 6

    .line 404
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 406
    invoke-virtual {p0, v3, v3}, Lorg/ejml/data/DMatrix1Row;->unsafe_get(II)D

    move-result-wide v4

    mul-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static diffNormF(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)D
    .locals 7

    .line 208
    iget v0, p0, Lorg/ejml/data/DMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixD1;->numRows:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/ejml/data/DMatrixD1;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixD1;->numCols:I

    if-ne v0, v1, :cond_1

    .line 212
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    .line 214
    new-instance v1, Lorg/ejml/data/DMatrixRMaj;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 217
    invoke-virtual {p1, v2}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v3

    invoke-virtual {p0, v2}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->set(ID)D

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    :cond_0
    invoke-static {v1}, Lorg/ejml/dense/row/NormOps_DDRM;->normF(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide p0

    return-wide p0

    .line 209
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Both matrices must have the same shape."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static diffNormF_fast(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)D
    .locals 8

    .line 223
    iget v0, p0, Lorg/ejml/data/DMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixD1;->numRows:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/ejml/data/DMatrixD1;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixD1;->numCols:I

    if-ne v0, v1, :cond_1

    .line 227
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 231
    invoke-virtual {p1, v3}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v4

    invoke-virtual {p0, v3}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v4, v4

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 234
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0

    .line 224
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Both matrices must have the same shape."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static diffNormP1(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)D
    .locals 8

    .line 254
    iget v0, p0, Lorg/ejml/data/DMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixD1;->numRows:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/ejml/data/DMatrixD1;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixD1;->numCols:I

    if-ne v0, v1, :cond_1

    .line 258
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 262
    invoke-virtual {p1, v3}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v4

    invoke-virtual {p0, v3}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1

    .line 255
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Both matrices must have the same shape."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static elementDiagonalMaxAbs(Lorg/ejml/data/DMatrixD1;)D
    .locals 7

    .line 423
    iget v0, p0, Lorg/ejml/data/DMatrixD1;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixD1;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 427
    invoke-virtual {p0, v3, v3}, Lorg/ejml/data/DMatrixD1;->get(II)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v6, v4, v1

    if-lez v6, :cond_0

    move-wide v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public static elementSumSq(Lorg/ejml/data/DMatrixD1;)D
    .locals 8

    .line 473
    invoke-static {p0}, Lorg/ejml/dense/row/CommonOps_DDRM;->elementMaxAbs(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 479
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    .line 481
    iget-object v6, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v6, v6, v5

    div-double/2addr v6, v0

    mul-double/2addr v6, v6

    add-double/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    mul-double/2addr v2, v0

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method public static multLowerTranA(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 12

    .line 173
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    .line 174
    iget-object p0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    add-int/lit8 v3, v0, -0x1

    :goto_1
    if-lt v3, v2, :cond_1

    const-wide/16 v4, 0x0

    move v6, v3

    :goto_2
    if-ge v6, v0, :cond_0

    mul-int v7, v6, v0

    add-int v8, v7, v2

    .line 179
    aget-wide v8, p0, v8

    add-int/2addr v7, v3

    aget-wide v10, p0, v7

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    mul-int v6, v2, v0

    add-int/2addr v6, v3

    .line 181
    aput-wide v4, p0, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_4

    move v3, v1

    :goto_4
    if-ge v3, v2, :cond_3

    mul-int v4, v2, v0

    add-int/2addr v4, v3

    mul-int v5, v3, v0

    add-int/2addr v5, v2

    .line 187
    aget-wide v5, p0, v5

    aput-wide v5, p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public static multLowerTranB(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 11

    .line 150
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    .line 151
    iget-object p0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    add-int/lit8 v3, v0, -0x1

    :goto_1
    if-lt v3, v2, :cond_1

    const-wide/16 v4, 0x0

    move v6, v1

    :goto_2
    if-gt v6, v2, :cond_0

    mul-int v7, v2, v0

    add-int/2addr v7, v6

    .line 156
    aget-wide v7, p0, v7

    mul-int v9, v3, v0

    add-int/2addr v9, v6

    aget-wide v9, p0, v9

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    mul-int v6, v2, v0

    add-int/2addr v6, v3

    .line 158
    aput-wide v4, p0, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_4

    move v3, v1

    :goto_4
    if-ge v3, v2, :cond_3

    mul-int v4, v2, v0

    add-int/2addr v4, v3

    mul-int v5, v3, v0

    add-int/2addr v5, v2

    .line 164
    aget-wide v5, p0, v5

    aput-wide v5, p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public static pivotMatrix(Lorg/ejml/data/DMatrixRMaj;[IIZ)Lorg/ejml/data/DMatrixRMaj;
    .locals 3

    if-nez p0, :cond_0

    .line 375
    new-instance p0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p0, p2, p2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 377
    :cond_0
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, p2, :cond_3

    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, p2, :cond_3

    const-wide/16 v0, 0x0

    .line 379
    invoke-static {p0, v0, v1}, Lorg/ejml/dense/row/CommonOps_DDRM;->fill(Lorg/ejml/data/DMatrixD1;D)V

    :goto_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    :goto_1
    if-ge v2, p2, :cond_2

    .line 384
    aget p3, p1, v2

    invoke-virtual {p0, p3, v2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v2, p2, :cond_2

    .line 388
    aget p3, p1, v2

    invoke-virtual {p0, v2, p3, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-object p0

    .line 378
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected matrix dimension"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static qualityTriangular(Lorg/ejml/data/DMatrixD1;)D
    .locals 8

    .line 447
    iget v0, p0, Lorg/ejml/data/DMatrixD1;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixD1;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 450
    invoke-static {p0}, Lorg/ejml/dense/row/SpecializedOps_DDRM;->elementDiagonalMaxAbs(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    return-wide v3

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    .line 457
    invoke-virtual {p0, v5, v5}, Lorg/ejml/data/DMatrixD1;->unsafe_get(II)D

    move-result-wide v6

    div-double/2addr v6, v1

    mul-double/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 460
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static splitIntoVectors(Lorg/ejml/data/DMatrix1Row;Z)[Lorg/ejml/data/DMatrixRMaj;
    .locals 14

    if-eqz p1, :cond_0

    .line 333
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    :goto_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 335
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 336
    :cond_2
    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    .line 338
    :goto_2
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 340
    new-array v11, v0, [Lorg/ejml/data/DMatrixRMaj;

    const/4 v3, 0x0

    move v12, v3

    :goto_3
    if-ge v12, v0, :cond_4

    .line 343
    new-instance v13, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v13, v2, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    if-eqz p1, :cond_3

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v5, v12

    move v6, v10

    move-object v9, v13

    .line 346
    invoke-static/range {v3 .. v9}, Lorg/ejml/dense/row/SpecializedOps_DDRM;->subvector(Lorg/ejml/data/DMatrix1Row;IIIZILorg/ejml/data/DMatrix1Row;)V

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    move v4, v12

    move v6, v10

    move-object v9, v13

    .line 348
    invoke-static/range {v3 .. v9}, Lorg/ejml/dense/row/SpecializedOps_DDRM;->subvector(Lorg/ejml/data/DMatrix1Row;IIIZILorg/ejml/data/DMatrix1Row;)V

    .line 350
    :goto_4
    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    return-object v11
.end method

.method public static subvector(Lorg/ejml/data/DMatrix1Row;IIIZILorg/ejml/data/DMatrix1Row;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int p4, p5, v0

    add-int v1, p2, v0

    .line 316
    invoke-virtual {p0, p1, v1}, Lorg/ejml/data/DMatrix1Row;->get(II)D

    move-result-wide v1

    invoke-virtual {p6, p4, v1, v2}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, p3, :cond_1

    add-int p4, p5, v0

    add-int v1, p1, v0

    .line 320
    invoke-virtual {p0, v1, p2}, Lorg/ejml/data/DMatrix1Row;->get(II)D

    move-result-wide v1

    invoke-virtual {p6, p4, v1, v2}, Lorg/ejml/data/DMatrix1Row;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
