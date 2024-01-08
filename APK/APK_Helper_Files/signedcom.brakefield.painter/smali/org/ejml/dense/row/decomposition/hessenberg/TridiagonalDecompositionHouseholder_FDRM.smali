.class public Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;
.super Ljava/lang/Object;
.source "TridiagonalDecompositionHouseholder_FDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32<",
        "Lorg/ejml/data/FMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field protected N:I

.field protected QT:Lorg/ejml/data/FMatrixRMaj;

.field protected b:[F

.field protected gammas:[F

.field protected w:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 71
    iput v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    new-array v1, v0, [F

    .line 72
    iput-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->w:[F

    new-array v1, v0, [F

    .line 73
    iput-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->b:[F

    new-array v0, v0, [F

    .line 74
    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->gammas:[F

    return-void
.end method

.method private similarTransform(I)V
    .locals 8

    .line 175
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v1, p1, -0x1

    .line 181
    iget v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    mul-int/2addr v1, v2

    const/4 v2, 0x0

    move v3, p1

    move v4, v2

    .line 183
    :goto_0
    iget v5, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    if-ge v3, v5, :cond_1

    add-int v5, v1, v3

    .line 184
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

    if-lez v3, :cond_2

    .line 192
    invoke-static {p1, v5, v0, v1, v4}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->computeTauAndDivide(II[FIF)F

    move-result v2

    add-int v3, v1, p1

    .line 195
    aget v5, v0, v3

    add-float/2addr v5, v2

    add-int/lit8 v6, p1, 0x1

    .line 196
    iget v7, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    invoke-static {v6, v7, v0, v1, v5}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->divideElements(II[FIF)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 197
    aput v1, v0, v3

    div-float/2addr v5, v2

    .line 200
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->gammas:[F

    aput v5, v1, p1

    .line 203
    invoke-virtual {p0, p1, v5}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->householderSymmetric(IF)V

    neg-float p1, v2

    mul-float/2addr p1, v4

    .line 207
    aput p1, v0, v3

    goto :goto_1

    .line 209
    :cond_2
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->gammas:[F

    aput v2, v0, p1

    :goto_1
    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 2

    .line 162
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->init(Lorg/ejml/data/FMatrixRMaj;)V

    const/4 p1, 0x1

    move v0, p1

    .line 164
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    if-ge v0, v1, :cond_0

    .line 165
    invoke-direct {p0, v0}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->similarTransform(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 49
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getDiagonal([F[F)V
    .locals 4

    const/4 v0, 0x0

    .line 86
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    if-ge v0, v1, :cond_1

    .line 87
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    mul-int v3, v0, v2

    add-int/2addr v3, v0

    aget v1, v1, v3

    aput v1, p1, v0

    add-int/lit8 v1, v0, 0x1

    if-ge v1, v2, :cond_0

    .line 90
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    aput v2, p2, v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getQ(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;
    .locals 7

    .line 130
    iget v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->ensureIdentity(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    const/4 v0, 0x0

    .line 132
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->w:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    add-int/lit8 v1, v1, -0x2

    move p2, v1

    :goto_1
    if-ltz p2, :cond_4

    .line 136
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->w:[F

    add-int/lit8 v5, p2, 0x1

    aput v0, v1, v5

    add-int/lit8 v1, p2, 0x2

    .line 137
    :goto_2
    iget v6, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    if-ge v1, v6, :cond_1

    .line 138
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->w:[F

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    mul-int/2addr v4, p2

    add-int/2addr v4, v1

    aget v3, v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 140
    :cond_1
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->gammas:[F

    aget v3, v1, v5

    move-object v1, p0

    move-object v2, p1

    move v4, v5

    invoke-virtual/range {v1 .. v6}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->rank1UpdateMultL(Lorg/ejml/data/FMatrixRMaj;FIII)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x2

    move p2, v1

    :goto_3
    if-ltz p2, :cond_4

    .line 144
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->w:[F

    add-int/lit8 v5, p2, 0x1

    aput v0, v1, v5

    add-int/lit8 v1, p2, 0x2

    .line 145
    :goto_4
    iget v6, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    if-ge v1, v6, :cond_3

    .line 146
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->w:[F

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v3, p2, v1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 148
    :cond_3
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->gammas:[F

    aget v3, v1, v5

    move-object v1, p0

    move-object v2, p1

    move v4, v5

    invoke-virtual/range {v1 .. v6}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;FIII)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_4
    return-object p1
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 49
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->getQ(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getQT()Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    return-object v0
.end method

.method public getT(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 6

    .line 103
    iget v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->ensureZeros(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    .line 105
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    const/4 v0, 0x1

    move v1, v0

    .line 107
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    if-ge v1, v2, :cond_0

    .line 108
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v2, v1, v1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v2

    invoke-virtual {p1, v1, v1, v2}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    .line 109
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3, v1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v2

    .line 110
    invoke-virtual {p1, v3, v1, v2}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    .line 111
    invoke-virtual {p1, v1, v3, v2}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-le v2, v0, :cond_1

    .line 115
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    add-int/lit8 v3, v2, -0x1

    mul-int/2addr v3, v2

    add-int/2addr v3, v2

    sub-int/2addr v3, v0

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    add-int/lit8 v5, v4, -0x1

    mul-int/2addr v5, v4

    add-int/2addr v5, v4

    sub-int/2addr v5, v0

    aget v2, v2, v5

    aput v2, v1, v3

    .line 116
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    add-int/lit8 v3, v2, -0x1

    mul-int/2addr v3, v2

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x2

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    add-int/lit8 v5, v4, -0x2

    mul-int/2addr v5, v4

    add-int/2addr v5, v4

    sub-int/2addr v5, v0

    aget v0, v2, v5

    aput v0, v1, v3

    :cond_1
    return-object p1
.end method

.method public bridge synthetic getT(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 49
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->getT(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public householderSymmetric(IF)V
    .locals 9

    add-int/lit8 v0, p1, -0x1

    .line 220
    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    mul-int/2addr v0, v1

    move v1, p1

    .line 223
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    move v2, p1

    :goto_1
    if-ge v2, v1, :cond_0

    .line 229
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v5, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v1

    aget v4, v4, v5

    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int v6, v0, v2

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v1

    .line 231
    :goto_2
    iget v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    if-ge v2, v4, :cond_1

    .line 232
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v5, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v2

    aget v4, v4, v5

    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int v6, v0, v2

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 234
    :cond_1
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->w:[F

    neg-float v4, p2

    mul-float/2addr v4, v3

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, p1

    .line 239
    :goto_3
    iget v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    if-ge v1, v2, :cond_3

    .line 240
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int v4, v0, v1

    aget v2, v2, v4

    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->w:[F

    aget v4, v4, v1

    mul-float/2addr v2, v4

    add-float/2addr v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    const/high16 v1, -0x41000000    # -0.5f

    mul-float/2addr p2, v1

    mul-float/2addr v3, p2

    move p2, p1

    .line 245
    :goto_4
    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    if-ge p2, v1, :cond_4

    .line 246
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->w:[F

    aget v2, v1, p2

    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int v5, v0, p2

    aget v4, v4, v5

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    aput v2, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 249
    :cond_4
    :goto_5
    iget p2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    if-ge p1, p2, :cond_6

    .line 251
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->w:[F

    aget p2, p2, p1

    .line 252
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int v2, v0, p1

    aget v1, v1, v2

    .line 254
    iget v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    mul-int/2addr v2, p1

    move v3, p1

    .line 255
    :goto_6
    iget v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    if-ge v3, v4, :cond_5

    .line 258
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int v5, v2, v3

    aget v6, v4, v5

    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int v8, v0, v3

    aget v7, v7, v8

    mul-float/2addr v7, p2

    iget-object v8, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->w:[F

    aget v8, v8, v3

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method

.method public init(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 2

    .line 269
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_1

    .line 272
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    if-eq v0, v1, :cond_0

    .line 273
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->N:I

    .line 275
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->w:[F

    array-length v1, v1

    if-ge v1, v0, :cond_0

    .line 276
    new-array v1, v0, [F

    iput-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->w:[F

    .line 277
    new-array v1, v0, [F

    iput-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->gammas:[F

    .line 278
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->b:[F

    .line 282
    :cond_0
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->QT:Lorg/ejml/data/FMatrixRMaj;

    return-void

    .line 270
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must be square"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected rank1UpdateMultL(Lorg/ejml/data/FMatrixRMaj;FIII)V
    .locals 6

    .line 286
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->w:[F

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->rank1UpdateMultL(Lorg/ejml/data/FMatrixRMaj;[FFIII)V

    return-void
.end method

.method protected rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;FIII)V
    .locals 7

    .line 290
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->w:[F

    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRM;->b:[F

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;[FFIII[F)V

    return-void
.end method
