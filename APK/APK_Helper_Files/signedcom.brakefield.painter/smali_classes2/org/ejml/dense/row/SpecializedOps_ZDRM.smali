.class public Lorg/ejml/dense/row/SpecializedOps_ZDRM;
.super Ljava/lang/Object;
.source "SpecializedOps_ZDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createReflector(Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;
    .locals 11

    .line 44
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_ZDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_ZDRM;->normF(Lorg/ejml/data/ZMatrixRMaj;)D

    move-result-wide v0

    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    mul-double/2addr v0, v0

    div-double v4, v2, v0

    .line 50
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixRMaj;->getNumElements()I

    move-result v0

    invoke-static {v0}, Lorg/ejml/dense/row/CommonOps_ZDRM;->identity(I)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object v0

    const-wide/16 v6, 0x0

    move-object v8, p0

    move-object v9, p0

    move-object v10, v0

    .line 52
    invoke-static/range {v4 .. v10}, Lorg/ejml/dense/row/CommonOps_ZDRM;->multAddTransB(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-object v0

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "u must be a vector"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createReflector(Lorg/ejml/data/ZMatrixRMaj;D)Lorg/ejml/data/ZMatrixRMaj;
    .locals 8

    .line 69
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_ZDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixRMaj;->getNumElements()I

    move-result v0

    invoke-static {v0}, Lorg/ejml/dense/row/CommonOps_ZDRM;->identity(I)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object v0

    neg-double v1, p1

    const-wide/16 v3, 0x0

    move-object v5, p0

    move-object v6, p0

    move-object v7, v0

    .line 73
    invoke-static/range {v1 .. v7}, Lorg/ejml/dense/row/CommonOps_ZDRM;->multAddTransB(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-object v0

    .line 70
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "u must be a vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static elementDiagMaxMagnitude2(Lorg/ejml/data/ZMatrixRMaj;)D
    .locals 10

    .line 128
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 130
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    mul-int v5, v4, v1

    mul-int/lit8 v6, v4, 0x2

    add-int/2addr v5, v6

    .line 135
    iget-object v6, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v6, v6, v5

    .line 136
    iget-object v8, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v5, v5, 0x1

    aget-wide v8, v8, v5

    mul-double/2addr v6, v6

    mul-double/2addr v8, v8

    add-double/2addr v6, v8

    cmpl-double v5, v6, v2

    if-lez v5, :cond_0

    move-wide v2, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static householder(Lorg/ejml/data/ZMatrixRMaj;D)Lorg/ejml/data/ZMatrixRMaj;
    .locals 8

    .line 191
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixRMaj;->getDataLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 193
    new-instance v7, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {v7, v0, v0}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    .line 194
    invoke-static {p0, p0, v7}, Lorg/ejml/dense/row/mult/VectorVectorMult_ZDRM;->outerProdH(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    neg-double v2, p1

    const-wide/16 v4, 0x0

    move-object v1, v7

    move-object v6, v7

    .line 196
    invoke-static/range {v1 .. v6}, Lorg/ejml/dense/row/CommonOps_ZDRM;->elementMultiply(Lorg/ejml/data/ZMatrixD1;DDLorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v0, :cond_0

    .line 200
    iget p1, v7, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr p1, p0

    add-int/2addr p1, p0

    mul-int/lit8 p1, p1, 0x2

    .line 201
    iget-object p2, v7, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget-object v1, v7, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v1, v1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    aput-wide v1, p2, p1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v7
.end method

.method public static householderVector(Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;
    .locals 10

    .line 218
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixRMaj;->copy()Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p0

    .line 220
    invoke-static {p0}, Lorg/ejml/dense/row/CommonOps_ZDRM;->elementMaxAbs(Lorg/ejml/data/ZMatrixRMaj;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v5, p0

    .line 222
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/CommonOps_ZDRM;->elementDivide(Lorg/ejml/data/ZMatrixD1;DDLorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;

    .line 224
    invoke-static {p0}, Lorg/ejml/dense/row/NormOps_ZDRM;->normF(Lorg/ejml/data/ZMatrixRMaj;)D

    move-result-wide v0

    .line 225
    new-instance v2, Lorg/ejml/data/Complex_F64;

    invoke-direct {v2}, Lorg/ejml/data/Complex_F64;-><init>()V

    const/4 v7, 0x0

    .line 226
    invoke-virtual {p0, v7, v7, v2}, Lorg/ejml/data/ZMatrixRMaj;->get(IILorg/ejml/data/Complex_F64;)V

    .line 230
    invoke-virtual {v2}, Lorg/ejml/data/Complex_F64;->getMagnitude()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    iget-wide v3, v2, Lorg/ejml/data/Complex_F64;->real:D

    invoke-virtual {v2}, Lorg/ejml/data/Complex_F64;->getMagnitude()D

    move-result-wide v5

    div-double/2addr v3, v5

    mul-double/2addr v3, v0

    .line 235
    iget-wide v5, v2, Lorg/ejml/data/Complex_F64;->imaginary:D

    invoke-virtual {v2}, Lorg/ejml/data/Complex_F64;->getMagnitude()D

    move-result-wide v8

    div-double/2addr v5, v8

    mul-double/2addr v5, v0

    move-wide v0, v3

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 238
    iget-wide v8, v2, Lorg/ejml/data/Complex_F64;->real:D

    add-double/2addr v8, v0

    iget-wide v0, v2, Lorg/ejml/data/Complex_F64;->imaginary:D

    add-double/2addr v5, v0

    move-object v0, p0

    move v1, v3

    move v2, v4

    move-wide v3, v8

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/data/ZMatrixRMaj;->set(IIDD)V

    .line 239
    invoke-virtual {p0, v7, v7}, Lorg/ejml/data/ZMatrixRMaj;->getReal(II)D

    move-result-wide v1

    invoke-virtual {p0, v7, v7}, Lorg/ejml/data/ZMatrixRMaj;->getImag(II)D

    move-result-wide v3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/CommonOps_ZDRM;->elementDivide(Lorg/ejml/data/ZMatrixD1;DDLorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;

    return-object p0
.end method

.method public static pivotMatrix(Lorg/ejml/data/ZMatrixRMaj;[IIZ)Lorg/ejml/data/ZMatrixRMaj;
    .locals 9

    if-nez p0, :cond_0

    .line 97
    new-instance p0, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {p0, p2, p2}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 99
    :cond_0
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v0, p2, :cond_3

    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v0, p2, :cond_3

    const-wide/16 v0, 0x0

    .line 101
    invoke-static {p0, v0, v1, v0, v1}, Lorg/ejml/dense/row/CommonOps_ZDRM;->fill(Lorg/ejml/data/ZMatrixD1;DD)V

    :goto_0
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    :goto_1
    if-ge v0, p2, :cond_2

    .line 106
    aget v3, p1, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/16 v7, 0x0

    move-object v2, p0

    move v4, v0

    invoke-virtual/range {v2 .. v8}, Lorg/ejml/data/ZMatrixRMaj;->set(IIDD)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, p2, :cond_2

    .line 110
    aget v4, p1, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/16 v7, 0x0

    move-object v2, p0

    move v3, v0

    invoke-virtual/range {v2 .. v8}, Lorg/ejml/data/ZMatrixRMaj;->set(IIDD)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-object p0

    .line 100
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected matrix dimension"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static qualityTriangular(Lorg/ejml/data/ZMatrixRMaj;)D
    .locals 19

    move-object/from16 v0, p0

    .line 158
    iget v1, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v2, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 160
    invoke-static/range {p0 .. p0}, Lorg/ejml/dense/row/SpecializedOps_ZDRM;->elementDiagMaxMagnitude2(Lorg/ejml/data/ZMatrixRMaj;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    return-wide v4

    .line 165
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 166
    invoke-virtual/range {p0 .. p0}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v6

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v1, :cond_1

    mul-int v10, v9, v6

    mul-int/lit8 v11, v9, 0x2

    add-int/2addr v10, v11

    .line 174
    iget-object v11, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v11, v11, v10

    div-double/2addr v11, v2

    .line 175
    iget-object v13, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v13, v13, v10

    div-double/2addr v13, v2

    mul-double v15, v7, v11

    mul-double v17, v4, v13

    sub-double v15, v15, v17

    mul-double/2addr v7, v13

    mul-double/2addr v11, v4

    add-double v4, v7, v11

    add-int/lit8 v9, v9, 0x1

    move-wide v7, v15

    goto :goto_0

    :cond_1
    mul-double/2addr v7, v7

    mul-double/2addr v4, v4

    add-double/2addr v7, v4

    .line 184
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method
