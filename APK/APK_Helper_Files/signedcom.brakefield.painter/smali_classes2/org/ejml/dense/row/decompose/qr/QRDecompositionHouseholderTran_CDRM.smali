.class public Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;
.super Ljava/lang/Object;
.source "QRDecompositionHouseholderTran_CDRM.java"

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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lorg/ejml/data/Complex_F32;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F32;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    return-void
.end method


# virtual methods
.method public applyQ(Lorg/ejml/data/CMatrixRMaj;)V
    .locals 13

    .line 134
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->numRows:I

    if-ne v0, v1, :cond_1

    .line 137
    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->minLength:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 138
    iget v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->numRows:I

    mul-int/2addr v1, v0

    add-int/2addr v1, v0

    mul-int/lit8 v9, v1, 0x2

    .line 139
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v10, v1, v9

    .line 140
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v11, v9, 0x1

    aget v12, v1, v11

    .line 142
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v9

    .line 143
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    const/4 v2, 0x0

    aput v2, v1, v11

    .line 145
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v2, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget v7, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->numRows:I

    mul-int v3, v0, v7

    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->gammas:[F

    aget v4, v1, v0

    const/4 v5, 0x0

    iget-object v8, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->v:[F

    move-object v1, p1

    move v6, v0

    invoke-static/range {v1 .. v8}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->rank1UpdateMultR(Lorg/ejml/data/CMatrixRMaj;[FIFIII[F)V

    .line 147
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aput v10, v1, v9

    .line 148
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aput v12, v1, v11

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void

    .line 135
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A must have at least "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->numRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rows."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public applyTranQ(Lorg/ejml/data/CMatrixRMaj;)V
    .locals 13

    const/4 v0, 0x0

    .line 158
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->minLength:I

    if-ge v0, v1, :cond_0

    .line 159
    iget v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->numRows:I

    mul-int/2addr v1, v0

    add-int/2addr v1, v0

    mul-int/lit8 v9, v1, 0x2

    .line 160
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v10, v1, v9

    .line 161
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v11, v9, 0x1

    aget v12, v1, v11

    .line 163
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v9

    .line 164
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    const/4 v2, 0x0

    aput v2, v1, v11

    .line 166
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v2, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget v7, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->numRows:I

    mul-int v3, v0, v7

    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->gammas:[F

    aget v4, v1, v0

    const/4 v5, 0x0

    iget-object v8, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->v:[F

    move-object v1, p1

    move v6, v0

    invoke-static/range {v1 .. v8}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->rank1UpdateMultR(Lorg/ejml/data/CMatrixRMaj;[FIFIII[F)V

    .line 168
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aput v10, v1, v9

    .line 169
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aput v12, v1, v11

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public decompose(Lorg/ejml/data/CMatrixRMaj;)Z
    .locals 2

    .line 209
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->setExpectedMaxSize(II)V

    .line 211
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    invoke-static {p1, v0}, Lorg/ejml/dense/row/CommonOps_CDRM;->transpose(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;

    const/4 p1, 0x0

    .line 213
    iput-boolean p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->error:Z

    .line 215
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->minLength:I

    if-ge p1, v0, :cond_0

    .line 216
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->householder(I)V

    .line 217
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->updateA(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 220
    :cond_0
    iget-boolean p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->error:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->decompose(Lorg/ejml/data/CMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getGammas()[F
    .locals 1

    .line 348
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->gammas:[F

    return-object v0
.end method

.method public getQ(Lorg/ejml/data/CMatrixRMaj;Z)Lorg/ejml/data/CMatrixRMaj;
    .locals 12

    if-eqz p2, :cond_0

    .line 105
    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->minLength:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_CDRM;->checkIdentity(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 107
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->numRows:I

    invoke-static {p1, p2, p2}, Lorg/ejml/dense/row/decompose/UtilDecompositons_CDRM;->checkIdentity(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    .line 111
    :goto_0
    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->minLength:I

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_1

    .line 112
    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->numRows:I

    mul-int/2addr v0, p2

    add-int/2addr v0, p2

    mul-int/lit8 v8, v0, 0x2

    .line 113
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v9, v0, v8

    .line 114
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v10, v8, 0x1

    aget v11, v0, v10

    .line 116
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, v8

    .line 117
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    const/4 v1, 0x0

    aput v1, v0, v10

    .line 119
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v1, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget v6, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->numRows:I

    mul-int v2, p2, v6

    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->gammas:[F

    aget v3, v0, p2

    iget-object v7, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->v:[F

    move-object v0, p1

    move v4, p2

    move v5, p2

    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->rank1UpdateMultR(Lorg/ejml/data/CMatrixRMaj;[FIFIII[F)V

    .line 121
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aput v9, v0, v8

    .line 122
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aput v11, v0, v10

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->getQ(Lorg/ejml/data/CMatrixRMaj;Z)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getQR()Lorg/ejml/data/CMatrixRMaj;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    return-object v0
.end method

.method public getR(Lorg/ejml/data/CMatrixRMaj;Z)Lorg/ejml/data/CMatrixRMaj;
    .locals 4

    if-eqz p2, :cond_0

    .line 181
    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->minLength:I

    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->numCols:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_CDRM;->checkZerosLT(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 183
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->numCols:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_CDRM;->checkZerosLT(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    .line 185
    :goto_1
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    if-ge p2, v0, :cond_2

    move v0, p2

    .line 186
    :goto_2
    iget v1, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_1

    .line 187
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {v1, v0, p2}, Lorg/ejml/data/CMatrixRMaj;->getIndex(II)I

    move-result v1

    .line 188
    iget-object v2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v2, v2, v1

    iget-object v3, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v1, v1, 0x1

    aget v1, v3, v1

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

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->getR(Lorg/ejml/data/CMatrixRMaj;Z)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method protected householder(I)V
    .locals 10

    .line 244
    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->numRows:I

    mul-int v1, p1, v0

    add-int v3, v1, v0

    add-int/2addr v1, p1

    .line 248
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget v2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->numRows:I

    sub-int/2addr v2, p1

    invoke-static {v0, v1, v2}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->findMax([FII)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v4, v0, v2

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 251
    iput v2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->gamma:F

    .line 252
    iput-boolean v5, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->error:Z

    goto :goto_0

    .line 255
    :cond_0
    iget-object v2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget-object v4, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    invoke-static {v1, v3, v2, v0, v4}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->computeTauGammaAndDivide(II[FFLorg/ejml/data/Complex_F32;)F

    move-result v2

    iput v2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->gamma:F

    .line 258
    iget-object v2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/CMatrixRMaj;->data:[F

    mul-int/lit8 v8, v1, 0x2

    aget v2, v2, v8

    iget-object v4, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    iget v4, v4, Lorg/ejml/data/Complex_F32;->real:F

    add-float v6, v2, v4

    .line 259
    iget-object v2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v9, v8, 0x1

    aget v2, v2, v9

    iget-object v4, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    iget v4, v4, Lorg/ejml/data/Complex_F32;->imaginary:F

    add-float v7, v2, v4

    add-int/lit8 v2, v1, 0x1

    .line 261
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v4, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->divideElements(II[FIFF)V

    .line 263
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    iget v2, v1, Lorg/ejml/data/Complex_F32;->real:F

    mul-float/2addr v2, v0

    iput v2, v1, Lorg/ejml/data/Complex_F32;->real:F

    .line 264
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    iget v2, v1, Lorg/ejml/data/Complex_F32;->imaginary:F

    mul-float/2addr v2, v0

    iput v2, v1, Lorg/ejml/data/Complex_F32;->imaginary:F

    .line 266
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    iget v1, v1, Lorg/ejml/data/Complex_F32;->real:F

    neg-float v1, v1

    aput v1, v0, v8

    .line 267
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    iget v1, v1, Lorg/ejml/data/Complex_F32;->imaginary:F

    neg-float v1, v1

    aput v1, v0, v9

    .line 270
    :goto_0
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->gammas:[F

    iget v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->gamma:F

    aput v1, v0, p1

    return-void
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setExpectedMaxSize(II)V
    .locals 2

    .line 68
    iput p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->numCols:I

    .line 69
    iput p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->numRows:I

    .line 70
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->minLength:I

    .line 71
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 73
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Lorg/ejml/data/CMatrixRMaj;

    invoke-direct {v1, p2, p1}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    iput-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    mul-int/lit8 p1, v0, 0x2

    .line 75
    new-array p1, p1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->v:[F

    .line 76
    iget p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->minLength:I

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->gammas:[F

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v1, p2, p1}, Lorg/ejml/data/CMatrixRMaj;->reshape(II)V

    .line 81
    :goto_0
    iget-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->v:[F

    array-length p1, p1

    mul-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_1

    .line 82
    new-array p1, v0, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->v:[F

    .line 84
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->gammas:[F

    array-length p1, p1

    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->minLength:I

    if-ge p1, p2, :cond_2

    .line 85
    new-array p1, p2, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->gammas:[F

    :cond_2
    return-void
.end method

.method protected updateA(I)V
    .locals 18

    move-object/from16 v0, p0

    .line 302
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    .line 303
    iget v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->numRows:I

    mul-int v3, p1, v2

    add-int v3, v3, p1

    add-int/lit8 v3, v3, 0x1

    add-int v4, v3, v2

    .line 305
    iget v5, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->numCols:I

    sub-int v5, v5, p1

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, v2

    add-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v3

    sub-int v2, v2, p1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x2

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    :goto_0
    if-eq v5, v4, :cond_2

    add-int/lit8 v6, v4, -0x2

    .line 313
    aget v7, v1, v6

    add-int/lit8 v8, v4, -0x1

    .line 314
    aget v9, v1, v8

    move v10, v3

    move v11, v4

    :goto_1
    if-eq v10, v2, :cond_0

    add-int/lit8 v12, v10, 0x1

    .line 320
    aget v10, v1, v10

    add-int/lit8 v13, v12, 0x1

    .line 321
    aget v12, v1, v12

    neg-float v12, v12

    add-int/lit8 v14, v11, 0x1

    .line 323
    aget v11, v1, v11

    add-int/lit8 v15, v14, 0x1

    .line 324
    aget v14, v1, v14

    mul-float v16, v10, v11

    mul-float v17, v12, v14

    sub-float v16, v16, v17

    add-float v7, v7, v16

    mul-float/2addr v10, v14

    mul-float/2addr v12, v11

    add-float/2addr v10, v12

    add-float/2addr v9, v10

    move v10, v13

    move v11, v15

    goto :goto_1

    .line 329
    :cond_0
    iget v10, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->gamma:F

    mul-float/2addr v7, v10

    mul-float/2addr v9, v10

    .line 332
    aget v10, v1, v6

    sub-float/2addr v10, v7

    aput v10, v1, v6

    .line 333
    aget v6, v1, v8

    sub-float/2addr v6, v9

    aput v6, v1, v8

    move v6, v3

    move v8, v4

    :goto_2
    if-eq v6, v2, :cond_1

    add-int/lit8 v10, v6, 0x1

    .line 338
    aget v6, v1, v6

    add-int/lit8 v11, v10, 0x1

    .line 339
    aget v10, v1, v10

    add-int/lit8 v12, v8, 0x1

    .line 341
    aget v13, v1, v8

    mul-float v14, v6, v7

    mul-float v15, v10, v9

    sub-float/2addr v14, v15

    sub-float/2addr v13, v14

    aput v13, v1, v8

    add-int/lit8 v8, v12, 0x1

    .line 342
    aget v13, v1, v12

    mul-float/2addr v6, v9

    mul-float/2addr v10, v7

    add-float/2addr v6, v10

    sub-float/2addr v13, v6

    aput v13, v1, v12

    move v6, v11

    goto :goto_2

    .line 311
    :cond_1
    iget v6, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->numRows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    goto :goto_0

    :cond_2
    return-void
.end method
