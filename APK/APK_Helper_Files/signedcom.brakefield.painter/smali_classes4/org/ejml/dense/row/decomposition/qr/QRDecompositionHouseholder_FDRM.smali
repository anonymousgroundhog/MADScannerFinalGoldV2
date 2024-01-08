.class public Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;
.super Ljava/lang/Object;
.source "QRDecompositionHouseholder_FDRM.java"

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

.field protected dataQR:[F

.field protected error:Z

.field protected gamma:F

.field protected gammas:[F

.field protected minLength:I

.field protected numCols:I

.field protected numRows:I

.field protected tau:F

.field protected u:[F

.field protected v:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected commonSetup(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 2

    .line 325
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->setExpectedMaxSize(II)V

    .line 327
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, p1}, Lorg/ejml/data/FMatrixRMaj;->set(Lorg/ejml/data/FMatrixD1;)V

    return-void
.end method

.method public decompose(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 1

    .line 184
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->commonSetup(Lorg/ejml/data/FMatrixRMaj;)V

    const/4 p1, 0x0

    .line 186
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->minLength:I

    if-ge p1, v0, :cond_0

    .line 187
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->householder(I)V

    .line 188
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->updateA(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 191
    :cond_0
    iget-boolean p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->error:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 52
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getGammas()[F
    .locals 1

    .line 331
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->gammas:[F

    return-object v0
.end method

.method public getQ(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;
    .locals 7

    if-eqz p2, :cond_0

    .line 131
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->minLength:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->ensureIdentity(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 133
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->numRows:I

    invoke-static {p1, p2, p2}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->ensureIdentity(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    .line 136
    :goto_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->minLength:I

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_2

    .line 137
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->u:[F

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, p2

    add-int/lit8 v0, p2, 0x1

    .line 138
    :goto_2
    iget v5, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->numRows:I

    if-ge v0, v5, :cond_1

    .line 139
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->u:[F

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v2, v0, p2}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 141
    :cond_1
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->u:[F

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->gammas:[F

    aget v2, v0, p2

    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->v:[F

    move-object v0, p1

    move v3, p2

    move v4, p2

    invoke-static/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;[FFIII[F)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 52
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->getQ(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getQR()Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    return-object v0
.end method

.method public getR(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;
    .locals 2

    if-eqz p2, :cond_0

    .line 155
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->minLength:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->numCols:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->checkZerosLT(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 157
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->numCols:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->checkZerosLT(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    .line 160
    :goto_1
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->minLength:I

    if-ge p2, v0, :cond_2

    move v0, p2

    .line 161
    :goto_2
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->numCols:I

    if-ge v0, v1, :cond_1

    .line 162
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v1, p2, v0}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v1

    .line 163
    invoke-virtual {p1, p2, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

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

    .line 52
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->getR(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method protected householder(I)V
    .locals 6

    .line 216
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->numCols:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p1

    const/4 v1, 0x0

    move v2, p1

    move v3, v1

    .line 218
    :goto_0
    iget v4, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->numRows:I

    if-ge v2, v4, :cond_2

    .line 220
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->u:[F

    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->dataQR:[F

    aget v5, v5, v0

    aput v5, v4, v2

    cmpg-float v4, v5, v1

    if-gez v4, :cond_0

    neg-float v5, v5

    :cond_0
    cmpg-float v4, v3, v5

    if-gez v4, :cond_1

    move v3, v5

    .line 227
    :cond_1
    iget v4, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->numCols:I

    add-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    cmpl-float v0, v3, v1

    if-nez v0, :cond_3

    .line 231
    iput v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->gamma:F

    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->error:Z

    goto :goto_3

    .line 236
    :cond_3
    iput v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->tau:F

    move v0, p1

    .line 237
    :goto_1
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->numRows:I

    if-ge v0, v2, :cond_4

    .line 238
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->u:[F

    aget v4, v2, v0

    div-float/2addr v4, v3

    aput v4, v2, v0

    .line 240
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->tau:F

    mul-float/2addr v4, v4

    add-float/2addr v2, v4

    iput v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->tau:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 242
    :cond_4
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->tau:F

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->tau:F

    .line 244
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->u:[F

    aget v2, v2, p1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_5

    neg-float v0, v0

    .line 245
    iput v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->tau:F

    .line 247
    :cond_5
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->tau:F

    add-float/2addr v2, v0

    div-float v0, v2, v0

    .line 248
    iput v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->gamma:F

    add-int/lit8 v0, p1, 0x1

    .line 249
    :goto_2
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->numRows:I

    if-ge v0, v1, :cond_6

    .line 250
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->u:[F

    aget v4, v1, v0

    div-float/2addr v4, v2

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 252
    :cond_6
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->u:[F

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, p1

    .line 253
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->tau:F

    mul-float/2addr v0, v3

    iput v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->tau:F

    .line 256
    :goto_3
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->gammas:[F

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->gamma:F

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

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->error:Z

    .line 86
    iput p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->numCols:I

    .line 87
    iput p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->numRows:I

    .line 88
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->minLength:I

    .line 89
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 91
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    if-nez v2, :cond_0

    .line 92
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    .line 93
    new-array p1, v1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->u:[F

    .line 94
    new-array p1, v1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->v:[F

    .line 95
    iget p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->minLength:I

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->gammas:[F

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v2, p1, p2, v0}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    .line 100
    :goto_0
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->QR:Lorg/ejml/data/FMatrixRMaj;

    iget-object p1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->dataQR:[F

    .line 102
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->u:[F

    array-length p1, p1

    if-ge p1, v1, :cond_1

    .line 103
    new-array p1, v1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->u:[F

    .line 104
    new-array p1, v1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->v:[F

    .line 107
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->gammas:[F

    array-length p1, p1

    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->minLength:I

    if-ge p1, p2, :cond_2

    .line 108
    new-array p1, p2, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->gammas:[F

    :cond_2
    return-void
.end method

.method protected updateA(I)V
    .locals 9

    add-int/lit8 v0, p1, 0x1

    move v1, v0

    .line 283
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->numCols:I

    if-ge v1, v2, :cond_0

    .line 284
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->v:[F

    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->u:[F

    aget v4, v4, p1

    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->dataQR:[F

    mul-int/2addr v2, p1

    add-int/2addr v2, v1

    aget v2, v5, v2

    mul-float/2addr v4, v2

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 287
    :goto_1
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->numRows:I

    if-ge v1, v2, :cond_2

    .line 288
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->numCols:I

    mul-int/2addr v2, v1

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    move v3, v0

    .line 289
    :goto_2
    iget v4, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->numCols:I

    if-ge v3, v4, :cond_1

    .line 291
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->v:[F

    aget v5, v4, v3

    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->u:[F

    aget v6, v6, v1

    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->dataQR:[F

    add-int/lit8 v8, v2, 0x1

    aget v2, v7, v2

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    move v2, v8

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    .line 295
    :goto_3
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->numCols:I

    if-ge v1, v2, :cond_3

    .line 296
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->v:[F

    aget v3, v2, v1

    iget v4, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->gamma:F

    mul-float/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v1, p1

    .line 301
    :goto_4
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->numRows:I

    if-ge v1, v2, :cond_5

    .line 302
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->u:[F

    aget v2, v2, v1

    .line 304
    iget v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->numCols:I

    mul-int/2addr v3, v1

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    move v4, v0

    .line 305
    :goto_5
    iget v5, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->numCols:I

    if-ge v4, v5, :cond_4

    .line 307
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->dataQR:[F

    add-int/lit8 v6, v3, 0x1

    aget v7, v5, v3

    iget-object v8, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->v:[F

    aget v8, v8, v4

    mul-float/2addr v8, v2

    sub-float/2addr v7, v8

    aput v7, v5, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v6

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 311
    :cond_5
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->numCols:I

    if-ge p1, v1, :cond_6

    .line 312
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->dataQR:[F

    mul-int/2addr v1, p1

    add-int/2addr v1, p1

    iget v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->tau:F

    neg-float v3, v3

    aput v3, v2, v1

    .line 316
    :cond_6
    :goto_6
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->numRows:I

    if-ge v0, v1, :cond_7

    .line 317
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->dataQR:[F

    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->numCols:I

    mul-int/2addr v2, v0

    add-int/2addr v2, p1

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholder_FDRM;->u:[F

    aget v3, v3, v0

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    return-void
.end method
