.class public Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;
.super Ljava/lang/Object;
.source "QRDecompositionHouseholderTran_DDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/QRDecomposition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
        "Lorg/ejml/data/DMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field protected QR:Lorg/ejml/data/DMatrixRMaj;

.field protected error:Z

.field protected gamma:D

.field protected gammas:[D

.field protected minLength:I

.field protected numCols:I

.field protected numRows:I

.field protected tau:D

.field protected v:[D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyQ(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 13

    .line 127
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->numRows:I

    if-ne v0, v1, :cond_1

    .line 130
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->minLength:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 131
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->numRows:I

    mul-int/2addr v1, v0

    add-int v10, v1, v0

    .line 132
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v11, v1, v10

    .line 133
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v1, v10

    .line 134
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    iget-object v2, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v8, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->numRows:I

    mul-int v3, v0, v8

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->gammas:[D

    aget-wide v4, v1, v0

    const/4 v6, 0x0

    iget-object v9, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->v:[D

    move-object v1, p1

    move v7, v0

    invoke-static/range {v1 .. v9}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;[DIDIII[D)V

    .line 135
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aput-wide v11, v1, v10

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void

    .line 128
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A must have at least "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->numRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v1, Lcom/fasterxml/jackson/core/base/wdxk/XdOzfHnSj;->qMIgOzts:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public applyTranQ(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 13

    const/4 v0, 0x0

    .line 145
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->minLength:I

    if-ge v0, v1, :cond_0

    .line 146
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->numRows:I

    mul-int/2addr v1, v0

    add-int v10, v1, v0

    .line 147
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v11, v1, v10

    .line 148
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v1, v10

    .line 149
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    iget-object v2, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v8, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->numRows:I

    mul-int v3, v0, v8

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->gammas:[D

    aget-wide v4, v1, v0

    const/4 v6, 0x0

    iget-object v9, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->v:[D

    move-object v1, p1

    move v7, v0

    invoke-static/range {v1 .. v9}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;[DIDIII[D)V

    .line 150
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aput-wide v11, v1, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public decompose(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 2

    .line 191
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->setExpectedMaxSize(II)V

    .line 193
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {p1, v0}, Lorg/ejml/dense/row/CommonOps_DDRM;->transpose(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    const/4 p1, 0x0

    .line 195
    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->error:Z

    .line 197
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->minLength:I

    if-ge p1, v0, :cond_0

    .line 198
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->householder(I)V

    .line 199
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->updateA(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 202
    :cond_0
    iget-boolean p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->error:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getGammas()[D
    .locals 1

    .line 309
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->gammas:[D

    return-object v0
.end method

.method public getQ(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;
    .locals 12

    if-eqz p2, :cond_0

    .line 103
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->minLength:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->ensureIdentity(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 105
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->numRows:I

    invoke-static {p1, p2, p2}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->ensureIdentity(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    .line 110
    :goto_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->minLength:I

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_1

    .line 111
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->numRows:I

    mul-int/2addr v0, p2

    add-int v9, v0, p2

    .line 112
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v10, v0, v9

    .line 113
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    aput-wide v1, v0, v9

    .line 114
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v7, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->numRows:I

    mul-int v2, p2, v7

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->gammas:[D

    aget-wide v3, v0, p2

    iget-object v8, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->v:[D

    move-object v0, p1

    move v5, p2

    move v6, p2

    invoke-static/range {v0 .. v8}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;[DIDIII[D)V

    .line 115
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aput-wide v10, v0, v9

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->getQ(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getQR()Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    return-object v0
.end method

.method public getR(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;
    .locals 3

    if-eqz p2, :cond_0

    .line 162
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->minLength:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->numCols:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->checkZerosLT(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 164
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->numCols:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->checkZerosLT(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    .line 167
    :goto_1
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge p2, v0, :cond_2

    move v0, p2

    .line 168
    :goto_2
    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_1

    .line 169
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v1, v0, p2}, Lorg/ejml/data/DMatrixRMaj;->unsafe_get(II)D

    move-result-wide v1

    invoke-virtual {p1, p2, v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->unsafe_set(IID)V

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

    .line 39
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->getR(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method protected householder(I)V
    .locals 8

    .line 226
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->numRows:I

    mul-int v1, p1, v0

    add-int/2addr v0, v1

    add-int/2addr v1, p1

    .line 230
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->numRows:I

    sub-int/2addr v3, p1

    invoke-static {v2, v1, v3}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->findMax([DII)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    .line 233
    iput-wide v4, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->gamma:D

    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->error:Z

    goto :goto_0

    .line 237
    :cond_0
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/DMatrixRMaj;->data:[D

    invoke-static {v1, v0, v4, v2, v3}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->computeTauAndDivide(II[DD)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->tau:D

    .line 240
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v4, v4, v1

    iget-wide v6, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->tau:D

    add-double/2addr v4, v6

    add-int/lit8 v6, v1, 0x1

    .line 241
    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/DMatrixRMaj;->data:[D

    invoke-static {v6, v0, v7, v4, v5}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->divideElements(II[DD)V

    .line 243
    iget-wide v6, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->tau:D

    div-double/2addr v4, v6

    iput-wide v4, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->gamma:D

    mul-double/2addr v6, v2

    .line 244
    iput-wide v6, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->tau:D

    .line 246
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-wide v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->tau:D

    neg-double v2, v2

    aput-wide v2, v0, v1

    .line 249
    :goto_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->gammas:[D

    iget-wide v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->gamma:D

    aput-wide v1, v0, p1

    return-void
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setExpectedMaxSize(II)V
    .locals 3

    .line 66
    iput p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->numCols:I

    .line 67
    iput p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->numRows:I

    .line 68
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->minLength:I

    .line 69
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 71
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v1, p2, p1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    .line 73
    new-array p1, v0, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->v:[D

    .line 74
    iget p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->minLength:I

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->gammas:[D

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 76
    invoke-virtual {v1, p2, p1, v2}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    .line 79
    :goto_0
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->v:[D

    array-length p1, p1

    if-ge p1, v0, :cond_1

    .line 80
    new-array p1, v0, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->v:[D

    .line 82
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->gammas:[D

    array-length p1, p1

    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->minLength:I

    if-ge p1, p2, :cond_2

    .line 83
    new-array p1, p2, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->gammas:[D

    :cond_2
    return-void
.end method

.method protected updateA(I)V
    .locals 14

    .line 281
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    .line 282
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->numRows:I

    mul-int v2, p1, v1

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    add-int v3, v2, v1

    .line 284
    iget v4, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->numCols:I

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

    .line 289
    aget-wide v5, v0, p1

    move v7, v2

    move v8, v3

    :goto_1
    if-eq v7, v1, :cond_0

    add-int/lit8 v9, v7, 0x1

    .line 295
    aget-wide v10, v0, v7

    add-int/lit8 v7, v8, 0x1

    aget-wide v12, v0, v8

    mul-double/2addr v10, v12

    add-double/2addr v5, v10

    move v8, v7

    move v7, v9

    goto :goto_1

    .line 297
    :cond_0
    iget-wide v7, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->gamma:D

    mul-double/2addr v5, v7

    .line 299
    aget-wide v7, v0, p1

    sub-double/2addr v7, v5

    aput-wide v7, v0, p1

    move p1, v2

    move v7, v3

    :goto_2
    if-eq p1, v1, :cond_1

    add-int/lit8 v8, v7, 0x1

    .line 303
    aget-wide v9, v0, v7

    add-int/lit8 v11, p1, 0x1

    aget-wide v12, v0, p1

    mul-double/2addr v12, v5

    sub-double/2addr v9, v12

    aput-wide v9, v0, v7

    move v7, v8

    move p1, v11

    goto :goto_2

    .line 287
    :cond_1
    iget p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;->numRows:I

    add-int/2addr v3, p1

    goto :goto_0

    :cond_2
    return-void
.end method
