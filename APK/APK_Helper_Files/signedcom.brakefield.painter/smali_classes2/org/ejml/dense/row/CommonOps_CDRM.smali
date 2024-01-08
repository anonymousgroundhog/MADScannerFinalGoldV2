.class public Lorg/ejml/dense/row/CommonOps_CDRM;
.super Ljava/lang/Object;
.source "CommonOps_CDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lorg/ejml/data/CMatrixD1;Lorg/ejml/data/CMatrixD1;Lorg/ejml/data/CMatrixD1;)V
    .locals 5

    const/4 v0, 0x1

    .line 278
    invoke-static {p0, p1, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 279
    iget v0, p0, Lorg/ejml/data/CMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/CMatrixD1;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/CMatrixD1;->reshape(II)V

    .line 281
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixD1;->getDataLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 284
    iget-object v2, p2, Lorg/ejml/data/CMatrixD1;->data:[F

    iget-object v3, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v3, v3, v1

    iget-object v4, p1, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v4, v4, v1

    add-float/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static columnsToVector(Lorg/ejml/data/CMatrixRMaj;[Lorg/ejml/data/CMatrixRMaj;)[Lorg/ejml/data/CMatrixRMaj;
    .locals 10

    if-eqz p1, :cond_0

    .line 1183
    array-length v0, p1

    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_1

    .line 1184
    :cond_0
    iget p1, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    new-array p1, p1, [Lorg/ejml/data/CMatrixRMaj;

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 1189
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 1190
    aget-object v2, p1, v1

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 1191
    new-instance v2, Lorg/ejml/data/CMatrixRMaj;

    iget v4, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    invoke-direct {v2, v4, v3}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    aput-object v2, p1, v1

    goto :goto_1

    .line 1193
    :cond_2
    iget v4, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    invoke-virtual {v2, v4, v3}, Lorg/ejml/data/CMatrixRMaj;->reshape(II)V

    .line 1196
    :goto_1
    aget-object v2, p1, v1

    move v3, v0

    move v4, v3

    .line 1199
    :goto_2
    iget v5, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    if-ge v3, v5, :cond_3

    .line 1200
    invoke-virtual {p0, v3, v1}, Lorg/ejml/data/CMatrixRMaj;->getIndex(II)I

    move-result v5

    .line 1201
    iget-object v6, v2, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v7, v4, 0x1

    iget-object v8, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v9, v5, 0x1

    aget v5, v8, v5

    aput v5, v6, v4

    .line 1202
    iget-object v4, v2, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v5, v7, 0x1

    iget-object v6, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v6, v6, v9

    aput v6, v4, v7

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p1
.end method

.method public static conjugate(Lorg/ejml/data/CMatrixD1;Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixD1;
    .locals 5

    .line 231
    iget v0, p0, Lorg/ejml/data/CMatrixD1;->numRows:I

    iget v1, p0, Lorg/ejml/data/CMatrixD1;->numCols:I

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    .line 233
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixD1;->getDataLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 236
    iget-object v2, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget-object v3, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v3, v3, v1

    aput v3, v2, v1

    .line 237
    iget-object v2, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v4, v4, v3

    neg-float v4, v4

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static convert(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/CMatrixD1;)V
    .locals 5

    .line 148
    iget v0, p0, Lorg/ejml/data/FMatrixD1;->numCols:I

    iget v1, p1, Lorg/ejml/data/CMatrixD1;->numCols:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/ejml/data/FMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/CMatrixD1;->numRows:I

    if-ne v0, v1, :cond_1

    .line 152
    iget-object v0, p1, Lorg/ejml/data/CMatrixD1;->data:[F

    invoke-virtual {p1}, Lorg/ejml/data/CMatrixD1;->getDataLength()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([FIIF)V

    .line 154
    invoke-virtual {p1}, Lorg/ejml/data/CMatrixD1;->getDataLength()I

    move-result v0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 157
    iget-object v1, p1, Lorg/ejml/data/CMatrixD1;->data:[F

    iget-object v2, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    div-int/lit8 v4, v3, 0x2

    aget v2, v2, v4

    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    return-void

    .line 149
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The matrices are not all the same dimension."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static det(Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/Complex_F32;
    .locals 2

    .line 867
    new-instance v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;-><init>()V

    .line 869
    invoke-virtual {v0}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->inputModified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 870
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixRMaj;->copy()Lorg/ejml/data/CMatrixRMaj;

    move-result-object p0

    .line 873
    :cond_0
    invoke-virtual {v0, p0}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->decompose(Lorg/ejml/data/CMatrixRMaj;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 874
    new-instance p0, Lorg/ejml/data/Complex_F32;

    invoke-direct {p0}, Lorg/ejml/data/Complex_F32;-><init>()V

    return-object p0

    .line 875
    :cond_1
    invoke-virtual {v0}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_CDRM;->computeDeterminant()Lorg/ejml/data/Complex_F32;

    move-result-object p0

    return-object p0
.end method

.method public static varargs diag(Lorg/ejml/data/CMatrixRMaj;I[F)Lorg/ejml/data/CMatrixRMaj;
    .locals 4

    .line 107
    invoke-static {p0, p1, p1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 111
    aget v1, p2, v1

    add-int/lit8 v3, v2, 0x1

    aget v2, p2, v2

    invoke-virtual {p0, v0, v0, v1, v2}, Lorg/ejml/data/CMatrixRMaj;->set(IIFF)V

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static varargs diag([F)Lorg/ejml/data/CMatrixRMaj;
    .locals 2

    .line 100
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 103
    new-instance v0, Lorg/ejml/data/CMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1, p0}, Lorg/ejml/dense/row/CommonOps_CDRM;->diag(Lorg/ejml/data/CMatrixRMaj;I[F)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p0

    return-object p0

    .line 101
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "must be an even number of arguments"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static elementDivide(FFLorg/ejml/data/CMatrixD1;Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;
    .locals 9

    .line 944
    iget v0, p2, Lorg/ejml/data/CMatrixD1;->numRows:I

    iget v1, p2, Lorg/ejml/data/CMatrixD1;->numCols:I

    invoke-static {p3, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p3

    .line 946
    invoke-virtual {p2}, Lorg/ejml/data/CMatrixD1;->getDataLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 948
    iget-object v2, p2, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v2, v2, v1

    .line 949
    iget-object v3, p2, Lorg/ejml/data/CMatrixD1;->data:[F

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    mul-float v5, v2, v2

    mul-float v6, v3, v3

    add-float/2addr v5, v6

    .line 953
    iget-object v6, p3, Lorg/ejml/data/CMatrixRMaj;->data:[F

    mul-float v7, p0, v2

    mul-float v8, p1, v3

    add-float/2addr v7, v8

    div-float/2addr v7, v5

    aput v7, v6, v1

    .line 954
    iget-object v6, p3, Lorg/ejml/data/CMatrixRMaj;->data:[F

    mul-float/2addr v2, p1

    mul-float/2addr v3, p0

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    aput v2, v6, v4

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public static elementDivide(Lorg/ejml/data/CMatrixD1;FFLorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;
    .locals 9

    .line 916
    iget v0, p0, Lorg/ejml/data/CMatrixD1;->numRows:I

    iget v1, p0, Lorg/ejml/data/CMatrixD1;->numCols:I

    invoke-static {p3, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p3

    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    .line 920
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixD1;->getDataLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 922
    iget-object v3, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v3, v3, v2

    .line 923
    iget-object v4, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    .line 925
    iget-object v6, p3, Lorg/ejml/data/CMatrixRMaj;->data:[F

    mul-float v7, v3, p1

    mul-float v8, v4, p2

    add-float/2addr v7, v8

    div-float/2addr v7, v0

    aput v7, v6, v2

    .line 926
    iget-object v6, p3, Lorg/ejml/data/CMatrixRMaj;->data:[F

    mul-float/2addr v4, p1

    mul-float/2addr v3, p2

    sub-float/2addr v4, v3

    div-float/2addr v4, v0

    aput v4, v6, v5

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public static elementMaxAbs(Lorg/ejml/data/CMatrixRMaj;)F
    .locals 6

    .line 1220
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixRMaj;->getDataLength()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1224
    iget-object v3, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v3, v3, v2

    .line 1225
    iget-object v4, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    mul-float/2addr v3, v3

    mul-float/2addr v4, v4

    add-float/2addr v3, v4

    cmpl-float v4, v3, v1

    if-lez v4, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    float-to-double v0, v1

    .line 1234
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static elementMaxImaginary(Lorg/ejml/data/CMatrixD1;)F
    .locals 5

    .line 1043
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixD1;->getDataLength()I

    move-result v0

    .line 1045
    iget-object v1, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    const/4 v2, 0x3

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1047
    iget-object v3, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v3, v3, v2

    cmpl-float v4, v3, v1

    if-lez v4, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static elementMaxMagnitude2(Lorg/ejml/data/CMatrixD1;)F
    .locals 6

    .line 1067
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixD1;->getDataLength()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1071
    iget-object v3, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    add-int/lit8 v4, v2, 0x1

    aget v2, v3, v2

    .line 1072
    iget-object v3, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    add-int/lit8 v5, v4, 0x1

    aget v3, v3, v4

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    cmpl-float v3, v2, v1

    if-lez v3, :cond_0

    move v1, v2

    :cond_0
    move v2, v5

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static elementMaxReal(Lorg/ejml/data/CMatrixD1;)F
    .locals 5

    .line 1019
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixD1;->getDataLength()I

    move-result v0

    .line 1021
    iget-object v1, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1023
    iget-object v3, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v3, v3, v2

    cmpl-float v4, v3, v1

    if-lez v4, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static elementMinAbs(Lorg/ejml/data/CMatrixRMaj;)F
    .locals 6

    .line 1248
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixRMaj;->getDataLength()I

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1252
    iget-object v3, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v3, v3, v2

    .line 1253
    iget-object v4, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    mul-float/2addr v3, v3

    mul-float/2addr v4, v4

    add-float/2addr v3, v4

    cmpg-float v4, v3, v1

    if-gez v4, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    float-to-double v0, v1

    .line 1262
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static elementMinImaginary(Lorg/ejml/data/CMatrixD1;)F
    .locals 5

    .line 995
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixD1;->getDataLength()I

    move-result v0

    .line 997
    iget-object v1, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    const/4 v2, 0x3

    :goto_0
    if-ge v2, v0, :cond_1

    .line 999
    iget-object v3, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v3, v3, v2

    cmpg-float v4, v3, v1

    if-gez v4, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static elementMinReal(Lorg/ejml/data/CMatrixD1;)F
    .locals 5

    .line 971
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixD1;->getDataLength()I

    move-result v0

    .line 973
    iget-object v1, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 975
    iget-object v3, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v3, v3, v2

    cmpg-float v4, v3, v1

    if-gez v4, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static elementMultiply(Lorg/ejml/data/CMatrixD1;FFLorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;
    .locals 8

    .line 890
    iget v0, p0, Lorg/ejml/data/CMatrixD1;->numRows:I

    iget v1, p0, Lorg/ejml/data/CMatrixD1;->numCols:I

    invoke-static {p3, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p3

    .line 892
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixD1;->getDataLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 894
    iget-object v2, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v2, v2, v1

    .line 895
    iget-object v3, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    .line 897
    iget-object v5, p3, Lorg/ejml/data/CMatrixRMaj;->data:[F

    mul-float v6, v2, p1

    mul-float v7, v3, p2

    sub-float/2addr v6, v7

    aput v6, v5, v1

    .line 898
    iget-object v5, p3, Lorg/ejml/data/CMatrixRMaj;->data:[F

    mul-float/2addr v2, p2

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    aput v2, v5, v4

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public static extract(Lorg/ejml/data/CMatrixRMaj;IIII)Lorg/ejml/data/CMatrixRMaj;
    .locals 11

    if-le p2, p1, :cond_1

    if-ltz p1, :cond_1

    .line 1124
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    if-gt p2, v0, :cond_1

    if-le p4, p3, :cond_0

    if-ltz p3, :cond_0

    .line 1126
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    if-gt p4, v0, :cond_0

    sub-int v0, p4, p3

    sub-int v1, p2, p1

    .line 1132
    new-instance v10, Lorg/ejml/data/CMatrixRMaj;

    invoke-direct {v10, v1, v0}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, v10

    .line 1134
    invoke-static/range {v2 .. v9}, Lorg/ejml/dense/row/CommonOps_CDRM;->extract(Lorg/ejml/data/CMatrixRMaj;IIIILorg/ejml/data/CMatrixRMaj;II)V

    return-object v10

    .line 1127
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "srcX1 <= srcX0 || srcX0 < 0 || srcX1 > src.numCols"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1125
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "srcY1 <= srcY0 || srcY0 < 0 || srcY1 > src.numRows"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extract(Lorg/ejml/data/CMatrixRMaj;IIIILorg/ejml/data/CMatrixRMaj;II)V
    .locals 5

    sub-int/2addr p2, p1

    sub-int/2addr p4, p3

    mul-int/lit8 p4, p4, 0x2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v1, v0, p1

    .line 1168
    invoke-virtual {p0, v1, p3}, Lorg/ejml/data/CMatrixRMaj;->getIndex(II)I

    move-result v1

    add-int v2, v0, p6

    .line 1169
    invoke-virtual {p5, v2, p7}, Lorg/ejml/data/CMatrixRMaj;->getIndex(II)I

    move-result v2

    .line 1170
    iget-object v3, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget-object v4, p5, Lorg/ejml/data/CMatrixRMaj;->data:[F

    invoke-static {v3, v1, v4, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static extractDiag(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 7

    .line 127
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 130
    invoke-static {p1}, Lorg/ejml/dense/row/MatrixFeatures_CDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    iget v3, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int/2addr v1, v3

    if-eq v1, v0, :cond_1

    .line 131
    :cond_0
    invoke-virtual {p1, v0, v2}, Lorg/ejml/data/CMatrixRMaj;->reshape(II)V

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 135
    invoke-virtual {p0, v1, v1}, Lorg/ejml/data/CMatrixRMaj;->getIndex(II)I

    move-result v3

    .line 136
    iget-object v4, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    mul-int/lit8 v5, v1, 0x2

    iget-object v6, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v6, v6, v3

    aput v6, v4, v5

    .line 137
    iget-object v4, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/2addr v3, v2

    aget v3, v6, v3

    aput v3, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static fill(Lorg/ejml/data/CMatrixD1;FF)V
    .locals 4

    .line 255
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixD1;->getDataLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 257
    iget-object v2, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    aput p1, v2, v1

    .line 258
    iget-object v2, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    add-int/lit8 v3, v1, 0x1

    aput p2, v2, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static identity(I)Lorg/ejml/data/CMatrixRMaj;
    .locals 4

    .line 55
    new-instance v0, Lorg/ejml/data/CMatrixRMaj;

    invoke-direct {v0, p0, p0}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 58
    invoke-virtual {v0, v1, v1, v2, v3}, Lorg/ejml/data/CMatrixRMaj;->set(IIFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static identity(II)Lorg/ejml/data/CMatrixRMaj;
    .locals 3

    .line 77
    new-instance v0, Lorg/ejml/data/CMatrixRMaj;

    invoke-direct {v0, p0, p1}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    .line 79
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 81
    invoke-virtual {v0, p1, p1, v1, v2}, Lorg/ejml/data/CMatrixRMaj;->set(IIFF)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static invert(Lorg/ejml/data/CMatrixRMaj;)Z
    .locals 2

    .line 767
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    invoke-static {v0}, Lorg/ejml/dense/row/factory/LinearSolverFactory_CDRM;->lu(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object v0

    .line 769
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 770
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->invert(Lorg/ejml/data/Matrix;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static invert(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)Z
    .locals 2

    .line 802
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    invoke-static {v0}, Lorg/ejml/dense/row/factory/LinearSolverFactory_CDRM;->lu(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object v0

    .line 804
    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->modifiesA()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 805
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixRMaj;->copy()Lorg/ejml/data/CMatrixRMaj;

    move-result-object p0

    .line 807
    :cond_0
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 809
    :cond_1
    invoke-interface {v0, p1}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->invert(Lorg/ejml/data/Matrix;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static magnitude(Lorg/ejml/data/CMatrixD1;Lorg/ejml/data/FMatrixD1;)V
    .locals 6

    .line 207
    iget v0, p0, Lorg/ejml/data/CMatrixD1;->numRows:I

    iget v1, p0, Lorg/ejml/data/CMatrixD1;->numCols:I

    invoke-virtual {p1, v0, v1}, Lorg/ejml/data/FMatrixD1;->reshape(II)V

    .line 209
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixD1;->getDataLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 212
    iget-object v2, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v2, v2, v1

    .line 213
    iget-object v3, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    .line 215
    iget-object v4, p1, Lorg/ejml/data/FMatrixD1;->data:[F

    div-int/lit8 v5, v1, 0x2

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v4, v5

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static mult(FFLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 2

    .line 374
    iget v0, p3, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    .line 375
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->mult_reorder(FFLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    goto :goto_0

    .line 377
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->mult_small(FFLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    :goto_0
    return-void
.end method

.method public static mult(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 2

    .line 352
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    .line 353
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->mult_reorder(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    goto :goto_0

    .line 355
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->mult_small(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    :goto_0
    return-void
.end method

.method public static multAdd(FFLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 2

    .line 416
    iget v0, p3, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    .line 417
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->multAdd_reorder(FFLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    goto :goto_0

    .line 419
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->multAdd_small(FFLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    :goto_0
    return-void
.end method

.method public static multAdd(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 2

    .line 394
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    .line 395
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->multAdd_reorder(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    goto :goto_0

    .line 397
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->multAdd_small(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    :goto_0
    return-void
.end method

.method public static multAddTransA(FFLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 2

    .line 583
    iget v0, p2, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_COLUMN_SWITCH:I

    if-ge v0, v1, :cond_1

    iget v0, p3, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 587
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->multAddTransA_small(FFLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    goto :goto_1

    .line 585
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->multAddTransA_reorder(FFLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    :goto_1
    return-void
.end method

.method public static multAddTransA(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 2

    .line 559
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_COLUMN_SWITCH:I

    if-ge v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 563
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->multAddTransA_small(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    goto :goto_1

    .line 561
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->multAddTransA_reorder(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    :goto_1
    return-void
.end method

.method public static multAddTransAB(FFLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 8

    .line 662
    iget v0, p2, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_TRANAB_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    const/4 v7, 0x0

    move v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 663
    invoke-static/range {v2 .. v7}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->multAddTransAB_aux(FFLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;[F)V

    goto :goto_0

    .line 665
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->multAddTransAB(FFLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    :goto_0
    return-void
.end method

.method public static multAddTransAB(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 2

    .line 639
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_TRANAB_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 640
    invoke-static {p0, p1, p2, v0}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->multAddTransAB_aux(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;[F)V

    goto :goto_0

    .line 642
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->multAddTransAB(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    :goto_0
    return-void
.end method

.method public static multAddTransB(FFLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 0

    .line 623
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->multAddTransB(FFLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public static multAddTransB(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 0

    .line 604
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->multAddTransB(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public static multTransA(FFLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 2

    .line 460
    iget v0, p2, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_COLUMN_SWITCH:I

    if-ge v0, v1, :cond_1

    iget v0, p3, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->multTransA_small(FFLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    goto :goto_1

    .line 462
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->multTransA_reorder(FFLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    :goto_1
    return-void
.end method

.method public static multTransA(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 2

    .line 436
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_COLUMN_SWITCH:I

    if-ge v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->multTransA_small(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    goto :goto_1

    .line 438
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->multTransA_reorder(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    :goto_1
    return-void
.end method

.method public static multTransAB(FFLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 8

    .line 539
    iget v0, p2, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_TRANAB_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    const/4 v7, 0x0

    move v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 540
    invoke-static/range {v2 .. v7}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->multTransAB_aux(FFLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;[F)V

    goto :goto_0

    .line 542
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->multTransAB(FFLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    :goto_0
    return-void
.end method

.method public static multTransAB(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 2

    .line 516
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_TRANAB_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 517
    invoke-static {p0, p1, p2, v0}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->multTransAB_aux(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;[F)V

    goto :goto_0

    .line 519
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->multTransAB(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    :goto_0
    return-void
.end method

.method public static multTransB(FFLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 0

    .line 500
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->multTransB(FFLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public static multTransB(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 0

    .line 481
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_CDRM;->multTransB(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public static scale(FFLorg/ejml/data/CMatrixD1;)V
    .locals 8

    .line 328
    invoke-virtual {p2}, Lorg/ejml/data/CMatrixD1;->getNumElements()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 331
    iget-object v2, p2, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v2, v2, v1

    .line 332
    iget-object v3, p2, Lorg/ejml/data/CMatrixD1;->data:[F

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    .line 334
    iget-object v5, p2, Lorg/ejml/data/CMatrixD1;->data:[F

    mul-float v6, v2, p0

    mul-float v7, v3, p1

    sub-float/2addr v6, v7

    aput v6, v5, v1

    .line 335
    iget-object v5, p2, Lorg/ejml/data/CMatrixD1;->data:[F

    mul-float/2addr v2, p1

    mul-float/2addr v3, p0

    add-float/2addr v2, v3

    aput v2, v5, v4

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setIdentity(Lorg/ejml/data/CMatrixRMaj;)V
    .locals 6

    .line 1091
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    .line 1093
    :goto_0
    iget-object v1, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    invoke-virtual {p0}, Lorg/ejml/data/CMatrixRMaj;->getDataLength()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Ljava/util/Arrays;->fill([FIIF)V

    .line 1096
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixRMaj;->getRowStride()I

    move-result v1

    move v2, v4

    :goto_1
    if-ge v4, v0, :cond_1

    .line 1099
    iget-object v3, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static solve(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)Z
    .locals 2

    .line 842
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    .line 843
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    invoke-static {v0}, Lorg/ejml/dense/row/factory/LinearSolverFactory_CDRM;->lu(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object v0

    goto :goto_0

    .line 845
    :cond_0
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-static {v0, v1}, Lorg/ejml/dense/row/factory/LinearSolverFactory_CDRM;->qr(II)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object v0

    .line 849
    :goto_0
    new-instance v1, Lorg/ejml/LinearSolverSafe;

    invoke-direct {v1, v0}, Lorg/ejml/LinearSolverSafe;-><init>(Lorg/ejml/interfaces/linsol/LinearSolverDense;)V

    .line 851
    invoke-interface {v1, p0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 854
    :cond_1
    invoke-interface {v1, p1, p2}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static stripImaginary(Lorg/ejml/data/CMatrixD1;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 5

    .line 185
    iget v0, p0, Lorg/ejml/data/CMatrixD1;->numRows:I

    iget v1, p0, Lorg/ejml/data/CMatrixD1;->numCols:I

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    .line 187
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixD1;->getDataLength()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 190
    iget-object v2, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    div-int/lit8 v3, v1, 0x2

    iget-object v4, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v4, v4, v1

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static stripReal(Lorg/ejml/data/CMatrixD1;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 5

    .line 168
    iget v0, p0, Lorg/ejml/data/CMatrixD1;->numRows:I

    iget v1, p0, Lorg/ejml/data/CMatrixD1;->numCols:I

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    .line 170
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixD1;->getDataLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 173
    iget-object v2, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    div-int/lit8 v3, v1, 0x2

    iget-object v4, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v4, v4, v1

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static subtract(Lorg/ejml/data/CMatrixD1;Lorg/ejml/data/CMatrixD1;Lorg/ejml/data/CMatrixD1;)V
    .locals 5

    const/4 v0, 0x1

    .line 304
    invoke-static {p0, p1, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 305
    iget v0, p0, Lorg/ejml/data/CMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/CMatrixD1;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/CMatrixD1;->reshape(II)V

    .line 307
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixD1;->getDataLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 310
    iget-object v2, p2, Lorg/ejml/data/CMatrixD1;->data:[F

    iget-object v3, p0, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v3, v3, v1

    iget-object v4, p1, Lorg/ejml/data/CMatrixD1;->data:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static transpose(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;
    .locals 2

    .line 721
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    .line 723
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/TransposeAlgs_CDRM;->standard(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-object p1
.end method

.method public static transpose(Lorg/ejml/data/CMatrixRMaj;)V
    .locals 3

    .line 681
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    .line 682
    invoke-static {p0}, Lorg/ejml/dense/row/misc/TransposeAlgs_CDRM;->square(Lorg/ejml/data/CMatrixRMaj;)V

    goto :goto_0

    .line 684
    :cond_0
    new-instance v0, Lorg/ejml/data/CMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    iget v2, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    .line 685
    invoke-static {p0, v0}, Lorg/ejml/dense/row/CommonOps_CDRM;->transpose(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;

    .line 686
    iget v1, v0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v2, v0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-virtual {p0, v1, v2}, Lorg/ejml/data/CMatrixRMaj;->reshape(II)V

    .line 687
    invoke-virtual {p0, v0}, Lorg/ejml/data/CMatrixRMaj;->set(Lorg/ejml/data/CMatrixRMaj;)V

    :goto_0
    return-void
.end method

.method public static transposeConjugate(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;
    .locals 2

    .line 742
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    .line 744
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/TransposeAlgs_CDRM;->standardConjugate(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-object p1
.end method

.method public static transposeConjugate(Lorg/ejml/data/CMatrixRMaj;)V
    .locals 3

    .line 698
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    .line 699
    invoke-static {p0}, Lorg/ejml/dense/row/misc/TransposeAlgs_CDRM;->squareConjugate(Lorg/ejml/data/CMatrixRMaj;)V

    goto :goto_0

    .line 701
    :cond_0
    new-instance v0, Lorg/ejml/data/CMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    iget v2, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    .line 702
    invoke-static {p0, v0}, Lorg/ejml/dense/row/CommonOps_CDRM;->transposeConjugate(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;

    .line 703
    iget v1, v0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v2, v0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-virtual {p0, v1, v2}, Lorg/ejml/data/CMatrixRMaj;->reshape(II)V

    .line 704
    invoke-virtual {p0, v0}, Lorg/ejml/data/CMatrixRMaj;->set(Lorg/ejml/data/CMatrixRMaj;)V

    :goto_0
    return-void
.end method
