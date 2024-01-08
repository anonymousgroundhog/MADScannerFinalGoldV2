.class public Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;
.super Ljava/lang/Object;
.source "QRDecompositionHouseholder_DDRM.java"

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

.field protected dataQR:[D

.field protected error:Z

.field protected gamma:D

.field protected gammas:[D

.field protected minLength:I

.field protected numCols:I

.field protected numRows:I

.field protected tau:D

.field protected u:[D

.field protected v:[D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected commonSetup(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 2

    .line 323
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->setExpectedMaxSize(II)V

    .line 325
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, p1}, Lorg/ejml/data/DMatrixRMaj;->set(Lorg/ejml/data/DMatrixD1;)V

    return-void
.end method

.method public decompose(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 1

    .line 182
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->commonSetup(Lorg/ejml/data/DMatrixRMaj;)V

    const/4 p1, 0x0

    .line 184
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->minLength:I

    if-ge p1, v0, :cond_0

    .line 185
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->householder(I)V

    .line 186
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->updateA(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 189
    :cond_0
    iget-boolean p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->error:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 51
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getGammas()[D
    .locals 1

    .line 329
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->gammas:[D

    return-object v0
.end method

.method public getQ(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;
    .locals 8

    if-eqz p2, :cond_0

    .line 129
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->minLength:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->ensureIdentity(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 131
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->numRows:I

    invoke-static {p1, p2, p2}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->ensureIdentity(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    .line 134
    :goto_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->minLength:I

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_2

    .line 135
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->u:[D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    aput-wide v1, v0, p2

    add-int/lit8 v0, p2, 0x1

    .line 136
    :goto_2
    iget v6, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->numRows:I

    if-ge v0, v6, :cond_1

    .line 137
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->u:[D

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v2, v0, p2}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 139
    :cond_1
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->u:[D

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->gammas:[D

    aget-wide v2, v0, p2

    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->v:[D

    move-object v0, p1

    move v4, p2

    move v5, p2

    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;[DDIII[D)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 51
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->getQ(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getQR()Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    return-object v0
.end method

.method public getR(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;
    .locals 3

    if-eqz p2, :cond_0

    .line 153
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->minLength:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->numCols:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->checkZerosLT(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 155
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->numCols:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->checkZerosLT(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    .line 158
    :goto_1
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->minLength:I

    if-ge p2, v0, :cond_2

    move v0, p2

    .line 159
    :goto_2
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->numCols:I

    if-ge v0, v1, :cond_1

    .line 160
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v1, p2, v0}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v1

    .line 161
    invoke-virtual {p1, p2, v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

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

    .line 51
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->getR(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method protected householder(I)V
    .locals 10

    .line 214
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->numCols:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p1

    const-wide/16 v1, 0x0

    move v3, p1

    move-wide v4, v1

    .line 216
    :goto_0
    iget v6, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->numRows:I

    if-ge v3, v6, :cond_2

    .line 218
    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->u:[D

    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->dataQR:[D

    aget-wide v7, v7, v0

    aput-wide v7, v6, v3

    cmpg-double v6, v7, v1

    if-gez v6, :cond_0

    neg-double v7, v7

    :cond_0
    cmpg-double v6, v4, v7

    if-gez v6, :cond_1

    move-wide v4, v7

    .line 225
    :cond_1
    iget v6, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->numCols:I

    add-int/2addr v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    cmpl-double v0, v4, v1

    if-nez v0, :cond_3

    .line 229
    iput-wide v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->gamma:D

    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->error:Z

    goto :goto_3

    .line 234
    :cond_3
    iput-wide v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->tau:D

    move v0, p1

    .line 235
    :goto_1
    iget v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->numRows:I

    if-ge v0, v3, :cond_4

    .line 236
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->u:[D

    aget-wide v6, v3, v0

    div-double/2addr v6, v4

    aput-wide v6, v3, v0

    .line 238
    iget-wide v8, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->tau:D

    mul-double/2addr v6, v6

    add-double/2addr v8, v6

    iput-wide v8, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->tau:D

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 240
    :cond_4
    iget-wide v6, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->tau:D

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->tau:D

    .line 242
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->u:[D

    aget-wide v8, v0, p1

    cmpg-double v0, v8, v1

    if-gez v0, :cond_5

    neg-double v0, v6

    .line 243
    iput-wide v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->tau:D

    .line 245
    :cond_5
    iget-wide v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->tau:D

    add-double/2addr v8, v0

    div-double v0, v8, v0

    .line 246
    iput-wide v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->gamma:D

    add-int/lit8 v0, p1, 0x1

    .line 247
    :goto_2
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->numRows:I

    if-ge v0, v1, :cond_6

    .line 248
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->u:[D

    aget-wide v2, v1, v0

    div-double/2addr v2, v8

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 250
    :cond_6
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->u:[D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    aput-wide v1, v0, p1

    .line 251
    iget-wide v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->tau:D

    mul-double/2addr v0, v4

    iput-wide v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->tau:D

    .line 254
    :goto_3
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->gammas:[D

    iget-wide v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->gamma:D

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

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->error:Z

    .line 84
    iput p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->numCols:I

    .line 85
    iput p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->numRows:I

    .line 86
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->minLength:I

    .line 87
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 89
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    if-nez v2, :cond_0

    .line 90
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    .line 91
    new-array p1, v1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->u:[D

    .line 92
    new-array p1, v1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->v:[D

    .line 93
    iget p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->minLength:I

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->gammas:[D

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v2, p1, p2, v0}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    .line 98
    :goto_0
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->QR:Lorg/ejml/data/DMatrixRMaj;

    iget-object p1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->dataQR:[D

    .line 100
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->u:[D

    array-length p1, p1

    if-ge p1, v1, :cond_1

    .line 101
    new-array p1, v1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->u:[D

    .line 102
    new-array p1, v1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->v:[D

    .line 105
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->gammas:[D

    array-length p1, p1

    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->minLength:I

    if-ge p1, p2, :cond_2

    .line 106
    new-array p1, p2, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->gammas:[D

    :cond_2
    return-void
.end method

.method protected updateA(I)V
    .locals 13

    add-int/lit8 v0, p1, 0x1

    move v1, v0

    .line 281
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->numCols:I

    if-ge v1, v2, :cond_0

    .line 282
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->v:[D

    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->u:[D

    aget-wide v4, v4, p1

    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->dataQR:[D

    mul-int/2addr v2, p1

    add-int/2addr v2, v1

    aget-wide v6, v6, v2

    mul-double/2addr v4, v6

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 285
    :goto_1
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->numRows:I

    if-ge v1, v2, :cond_2

    .line 286
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->numCols:I

    mul-int/2addr v2, v1

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    move v3, v0

    .line 287
    :goto_2
    iget v4, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->numCols:I

    if-ge v3, v4, :cond_1

    .line 289
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->v:[D

    aget-wide v5, v4, v3

    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->u:[D

    aget-wide v7, v7, v1

    iget-object v9, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->dataQR:[D

    add-int/lit8 v10, v2, 0x1

    aget-wide v11, v9, v2

    mul-double/2addr v7, v11

    add-double/2addr v5, v7

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    move v2, v10

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    .line 293
    :goto_3
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->numCols:I

    if-ge v1, v2, :cond_3

    .line 294
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->v:[D

    aget-wide v3, v2, v1

    iget-wide v5, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->gamma:D

    mul-double/2addr v3, v5

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v1, p1

    .line 299
    :goto_4
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->numRows:I

    if-ge v1, v2, :cond_5

    .line 300
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->u:[D

    aget-wide v2, v2, v1

    .line 302
    iget v4, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->numCols:I

    mul-int/2addr v4, v1

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x1

    move v5, v0

    .line 303
    :goto_5
    iget v6, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->numCols:I

    if-ge v5, v6, :cond_4

    .line 305
    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->dataQR:[D

    add-int/lit8 v7, v4, 0x1

    aget-wide v8, v6, v4

    iget-object v10, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->v:[D

    aget-wide v10, v10, v5

    mul-double/2addr v10, v2

    sub-double/2addr v8, v10

    aput-wide v8, v6, v4

    add-int/lit8 v5, v5, 0x1

    move v4, v7

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 309
    :cond_5
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->numCols:I

    if-ge p1, v1, :cond_6

    .line 310
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->dataQR:[D

    mul-int/2addr v1, p1

    add-int/2addr v1, p1

    iget-wide v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->tau:D

    neg-double v3, v3

    aput-wide v3, v2, v1

    .line 314
    :cond_6
    :goto_6
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->numRows:I

    if-ge v0, v1, :cond_7

    .line 315
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->dataQR:[D

    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->numCols:I

    mul-int/2addr v2, v0

    add-int/2addr v2, p1

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_DDRM;->u:[D

    aget-wide v3, v3, v0

    aput-wide v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    return-void
.end method
