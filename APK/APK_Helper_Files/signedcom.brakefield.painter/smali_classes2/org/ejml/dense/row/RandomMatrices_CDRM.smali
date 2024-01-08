.class public Lorg/ejml/dense/row/RandomMatrices_CDRM;
.super Ljava/lang/Object;
.source "RandomMatrices_CDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fillHermitian(Lorg/ejml/data/CMatrixRMaj;FFLjava/util/Random;)V
    .locals 6

    .line 152
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_2

    sub-float/2addr p2, p1

    .line 157
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 160
    invoke-virtual {p3}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v2, p2

    add-float/2addr v2, p1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v1, v2, v3}, Lorg/ejml/data/CMatrixRMaj;->set(IIFF)V

    add-int/lit8 v2, v1, 0x1

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_0

    .line 163
    invoke-virtual {p3}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v4, p2

    add-float/2addr v4, p1

    .line 164
    invoke-virtual {p3}, Ljava/util/Random;->nextFloat()F

    move-result v5

    mul-float/2addr v5, p2

    add-float/2addr v5, p1

    .line 165
    invoke-virtual {p0, v1, v3, v4, v5}, Lorg/ejml/data/CMatrixRMaj;->set(IIFF)V

    neg-float v5, v5

    .line 166
    invoke-virtual {p0, v3, v1, v4, v5}, Lorg/ejml/data/CMatrixRMaj;->set(IIFF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return-void

    .line 153
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A must be a square matrix"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fillUniform(Lorg/ejml/data/CMatrixD1;FFLjava/util/Random;)V
    .locals 3

    .line 93
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixD1;->getData()[F

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixD1;->getDataLength()I

    move-result p0

    sub-float/2addr p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 99
    invoke-virtual {p3}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v2, p2

    add-float/2addr v2, p1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fillUniform(Lorg/ejml/data/CMatrixRMaj;Ljava/util/Random;)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 79
    invoke-static {p0, v0, v1, p1}, Lorg/ejml/dense/row/RandomMatrices_CDRM;->fillUniform(Lorg/ejml/data/CMatrixD1;FFLjava/util/Random;)V

    return-void
.end method

.method public static hermitian(IFFLjava/util/Random;)Lorg/ejml/data/CMatrixRMaj;
    .locals 1

    .line 136
    new-instance v0, Lorg/ejml/data/CMatrixRMaj;

    invoke-direct {v0, p0, p0}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    .line 138
    invoke-static {v0, p1, p2, p3}, Lorg/ejml/dense/row/RandomMatrices_CDRM;->fillHermitian(Lorg/ejml/data/CMatrixRMaj;FFLjava/util/Random;)V

    return-object v0
.end method

.method public static hermitianPosDef(ILjava/util/Random;)Lorg/ejml/data/CMatrixRMaj;
    .locals 5

    const/4 v0, 0x1

    .line 112
    invoke-static {p0, v0, p1}, Lorg/ejml/dense/row/RandomMatrices_CDRM;->rectangle(IILjava/util/Random;)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    .line 113
    new-instance v1, Lorg/ejml/data/CMatrixRMaj;

    invoke-direct {v1, v0, p0}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    .line 114
    new-instance v0, Lorg/ejml/data/CMatrixRMaj;

    invoke-direct {v0, p0, p0}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    .line 116
    invoke-static {p1, v1}, Lorg/ejml/dense/row/CommonOps_CDRM;->transposeConjugate(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;

    .line 117
    invoke-static {p1, v1, v0}, Lorg/ejml/dense/row/CommonOps_CDRM;->mult(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_0

    .line 120
    iget-object v1, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    mul-int v2, p1, p0

    add-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x2

    aget v3, v1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static rectangle(IIFFLjava/util/Random;)Lorg/ejml/data/CMatrixRMaj;
    .locals 1

    .line 63
    new-instance v0, Lorg/ejml/data/CMatrixRMaj;

    invoke-direct {v0, p0, p1}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    .line 65
    invoke-static {v0, p2, p3, p4}, Lorg/ejml/dense/row/RandomMatrices_CDRM;->fillUniform(Lorg/ejml/data/CMatrixD1;FFLjava/util/Random;)V

    return-object v0
.end method

.method public static rectangle(IILjava/util/Random;)Lorg/ejml/data/CMatrixRMaj;
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 46
    invoke-static {p0, p1, v0, v1, p2}, Lorg/ejml/dense/row/RandomMatrices_CDRM;->rectangle(IIFFLjava/util/Random;)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p0

    return-object p0
.end method
