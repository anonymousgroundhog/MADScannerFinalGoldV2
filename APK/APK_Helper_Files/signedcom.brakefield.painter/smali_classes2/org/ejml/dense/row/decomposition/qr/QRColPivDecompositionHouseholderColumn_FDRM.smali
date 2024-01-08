.class public Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;
.super Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;
.source "QRColPivDecompositionHouseholderColumn_FDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;",
        "Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32<",
        "Lorg/ejml/data/FMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field maxValueAbs:F

.field protected normsCol:[F

.field protected pivots:[I

.field protected rank:I

.field protected singularThreshold:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;-><init>()V

    .line 60
    sget v0, Lorg/ejml/UtilEjml;->F_EPS:F

    iput v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->singularThreshold:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 73
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;-><init>()V

    .line 60
    sget v0, Lorg/ejml/UtilEjml;->F_EPS:F

    .line 74
    iput p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->singularThreshold:F

    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 2

    .line 135
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->setExpectedMaxSize(II)V

    .line 137
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_FDRM;->elementMaxAbs(Lorg/ejml/data/FMatrixD1;)F

    move-result v0

    iput v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->maxValueAbs:F

    .line 138
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->convertToColumnMajor(Lorg/ejml/data/FMatrixRMaj;)V

    .line 141
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->setupPivotInfo()V

    const/4 p1, 0x0

    .line 144
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->minLength:I

    if-ge p1, v0, :cond_2

    if-lez p1, :cond_0

    .line 146
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->updateNorms(I)V

    .line 147
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->swapColumns(I)V

    .line 149
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->householderPivot(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 151
    :cond_1
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->updateA(I)V

    add-int/lit8 p1, p1, 0x1

    .line 152
    iput p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->rank:I

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 48
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getColPivotMatrix(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 3

    if-nez p1, :cond_0

    .line 289
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->numCols:I

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 290
    :cond_0
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->numCols:I

    if-ne v0, v1, :cond_3

    .line 292
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->numCols:I

    if-ne v0, v1, :cond_2

    .line 295
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->zero()V

    :goto_0
    const/4 v0, 0x0

    .line 298
    :goto_1
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->numCols:I

    if-ge v0, v1, :cond_1

    .line 299
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->pivots:[I

    aget v1, v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v0, v2}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p1

    .line 293
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Number of columns must be "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->numCols:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 291
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Number of rows must be "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->numCols:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getColPivotMatrix(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 48
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->getColPivotMatrix(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getColPivots()[I
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->pivots:[I

    return-object v0
.end method

.method public getQ(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;
    .locals 9

    if-eqz p2, :cond_0

    .line 104
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->minLength:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->ensureIdentity(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 106
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->numRows:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->ensureIdentity(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    .line 109
    :goto_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->rank:I

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_1

    .line 110
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->dataQR:[[F

    aget-object v7, v0, p2

    .line 112
    aget v8, v7, p2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 113
    aput v0, v7, p2

    .line 114
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->gammas:[F

    aget v2, v0, p2

    iget v5, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->numRows:I

    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->v:[F

    move-object v0, p1

    move-object v1, v7

    move v3, p2

    move v4, p2

    invoke-static/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;[FFIII[F)V

    .line 115
    aput v8, v7, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 48
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->getQ(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getRank()I
    .locals 1

    .line 278
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->rank:I

    return v0
.end method

.method protected householderPivot(I)Z
    .locals 5

    .line 249
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->dataQR:[[F

    aget-object v0, v0, p1

    .line 253
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->numRows:I

    sub-int/2addr v1, p1

    invoke-static {v0, p1, v1}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->findMax([FII)F

    move-result v1

    .line 255
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->singularThreshold:F

    iget v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->maxValueAbs:F

    mul-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 259
    :cond_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->numRows:I

    invoke-static {p1, v2, v0, v1}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->computeTauAndDivide(II[FF)F

    move-result v2

    iput v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->tau:F

    .line 262
    aget v2, v0, p1

    iget v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->tau:F

    add-float/2addr v2, v3

    add-int/lit8 v3, p1, 0x1

    .line 263
    iget v4, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->numRows:I

    invoke-static {v3, v4, v0, v2}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->divideElements(II[FF)V

    .line 265
    iget v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->tau:F

    div-float/2addr v2, v3

    iput v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->gamma:F

    .line 266
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->tau:F

    mul-float/2addr v2, v1

    iput v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->tau:F

    .line 268
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->tau:F

    neg-float v1, v1

    aput v1, v0, p1

    .line 271
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->gammas:[F

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->gamma:F

    aput v1, v0, p1

    const/4 p1, 0x1

    return p1
.end method

.method public setExpectedMaxSize(II)V
    .locals 0

    .line 87
    invoke-super {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->setExpectedMaxSize(II)V

    .line 89
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->pivots:[I

    if-eqz p1, :cond_0

    array-length p1, p1

    if-ge p1, p2, :cond_1

    .line 90
    :cond_0
    new-array p1, p2, [I

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->pivots:[I

    .line 91
    new-array p1, p2, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->normsCol:[F

    :cond_1
    return-void
.end method

.method public setSingularThreshold(F)V
    .locals 0

    .line 82
    iput p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->singularThreshold:F

    return-void
.end method

.method protected setupPivotInfo()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 162
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->numCols:I

    if-ge v1, v2, :cond_1

    .line 163
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->pivots:[I

    aput v1, v2, v1

    .line 164
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->dataQR:[[F

    aget-object v2, v2, v1

    const/4 v3, 0x0

    move v4, v0

    .line 166
    :goto_1
    iget v5, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->numRows:I

    if-ge v4, v5, :cond_0

    .line 167
    aget v5, v2, v4

    mul-float/2addr v5, v5

    add-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 170
    :cond_0
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->normsCol:[F

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected swapColumns(I)V
    .locals 5

    .line 213
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->normsCol:[F

    aget v0, v0, p1

    add-int/lit8 v1, p1, 0x1

    move v2, p1

    .line 214
    :goto_0
    iget v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->numCols:I

    if-ge v1, v3, :cond_1

    .line 215
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->normsCol:[F

    aget v3, v3, v1

    cmpl-float v4, v3, v0

    if-lez v4, :cond_0

    move v2, v1

    move v0, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->dataQR:[[F

    aget-object v0, v0, p1

    .line 223
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->dataQR:[[F

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->dataQR:[[F

    aget-object v3, v3, v2

    aput-object v3, v1, p1

    .line 224
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->dataQR:[[F

    aput-object v0, v1, v2

    .line 225
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->normsCol:[F

    aget v1, v0, p1

    .line 226
    aget v3, v0, v2

    aput v3, v0, p1

    .line 227
    aput v1, v0, v2

    .line 228
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->pivots:[I

    aget v1, v0, p1

    .line 229
    aget v3, v0, v2

    aput v3, v0, p1

    .line 230
    aput v1, v0, v2

    return-void
.end method

.method protected updateNorms(I)V
    .locals 6

    move v0, p1

    .line 179
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->numCols:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 180
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->dataQR:[[F

    aget-object v1, v1, v0

    add-int/lit8 v3, p1, -0x1

    aget v1, v1, v3

    .line 181
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->normsCol:[F

    aget v4, v3, v0

    mul-float/2addr v1, v1

    sub-float/2addr v4, v1

    aput v4, v3, v0

    cmpg-float v1, v4, v2

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

    .line 192
    :goto_2
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->numCols:I

    if-ge v0, v1, :cond_3

    .line 193
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->dataQR:[[F

    aget-object v1, v1, v0

    move v3, p1

    move v4, v2

    .line 195
    :goto_3
    iget v5, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->numRows:I

    if-ge v3, v5, :cond_2

    .line 196
    aget v5, v1, v3

    mul-float/2addr v5, v5

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 199
    :cond_2
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;->normsCol:[F

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
