.class public Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;
.super Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;
.source "QRDecompositionHouseholderColumn_MT_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;-><init>()V

    return-void
.end method


# virtual methods
.method public getQ(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;
    .locals 8

    if-eqz p2, :cond_0

    .line 40
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;->minLength:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->ensureIdentity(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 42
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;->numRows:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->ensureIdentity(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    .line 45
    :goto_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;->minLength:I

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_1

    .line 46
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;->dataQR:[[F

    aget-object v1, v0, p2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 49
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;->gammas:[F

    aget v3, v0, p2

    iget v6, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;->numRows:I

    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;->v:[F

    move-object v0, p1

    move v4, p2

    move v5, p2

    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM;->rank1UpdateMultR_u0(Lorg/ejml/data/FMatrixRMaj;[FFFIII[F)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 34
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;->getQ(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$updateA$0$org-ejml-dense-row-decomposition-qr-QRDecompositionHouseholderColumn_MT_FDRM(I[FI)V
    .locals 5

    .line 60
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;->dataQR:[[F

    aget-object p3, v0, p3

    .line 61
    aget v0, p3, p1

    add-int/lit8 v1, p1, 0x1

    move v2, v1

    .line 63
    :goto_0
    iget v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;->numRows:I

    if-ge v2, v3, :cond_0

    .line 64
    aget v3, p2, v2

    aget v4, p3, v2

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;->gamma:F

    mul-float/2addr v0, v2

    .line 68
    aget v2, p3, p1

    sub-float/2addr v2, v0

    aput v2, p3, p1

    .line 69
    :goto_1
    iget p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;->numRows:I

    if-ge v1, p1, :cond_1

    .line 70
    aget p1, p3, v1

    aget v2, p2, v1

    mul-float/2addr v2, v0

    sub-float/2addr p1, v2

    aput p1, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected updateA(I)V
    .locals 4

    .line 57
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;->dataQR:[[F

    aget-object v0, v0, p1

    add-int/lit8 v1, p1, 0x1

    .line 59
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;->numCols:I

    new-instance v3, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM$$ExternalSyntheticLambda0;-><init>(Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;I[F)V

    invoke-static {v1, v2, v3}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method
