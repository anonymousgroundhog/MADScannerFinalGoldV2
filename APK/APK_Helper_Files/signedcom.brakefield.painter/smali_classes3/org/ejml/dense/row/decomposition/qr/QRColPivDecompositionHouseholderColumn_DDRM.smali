.class public Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;
.super Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;
.source "QRColPivDecompositionHouseholderColumn_DDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;",
        "Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64<",
        "Lorg/ejml/data/DMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field maxValueAbs:D

.field protected normsCol:[D

.field protected pivots:[I

.field protected rank:I

.field protected singularThreshold:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;-><init>()V

    .line 58
    sget-wide v0, Lorg/ejml/UtilEjml;->EPS:D

    iput-wide v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->singularThreshold:D

    return-void
.end method

.method public constructor <init>(D)V
    .locals 2

    .line 71
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;-><init>()V

    .line 58
    sget-wide v0, Lorg/ejml/UtilEjml;->EPS:D

    .line 72
    iput-wide p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->singularThreshold:D

    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 2

    .line 133
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->setExpectedMaxSize(II)V

    .line 135
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_DDRM;->elementMaxAbs(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->maxValueAbs:D

    .line 136
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->convertToColumnMajor(Lorg/ejml/data/DMatrixRMaj;)V

    .line 139
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->setupPivotInfo()V

    const/4 p1, 0x0

    .line 142
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->minLength:I

    if-ge p1, v0, :cond_2

    if-lez p1, :cond_0

    .line 144
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->updateNorms(I)V

    .line 145
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->swapColumns(I)V

    .line 147
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->householderPivot(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 149
    :cond_1
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->updateA(I)V

    add-int/lit8 p1, p1, 0x1

    .line 150
    iput p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->rank:I

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 47
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getColPivotMatrix(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 4

    if-nez p1, :cond_0

    .line 287
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->numCols:I

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 288
    :cond_0
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->numCols:I

    if-ne v0, v1, :cond_3

    .line 290
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->numCols:I

    if-ne v0, v1, :cond_2

    .line 293
    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->zero()V

    :goto_0
    const/4 v0, 0x0

    .line 296
    :goto_1
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->numCols:I

    if-ge v0, v1, :cond_1

    .line 297
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->pivots:[I

    aget v1, v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v1, v0, v2, v3}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p1

    .line 291
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Number of columns must be "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->numCols:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 289
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Number of rows must be "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->numCols:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getColPivotMatrix(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 47
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->getColPivotMatrix(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getColPivots()[I
    .locals 1

    .line 281
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->pivots:[I

    return-object v0
.end method

.method public getQ(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;
    .locals 11

    if-eqz p2, :cond_0

    .line 102
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->minLength:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->ensureIdentity(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 104
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->numRows:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->ensureIdentity(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    .line 107
    :goto_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->rank:I

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_1

    .line 108
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->dataQR:[[D

    aget-object v8, v0, p2

    .line 110
    aget-wide v9, v8, p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 111
    aput-wide v0, v8, p2

    .line 112
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->gammas:[D

    aget-wide v2, v0, p2

    iget v6, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->numRows:I

    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->v:[D

    move-object v0, p1

    move-object v1, v8

    move v4, p2

    move v5, p2

    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;[DDIII[D)V

    .line 113
    aput-wide v9, v8, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 47
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->getQ(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getRank()I
    .locals 1

    .line 276
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->rank:I

    return v0
.end method

.method protected householderPivot(I)Z
    .locals 7

    .line 247
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->dataQR:[[D

    aget-object v0, v0, p1

    .line 251
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->numRows:I

    sub-int/2addr v1, p1

    invoke-static {v0, p1, v1}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->findMax([DII)D

    move-result-wide v1

    .line 253
    iget-wide v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->singularThreshold:D

    iget-wide v5, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->maxValueAbs:D

    mul-double/2addr v3, v5

    cmpg-double v3, v1, v3

    if-gtz v3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 257
    :cond_0
    iget v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->numRows:I

    invoke-static {p1, v3, v0, v1, v2}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->computeTauAndDivide(II[DD)D

    move-result-wide v3

    iput-wide v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->tau:D

    .line 260
    aget-wide v3, v0, p1

    iget-wide v5, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->tau:D

    add-double/2addr v3, v5

    add-int/lit8 v5, p1, 0x1

    .line 261
    iget v6, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->numRows:I

    invoke-static {v5, v6, v0, v3, v4}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->divideElements(II[DD)V

    .line 263
    iget-wide v5, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->tau:D

    div-double/2addr v3, v5

    iput-wide v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->gamma:D

    .line 264
    iget-wide v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->tau:D

    mul-double/2addr v3, v1

    iput-wide v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->tau:D

    .line 266
    iget-wide v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->tau:D

    neg-double v1, v1

    aput-wide v1, v0, p1

    .line 269
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->gammas:[D

    iget-wide v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->gamma:D

    aput-wide v1, v0, p1

    const/4 p1, 0x1

    return p1
.end method

.method public setExpectedMaxSize(II)V
    .locals 0

    .line 85
    invoke-super {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->setExpectedMaxSize(II)V

    .line 87
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->pivots:[I

    if-eqz p1, :cond_0

    array-length p1, p1

    if-ge p1, p2, :cond_1

    .line 88
    :cond_0
    new-array p1, p2, [I

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->pivots:[I

    .line 89
    new-array p1, p2, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->normsCol:[D

    :cond_1
    return-void
.end method

.method public setSingularThreshold(D)V
    .locals 0

    .line 80
    iput-wide p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->singularThreshold:D

    return-void
.end method

.method protected setupPivotInfo()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 160
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->numCols:I

    if-ge v1, v2, :cond_1

    .line 161
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->pivots:[I

    aput v1, v2, v1

    .line 162
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->dataQR:[[D

    aget-object v2, v2, v1

    const-wide/16 v3, 0x0

    move v5, v0

    .line 164
    :goto_1
    iget v6, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->numRows:I

    if-ge v5, v6, :cond_0

    .line 165
    aget-wide v6, v2, v5

    mul-double/2addr v6, v6

    add-double/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 168
    :cond_0
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->normsCol:[D

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected swapColumns(I)V
    .locals 7

    .line 211
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->normsCol:[D

    aget-wide v0, v0, p1

    add-int/lit8 v2, p1, 0x1

    move v3, p1

    .line 212
    :goto_0
    iget v4, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->numCols:I

    if-ge v2, v4, :cond_1

    .line 213
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->normsCol:[D

    aget-wide v4, v4, v2

    cmpl-double v6, v4, v0

    if-lez v6, :cond_0

    move v3, v2

    move-wide v0, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    :cond_1
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->dataQR:[[D

    aget-object v0, v0, p1

    .line 221
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->dataQR:[[D

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->dataQR:[[D

    aget-object v2, v2, v3

    aput-object v2, v1, p1

    .line 222
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->dataQR:[[D

    aput-object v0, v1, v3

    .line 223
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->normsCol:[D

    aget-wide v1, v0, p1

    .line 224
    aget-wide v4, v0, v3

    aput-wide v4, v0, p1

    .line 225
    aput-wide v1, v0, v3

    .line 226
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->pivots:[I

    aget v1, v0, p1

    .line 227
    aget v2, v0, v3

    aput v2, v0, p1

    .line 228
    aput v1, v0, v3

    return-void
.end method

.method protected updateNorms(I)V
    .locals 9

    move v0, p1

    .line 177
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->numCols:I

    const-wide/16 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 178
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->dataQR:[[D

    aget-object v1, v1, v0

    add-int/lit8 v4, p1, -0x1

    aget-wide v4, v1, v4

    .line 179
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->normsCol:[D

    aget-wide v6, v1, v0

    mul-double/2addr v4, v4

    sub-double/2addr v6, v4

    aput-wide v6, v1, v0

    cmpg-double v1, v6, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    move v0, p1

    .line 190
    :goto_2
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->numCols:I

    if-ge v0, v1, :cond_3

    .line 191
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->dataQR:[[D

    aget-object v1, v1, v0

    move v4, p1

    move-wide v5, v2

    .line 193
    :goto_3
    iget v7, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->numRows:I

    if-ge v4, v7, :cond_2

    .line 194
    aget-wide v7, v1, v4

    mul-double/2addr v7, v7

    add-double/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 197
    :cond_2
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_DDRM;->normsCol:[D

    aput-wide v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
