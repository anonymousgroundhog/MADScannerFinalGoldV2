.class public Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;
.super Ljava/lang/Object;
.source "QRDecompositionHouseholder_CDRM.java"

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
.field protected QR:Lorg/ejml/data/CMatrixRMaj;

.field protected dataQR:[F

.field protected error:Z

.field protected gammas:[F

.field protected minLength:I

.field protected numCols:I

.field protected numRows:I

.field protected tau:Lorg/ejml/data/Complex_F32;

.field protected u:[F

.field protected v:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lorg/ejml/data/Complex_F32;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F32;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    return-void
.end method


# virtual methods
.method protected commonSetup(Lorg/ejml/data/CMatrixRMaj;)V
    .locals 2

    .line 251
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->setExpectedMaxSize(II)V

    .line 253
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {v0, p1}, Lorg/ejml/data/CMatrixRMaj;->set(Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public decompose(Lorg/ejml/data/CMatrixRMaj;)Z
    .locals 1

    .line 182
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->commonSetup(Lorg/ejml/data/CMatrixRMaj;)V

    const/4 p1, 0x0

    .line 184
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->minLength:I

    if-ge p1, v0, :cond_0

    .line 185
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->householder(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 188
    :cond_0
    iget-boolean p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->error:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 54
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->decompose(Lorg/ejml/data/CMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getGammas()[F
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->gammas:[F

    return-object v0
.end method

.method public getQ(Lorg/ejml/data/CMatrixRMaj;Z)Lorg/ejml/data/CMatrixRMaj;
    .locals 8

    if-eqz p2, :cond_0

    .line 131
    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->minLength:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_CDRM;->checkIdentity(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 133
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->numRows:I

    invoke-static {p1, p2, p2}, Lorg/ejml/dense/row/decompose/UtilDecompositons_CDRM;->checkIdentity(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    .line 135
    :goto_0
    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->minLength:I

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_1

    .line 136
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget v2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->numRows:I

    iget-object v4, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->u:[F

    const/4 v5, 0x0

    move v1, p2

    move v3, p2

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->extractHouseholderColumn(Lorg/ejml/data/CMatrixRMaj;III[FI)V

    .line 137
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->u:[F

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->gammas:[F

    aget v3, v0, p2

    iget v6, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->numRows:I

    iget-object v7, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->v:[F

    move-object v0, p1

    move v4, p2

    move v5, p2

    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->rank1UpdateMultR(Lorg/ejml/data/CMatrixRMaj;[FIFIII[F)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 54
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->getQ(Lorg/ejml/data/CMatrixRMaj;Z)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getQR()Lorg/ejml/data/CMatrixRMaj;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    return-object v0
.end method

.method public getR(Lorg/ejml/data/CMatrixRMaj;Z)Lorg/ejml/data/CMatrixRMaj;
    .locals 4

    if-eqz p2, :cond_0

    .line 151
    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->minLength:I

    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->numCols:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_CDRM;->checkZerosLT(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 153
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->numCols:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_CDRM;->checkZerosLT(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    .line 155
    :goto_1
    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->minLength:I

    if-ge p2, v0, :cond_2

    move v0, p2

    .line 156
    :goto_2
    iget v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->numCols:I

    if-ge v0, v1, :cond_1

    .line 157
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {v1, p2, v0}, Lorg/ejml/data/CMatrixRMaj;->getIndex(II)I

    move-result v1

    .line 158
    iget-object v2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v2, v2, v1

    .line 159
    iget-object v3, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v1, v1, 0x1

    aget v1, v3, v1

    .line 161
    invoke-virtual {p1, p2, v0, v2, v1}, Lorg/ejml/data/CMatrixRMaj;->set(IIFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public bridge synthetic getR(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 54
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->getR(Lorg/ejml/data/CMatrixRMaj;Z)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method protected householder(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v9, p1

    .line 213
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget v3, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->numRows:I

    iget-object v5, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->u:[F

    const/4 v6, 0x0

    move/from16 v2, p1

    move/from16 v4, p1

    invoke-static/range {v1 .. v6}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->extractColumnAndMax(Lorg/ejml/data/CMatrixRMaj;III[FI)F

    move-result v10

    const/4 v1, 0x0

    cmpg-float v2, v10, v1

    const/4 v11, 0x1

    if-gtz v2, :cond_0

    .line 216
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->gammas:[F

    aput v1, v2, v9

    .line 217
    iput-boolean v11, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->error:Z

    goto/16 :goto_1

    .line 219
    :cond_0
    iget v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->numRows:I

    iget-object v3, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->u:[F

    iget-object v4, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    invoke-static {v9, v2, v3, v10, v4}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->computeTauGammaAndDivide(II[FFLorg/ejml/data/Complex_F32;)F

    move-result v4

    .line 220
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->gammas:[F

    aput v4, v2, v9

    .line 223
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->u:[F

    mul-int/lit8 v3, v9, 0x2

    aget v2, v2, v3

    iget-object v5, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    iget v5, v5, Lorg/ejml/data/Complex_F32;->real:F

    add-float v16, v2, v5

    .line 224
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->u:[F

    add-int/lit8 v5, v3, 0x1

    aget v2, v2, v5

    iget-object v6, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    iget v6, v6, Lorg/ejml/data/Complex_F32;->imaginary:F

    add-float v17, v2, v6

    add-int/lit8 v6, v9, 0x1

    .line 225
    iget v13, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->numRows:I

    iget-object v14, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->u:[F

    const/4 v15, 0x0

    move v12, v6

    invoke-static/range {v12 .. v17}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->divideElements(II[FIFF)V

    move v2, v6

    .line 228
    :goto_0
    iget v7, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->numRows:I

    if-ge v2, v7, :cond_1

    .line 229
    iget-object v7, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->dataQR:[F

    iget v8, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->numCols:I

    mul-int v12, v2, v8

    add-int/2addr v12, v9

    mul-int/lit8 v12, v12, 0x2

    iget-object v13, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->u:[F

    mul-int/lit8 v14, v2, 0x2

    aget v15, v13, v14

    aput v15, v7, v12

    mul-int/2addr v8, v2

    add-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v11

    add-int/2addr v14, v11

    .line 230
    aget v12, v13, v14

    aput v12, v7, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    :cond_1
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->u:[F

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v2, v3

    .line 234
    aput v1, v2, v5

    .line 236
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    const/4 v3, 0x0

    iget-object v8, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->v:[F

    move v5, v6

    move/from16 v6, p1

    invoke-static/range {v1 .. v8}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->rank1UpdateMultR(Lorg/ejml/data/CMatrixRMaj;[FIFIII[F)V

    .line 240
    iget v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->numCols:I

    if-ge v9, v1, :cond_2

    .line 241
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->dataQR:[F

    mul-int/2addr v1, v9

    add-int/2addr v1, v9

    mul-int/lit8 v1, v1, 0x2

    iget-object v3, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    iget v3, v3, Lorg/ejml/data/Complex_F32;->real:F

    neg-float v3, v3

    mul-float/2addr v3, v10

    aput v3, v2, v1

    .line 242
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->dataQR:[F

    iget v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->numCols:I

    mul-int/2addr v2, v9

    add-int/2addr v2, v9

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v11

    iget-object v3, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    iget v3, v3, Lorg/ejml/data/Complex_F32;->imaginary:F

    neg-float v3, v3

    mul-float/2addr v3, v10

    aput v3, v1, v2

    :cond_2
    :goto_1
    return-void
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setExpectedMaxSize(II)V
    .locals 2

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->error:Z

    .line 86
    iput p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->numCols:I

    .line 87
    iput p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->numRows:I

    .line 88
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->minLength:I

    .line 89
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 91
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Lorg/ejml/data/CMatrixRMaj;

    invoke-direct {v1, p1, p2}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    iput-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    mul-int/lit8 p1, v0, 0x2

    .line 93
    new-array p2, p1, [F

    iput-object p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->u:[F

    .line 94
    new-array p1, p1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->v:[F

    .line 95
    iget p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->minLength:I

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->gammas:[F

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v1, p1, p2}, Lorg/ejml/data/CMatrixRMaj;->reshape(II)V

    .line 100
    :goto_0
    iget-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object p1, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->dataQR:[F

    .line 102
    iget-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->u:[F

    array-length p1, p1

    mul-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_1

    .line 103
    new-array p1, v0, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->u:[F

    .line 104
    new-array p1, v0, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->v:[F

    .line 107
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->gammas:[F

    array-length p1, p1

    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->minLength:I

    if-ge p1, p2, :cond_2

    .line 108
    new-array p1, p2, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->gammas:[F

    :cond_2
    return-void
.end method
