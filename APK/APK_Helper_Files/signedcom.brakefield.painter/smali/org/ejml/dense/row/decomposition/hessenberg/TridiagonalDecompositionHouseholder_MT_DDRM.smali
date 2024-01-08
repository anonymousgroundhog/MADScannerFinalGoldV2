.class public Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;
.super Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;
.source "TridiagonalDecompositionHouseholder_MT_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;-><init>()V

    return-void
.end method


# virtual methods
.method public householderSymmetric(ID)V
    .locals 9

    add-int/lit8 v0, p1, -0x1

    .line 40
    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->N:I

    mul-int/2addr v0, v1

    .line 43
    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->N:I

    new-instance v8, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM$$ExternalSyntheticLambda0;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move v5, v0

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM$$ExternalSyntheticLambda0;-><init>(Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;IID)V

    invoke-static {p1, v1, v8}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    const-wide/16 v1, 0x0

    move v3, p1

    .line 60
    :goto_0
    iget v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->N:I

    if-ge v3, v4, :cond_0

    .line 61
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int v5, v0, v3

    aget-wide v4, v4, v5

    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->w:[D

    aget-wide v6, v6, v3

    mul-double/2addr v4, v6

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v3, -0x4020000000000000L    # -0.5

    mul-double/2addr p2, v3

    mul-double/2addr v1, p2

    move p2, p1

    .line 66
    :goto_1
    iget p3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->N:I

    if-ge p2, p3, :cond_1

    .line 67
    iget-object p3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->w:[D

    aget-wide v3, p3, p2

    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int v6, v0, p2

    aget-wide v5, v5, v6

    mul-double/2addr v5, v1

    add-double/2addr v3, v5

    aput-wide v3, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 70
    :cond_1
    iget p2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->N:I

    new-instance p3, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, v0}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM$$ExternalSyntheticLambda1;-><init>(Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;I)V

    invoke-static {p1, p2, p3}, Lorg/ejml/concurrency/EjmlConcurrency;->loopFor(IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method synthetic lambda$householderSymmetric$0$org-ejml-dense-row-decomposition-hessenberg-TridiagonalDecompositionHouseholder_MT_DDRM(IIDI)V
    .locals 6

    .line 0
    const-wide/16 v0, 0x0

    :goto_0
    if-ge p1, p5, :cond_0

    .line 49
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->N:I

    mul-int/2addr v3, p1

    add-int/2addr v3, p5

    aget-wide v2, v2, v3

    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int v5, p2, p1

    aget-wide v4, v4, v5

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p5

    .line 51
    :goto_1
    iget v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->N:I

    if-ge p1, v2, :cond_1

    .line 52
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->N:I

    mul-int/2addr v3, p5

    add-int/2addr v3, p1

    aget-wide v2, v2, v3

    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int v5, p2, p1

    aget-wide v4, v4, v5

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 54
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->w:[D

    neg-double p2, p3

    mul-double/2addr p2, v0

    aput-wide p2, p1, p5

    return-void
.end method

.method synthetic lambda$householderSymmetric$1$org-ejml-dense-row-decomposition-hessenberg-TridiagonalDecompositionHouseholder_MT_DDRM(II)V
    .locals 13

    .line 71
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->w:[D

    aget-wide v0, v0, p2

    .line 72
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int v3, p1, p2

    aget-wide v2, v2, v3

    .line 74
    iget v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->N:I

    mul-int/2addr v4, p2

    .line 75
    :goto_0
    iget v5, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->N:I

    if-ge p2, v5, :cond_0

    .line 78
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int v6, v4, p2

    aget-wide v7, v5, v6

    iget-object v9, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v9, v9, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int v10, p1, p2

    aget-wide v9, v9, v10

    mul-double/2addr v9, v0

    iget-object v11, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->w:[D

    aget-wide v11, v11, p2

    mul-double/2addr v11, v2

    add-double/2addr v9, v11

    add-double/2addr v7, v9

    aput-wide v7, v5, v6

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected rank1UpdateMultL(Lorg/ejml/data/DMatrixRMaj;DIII)V
    .locals 7

    .line 85
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->w:[D

    move-object v0, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM;->rank1UpdateMultL(Lorg/ejml/data/DMatrixRMaj;[DDIII)V

    return-void
.end method

.method protected rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;DIII)V
    .locals 8

    .line 90
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->w:[D

    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->b:[D

    move-object v0, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM;->rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;[DDIII[D)V

    return-void
.end method
