.class public Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;
.super Ljava/lang/Object;
.source "QRDecompositionHouseholderTran_ZDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/QRDecomposition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
        "Lorg/ejml/data/ZMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field protected QR:Lorg/ejml/data/ZMatrixRMaj;

.field protected error:Z

.field protected gamma:D

.field protected gammas:[D

.field protected minLength:I

.field protected numCols:I

.field protected numRows:I

.field protected tau:Lorg/ejml/data/Complex_F64;

.field protected v:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lorg/ejml/data/Complex_F64;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F64;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    return-void
.end method


# virtual methods
.method public applyQ(Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 132
    iget v1, v10, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->numRows:I

    if-ne v1, v2, :cond_1

    .line 135
    iget v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->minLength:I

    add-int/lit8 v1, v1, -0x1

    move v11, v1

    :goto_0
    if-ltz v11, :cond_0

    .line 136
    iget v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->numRows:I

    mul-int/2addr v1, v11

    add-int/2addr v1, v11

    mul-int/lit8 v12, v1, 0x2

    .line 137
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v13, v1, v12

    .line 138
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v12, 0x1

    aget-wide v16, v1, v15

    .line 140
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v1, v12

    .line 141
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v15

    .line 143
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v2, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget v8, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->numRows:I

    mul-int v3, v11, v8

    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->gammas:[D

    aget-wide v4, v1, v11

    const/4 v6, 0x0

    iget-object v9, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->v:[D

    move-object/from16 v1, p1

    move v7, v11

    invoke-static/range {v1 .. v9}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->rank1UpdateMultR(Lorg/ejml/data/ZMatrixRMaj;[DIDIII[D)V

    .line 145
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aput-wide v13, v1, v12

    .line 146
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aput-wide v16, v1, v15

    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    :cond_0
    return-void

    .line 133
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "A must have at least "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->numRows:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rows."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public applyTranQ(Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 156
    :goto_0
    iget v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->minLength:I

    if-ge v1, v2, :cond_0

    .line 157
    iget v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->numRows:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v1

    mul-int/lit8 v11, v2, 0x2

    .line 158
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v12, v2, v11

    .line 159
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v14, v11, 0x1

    aget-wide v15, v2, v14

    .line 161
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    aput-wide v3, v2, v11

    .line 162
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v14

    .line 164
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget v9, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->numRows:I

    mul-int v4, v1, v9

    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->gammas:[D

    aget-wide v5, v2, v1

    const/4 v7, 0x0

    iget-object v10, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->v:[D

    move-object/from16 v2, p1

    move v8, v1

    invoke-static/range {v2 .. v10}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->rank1UpdateMultR(Lorg/ejml/data/ZMatrixRMaj;[DIDIII[D)V

    .line 166
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aput-wide v12, v2, v11

    .line 167
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aput-wide v15, v2, v14

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->decompose(Lorg/ejml/data/ZMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public decompose(Lorg/ejml/data/ZMatrixRMaj;)Z
    .locals 2

    .line 207
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->setExpectedMaxSize(II)V

    .line 209
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    invoke-static {p1, v0}, Lorg/ejml/dense/row/CommonOps_ZDRM;->transpose(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;

    const/4 p1, 0x0

    .line 211
    iput-boolean p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->error:Z

    .line 213
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->minLength:I

    if-ge p1, v0, :cond_0

    .line 214
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->householder(I)V

    .line 215
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->updateA(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 218
    :cond_0
    iget-boolean p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->error:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getGammas()[D
    .locals 1

    .line 346
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->gammas:[D

    return-object v0
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->getQ(Lorg/ejml/data/ZMatrixRMaj;Z)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getQ(Lorg/ejml/data/ZMatrixRMaj;Z)Lorg/ejml/data/ZMatrixRMaj;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz p2, :cond_0

    .line 103
    iget v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->numRows:I

    iget v3, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->minLength:I

    invoke-static {v1, v2, v3}, Lorg/ejml/dense/row/decompose/UtilDecompositons_ZDRM;->checkIdentity(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object v1

    goto :goto_0

    .line 105
    :cond_0
    iget v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->numRows:I

    invoke-static {v1, v2, v2}, Lorg/ejml/dense/row/decompose/UtilDecompositons_ZDRM;->checkIdentity(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object v1

    .line 109
    :goto_0
    iget v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->minLength:I

    add-int/lit8 v2, v2, -0x1

    move v11, v2

    :goto_1
    if-ltz v11, :cond_1

    .line 110
    iget v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->numRows:I

    mul-int/2addr v2, v11

    add-int/2addr v2, v11

    mul-int/lit8 v12, v2, 0x2

    .line 111
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v13, v2, v12

    .line 112
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v15, v12, 0x1

    aget-wide v16, v2, v15

    .line 114
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    aput-wide v3, v2, v12

    .line 115
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v15

    .line 117
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v3, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget v9, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->numRows:I

    mul-int v4, v11, v9

    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->gammas:[D

    aget-wide v5, v2, v11

    iget-object v10, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->v:[D

    move-object v2, v1

    move v7, v11

    move v8, v11

    invoke-static/range {v2 .. v10}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->rank1UpdateMultR(Lorg/ejml/data/ZMatrixRMaj;[DIDIII[D)V

    .line 119
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aput-wide v13, v2, v12

    .line 120
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aput-wide v16, v2, v15

    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public getQR()Lorg/ejml/data/ZMatrixRMaj;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    return-object v0
.end method

.method public bridge synthetic getR(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->getR(Lorg/ejml/data/ZMatrixRMaj;Z)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getR(Lorg/ejml/data/ZMatrixRMaj;Z)Lorg/ejml/data/ZMatrixRMaj;
    .locals 8

    if-eqz p2, :cond_0

    .line 179
    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->minLength:I

    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->numCols:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_ZDRM;->checkZerosLT(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 181
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->numCols:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_ZDRM;->checkZerosLT(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    .line 183
    :goto_1
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge p2, v0, :cond_2

    move v7, p2

    .line 184
    :goto_2
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v7, v0, :cond_1

    .line 185
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {v0, v7, p2}, Lorg/ejml/data/ZMatrixRMaj;->getIndex(II)I

    move-result v0

    .line 186
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v3, v1, v0

    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v0, v0, 0x1

    aget-wide v5, v1, v0

    move-object v0, p1

    move v1, p2

    move v2, v7

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/data/ZMatrixRMaj;->set(IIDD)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method protected householder(I)V
    .locals 17

    move-object/from16 v0, p0

    .line 242
    iget v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->numRows:I

    mul-int v2, p1, v1

    add-int/2addr v1, v2

    add-int v2, v2, p1

    .line 246
    iget-object v3, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget v4, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->numRows:I

    sub-int v4, v4, p1

    invoke-static {v3, v2, v4}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->findMax([DII)D

    move-result-wide v11

    const-wide/16 v3, 0x0

    cmpl-double v5, v11, v3

    const/4 v9, 0x1

    if-nez v5, :cond_0

    .line 249
    iput-wide v3, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->gamma:D

    .line 250
    iput-boolean v9, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->error:Z

    goto :goto_0

    .line 253
    :cond_0
    iget-object v3, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v5, v3, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget-object v8, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    move v3, v2

    move v4, v1

    move-wide v6, v11

    invoke-static/range {v3 .. v8}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->computeTauGammaAndDivide(II[DDLorg/ejml/data/Complex_F64;)D

    move-result-wide v3

    iput-wide v3, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->gamma:D

    .line 256
    iget-object v3, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    mul-int/lit8 v13, v2, 0x2

    aget-wide v3, v3, v13

    iget-object v5, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    iget-wide v5, v5, Lorg/ejml/data/Complex_F64;->real:D

    add-double v7, v3, v5

    .line 257
    iget-object v3, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v14, v13, 0x1

    aget-wide v3, v3, v14

    iget-object v5, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    iget-wide v5, v5, Lorg/ejml/data/Complex_F64;->imaginary:D

    add-double v15, v3, v5

    add-int/lit8 v3, v2, 0x1

    .line 259
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v5, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    const/4 v6, 0x0

    move v4, v1

    move-wide v9, v15

    invoke-static/range {v3 .. v10}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->divideElements(II[DIDD)V

    .line 261
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    iget-wide v2, v1, Lorg/ejml/data/Complex_F64;->real:D

    mul-double/2addr v2, v11

    iput-wide v2, v1, Lorg/ejml/data/Complex_F64;->real:D

    .line 262
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    iget-wide v2, v1, Lorg/ejml/data/Complex_F64;->imaginary:D

    mul-double/2addr v2, v11

    iput-wide v2, v1, Lorg/ejml/data/Complex_F64;->imaginary:D

    .line 264
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    iget-wide v2, v2, Lorg/ejml/data/Complex_F64;->real:D

    neg-double v2, v2

    aput-wide v2, v1, v13

    .line 265
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    iget-wide v2, v2, Lorg/ejml/data/Complex_F64;->imaginary:D

    neg-double v2, v2

    aput-wide v2, v1, v14

    .line 268
    :goto_0
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->gammas:[D

    iget-wide v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->gamma:D

    aput-wide v2, v1, p1

    return-void
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setExpectedMaxSize(II)V
    .locals 2

    .line 66
    iput p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->numCols:I

    .line 67
    iput p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->numRows:I

    .line 68
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->minLength:I

    .line 69
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 71
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {v1, p2, p1}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    iput-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    mul-int/lit8 p1, v0, 0x2

    .line 73
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->v:[D

    .line 74
    iget p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->minLength:I

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->gammas:[D

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v1, p2, p1}, Lorg/ejml/data/ZMatrixRMaj;->reshape(II)V

    .line 79
    :goto_0
    iget-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->v:[D

    array-length p1, p1

    mul-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_1

    .line 80
    new-array p1, v0, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->v:[D

    .line 82
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->gammas:[D

    array-length p1, p1

    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->minLength:I

    if-ge p1, p2, :cond_2

    .line 83
    new-array p1, p2, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->gammas:[D

    :cond_2
    return-void
.end method

.method protected updateA(I)V
    .locals 26

    move-object/from16 v0, p0

    .line 300
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    .line 301
    iget v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->numRows:I

    mul-int v3, p1, v2

    add-int v3, v3, p1

    add-int/lit8 v3, v3, 0x1

    add-int v4, v3, v2

    .line 303
    iget v5, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->numCols:I

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

    .line 311
    aget-wide v7, v1, v6

    add-int/lit8 v9, v4, -0x1

    .line 312
    aget-wide v10, v1, v9

    move v12, v3

    move v13, v4

    :goto_1
    if-eq v12, v2, :cond_0

    add-int/lit8 v14, v12, 0x1

    .line 318
    aget-wide v15, v1, v12

    add-int/lit8 v12, v14, 0x1

    move/from16 p1, v3

    move/from16 v17, v4

    .line 319
    aget-wide v3, v1, v14

    neg-double v3, v3

    add-int/lit8 v14, v13, 0x1

    .line 321
    aget-wide v18, v1, v13

    add-int/lit8 v13, v14, 0x1

    .line 322
    aget-wide v20, v1, v14

    mul-double v22, v15, v18

    mul-double v24, v3, v20

    sub-double v22, v22, v24

    add-double v7, v7, v22

    mul-double v15, v15, v20

    mul-double v3, v3, v18

    add-double/2addr v15, v3

    add-double/2addr v10, v15

    move/from16 v3, p1

    move/from16 v4, v17

    goto :goto_1

    :cond_0
    move/from16 p1, v3

    move/from16 v17, v4

    .line 327
    iget-wide v3, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->gamma:D

    mul-double/2addr v7, v3

    mul-double/2addr v10, v3

    .line 330
    aget-wide v3, v1, v6

    sub-double/2addr v3, v7

    aput-wide v3, v1, v6

    .line 331
    aget-wide v3, v1, v9

    sub-double/2addr v3, v10

    aput-wide v3, v1, v9

    move/from16 v3, p1

    move/from16 v4, v17

    :goto_2
    if-eq v3, v2, :cond_1

    add-int/lit8 v6, v3, 0x1

    .line 336
    aget-wide v12, v1, v3

    add-int/lit8 v3, v6, 0x1

    .line 337
    aget-wide v14, v1, v6

    add-int/lit8 v6, v4, 0x1

    .line 339
    aget-wide v18, v1, v4

    mul-double v20, v12, v7

    mul-double v22, v14, v10

    sub-double v20, v20, v22

    sub-double v18, v18, v20

    aput-wide v18, v1, v4

    add-int/lit8 v4, v6, 0x1

    .line 340
    aget-wide v18, v1, v6

    mul-double/2addr v12, v10

    mul-double/2addr v14, v7

    add-double/2addr v12, v14

    sub-double v18, v18, v12

    aput-wide v18, v1, v6

    goto :goto_2

    .line 309
    :cond_1
    iget v3, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->numRows:I

    mul-int/lit8 v3, v3, 0x2

    add-int v4, v17, v3

    move/from16 v3, p1

    goto :goto_0

    :cond_2
    return-void
.end method
