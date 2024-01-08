.class public Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_DDRM;
.super Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;
.source "QRDecompositionHouseholderColumn_MT_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;-><init>()V

    return-void
.end method


# virtual methods
.method public getQ(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;
    .locals 10

    if-eqz p2, :cond_0

    .line 38
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_DDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_DDRM;->minLength:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->ensureIdentity(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 40
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_DDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_DDRM;->numRows:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->ensureIdentity(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    .line 43
    :goto_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_DDRM;->minLength:I

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_1

    .line 44
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_DDRM;->dataQR:[[D

    aget-object v1, v0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 47
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_DDRM;->gammas:[D

    aget-wide v4, v0, p2

    iget v8, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_DDRM;->numRows:I

    iget-object v9, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_DDRM;->v:[D

    move-object v0, p1

    move v6, p2

    move v7, p2

    invoke-static/range {v0 .. v9}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM;->rank1UpdateMultR_u0(Lorg/ejml/data/DMatrixRMaj;[DDDIII[D)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 33
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_DDRM;->getQ(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$updateA$0$org-ejml-dense-row-decomposition-qr-QRDecompositionHouseholderColumn_MT_DDRM(I[DI)V
    .locals 8

    .line 58
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_DDRM;->dataQR:[[D

    aget-object p3, v0, p3

    .line 59
    aget-wide v0, p3, p1

    add-int/lit8 v2, p1, 0x1

    move v3, v2

    .line 61
    :goto_0
    iget v4, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_DDRM;->numRows:I

    if-ge v3, v4, :cond_0

    .line 62
    aget-wide v4, p2, v3

    aget-wide v6, p3, v3

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    :cond_0
    iget-wide v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_DDRM;->gamma:D

    mul-double/2addr v0, v3

    .line 66
    aget-wide v3, p3, p1

    sub-double/2addr v3, v0

    aput-wide v3, p3, p1

    .line 67
    :goto_1
    iget p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_DDRM;->numRows:I

    if-ge v2, p1, :cond_1

    .line 68
    aget-wide v3, p3, v2

    aget-wide v5, p2, v2

    mul-double/2addr v5, v0

    sub-double/2addr v3, v5

    aput-wide v3, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected updateA(I)V
    .locals 4

    .line 55
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_DDRM;->dataQR:[[D

    aget-object v0, v0, p1

    add-int/lit8 v1, p1, 0x1

    .line 57
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_DDRM;->numCols:I

    new-instance v3, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_DDRM$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_DDRM$$ExternalSyntheticLambda0;-><init>(Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_DDRM;I[D)V

    invoke-static {v1, v2, v3}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method
