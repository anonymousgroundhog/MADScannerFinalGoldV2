.class public Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;
.super Ljava/lang/Object;
.source "QRDecompositionHouseholderTran_FDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/QRDecomposition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
        "Lorg/ejml/data/FMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field protected QR:Lorg/ejml/data/FMatrixRMaj;

.field protected error:Z

.field protected gamma:F

.field protected gammas:[F

.field protected minLength:I

.field protected numCols:I

.field protected numRows:I

.field protected tau:F

.field protected v:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyQ(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 11

    .line 129
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->numRows:I

    if-ne v0, v1, :cond_1

    .line 132
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->minLength:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 133
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->numRows:I

    mul-int/2addr v1, v0

    add-int v9, v1, v0

    .line 134
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v10, v1, v9

    .line 135
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v9

    .line 136
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v7, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->numRows:I

    mul-int v3, v0, v7

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->gammas:[F

    aget v4, v1, v0

    const/4 v5, 0x0

    iget-object v8, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->v:[F

    move-object v1, p1

    move v6, v0

    invoke-static/range {v1 .. v8}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;[FIFIII[F)V

    .line 137
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aput v10, v1, v9

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void

    .line 130
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A must have at least "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->numRows:I

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

.method public applyTranQ(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 11

    const/4 v0, 0x0

    .line 147
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->minLength:I

    if-ge v0, v1, :cond_0

    .line 148
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->numRows:I

    mul-int/2addr v1, v0

    add-int v9, v1, v0

    .line 149
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v10, v1, v9

    .line 150
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v9

    .line 151
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v7, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->numRows:I

    mul-int v3, v0, v7

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->gammas:[F

    aget v4, v1, v0

    const/4 v5, 0x0

    iget-object v8, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->v:[F

    move-object v1, p1

    move v6, v0

    invoke-static/range {v1 .. v8}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;[FIFIII[F)V

    .line 152
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aput v10, v1, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public decompose(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 2

    .line 193
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->setExpectedMaxSize(II)V

    .line 195
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {p1, v0}, Lorg/ejml/dense/row/CommonOps_FDRM;->transpose(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    const/4 p1, 0x0

    .line 197
    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->error:Z

    .line 199
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->minLength:I

    if-ge p1, v0, :cond_0

    .line 200
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->householder(I)V

    .line 201
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->updateA(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 204
    :cond_0
    iget-boolean p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->error:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getGammas()[F
    .locals 1

    .line 311
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->gammas:[F

    return-object v0
.end method

.method public getQ(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;
    .locals 10

    if-eqz p2, :cond_0

    .line 105
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->minLength:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->ensureIdentity(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 107
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->numRows:I

    invoke-static {p1, p2, p2}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->ensureIdentity(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    .line 112
    :goto_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->minLength:I

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_1

    .line 113
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->numRows:I

    mul-int/2addr v0, p2

    add-int v8, v0, p2

    .line 114
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v9, v0, v8

    .line 115
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, v8

    .line 116
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v6, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->numRows:I

    mul-int v2, p2, v6

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->gammas:[F

    aget v3, v0, p2

    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->v:[F

    move-object v0, p1

    move v4, p2

    move v5, p2

    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;[FIFIII[F)V

    .line 117
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aput v9, v0, v8

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->getQ(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getQR()Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    return-object v0
.end method

.method public getR(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;
    .locals 2

    if-eqz p2, :cond_0

    .line 164
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->minLength:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->numCols:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->checkZerosLT(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 166
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->numCols:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->checkZerosLT(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    .line 169
    :goto_1
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge p2, v0, :cond_2

    move v0, p2

    .line 170
    :goto_2
    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_1

    .line 171
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v1, v0, p2}, Lorg/ejml/data/FMatrixRMaj;->unsafe_get(II)F

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->unsafe_set(IIF)V

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
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->getR(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method protected householder(I)V
    .locals 6

    .line 228
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->numRows:I

    mul-int v1, p1, v0

    add-int/2addr v0, v1

    add-int/2addr v1, p1

    .line 232
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->numRows:I

    sub-int/2addr v3, p1

    invoke-static {v2, v1, v3}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->findMax([FII)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-nez v4, :cond_0

    .line 235
    iput v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->gamma:F

    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->error:Z

    goto :goto_0

    .line 239
    :cond_0
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    invoke-static {v1, v0, v3, v2}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->computeTauAndDivide(II[FF)F

    move-result v3

    iput v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->tau:F

    .line 242
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v3, v3, v1

    iget v4, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->tau:F

    add-float/2addr v3, v4

    add-int/lit8 v4, v1, 0x1

    .line 243
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/FMatrixRMaj;->data:[F

    invoke-static {v4, v0, v5, v3}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->divideElements(II[FF)V

    .line 245
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->tau:F

    div-float/2addr v3, v0

    iput v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->gamma:F

    mul-float/2addr v0, v2

    .line 246
    iput v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->tau:F

    .line 248
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->tau:F

    neg-float v2, v2

    aput v2, v0, v1

    .line 251
    :goto_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->gammas:[F

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->gamma:F

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

    .line 68
    iput p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->numCols:I

    .line 69
    iput p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->numRows:I

    .line 70
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->minLength:I

    .line 71
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 73
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v1, p2, p1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    .line 75
    new-array p1, v0, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->v:[F

    .line 76
    iget p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->minLength:I

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->gammas:[F

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 78
    invoke-virtual {v1, p2, p1, v2}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    .line 81
    :goto_0
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->v:[F

    array-length p1, p1

    if-ge p1, v0, :cond_1

    .line 82
    new-array p1, v0, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->v:[F

    .line 84
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->gammas:[F

    array-length p1, p1

    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->minLength:I

    if-ge p1, p2, :cond_2

    .line 85
    new-array p1, p2, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->gammas:[F

    :cond_2
    return-void
.end method

.method protected updateA(I)V
    .locals 10

    .line 283
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    .line 284
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->numRows:I

    mul-int v2, p1, v1

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    add-int v3, v2, v1

    .line 286
    iget v4, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->numCols:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    add-int/2addr v1, v2

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-eq v4, v3, :cond_2

    add-int/lit8 p1, v3, -0x1

    .line 291
    aget v5, v0, p1

    move v6, v2

    move v7, v3

    :goto_1
    if-eq v6, v1, :cond_0

    add-int/lit8 v8, v6, 0x1

    .line 297
    aget v6, v0, v6

    add-int/lit8 v9, v7, 0x1

    aget v7, v0, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    move v6, v8

    move v7, v9

    goto :goto_1

    .line 299
    :cond_0
    iget v6, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->gamma:F

    mul-float/2addr v5, v6

    .line 301
    aget v6, v0, p1

    sub-float/2addr v6, v5

    aput v6, v0, p1

    move p1, v2

    move v6, v3

    :goto_2
    if-eq p1, v1, :cond_1

    add-int/lit8 v7, v6, 0x1

    .line 305
    aget v8, v0, v6

    add-int/lit8 v9, p1, 0x1

    aget p1, v0, p1

    mul-float/2addr p1, v5

    sub-float/2addr v8, p1

    aput v8, v0, v6

    move v6, v7

    move p1, v9

    goto :goto_2

    .line 289
    :cond_1
    iget p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;->numRows:I

    add-int/2addr v3, p1

    goto :goto_0

    :cond_2
    return-void
.end method
