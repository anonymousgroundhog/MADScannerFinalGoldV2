.class public Lorg/ejml/dense/row/CommonOps_ZDRM;
.super Ljava/lang/Object;
.source "CommonOps_ZDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lorg/ejml/data/ZMatrixD1;Lorg/ejml/data/ZMatrixD1;Lorg/ejml/data/ZMatrixD1;)V
    .locals 7

    const/4 v0, 0x1

    .line 276
    invoke-static {p0, p1, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 277
    iget v0, p0, Lorg/ejml/data/ZMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/ZMatrixD1;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/ZMatrixD1;->reshape(II)V

    .line 279
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixD1;->getDataLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 282
    iget-object v2, p2, Lorg/ejml/data/ZMatrixD1;->data:[D

    iget-object v3, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v3, v3, v1

    iget-object v5, p1, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v5, v5, v1

    add-double/2addr v3, v5

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static columnsToVector(Lorg/ejml/data/ZMatrixRMaj;[Lorg/ejml/data/ZMatrixRMaj;)[Lorg/ejml/data/ZMatrixRMaj;
    .locals 12

    if-eqz p1, :cond_0

    .line 1181
    array-length v0, p1

    iget v1, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_1

    .line 1182
    :cond_0
    iget p1, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    new-array p1, p1, [Lorg/ejml/data/ZMatrixRMaj;

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 1187
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 1188
    aget-object v2, p1, v1

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 1189
    new-instance v2, Lorg/ejml/data/ZMatrixRMaj;

    iget v4, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    invoke-direct {v2, v4, v3}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    aput-object v2, p1, v1

    goto :goto_1

    .line 1191
    :cond_2
    iget v4, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    invoke-virtual {v2, v4, v3}, Lorg/ejml/data/ZMatrixRMaj;->reshape(II)V

    .line 1194
    :goto_1
    aget-object v2, p1, v1

    move v3, v0

    move v4, v3

    .line 1197
    :goto_2
    iget v5, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v3, v5, :cond_3

    .line 1198
    invoke-virtual {p0, v3, v1}, Lorg/ejml/data/ZMatrixRMaj;->getIndex(II)I

    move-result v5

    .line 1199
    iget-object v6, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v7, v4, 0x1

    iget-object v8, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v9, v5, 0x1

    aget-wide v10, v8, v5

    aput-wide v10, v6, v4

    .line 1200
    iget-object v4, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v5, v7, 0x1

    iget-object v6, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v8, v6, v9

    aput-wide v8, v4, v7

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p1
.end method

.method public static conjugate(Lorg/ejml/data/ZMatrixD1;Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixD1;
    .locals 6

    .line 229
    iget v0, p0, Lorg/ejml/data/ZMatrixD1;->numRows:I

    iget v1, p0, Lorg/ejml/data/ZMatrixD1;->numCols:I

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    .line 231
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixD1;->getDataLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 234
    iget-object v2, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget-object v3, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v3, v3, v1

    aput-wide v3, v2, v1

    .line 235
    iget-object v2, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v4, v4, v3

    neg-double v4, v4

    aput-wide v4, v2, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static convert(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/ZMatrixD1;)V
    .locals 5

    .line 146
    iget v0, p0, Lorg/ejml/data/DMatrixD1;->numCols:I

    iget v1, p1, Lorg/ejml/data/ZMatrixD1;->numCols:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/ejml/data/DMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/ZMatrixD1;->numRows:I

    if-ne v0, v1, :cond_1

    .line 150
    iget-object v0, p1, Lorg/ejml/data/ZMatrixD1;->data:[D

    invoke-virtual {p1}, Lorg/ejml/data/ZMatrixD1;->getDataLength()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/util/Arrays;->fill([DIID)V

    .line 152
    invoke-virtual {p1}, Lorg/ejml/data/ZMatrixD1;->getDataLength()I

    move-result v0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 155
    iget-object v1, p1, Lorg/ejml/data/ZMatrixD1;->data:[D

    iget-object v2, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    div-int/lit8 v3, v4, 0x2

    aget-wide v2, v2, v3

    aput-wide v2, v1, v4

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_0
    return-void

    .line 147
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The matrices are not all the same dimension."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static det(Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/Complex_F64;
    .locals 2

    .line 865
    new-instance v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;-><init>()V

    .line 867
    invoke-virtual {v0}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->inputModified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 868
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixRMaj;->copy()Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p0

    .line 871
    :cond_0
    invoke-virtual {v0, p0}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->decompose(Lorg/ejml/data/ZMatrixRMaj;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 872
    new-instance p0, Lorg/ejml/data/Complex_F64;

    invoke-direct {p0}, Lorg/ejml/data/Complex_F64;-><init>()V

    return-object p0

    .line 873
    :cond_1
    invoke-virtual {v0}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionAlt_ZDRM;->computeDeterminant()Lorg/ejml/data/Complex_F64;

    move-result-object p0

    return-object p0
.end method

.method public static varargs diag(Lorg/ejml/data/ZMatrixRMaj;I[D)Lorg/ejml/data/ZMatrixRMaj;
    .locals 9

    .line 105
    invoke-static {p0, p1, p1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p0

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, p1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 109
    aget-wide v3, p2, v0

    add-int/lit8 v8, v1, 0x1

    aget-wide v5, p2, v1

    move-object v0, p0

    move v1, v7

    move v2, v7

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/data/ZMatrixRMaj;->set(IIDD)V

    add-int/lit8 v7, v7, 0x1

    move v0, v8

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static varargs diag([D)Lorg/ejml/data/ZMatrixRMaj;
    .locals 2

    .line 98
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 101
    new-instance v0, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1, p0}, Lorg/ejml/dense/row/CommonOps_ZDRM;->diag(Lorg/ejml/data/ZMatrixRMaj;I[D)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p0

    return-object p0

    .line 99
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "must be an even number of arguments"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static elementDivide(DDLorg/ejml/data/ZMatrixD1;Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;
    .locals 16

    move-object/from16 v0, p4

    .line 942
    iget v1, v0, Lorg/ejml/data/ZMatrixD1;->numRows:I

    iget v2, v0, Lorg/ejml/data/ZMatrixD1;->numCols:I

    move-object/from16 v3, p5

    invoke-static {v3, v1, v2}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object v1

    .line 944
    invoke-virtual/range {p4 .. p4}, Lorg/ejml/data/ZMatrixD1;->getDataLength()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 946
    iget-object v4, v0, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v4, v4, v3

    .line 947
    iget-object v6, v0, Lorg/ejml/data/ZMatrixD1;->data:[D

    add-int/lit8 v7, v3, 0x1

    aget-wide v8, v6, v7

    mul-double v10, v4, v4

    mul-double v12, v8, v8

    add-double/2addr v10, v12

    .line 951
    iget-object v6, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    mul-double v12, p0, v4

    mul-double v14, p2, v8

    add-double/2addr v12, v14

    div-double/2addr v12, v10

    aput-wide v12, v6, v3

    .line 952
    iget-object v6, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    mul-double v4, v4, p2

    mul-double v8, v8, p0

    sub-double/2addr v4, v8

    div-double/2addr v4, v10

    aput-wide v4, v6, v7

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static elementDivide(Lorg/ejml/data/ZMatrixD1;DDLorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;
    .locals 16

    move-object/from16 v0, p0

    .line 914
    iget v1, v0, Lorg/ejml/data/ZMatrixD1;->numRows:I

    iget v2, v0, Lorg/ejml/data/ZMatrixD1;->numCols:I

    move-object/from16 v3, p5

    invoke-static {v3, v1, v2}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object v1

    mul-double v2, p1, p1

    mul-double v4, p3, p3

    add-double/2addr v2, v4

    .line 918
    invoke-virtual/range {p0 .. p0}, Lorg/ejml/data/ZMatrixD1;->getDataLength()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    .line 920
    iget-object v6, v0, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v6, v6, v5

    .line 921
    iget-object v8, v0, Lorg/ejml/data/ZMatrixD1;->data:[D

    add-int/lit8 v9, v5, 0x1

    aget-wide v10, v8, v9

    .line 923
    iget-object v8, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    mul-double v12, v6, p1

    mul-double v14, v10, p3

    add-double/2addr v12, v14

    div-double/2addr v12, v2

    aput-wide v12, v8, v5

    .line 924
    iget-object v8, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    mul-double v10, v10, p1

    mul-double v6, v6, p3

    sub-double/2addr v10, v6

    div-double/2addr v10, v2

    aput-wide v10, v8, v9

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static elementMaxAbs(Lorg/ejml/data/ZMatrixRMaj;)D
    .locals 8

    .line 1218
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixRMaj;->getDataLength()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 1222
    iget-object v4, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v4, v4, v3

    .line 1223
    iget-object v6, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v7, v3, 0x1

    aget-wide v6, v6, v7

    mul-double/2addr v4, v4

    mul-double/2addr v6, v6

    add-double/2addr v4, v6

    cmpl-double v6, v4, v1

    if-lez v6, :cond_0

    move-wide v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 1232
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static elementMaxImaginary(Lorg/ejml/data/ZMatrixD1;)D
    .locals 7

    .line 1041
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixD1;->getDataLength()I

    move-result v0

    .line 1043
    iget-object v1, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    const/4 v2, 0x1

    aget-wide v1, v1, v2

    const/4 v3, 0x3

    :goto_0
    if-ge v3, v0, :cond_1

    .line 1045
    iget-object v4, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v4, v4, v3

    cmpl-double v6, v4, v1

    if-lez v6, :cond_0

    move-wide v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public static elementMaxMagnitude2(Lorg/ejml/data/ZMatrixD1;)D
    .locals 8

    .line 1065
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixD1;->getDataLength()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 1069
    iget-object v4, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    add-int/lit8 v5, v3, 0x1

    aget-wide v3, v4, v3

    .line 1070
    iget-object v6, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    add-int/lit8 v7, v5, 0x1

    aget-wide v5, v6, v5

    mul-double/2addr v3, v3

    mul-double/2addr v5, v5

    add-double/2addr v3, v5

    cmpl-double v5, v3, v1

    if-lez v5, :cond_0

    move-wide v1, v3

    :cond_0
    move v3, v7

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public static elementMaxReal(Lorg/ejml/data/ZMatrixD1;)D
    .locals 7

    .line 1017
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixD1;->getDataLength()I

    move-result v0

    .line 1019
    iget-object v1, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    const/4 v3, 0x2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 1021
    iget-object v4, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v4, v4, v3

    cmpl-double v6, v4, v1

    if-lez v6, :cond_0

    move-wide v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public static elementMinAbs(Lorg/ejml/data/ZMatrixRMaj;)D
    .locals 8

    .line 1246
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixRMaj;->getDataLength()I

    move-result v0

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 1250
    iget-object v4, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v4, v4, v3

    .line 1251
    iget-object v6, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v7, v3, 0x1

    aget-wide v6, v6, v7

    mul-double/2addr v4, v4

    mul-double/2addr v6, v6

    add-double/2addr v4, v6

    cmpg-double v6, v4, v1

    if-gez v6, :cond_0

    move-wide v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 1260
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static elementMinImaginary(Lorg/ejml/data/ZMatrixD1;)D
    .locals 7

    .line 993
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixD1;->getDataLength()I

    move-result v0

    .line 995
    iget-object v1, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    const/4 v2, 0x1

    aget-wide v1, v1, v2

    const/4 v3, 0x3

    :goto_0
    if-ge v3, v0, :cond_1

    .line 997
    iget-object v4, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v4, v4, v3

    cmpg-double v6, v4, v1

    if-gez v6, :cond_0

    move-wide v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public static elementMinReal(Lorg/ejml/data/ZMatrixD1;)D
    .locals 7

    .line 969
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixD1;->getDataLength()I

    move-result v0

    .line 971
    iget-object v1, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    const/4 v3, 0x2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 973
    iget-object v4, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v4, v4, v3

    cmpg-double v6, v4, v1

    if-gez v6, :cond_0

    move-wide v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public static elementMultiply(Lorg/ejml/data/ZMatrixD1;DDLorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;
    .locals 14

    move-object v0, p0

    .line 888
    iget v1, v0, Lorg/ejml/data/ZMatrixD1;->numRows:I

    iget v2, v0, Lorg/ejml/data/ZMatrixD1;->numCols:I

    move-object/from16 v3, p5

    invoke-static {v3, v1, v2}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object v1

    .line 890
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixD1;->getDataLength()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 892
    iget-object v4, v0, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v4, v4, v3

    .line 893
    iget-object v6, v0, Lorg/ejml/data/ZMatrixD1;->data:[D

    add-int/lit8 v7, v3, 0x1

    aget-wide v8, v6, v7

    .line 895
    iget-object v6, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    mul-double v10, v4, p1

    mul-double v12, v8, p3

    sub-double/2addr v10, v12

    aput-wide v10, v6, v3

    .line 896
    iget-object v6, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    mul-double v4, v4, p3

    mul-double/2addr v8, p1

    add-double/2addr v4, v8

    aput-wide v4, v6, v7

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static extract(Lorg/ejml/data/ZMatrixRMaj;IIII)Lorg/ejml/data/ZMatrixRMaj;
    .locals 11

    if-le p2, p1, :cond_1

    if-ltz p1, :cond_1

    .line 1122
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-gt p2, v0, :cond_1

    if-le p4, p3, :cond_0

    if-ltz p3, :cond_0

    .line 1124
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-gt p4, v0, :cond_0

    sub-int v0, p4, p3

    sub-int v1, p2, p1

    .line 1130
    new-instance v10, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {v10, v1, v0}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, v10

    .line 1132
    invoke-static/range {v2 .. v9}, Lorg/ejml/dense/row/CommonOps_ZDRM;->extract(Lorg/ejml/data/ZMatrixRMaj;IIIILorg/ejml/data/ZMatrixRMaj;II)V

    return-object v10

    .line 1125
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p1, 0x0

    sget-object p1, Lorg/ejml/sparse/csc/factory/IRj/pUMrurWM;->XzeMDzadSfdLHsV:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1123
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "srcY1 <= srcY0 || srcY0 < 0 || srcY1 > src.numRows"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extract(Lorg/ejml/data/ZMatrixRMaj;IIIILorg/ejml/data/ZMatrixRMaj;II)V
    .locals 5

    sub-int/2addr p2, p1

    sub-int/2addr p4, p3

    mul-int/lit8 p4, p4, 0x2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v1, v0, p1

    .line 1166
    invoke-virtual {p0, v1, p3}, Lorg/ejml/data/ZMatrixRMaj;->getIndex(II)I

    move-result v1

    add-int v2, v0, p6

    .line 1167
    invoke-virtual {p5, v2, p7}, Lorg/ejml/data/ZMatrixRMaj;->getIndex(II)I

    move-result v2

    .line 1168
    iget-object v3, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget-object v4, p5, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    invoke-static {v3, v1, v4, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static extractDiag(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 8

    .line 125
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 128
    invoke-static {p1}, Lorg/ejml/dense/row/MatrixFeatures_ZDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v3, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr v1, v3

    if-eq v1, v0, :cond_1

    .line 129
    :cond_0
    invoke-virtual {p1, v0, v2}, Lorg/ejml/data/ZMatrixRMaj;->reshape(II)V

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 133
    invoke-virtual {p0, v1, v1}, Lorg/ejml/data/ZMatrixRMaj;->getIndex(II)I

    move-result v3

    .line 134
    iget-object v4, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    mul-int/lit8 v5, v1, 0x2

    iget-object v6, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v6, v6, v3

    aput-wide v6, v4, v5

    .line 135
    iget-object v4, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/2addr v3, v2

    aget-wide v6, v6, v3

    aput-wide v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static fill(Lorg/ejml/data/ZMatrixD1;DD)V
    .locals 4

    .line 253
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixD1;->getDataLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 255
    iget-object v2, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    aput-wide p1, v2, v1

    .line 256
    iget-object v2, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    add-int/lit8 v3, v1, 0x1

    aput-wide p3, v2, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static identity(I)Lorg/ejml/data/ZMatrixRMaj;
    .locals 9

    .line 53
    new-instance v7, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {v7, p0, p0}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, p0, :cond_0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move v1, v8

    move v2, v8

    .line 56
    invoke-virtual/range {v0 .. v6}, Lorg/ejml/data/ZMatrixRMaj;->set(IIDD)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    return-object v7
.end method

.method public static identity(II)Lorg/ejml/data/ZMatrixRMaj;
    .locals 8

    .line 75
    new-instance v7, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {v7, p0, p1}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    .line 77
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move v1, p1

    move v2, p1

    .line 79
    invoke-virtual/range {v0 .. v6}, Lorg/ejml/data/ZMatrixRMaj;->set(IIDD)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v7
.end method

.method public static invert(Lorg/ejml/data/ZMatrixRMaj;)Z
    .locals 2

    .line 765
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    invoke-static {v0}, Lorg/ejml/dense/row/factory/LinearSolverFactory_ZDRM;->lu(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object v0

    .line 767
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 768
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->invert(Lorg/ejml/data/Matrix;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static invert(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)Z
    .locals 2

    .line 800
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    invoke-static {v0}, Lorg/ejml/dense/row/factory/LinearSolverFactory_ZDRM;->lu(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object v0

    .line 802
    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->modifiesA()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 803
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixRMaj;->copy()Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p0

    .line 805
    :cond_0
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 807
    :cond_1
    invoke-interface {v0, p1}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->invert(Lorg/ejml/data/Matrix;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static magnitude(Lorg/ejml/data/ZMatrixD1;Lorg/ejml/data/DMatrixD1;)V
    .locals 8

    .line 205
    iget v0, p0, Lorg/ejml/data/ZMatrixD1;->numRows:I

    iget v1, p0, Lorg/ejml/data/ZMatrixD1;->numCols:I

    invoke-virtual {p1, v0, v1}, Lorg/ejml/data/DMatrixD1;->reshape(II)V

    .line 207
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixD1;->getDataLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 210
    iget-object v2, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v2, v2, v1

    .line 211
    iget-object v4, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    add-int/lit8 v5, v1, 0x1

    aget-wide v4, v4, v5

    .line 213
    iget-object v6, p1, Lorg/ejml/data/DMatrixD1;->data:[D

    div-int/lit8 v7, v1, 0x2

    mul-double/2addr v2, v2

    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    aput-wide v2, v6, v7

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static mult(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 2

    .line 372
    iget v0, p5, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    .line 373
    invoke-static/range {p0 .. p6}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->mult_reorder(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    goto :goto_0

    .line 375
    :cond_0
    invoke-static/range {p0 .. p6}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->mult_small(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    :goto_0
    return-void
.end method

.method public static mult(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 2

    .line 350
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    .line 351
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->mult_reorder(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    goto :goto_0

    .line 353
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->mult_small(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    :goto_0
    return-void
.end method

.method public static multAdd(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 2

    .line 414
    iget v0, p5, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    .line 415
    invoke-static/range {p0 .. p6}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->multAdd_reorder(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    goto :goto_0

    .line 417
    :cond_0
    invoke-static/range {p0 .. p6}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->multAdd_small(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    :goto_0
    return-void
.end method

.method public static multAdd(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 2

    .line 392
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    .line 393
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->multAdd_reorder(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    goto :goto_0

    .line 395
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->multAdd_small(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    :goto_0
    return-void
.end method

.method public static multAddTransA(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 2

    .line 581
    iget v0, p4, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_COLUMN_SWITCH:I

    if-ge v0, v1, :cond_1

    iget v0, p5, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 585
    :cond_0
    invoke-static/range {p0 .. p6}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->multAddTransA_small(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    goto :goto_1

    .line 583
    :cond_1
    :goto_0
    invoke-static/range {p0 .. p6}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->multAddTransA_reorder(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    :goto_1
    return-void
.end method

.method public static multAddTransA(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 2

    .line 557
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_COLUMN_SWITCH:I

    if-ge v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 561
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->multAddTransA_small(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    goto :goto_1

    .line 559
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->multAddTransA_reorder(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    :goto_1
    return-void
.end method

.method public static multAddTransAB(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 8

    .line 660
    iget v0, p4, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_TRANAB_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    const/4 v7, 0x0

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 661
    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->multAddTransAB_aux(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;[D)V

    goto :goto_0

    .line 663
    :cond_0
    invoke-static/range {p0 .. p6}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->multAddTransAB(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    :goto_0
    return-void
.end method

.method public static multAddTransAB(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 2

    .line 637
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_TRANAB_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 638
    invoke-static {p0, p1, p2, v0}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->multAddTransAB_aux(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;[D)V

    goto :goto_0

    .line 640
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->multAddTransAB(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    :goto_0
    return-void
.end method

.method public static multAddTransB(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 0

    .line 621
    invoke-static/range {p0 .. p6}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->multAddTransB(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public static multAddTransB(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 0

    .line 602
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->multAddTransB(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public static multTransA(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 2

    .line 458
    iget v0, p4, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_COLUMN_SWITCH:I

    if-ge v0, v1, :cond_1

    iget v0, p5, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    invoke-static/range {p0 .. p6}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->multTransA_small(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    goto :goto_1

    .line 460
    :cond_1
    :goto_0
    invoke-static/range {p0 .. p6}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->multTransA_reorder(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    :goto_1
    return-void
.end method

.method public static multTransA(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 2

    .line 434
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_COLUMN_SWITCH:I

    if-ge v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 438
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->multTransA_small(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    goto :goto_1

    .line 436
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->multTransA_reorder(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    :goto_1
    return-void
.end method

.method public static multTransAB(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 8

    .line 537
    iget v0, p4, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_TRANAB_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    const/4 v7, 0x0

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 538
    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->multTransAB_aux(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;[D)V

    goto :goto_0

    .line 540
    :cond_0
    invoke-static/range {p0 .. p6}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->multTransAB(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    :goto_0
    return-void
.end method

.method public static multTransAB(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 2

    .line 514
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->CMULT_TRANAB_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 515
    invoke-static {p0, p1, p2, v0}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->multTransAB_aux(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;[D)V

    goto :goto_0

    .line 517
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->multTransAB(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    :goto_0
    return-void
.end method

.method public static multTransB(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 0

    .line 498
    invoke-static/range {p0 .. p6}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->multTransB(DDLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public static multTransB(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 0

    .line 479
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_ZDRM;->multTransB(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public static scale(DDLorg/ejml/data/ZMatrixD1;)V
    .locals 13

    move-object/from16 v0, p4

    .line 326
    invoke-virtual/range {p4 .. p4}, Lorg/ejml/data/ZMatrixD1;->getNumElements()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 329
    iget-object v3, v0, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v3, v3, v2

    .line 330
    iget-object v5, v0, Lorg/ejml/data/ZMatrixD1;->data:[D

    add-int/lit8 v6, v2, 0x1

    aget-wide v7, v5, v6

    .line 332
    iget-object v5, v0, Lorg/ejml/data/ZMatrixD1;->data:[D

    mul-double v9, v3, p0

    mul-double v11, v7, p2

    sub-double/2addr v9, v11

    aput-wide v9, v5, v2

    .line 333
    iget-object v5, v0, Lorg/ejml/data/ZMatrixD1;->data:[D

    mul-double/2addr v3, p2

    mul-double/2addr v7, p0

    add-double/2addr v3, v7

    aput-wide v3, v5, v6

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setIdentity(Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 8

    .line 1089
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    .line 1091
    :goto_0
    iget-object v1, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixRMaj;->getDataLength()I

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v4}, Ljava/util/Arrays;->fill([DIID)V

    .line 1094
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixRMaj;->getRowStride()I

    move-result v1

    move v2, v5

    :goto_1
    if-ge v5, v0, :cond_1

    .line 1097
    iget-object v3, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v3, v2

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static solve(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)Z
    .locals 2

    .line 840
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    .line 841
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    invoke-static {v0}, Lorg/ejml/dense/row/factory/LinearSolverFactory_ZDRM;->lu(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object v0

    goto :goto_0

    .line 843
    :cond_0
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-static {v0, v1}, Lorg/ejml/dense/row/factory/LinearSolverFactory_ZDRM;->qr(II)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object v0

    .line 847
    :goto_0
    new-instance v1, Lorg/ejml/LinearSolverSafe;

    invoke-direct {v1, v0}, Lorg/ejml/LinearSolverSafe;-><init>(Lorg/ejml/interfaces/linsol/LinearSolverDense;)V

    .line 849
    invoke-interface {v1, p0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 852
    :cond_1
    invoke-interface {v1, p1, p2}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static stripImaginary(Lorg/ejml/data/ZMatrixD1;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 6

    .line 183
    iget v0, p0, Lorg/ejml/data/ZMatrixD1;->numRows:I

    iget v1, p0, Lorg/ejml/data/ZMatrixD1;->numCols:I

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    .line 185
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixD1;->getDataLength()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 188
    iget-object v2, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    div-int/lit8 v3, v1, 0x2

    iget-object v4, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v4, v4, v1

    aput-wide v4, v2, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static stripReal(Lorg/ejml/data/ZMatrixD1;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 6

    .line 166
    iget v0, p0, Lorg/ejml/data/ZMatrixD1;->numRows:I

    iget v1, p0, Lorg/ejml/data/ZMatrixD1;->numCols:I

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    .line 168
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixD1;->getDataLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 171
    iget-object v2, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    div-int/lit8 v3, v1, 0x2

    iget-object v4, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v4, v4, v1

    aput-wide v4, v2, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static subtract(Lorg/ejml/data/ZMatrixD1;Lorg/ejml/data/ZMatrixD1;Lorg/ejml/data/ZMatrixD1;)V
    .locals 7

    const/4 v0, 0x1

    .line 302
    invoke-static {p0, p1, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 303
    iget v0, p0, Lorg/ejml/data/ZMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/ZMatrixD1;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/ZMatrixD1;->reshape(II)V

    .line 305
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixD1;->getDataLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 308
    iget-object v2, p2, Lorg/ejml/data/ZMatrixD1;->data:[D

    iget-object v3, p0, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v3, v3, v1

    iget-object v5, p1, Lorg/ejml/data/ZMatrixD1;->data:[D

    aget-wide v5, v5, v1

    sub-double/2addr v3, v5

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static transpose(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;
    .locals 2

    .line 719
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    .line 721
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/TransposeAlgs_ZDRM;->standard(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-object p1
.end method

.method public static transpose(Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 3

    .line 679
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    .line 680
    invoke-static {p0}, Lorg/ejml/dense/row/misc/TransposeAlgs_ZDRM;->square(Lorg/ejml/data/ZMatrixRMaj;)V

    goto :goto_0

    .line 682
    :cond_0
    new-instance v0, Lorg/ejml/data/ZMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v2, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    .line 683
    invoke-static {p0, v0}, Lorg/ejml/dense/row/CommonOps_ZDRM;->transpose(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;

    .line 684
    iget v1, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v2, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-virtual {p0, v1, v2}, Lorg/ejml/data/ZMatrixRMaj;->reshape(II)V

    .line 685
    invoke-virtual {p0, v0}, Lorg/ejml/data/ZMatrixRMaj;->set(Lorg/ejml/data/ZMatrixRMaj;)V

    :goto_0
    return-void
.end method

.method public static transposeConjugate(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;
    .locals 2

    .line 740
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    .line 742
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/TransposeAlgs_ZDRM;->standardConjugate(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-object p1
.end method

.method public static transposeConjugate(Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 3

    .line 696
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    .line 697
    invoke-static {p0}, Lorg/ejml/dense/row/misc/TransposeAlgs_ZDRM;->squareConjugate(Lorg/ejml/data/ZMatrixRMaj;)V

    goto :goto_0

    .line 699
    :cond_0
    new-instance v0, Lorg/ejml/data/ZMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v2, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    .line 700
    invoke-static {p0, v0}, Lorg/ejml/dense/row/CommonOps_ZDRM;->transposeConjugate(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;

    .line 701
    iget v1, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v2, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-virtual {p0, v1, v2}, Lorg/ejml/data/ZMatrixRMaj;->reshape(II)V

    .line 702
    invoke-virtual {p0, v0}, Lorg/ejml/data/ZMatrixRMaj;->set(Lorg/ejml/data/ZMatrixRMaj;)V

    :goto_0
    return-void
.end method
