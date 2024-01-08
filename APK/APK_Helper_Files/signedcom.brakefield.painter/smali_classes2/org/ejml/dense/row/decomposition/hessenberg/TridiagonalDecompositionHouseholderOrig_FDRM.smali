.class public Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;
.super Ljava/lang/Object;
.source "TridiagonalDecompositionHouseholderOrig_FDRM.java"


# instance fields
.field N:I

.field QT:Lorg/ejml/data/FMatrixRMaj;

.field b:[F

.field gammas:[F

.field w:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 57
    iput v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    .line 58
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    .line 59
    iget v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    new-array v1, v0, [F

    iput-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->w:[F

    .line 60
    new-array v1, v0, [F

    iput-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->b:[F

    .line 61
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->gammas:[F

    return-void
.end method

.method private similarTransform(I)V
    .locals 9

    .line 138
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v1, p1, -0x1

    .line 144
    iget v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    mul-int/2addr v1, v2

    const/4 v2, 0x0

    move v3, p1

    move v4, v2

    .line 146
    :goto_0
    iget v5, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    if-ge v3, v5, :cond_1

    add-int v5, v1, v3

    .line 147
    aget v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v6, v5, v4

    if-lez v6, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    cmpl-float v3, v4, v2

    if-lez v3, :cond_5

    move v3, p1

    move v5, v2

    .line 158
    :goto_1
    iget v6, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    if-ge v3, v6, :cond_2

    add-int v6, v1, v3

    .line 159
    aget v7, v0, v6

    div-float/2addr v7, v4

    aput v7, v0, v6

    mul-float/2addr v7, v7

    add-float/2addr v5, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    float-to-double v5, v5

    .line 163
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v3, v5

    add-int v5, v1, p1

    .line 165
    aget v6, v0, v5

    cmpg-float v2, v6, v2

    if-gez v2, :cond_3

    neg-float v3, v3

    :cond_3
    add-float/2addr v6, v3

    const/high16 v2, 0x3f800000    # 1.0f

    .line 170
    aput v2, v0, v5

    add-int/lit8 v2, p1, 0x1

    .line 172
    :goto_2
    iget v7, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    if-ge v2, v7, :cond_4

    add-int v7, v1, v2

    .line 173
    aget v8, v0, v7

    div-float/2addr v8, v6

    aput v8, v0, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    div-float/2addr v6, v3

    .line 177
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->gammas:[F

    aput v6, v1, p1

    .line 180
    invoke-virtual {p0, p1, v6}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->householderSymmetric(IF)V

    neg-float p1, v3

    mul-float/2addr p1, v4

    .line 184
    aput p1, v0, v5

    goto :goto_3

    .line 186
    :cond_5
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->gammas:[F

    aput v2, v0, p1

    :goto_3
    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 1

    .line 125
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->init(Lorg/ejml/data/FMatrixRMaj;)V

    const/4 p1, 0x1

    .line 127
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    if-ge p1, v0, :cond_0

    .line 128
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->similarTransform(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getGamma(I)F
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->gammas:[F

    aget p1, v0, p1

    return p1
.end method

.method public getQ(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 8

    .line 103
    iget v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->ensureIdentity(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    const/4 v0, 0x0

    .line 105
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->w:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x2

    move v0, v1

    :goto_1
    if-ltz v0, :cond_2

    .line 108
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->w:[F

    add-int/lit8 v5, v0, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v5

    add-int/lit8 v1, v0, 0x2

    .line 109
    :goto_2
    iget v6, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    if-ge v1, v6, :cond_1

    .line 110
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->w:[F

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v3, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 112
    :cond_1
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->w:[F

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->gammas:[F

    aget v3, v1, v5

    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->b:[F

    move-object v1, p1

    move v4, v5

    invoke-static/range {v1 .. v7}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;[FFIII[F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public getQT()Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    return-object v0
.end method

.method public getT(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 6

    .line 78
    iget v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->ensureZeros(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    .line 80
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 81
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    move v0, v2

    .line 84
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 85
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v1, v0, v0}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v1

    invoke-virtual {p1, v0, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v1, v0, 0x1

    .line 86
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v3, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v3

    invoke-virtual {p1, v0, v1, v3}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v3, v0, -0x1

    .line 87
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v4, v3, v0}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v4

    invoke-virtual {p1, v0, v3, v4}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    move v0, v1

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    add-int/lit8 v3, v1, -0x1

    mul-int/2addr v3, v1

    add-int/2addr v3, v1

    sub-int/2addr v3, v2

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    add-int/lit8 v5, v4, -0x1

    mul-int/2addr v5, v4

    add-int/2addr v5, v4

    sub-int/2addr v5, v2

    aget v1, v1, v5

    aput v1, v0, v3

    .line 91
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    add-int/lit8 v3, v1, -0x1

    mul-int/2addr v3, v1

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x2

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    add-int/lit8 v5, v4, -0x2

    mul-int/2addr v5, v4

    add-int/2addr v5, v4

    sub-int/2addr v5, v2

    aget v1, v1, v5

    aput v1, v0, v3

    return-object p1
.end method

.method public householderSymmetric(IF)V
    .locals 10

    add-int/lit8 v0, p1, -0x1

    .line 197
    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    mul-int/2addr v0, v1

    move v1, p1

    .line 200
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    move v2, p1

    .line 202
    :goto_1
    iget v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    if-ge v2, v4, :cond_0

    .line 203
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v5, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v2

    aget v4, v4, v5

    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int v6, v0, v2

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 205
    :cond_0
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->w:[F

    neg-float v4, p2

    mul-float/2addr v4, v3

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, p1

    .line 211
    :goto_2
    iget v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    if-ge v1, v2, :cond_2

    .line 212
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int v4, v0, v1

    aget v2, v2, v4

    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->w:[F

    aget v4, v4, v1

    mul-float/2addr v2, v4

    add-float/2addr v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/high16 v1, -0x41000000    # -0.5f

    mul-float/2addr p2, v1

    mul-float/2addr v3, p2

    move p2, p1

    .line 217
    :goto_3
    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    if-ge p2, v1, :cond_3

    .line 218
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->w:[F

    aget v2, v1, p2

    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int v5, v0, p2

    aget v4, v4, v5

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    aput v2, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 222
    :cond_3
    :goto_4
    iget p2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    if-ge p1, p2, :cond_5

    .line 224
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->w:[F

    aget p2, p2, p1

    .line 225
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int v2, v0, p1

    aget v1, v1, v2

    move v2, p1

    .line 228
    :goto_5
    iget v3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    if-ge v2, v3, :cond_4

    .line 229
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    mul-int/2addr v4, v2

    add-int/2addr v4, p1

    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v6, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    mul-int/2addr v6, p1

    add-int/2addr v6, v2

    aget v7, v5, v6

    iget-object v8, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int v9, v0, v2

    aget v8, v8, v9

    mul-float/2addr v8, p2

    iget-object v9, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->w:[F

    aget v9, v9, v2

    mul-float/2addr v9, v1

    add-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v5, v6

    aput v7, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public init(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 3

    .line 240
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_1

    .line 243
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    if-eq v0, v1, :cond_0

    .line 244
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    .line 245
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v0, v2}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    .line 247
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->w:[F

    array-length v0, v0

    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->N:I

    if-ge v0, v1, :cond_0

    .line 248
    new-array v0, v1, [F

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->w:[F

    .line 249
    new-array v0, v1, [F

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->gammas:[F

    .line 250
    new-array v0, v1, [F

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->b:[F

    .line 255
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, p1}, Lorg/ejml/data/FMatrixRMaj;->set(Lorg/ejml/data/FMatrixD1;)V

    return-void

    .line 241
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x0

    sget-object v0, Landroidx/navigation/ui/zZ/NxTXUJn;->vAHZo:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
