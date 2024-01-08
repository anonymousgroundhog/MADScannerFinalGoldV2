.class public Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;
.super Ljava/lang/Object;
.source "TridiagonalDecompositionHouseholder_CDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32<",
        "Lorg/ejml/data/CMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field private N:I

.field private QT:Lorg/ejml/data/CMatrixRMaj;

.field private b:[F

.field private gammas:[F

.field private final tau:Lorg/ejml/data/Complex_F32;

.field private w:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lorg/ejml/data/Complex_F32;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F32;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    const/4 v0, 0x1

    .line 76
    iput v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    const/4 v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    .line 77
    new-array v1, v1, [F

    iput-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->w:[F

    mul-int/lit8 v1, v0, 0x2

    .line 78
    new-array v1, v1, [F

    iput-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->b:[F

    new-array v0, v0, [F

    .line 79
    iput-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->gammas:[F

    return-void
.end method

.method private similarTransform(I)V
    .locals 11

    .line 173
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    .line 177
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    invoke-static {v1, p1, v2, v3}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->computeRowMax(Lorg/ejml/data/CMatrixRMaj;III)F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v1, v7, v8

    if-lez v1, :cond_1

    .line 180
    iget v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    mul-int v2, p1, v1

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    mul-int v3, p1, v1

    add-int/2addr v3, v1

    iget-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    invoke-static {v2, v3, v0, v7, v1}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->computeTauGammaAndDivide(II[FFLorg/ejml/data/Complex_F32;)F

    move-result v9

    .line 181
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->gammas:[F

    aput v9, v1, p1

    .line 184
    iget v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    aget v1, v0, v1

    iget-object v2, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    iget v2, v2, Lorg/ejml/data/Complex_F32;->real:F

    add-float v5, v1, v2

    .line 185
    iget v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v1, v0, v1

    iget-object v2, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    iget v2, v2, Lorg/ejml/data/Complex_F32;->imaginary:F

    add-float v6, v1, v2

    add-int/lit8 v10, p1, 0x2

    .line 186
    iget v2, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    mul-int v4, p1, v2

    move v1, v10

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->divideElements(II[FIFF)V

    .line 190
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    if-ge v10, v1, :cond_0

    mul-int v2, p1, v1

    add-int/2addr v2, v10

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, p1

    add-int/2addr v1, v10

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 191
    aget v1, v0, v1

    neg-float v1, v1

    aput v1, v0, v2

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    mul-int v2, p1, v1

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 194
    aput v3, v0, v2

    mul-int/2addr v1, p1

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 195
    aput v8, v0, v1

    .line 201
    invoke-virtual {p0, p1, v9}, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->householderSymmetric(IF)V

    .line 205
    iget v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    iget v2, v2, Lorg/ejml/data/Complex_F32;->real:F

    neg-float v2, v2

    mul-float/2addr v2, v7

    aput v2, v0, v1

    .line 206
    iget v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    iget-object p1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    iget p1, p1, Lorg/ejml/data/Complex_F32;->imaginary:F

    neg-float p1, p1

    mul-float/2addr p1, v7

    aput p1, v0, v1

    goto :goto_1

    .line 208
    :cond_1
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->gammas:[F

    aput v8, v0, p1

    :goto_1
    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/CMatrixRMaj;)Z
    .locals 2

    .line 160
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->init(Lorg/ejml/data/CMatrixRMaj;)V

    const/4 p1, 0x0

    .line 162
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    .line 163
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->similarTransform(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 52
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->decompose(Lorg/ejml/data/CMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getDiagonal([F[F)V
    .locals 6

    const/4 v0, 0x0

    .line 91
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    if-ge v0, v1, :cond_1

    mul-int/lit8 v1, v0, 0x2

    .line 92
    iget-object v2, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget v3, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x2

    aget v2, v2, v3

    aput v2, p1, v1

    add-int/lit8 v2, v1, 0x1

    .line 93
    iget-object v3, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget v4, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    mul-int v5, v0, v4

    add-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v3, v3, v5

    aput v3, p1, v2

    add-int/lit8 v3, v0, 0x1

    if-ge v3, v4, :cond_0

    .line 96
    iget-object v4, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget v5, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    aput v4, p2, v1

    .line 97
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget v4, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v0, v1, v4

    aput v0, p2, v2

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getGammas()[F
    .locals 1

    .line 333
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->gammas:[F

    return-object v0
.end method

.method public getQ(Lorg/ejml/data/CMatrixRMaj;Z)Lorg/ejml/data/CMatrixRMaj;
    .locals 9

    .line 134
    iget v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_CDRM;->checkIdentity(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->w:[F

    iget v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([FIIF)V

    if-eqz p2, :cond_0

    .line 139
    iget p2, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    add-int/lit8 p2, p2, -0x2

    :goto_0
    if-ltz p2, :cond_1

    .line 140
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    add-int/lit8 v6, p2, 0x1

    iget v3, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    iget-object v4, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->w:[F

    const/4 v5, 0x0

    move v1, p2

    move v2, v6

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->extractHouseholderRow(Lorg/ejml/data/CMatrixRMaj;III[FI)V

    .line 141
    iget-object v2, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->w:[F

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->gammas:[F

    aget v4, v0, p2

    iget v7, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    move-object v1, p1

    move v5, v6

    invoke-static/range {v1 .. v7}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->rank1UpdateMultL(Lorg/ejml/data/CMatrixRMaj;[FIFIII)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 144
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    add-int/lit8 p2, p2, -0x2

    :goto_1
    if-ltz p2, :cond_1

    .line 145
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    add-int/lit8 v6, p2, 0x1

    iget v3, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    iget-object v4, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->w:[F

    const/4 v5, 0x0

    move v1, p2

    move v2, v6

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->extractHouseholderRow(Lorg/ejml/data/CMatrixRMaj;III[FI)V

    .line 146
    iget-object v2, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->w:[F

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->gammas:[F

    aget v4, v0, p2

    iget v7, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    iget-object v8, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->b:[F

    move-object v1, p1

    move v5, v6

    invoke-static/range {v1 .. v8}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->rank1UpdateMultR(Lorg/ejml/data/CMatrixRMaj;[FIFIII[F)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 52
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->getQ(Lorg/ejml/data/CMatrixRMaj;Z)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getQT()Lorg/ejml/data/CMatrixRMaj;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    return-object v0
.end method

.method public getT(Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;
    .locals 4

    .line 110
    iget v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_CDRM;->checkZeros(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    .line 112
    iget-object v0, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 113
    iget-object v0, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    .line 115
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    if-ge v2, v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {v0, v2, v2}, Lorg/ejml/data/CMatrixRMaj;->getReal(II)F

    move-result v0

    iget-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {v1, v2, v2}, Lorg/ejml/data/CMatrixRMaj;->getImag(II)F

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Lorg/ejml/data/CMatrixRMaj;->set(IIFF)V

    .line 117
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/CMatrixRMaj;->getReal(II)F

    move-result v0

    .line 118
    iget-object v3, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {v3, v1, v2}, Lorg/ejml/data/CMatrixRMaj;->getImag(II)F

    move-result v3

    .line 119
    invoke-virtual {p1, v1, v2, v0, v3}, Lorg/ejml/data/CMatrixRMaj;->set(IIFF)V

    neg-float v3, v3

    .line 120
    invoke-virtual {p1, v2, v1, v0, v3}, Lorg/ejml/data/CMatrixRMaj;->set(IIFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public bridge synthetic getT(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 52
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->getT(Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public householderSymmetric(IF)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 219
    iget v2, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    mul-int v2, v2, p1

    add-int/lit8 v3, p1, 0x1

    move v4, v3

    .line 222
    :goto_0
    iget v5, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    const/4 v6, 0x0

    if-ge v4, v5, :cond_2

    move v7, v3

    move v5, v6

    :goto_1
    if-ge v7, v4, :cond_0

    .line 230
    iget-object v8, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget v9, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    mul-int/2addr v9, v7

    add-int/2addr v9, v4

    mul-int/lit8 v9, v9, 0x2

    aget v8, v8, v9

    .line 231
    iget-object v9, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    iget-object v9, v9, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget v10, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    mul-int/2addr v10, v7

    add-int/2addr v10, v4

    mul-int/lit8 v10, v10, 0x2

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    neg-float v9, v9

    .line 233
    iget-object v10, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    iget-object v10, v10, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int v11, v2, v7

    mul-int/lit8 v11, v11, 0x2

    aget v10, v10, v11

    .line 234
    iget-object v12, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    iget-object v12, v12, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v11, v11, 0x1

    aget v11, v12, v11

    mul-float v12, v8, v10

    mul-float v13, v9, v11

    sub-float/2addr v12, v13

    add-float/2addr v6, v12

    mul-float/2addr v8, v11

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    add-float/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    move v7, v4

    .line 239
    :goto_2
    iget v8, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    if-ge v7, v8, :cond_1

    .line 240
    iget-object v8, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget v9, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    mul-int/2addr v9, v4

    add-int/2addr v9, v7

    mul-int/lit8 v9, v9, 0x2

    aget v8, v8, v9

    .line 241
    iget-object v9, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    iget-object v9, v9, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget v10, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    mul-int/2addr v10, v4

    add-int/2addr v10, v7

    mul-int/lit8 v10, v10, 0x2

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    .line 243
    iget-object v10, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    iget-object v10, v10, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int v11, v2, v7

    mul-int/lit8 v11, v11, 0x2

    aget v10, v10, v11

    .line 244
    iget-object v12, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    iget-object v12, v12, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v11, v11, 0x1

    aget v11, v12, v11

    mul-float v12, v8, v10

    mul-float v13, v9, v11

    sub-float/2addr v12, v13

    add-float/2addr v6, v12

    mul-float/2addr v8, v11

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    add-float/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 249
    :cond_1
    iget-object v7, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->w:[F

    mul-int/lit8 v8, v4, 0x2

    neg-float v9, v1

    mul-float/2addr v6, v9

    aput v6, v7, v8

    add-int/lit8 v8, v8, 0x1

    mul-float/2addr v9, v5

    .line 250
    aput v9, v7, v8

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_2
    move v5, v3

    move v4, v6

    .line 257
    :goto_3
    iget v7, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    if-ge v5, v7, :cond_3

    .line 258
    iget-object v7, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int v8, v2, v5

    mul-int/lit8 v8, v8, 0x2

    aget v7, v7, v8

    .line 259
    iget-object v9, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    iget-object v9, v9, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v8, v8, 0x1

    aget v8, v9, v8

    neg-float v8, v8

    .line 261
    iget-object v9, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->w:[F

    mul-int/lit8 v10, v5, 0x2

    aget v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    .line 262
    aget v9, v9, v10

    mul-float v10, v7, v11

    mul-float v12, v8, v9

    sub-float/2addr v10, v12

    add-float/2addr v6, v10

    mul-float/2addr v7, v9

    mul-float/2addr v8, v11

    add-float/2addr v7, v8

    add-float/2addr v4, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    const/high16 v5, -0x41000000    # -0.5f

    mul-float/2addr v1, v5

    mul-float/2addr v6, v1

    mul-float/2addr v4, v1

    move v1, v3

    .line 271
    :goto_4
    iget v5, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    if-ge v1, v5, :cond_4

    .line 272
    iget-object v5, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int v7, v2, v1

    mul-int/lit8 v7, v7, 0x2

    aget v5, v5, v7

    .line 273
    iget-object v8, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v7, v7, 0x1

    aget v7, v8, v7

    .line 275
    iget-object v8, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->w:[F

    mul-int/lit8 v9, v1, 0x2

    aget v10, v8, v9

    mul-float v11, v6, v5

    mul-float v12, v4, v7

    sub-float/2addr v11, v12

    add-float/2addr v10, v11

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    .line 276
    aget v10, v8, v9

    mul-float/2addr v7, v6

    mul-float/2addr v5, v4

    add-float/2addr v7, v5

    add-float/2addr v10, v7

    aput v10, v8, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 280
    :cond_4
    :goto_5
    iget v1, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    if-ge v3, v1, :cond_6

    .line 282
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->w:[F

    mul-int/lit8 v4, v3, 0x2

    aget v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    .line 283
    aget v1, v1, v4

    .line 285
    iget-object v4, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int v6, v2, v3

    mul-int/lit8 v6, v6, 0x2

    aget v4, v4, v6

    .line 286
    iget-object v7, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v6, v6, 0x1

    aget v6, v7, v6

    .line 288
    iget v7, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v3

    mul-int/lit8 v7, v7, 0x2

    move v8, v3

    .line 289
    :goto_6
    iget v9, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    if-ge v8, v9, :cond_5

    .line 293
    iget-object v9, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    iget-object v9, v9, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int v10, v2, v8

    mul-int/lit8 v10, v10, 0x2

    aget v9, v9, v10

    .line 294
    iget-object v11, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    iget-object v11, v11, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v10, v10, 0x1

    aget v10, v11, v10

    neg-float v10, v10

    .line 296
    iget-object v11, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->w:[F

    mul-int/lit8 v12, v8, 0x2

    aget v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    .line 297
    aget v11, v11, v12

    neg-float v11, v11

    .line 299
    iget-object v12, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    iget-object v12, v12, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v14, v7, 0x1

    aget v15, v12, v7

    mul-float v16, v5, v9

    mul-float v17, v1, v10

    sub-float v16, v16, v17

    mul-float v17, v13, v4

    add-float v16, v16, v17

    mul-float v17, v11, v6

    sub-float v16, v16, v17

    add-float v15, v15, v16

    aput v15, v12, v7

    .line 300
    iget-object v7, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v12, v14, 0x1

    aget v15, v7, v14

    mul-float/2addr v10, v5

    mul-float/2addr v9, v1

    add-float/2addr v10, v9

    mul-float/2addr v13, v6

    add-float/2addr v10, v13

    mul-float/2addr v11, v4

    add-float/2addr v10, v11

    add-float/2addr v15, v10

    aput v15, v7, v14

    add-int/lit8 v8, v8, 0x1

    move v7, v12

    goto :goto_6

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method

.method public init(Lorg/ejml/data/CMatrixRMaj;)V
    .locals 2

    .line 311
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_1

    .line 314
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    if-eq v0, v1, :cond_0

    .line 315
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    iput v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->N:I

    .line 317
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->w:[F

    array-length v1, v1

    if-ge v1, v0, :cond_0

    mul-int/lit8 v1, v0, 0x2

    .line 318
    new-array v1, v1, [F

    iput-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->w:[F

    mul-int/lit8 v1, v0, 0x2

    .line 319
    new-array v1, v1, [F

    iput-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->gammas:[F

    mul-int/lit8 v0, v0, 0x2

    .line 320
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->b:[F

    .line 324
    :cond_0
    iput-object p1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_CDRM;->QT:Lorg/ejml/data/CMatrixRMaj;

    return-void

    .line 312
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
