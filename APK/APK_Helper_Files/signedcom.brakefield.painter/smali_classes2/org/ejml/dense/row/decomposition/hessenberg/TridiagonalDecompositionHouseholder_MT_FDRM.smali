.class public Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;
.super Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;
.source "TridiagonalDecompositionHouseholder_MT_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;-><init>()V

    return-void
.end method


# virtual methods
.method public householderSymmetric(IF)V
    .locals 6

    add-int/lit8 v0, p1, -0x1

    .line 42
    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;->N:I

    mul-int/2addr v0, v1

    .line 45
    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;->N:I

    new-instance v2, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0, p2}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM$$ExternalSyntheticLambda0;-><init>(Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;IIF)V

    invoke-static {p1, v1, v2}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    const/4 v1, 0x0

    move v2, p1

    .line 62
    :goto_0
    iget v3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;->N:I

    if-ge v2, v3, :cond_0

    .line 63
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int v4, v0, v2

    aget v3, v3, v4

    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;->w:[F

    aget v4, v4, v2

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/high16 v2, -0x41000000    # -0.5f

    mul-float/2addr p2, v2

    mul-float/2addr v1, p2

    move p2, p1

    .line 68
    :goto_1
    iget v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;->N:I

    if-ge p2, v2, :cond_1

    .line 69
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;->w:[F

    aget v3, v2, p2

    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int v5, v0, p2

    aget v4, v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    aput v3, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 72
    :cond_1
    iget p2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;->N:I

    new-instance v1, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM$$ExternalSyntheticLambda1;-><init>(Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;I)V

    invoke-static {p1, p2, v1}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method synthetic lambda$householderSymmetric$0$org-ejml-dense-row-decomposition-hessenberg-TridiagonalDecompositionHouseholder_MT_FDRM(IIFI)V
    .locals 4

    .line 0
    const/4 v0, 0x0

    :goto_0
    if-ge p1, p4, :cond_0

    .line 51
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;->N:I

    mul-int/2addr v2, p1

    add-int/2addr v2, p4

    aget v1, v1, v2

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int v3, p2, p1

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p4

    .line 53
    :goto_1
    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;->N:I

    if-ge p1, v1, :cond_1

    .line 54
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;->N:I

    mul-int/2addr v2, p4

    add-int/2addr v2, p1

    aget v1, v1, v2

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int v3, p2, p1

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 56
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;->w:[F

    neg-float p2, p3

    mul-float/2addr p2, v0

    aput p2, p1, p4

    return-void
.end method

.method synthetic lambda$householderSymmetric$1$org-ejml-dense-row-decomposition-hessenberg-TridiagonalDecompositionHouseholder_MT_FDRM(II)V
    .locals 8

    .line 73
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;->w:[F

    aget v0, v0, p2

    .line 74
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int v2, p1, p2

    aget v1, v1, v2

    .line 76
    iget v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;->N:I

    mul-int/2addr v2, p2

    .line 77
    :goto_0
    iget v3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;->N:I

    if-ge p2, v3, :cond_0

    .line 80
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int v4, v2, p2

    aget v5, v3, v4

    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int v7, p1, p2

    aget v6, v6, v7

    mul-float/2addr v6, v0

    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;->w:[F

    aget v7, v7, p2

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected rank1UpdateMultL(Lorg/ejml/data/FMatrixRMaj;FIII)V
    .locals 6

    .line 87
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;->w:[F

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM;->rank1UpdateMultL(Lorg/ejml/data/FMatrixRMaj;[FFIII)V

    return-void
.end method

.method protected rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;FIII)V
    .locals 7

    .line 92
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;->w:[F

    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_FDRM;->b:[F

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;[FFIII[F)V

    return-void
.end method
