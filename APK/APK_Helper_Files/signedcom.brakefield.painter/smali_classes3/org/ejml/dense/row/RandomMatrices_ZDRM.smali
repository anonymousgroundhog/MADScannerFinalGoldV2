.class public Lorg/ejml/dense/row/RandomMatrices_ZDRM;
.super Ljava/lang/Object;
.source "RandomMatrices_ZDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fillHermitian(Lorg/ejml/data/ZMatrixRMaj;DDLjava/util/Random;)V
    .locals 16

    move-object/from16 v7, p0

    .line 150
    iget v0, v7, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, v7, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_2

    sub-double v8, p3, p1

    .line 155
    iget v10, v7, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    const/4 v0, 0x0

    move v11, v0

    :goto_0
    if-ge v11, v10, :cond_1

    .line 158
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    mul-double/2addr v0, v8

    add-double v3, v0, p1

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move v1, v11

    move v2, v11

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/data/ZMatrixRMaj;->set(IIDD)V

    add-int/lit8 v12, v11, 0x1

    move v13, v12

    :goto_1
    if-ge v13, v10, :cond_0

    .line 161
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    mul-double/2addr v0, v8

    add-double v14, v0, p1

    .line 162
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    mul-double/2addr v0, v8

    add-double v5, v0, p1

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move-wide v3, v14

    move-wide/from16 p3, v5

    .line 163
    invoke-virtual/range {v0 .. v6}, Lorg/ejml/data/ZMatrixRMaj;->set(IIDD)V

    move-wide/from16 v0, p3

    neg-double v5, v0

    move-object/from16 v0, p0

    move v1, v13

    move v2, v11

    .line 164
    invoke-virtual/range {v0 .. v6}, Lorg/ejml/data/ZMatrixRMaj;->set(IIDD)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_0
    move v11, v12

    goto :goto_0

    :cond_1
    return-void

    .line 151
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A must be a square matrix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fillUniform(Lorg/ejml/data/ZMatrixD1;DDLjava/util/Random;)V
    .locals 4

    .line 91
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixD1;->getData()[D

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixD1;->getDataLength()I

    move-result p0

    sub-double/2addr p3, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 97
    invoke-virtual {p5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    mul-double/2addr v2, p3

    add-double/2addr v2, p1

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fillUniform(Lorg/ejml/data/ZMatrixRMaj;Ljava/util/Random;)V
    .locals 6

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move-object v5, p1

    .line 77
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/RandomMatrices_ZDRM;->fillUniform(Lorg/ejml/data/ZMatrixD1;DDLjava/util/Random;)V

    return-void
.end method

.method public static hermitian(IDDLjava/util/Random;)Lorg/ejml/data/ZMatrixRMaj;
    .locals 7

    .line 134
    new-instance v6, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {v6, p0, p0}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    move-object v0, v6

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 136
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/RandomMatrices_ZDRM;->fillHermitian(Lorg/ejml/data/ZMatrixRMaj;DDLjava/util/Random;)V

    return-object v6
.end method

.method public static hermitianPosDef(ILjava/util/Random;)Lorg/ejml/data/ZMatrixRMaj;
    .locals 7

    const/4 v0, 0x1

    .line 110
    invoke-static {p0, v0, p1}, Lorg/ejml/dense/row/RandomMatrices_ZDRM;->rectangle(IILjava/util/Random;)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    .line 111
    new-instance v1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {v1, v0, p0}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    .line 112
    new-instance v0, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {v0, p0, p0}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    .line 114
    invoke-static {p1, v1}, Lorg/ejml/dense/row/CommonOps_ZDRM;->transposeConjugate(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;

    .line 115
    invoke-static {p1, v1, v0}, Lorg/ejml/dense/row/CommonOps_ZDRM;->mult(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_0

    .line 118
    iget-object v1, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    mul-int v2, p1, p0

    add-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x2

    aget-wide v3, v1, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    aput-wide v3, v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static rectangle(IIDDLjava/util/Random;)Lorg/ejml/data/ZMatrixRMaj;
    .locals 7

    .line 61
    new-instance v6, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {v6, p0, p1}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    move-object v0, v6

    move-wide v1, p2

    move-wide v3, p4

    move-object v5, p6

    .line 63
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/RandomMatrices_ZDRM;->fillUniform(Lorg/ejml/data/ZMatrixD1;DDLjava/util/Random;)V

    return-object v6
.end method

.method public static rectangle(IILjava/util/Random;)Lorg/ejml/data/ZMatrixRMaj;
    .locals 7

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move v0, p0

    move v1, p1

    move-object v6, p2

    .line 44
    invoke-static/range {v0 .. v6}, Lorg/ejml/dense/row/RandomMatrices_ZDRM;->rectangle(IIDDLjava/util/Random;)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p0

    return-object p0
.end method
