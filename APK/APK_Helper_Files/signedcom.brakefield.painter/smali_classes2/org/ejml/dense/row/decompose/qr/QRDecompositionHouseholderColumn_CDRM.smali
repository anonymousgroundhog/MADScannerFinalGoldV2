.class public Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;
.super Ljava/lang/Object;
.source "QRDecompositionHouseholderColumn_CDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/QRDecomposition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
        "Lorg/ejml/data/CMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field protected dataQR:[[F

.field protected error:Z

.field protected gamma:F

.field protected gammas:[F

.field protected minLength:I

.field protected numCols:I

.field protected numRows:I

.field protected tau:Lorg/ejml/data/Complex_F32;

.field protected v:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lorg/ejml/data/Complex_F32;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F32;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    return-void
.end method


# virtual methods
.method protected convertToColumnMajor(Lorg/ejml/data/CMatrixRMaj;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 192
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->numCols:I

    if-ge v1, v2, :cond_1

    .line 193
    iget-object v2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->dataQR:[[F

    aget-object v2, v2, v1

    move v3, v0

    move v4, v3

    .line 195
    :goto_1
    iget v5, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->numRows:I

    if-ge v3, v5, :cond_0

    .line 196
    iget v5, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->numCols:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v1

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v4, 0x1

    .line 197
    iget-object v7, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v7, v7, v5

    aput v7, v2, v4

    add-int/lit8 v4, v6, 0x1

    .line 198
    iget-object v7, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v5, v5, 0x1

    aget v5, v7, v5

    aput v5, v2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public decompose(Lorg/ejml/data/CMatrixRMaj;)Z
    .locals 2

    .line 166
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->setExpectedMaxSize(II)V

    .line 168
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->convertToColumnMajor(Lorg/ejml/data/CMatrixRMaj;)V

    const/4 p1, 0x0

    .line 170
    iput-boolean p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->error:Z

    .line 172
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->minLength:I

    if-ge p1, v0, :cond_0

    .line 173
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->householder(I)V

    .line 174
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->updateA(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 177
    :cond_0
    iget-boolean p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->error:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->decompose(Lorg/ejml/data/CMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getGammas()[F
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->gammas:[F

    return-object v0
.end method

.method public getQ(Lorg/ejml/data/CMatrixRMaj;Z)Lorg/ejml/data/CMatrixRMaj;
    .locals 13

    if-eqz p2, :cond_0

    .line 104
    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->minLength:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_CDRM;->checkIdentity(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 106
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->numRows:I

    invoke-static {p1, p2, p2}, Lorg/ejml/dense/row/decompose/UtilDecompositons_CDRM;->checkIdentity(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    .line 108
    :goto_0
    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->minLength:I

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_1

    .line 109
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->dataQR:[[F

    aget-object v8, v0, p2

    mul-int/lit8 v9, p2, 0x2

    .line 111
    aget v10, v8, v9

    add-int/lit8 v11, v9, 0x1

    .line 112
    aget v12, v8, v11

    const/high16 v0, 0x3f800000    # 1.0f

    .line 114
    aput v0, v8, v9

    const/4 v0, 0x0

    .line 115
    aput v0, v8, v11

    .line 116
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->gammas:[F

    aget v3, v0, p2

    const/4 v2, 0x0

    .line 118
    iget v6, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->numRows:I

    iget-object v7, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->v:[F

    move-object v0, p1

    move-object v1, v8

    move v4, p2

    move v5, p2

    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->rank1UpdateMultR(Lorg/ejml/data/CMatrixRMaj;[FIFIII[F)V

    .line 120
    aput v10, v8, v9

    .line 121
    aput v12, v8, v11

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->getQ(Lorg/ejml/data/CMatrixRMaj;Z)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getQR()[[F
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->dataQR:[[F

    return-object v0
.end method

.method public getR(Lorg/ejml/data/CMatrixRMaj;Z)Lorg/ejml/data/CMatrixRMaj;
    .locals 6

    if-eqz p2, :cond_0

    .line 137
    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->minLength:I

    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->numCols:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_CDRM;->checkZerosLT(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 139
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->numCols:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_CDRM;->checkZerosLT(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    move v0, p2

    .line 141
    :goto_1
    iget v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->numCols:I

    if-ge v0, v1, :cond_2

    .line 142
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->dataQR:[[F

    aget-object v1, v1, v0

    .line 143
    iget v2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->numRows:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, p2

    :goto_2
    if-gt v3, v2, :cond_1

    mul-int/lit8 v4, v3, 0x2

    .line 145
    aget v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    aget v4, v1, v4

    invoke-virtual {p1, v3, v0, v5, v4}, Lorg/ejml/data/CMatrixRMaj;->set(IIFF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public bridge synthetic getR(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->getR(Lorg/ejml/data/CMatrixRMaj;Z)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method protected householder(I)V
    .locals 10

    .line 219
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->dataQR:[[F

    aget-object v0, v0, p1

    .line 223
    iget v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->numRows:I

    sub-int/2addr v1, p1

    invoke-static {v0, p1, v1}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->findMax([FII)F

    move-result v7

    const/4 v1, 0x0

    cmpl-float v2, v7, v1

    if-nez v2, :cond_0

    .line 226
    iput v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->gamma:F

    const/4 v0, 0x1

    .line 227
    iput-boolean v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->error:Z

    goto :goto_0

    .line 230
    :cond_0
    iget v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->numRows:I

    iget-object v2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    invoke-static {p1, v1, v0, v7, v2}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->computeTauGammaAndDivide(II[FFLorg/ejml/data/Complex_F32;)F

    move-result v1

    iput v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->gamma:F

    mul-int/lit8 v8, p1, 0x2

    .line 234
    aget v1, v0, v8

    iget-object v2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    iget v2, v2, Lorg/ejml/data/Complex_F32;->real:F

    add-float v5, v1, v2

    add-int/lit8 v9, v8, 0x1

    .line 235
    aget v1, v0, v9

    iget-object v2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    iget v2, v2, Lorg/ejml/data/Complex_F32;->imaginary:F

    add-float v6, v1, v2

    add-int/lit8 v1, p1, 0x1

    .line 236
    iget v2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->numRows:I

    const/4 v4, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->divideElements(II[FIFF)V

    .line 238
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    iget v2, v1, Lorg/ejml/data/Complex_F32;->real:F

    mul-float/2addr v2, v7

    iput v2, v1, Lorg/ejml/data/Complex_F32;->real:F

    .line 239
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    iget v2, v1, Lorg/ejml/data/Complex_F32;->imaginary:F

    mul-float/2addr v2, v7

    iput v2, v1, Lorg/ejml/data/Complex_F32;->imaginary:F

    .line 241
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    iget v1, v1, Lorg/ejml/data/Complex_F32;->real:F

    neg-float v1, v1

    aput v1, v0, v8

    .line 242
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    iget v1, v1, Lorg/ejml/data/Complex_F32;->imaginary:F

    neg-float v1, v1

    aput v1, v0, v9

    .line 245
    :goto_0
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->gammas:[F

    iget v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->gamma:F

    aput v1, v0, p1

    return-void
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setExpectedMaxSize(II)V
    .locals 3

    .line 67
    iput p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->numCols:I

    .line 68
    iput p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->numRows:I

    .line 69
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->minLength:I

    .line 70
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 72
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->dataQR:[[F

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lt v2, p2, :cond_0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    array-length v1, v1

    mul-int/lit8 v2, p1, 0x2

    if-ge v1, v2, :cond_1

    :cond_0
    mul-int/lit8 p1, p1, 0x2

    .line 73
    filled-new-array {p2, p1}, [I

    move-result-object p1

    sget-object p2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[F

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->dataQR:[[F

    mul-int/lit8 p1, v0, 0x2

    .line 74
    new-array p1, p1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->v:[F

    .line 75
    iget p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->minLength:I

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->gammas:[F

    .line 78
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->v:[F

    array-length p1, p1

    mul-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_2

    .line 79
    new-array p1, v0, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->v:[F

    .line 81
    :cond_2
    iget-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->gammas:[F

    array-length p1, p1

    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->minLength:I

    if-ge p1, p2, :cond_3

    .line 82
    new-array p1, p2, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->gammas:[F

    :cond_3
    return-void
.end method

.method protected updateA(I)V
    .locals 16

    move-object/from16 v0, p0

    .line 258
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->dataQR:[[F

    aget-object v1, v1, p1

    add-int/lit8 v2, p1, 0x1

    move v3, v2

    .line 260
    :goto_0
    iget v4, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->numCols:I

    if-ge v3, v4, :cond_2

    .line 262
    iget-object v4, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->dataQR:[[F

    aget-object v4, v4, v3

    mul-int/lit8 v5, p1, 0x2

    .line 264
    aget v6, v4, v5

    add-int/lit8 v7, v5, 0x1

    .line 265
    aget v8, v4, v7

    move v9, v2

    .line 267
    :goto_1
    iget v10, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->numRows:I

    if-ge v9, v10, :cond_0

    mul-int/lit8 v10, v9, 0x2

    .line 268
    aget v11, v1, v10

    add-int/lit8 v12, v10, 0x1

    .line 269
    aget v13, v1, v12

    neg-float v13, v13

    .line 271
    aget v10, v4, v10

    .line 272
    aget v12, v4, v12

    mul-float v14, v11, v10

    mul-float v15, v13, v12

    sub-float/2addr v14, v15

    add-float/2addr v6, v14

    mul-float/2addr v13, v10

    mul-float/2addr v11, v12

    add-float/2addr v13, v11

    add-float/2addr v8, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 277
    :cond_0
    iget v9, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->gamma:F

    mul-float/2addr v6, v9

    mul-float/2addr v8, v9

    .line 280
    aget v9, v4, v5

    sub-float/2addr v9, v6

    aput v9, v4, v5

    .line 281
    aget v5, v4, v7

    sub-float/2addr v5, v8

    aput v5, v4, v7

    move v5, v2

    .line 283
    :goto_2
    iget v7, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->numRows:I

    if-ge v5, v7, :cond_1

    mul-int/lit8 v7, v5, 0x2

    .line 284
    aget v9, v1, v7

    add-int/lit8 v10, v7, 0x1

    .line 285
    aget v11, v1, v10

    .line 287
    aget v12, v4, v7

    mul-float v13, v9, v6

    mul-float v14, v11, v8

    sub-float/2addr v13, v14

    sub-float/2addr v12, v13

    aput v12, v4, v7

    .line 288
    aget v7, v4, v10

    mul-float/2addr v11, v6

    mul-float/2addr v9, v8

    add-float/2addr v11, v9

    sub-float/2addr v7, v11

    aput v7, v4, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
