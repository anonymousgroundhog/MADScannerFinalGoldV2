.class public Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;
.super Ljava/lang/Object;
.source "QRDecompositionHouseholderColumn_FDRM.java"

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
.field protected dataQR:[[F

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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected convertToColumnMajor(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 184
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->numCols:I

    if-ge v1, v2, :cond_1

    .line 185
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->dataQR:[[F

    aget-object v2, v2, v1

    move v3, v0

    .line 186
    :goto_1
    iget v4, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->numRows:I

    if-ge v3, v4, :cond_0

    .line 187
    iget-object v4, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v5, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v1

    aget v4, v4, v5

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public decompose(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 2

    .line 158
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->setExpectedMaxSize(II)V

    .line 160
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->convertToColumnMajor(Lorg/ejml/data/FMatrixRMaj;)V

    const/4 p1, 0x0

    .line 162
    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->error:Z

    .line 164
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->minLength:I

    if-ge p1, v0, :cond_0

    .line 165
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->householder(I)V

    .line 166
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->updateA(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 169
    :cond_0
    iget-boolean p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->error:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getGammas()[F
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->gammas:[F

    return-object v0
.end method

.method public getQ(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;
    .locals 8

    if-eqz p2, :cond_0

    .line 103
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->minLength:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->ensureIdentity(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 105
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->numRows:I

    invoke-static {p1, p2, p2}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->ensureIdentity(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    .line 108
    :goto_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->minLength:I

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_1

    .line 109
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->dataQR:[[F

    aget-object v1, v0, p2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 111
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->gammas:[F

    aget v3, v0, p2

    iget v6, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->numRows:I

    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->v:[F

    move-object v0, p1

    move v4, p2

    move v5, p2

    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->rank1UpdateMultR_u0(Lorg/ejml/data/FMatrixRMaj;[FFFIII[F)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->getQ(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getQR()[[F
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->dataQR:[[F

    return-object v0
.end method

.method public getR(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;
    .locals 5

    if-eqz p2, :cond_0

    .line 127
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->minLength:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->numCols:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->checkZerosLT(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 129
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->numCols:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->checkZerosLT(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    move v0, p2

    .line 132
    :goto_1
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->numCols:I

    if-ge v0, v1, :cond_2

    .line 133
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->dataQR:[[F

    aget-object v1, v1, v0

    .line 134
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->numRows:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, p2

    :goto_2
    if-gt v3, v2, :cond_1

    .line 136
    aget v4, v1, v3

    .line 137
    invoke-virtual {p1, v3, v0, v4}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

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

    .line 37
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->getR(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method protected householder(I)V
    .locals 5

    .line 208
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->dataQR:[[F

    aget-object v0, v0, p1

    .line 212
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->numRows:I

    sub-int/2addr v1, p1

    invoke-static {v0, p1, v1}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->findMax([FII)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    .line 215
    iput v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->gamma:F

    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->error:Z

    goto :goto_0

    .line 219
    :cond_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->numRows:I

    invoke-static {p1, v2, v0, v1}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->computeTauAndDivide(II[FF)F

    move-result v2

    iput v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->tau:F

    .line 222
    aget v3, v0, p1

    add-float/2addr v3, v2

    add-int/lit8 v2, p1, 0x1

    .line 223
    iget v4, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->numRows:I

    invoke-static {v2, v4, v0, v3}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->divideElements(II[FF)V

    .line 225
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->tau:F

    div-float/2addr v3, v2

    iput v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->gamma:F

    mul-float/2addr v2, v1

    .line 226
    iput v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->tau:F

    neg-float v1, v2

    .line 228
    aput v1, v0, p1

    .line 231
    :goto_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->gammas:[F

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->gamma:F

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

    .line 66
    iput p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->numCols:I

    .line 67
    iput p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->numRows:I

    .line 68
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->minLength:I

    .line 69
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 71
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->dataQR:[[F

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lt v2, p2, :cond_0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    array-length v1, v1

    if-ge v1, p1, :cond_1

    .line 72
    :cond_0
    filled-new-array {p2, p1}, [I

    move-result-object p1

    sget-object p2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->dataQR:[[F

    .line 73
    new-array p1, v0, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->v:[F

    .line 74
    iget p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->minLength:I

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->gammas:[F

    .line 77
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->v:[F

    array-length p1, p1

    if-ge p1, v0, :cond_2

    .line 78
    new-array p1, v0, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->v:[F

    .line 80
    :cond_2
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->gammas:[F

    array-length p1, p1

    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->minLength:I

    if-ge p1, p2, :cond_3

    .line 81
    new-array p1, p2, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->gammas:[F

    :cond_3
    return-void
.end method

.method protected updateA(I)V
    .locals 8

    .line 244
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->dataQR:[[F

    aget-object v0, v0, p1

    add-int/lit8 v1, p1, 0x1

    move v2, v1

    .line 246
    :goto_0
    iget v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->numCols:I

    if-ge v2, v3, :cond_2

    .line 248
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->dataQR:[[F

    aget-object v3, v3, v2

    .line 249
    aget v4, v3, p1

    move v5, v1

    .line 251
    :goto_1
    iget v6, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->numRows:I

    if-ge v5, v6, :cond_0

    .line 252
    aget v6, v0, v5

    aget v7, v3, v5

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 254
    :cond_0
    iget v5, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->gamma:F

    mul-float/2addr v4, v5

    .line 256
    aget v5, v3, p1

    sub-float/2addr v5, v4

    aput v5, v3, p1

    move v5, v1

    .line 257
    :goto_2
    iget v6, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_FDRM;->numRows:I

    if-ge v5, v6, :cond_1

    .line 258
    aget v6, v3, v5

    aget v7, v0, v5

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
