.class public Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;
.super Ljava/lang/Object;
.source "QRDecompositionHouseholderColumn_DDRM.java"

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
.field protected dataQR:[[D

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

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected convertToColumnMajor(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 182
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->numCols:I

    if-ge v1, v2, :cond_1

    .line 183
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->dataQR:[[D

    aget-object v2, v2, v1

    move v3, v0

    .line 184
    :goto_1
    iget v4, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->numRows:I

    if-ge v3, v4, :cond_0

    .line 185
    iget-object v4, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v5, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v1

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public decompose(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 2

    .line 156
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->setExpectedMaxSize(II)V

    .line 158
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->convertToColumnMajor(Lorg/ejml/data/DMatrixRMaj;)V

    const/4 p1, 0x0

    .line 160
    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->error:Z

    .line 162
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->minLength:I

    if-ge p1, v0, :cond_0

    .line 163
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->householder(I)V

    .line 164
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->updateA(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 167
    :cond_0
    iget-boolean p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->error:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 36
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getGammas()[D
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->gammas:[D

    return-object v0
.end method

.method public getQ(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;
    .locals 10

    if-eqz p2, :cond_0

    .line 101
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->minLength:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->ensureIdentity(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 103
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->numRows:I

    invoke-static {p1, p2, p2}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->ensureIdentity(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    .line 106
    :goto_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->minLength:I

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_1

    .line 107
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->dataQR:[[D

    aget-object v1, v0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 109
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->gammas:[D

    aget-wide v4, v0, p2

    iget v8, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->numRows:I

    iget-object v9, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->v:[D

    move-object v0, p1

    move v6, p2

    move v7, p2

    invoke-static/range {v0 .. v9}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->rank1UpdateMultR_u0(Lorg/ejml/data/DMatrixRMaj;[DDDIII[D)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 36
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->getQ(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getQR()[[D
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->dataQR:[[D

    return-object v0
.end method

.method public getR(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;
    .locals 6

    if-eqz p2, :cond_0

    .line 125
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->minLength:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->numCols:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->checkZerosLT(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 127
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->numCols:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->checkZerosLT(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    move v0, p2

    .line 130
    :goto_1
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->numCols:I

    if-ge v0, v1, :cond_2

    .line 131
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->dataQR:[[D

    aget-object v1, v1, v0

    .line 132
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->numRows:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, p2

    :goto_2
    if-gt v3, v2, :cond_1

    .line 134
    aget-wide v4, v1, v3

    .line 135
    invoke-virtual {p1, v3, v0, v4, v5}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

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

    .line 36
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->getR(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method protected householder(I)V
    .locals 7

    .line 206
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->dataQR:[[D

    aget-object v0, v0, p1

    .line 210
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->numRows:I

    sub-int/2addr v1, p1

    invoke-static {v0, p1, v1}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->findMax([DII)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    .line 213
    iput-wide v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->gamma:D

    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->error:Z

    goto :goto_0

    .line 217
    :cond_0
    iget v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->numRows:I

    invoke-static {p1, v3, v0, v1, v2}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->computeTauAndDivide(II[DD)D

    move-result-wide v3

    iput-wide v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->tau:D

    .line 220
    aget-wide v5, v0, p1

    add-double/2addr v5, v3

    add-int/lit8 v3, p1, 0x1

    .line 221
    iget v4, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->numRows:I

    invoke-static {v3, v4, v0, v5, v6}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->divideElements(II[DD)V

    .line 223
    iget-wide v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->tau:D

    div-double/2addr v5, v3

    iput-wide v5, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->gamma:D

    mul-double/2addr v3, v1

    .line 224
    iput-wide v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->tau:D

    neg-double v1, v3

    .line 226
    aput-wide v1, v0, p1

    .line 229
    :goto_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->gammas:[D

    iget-wide v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->gamma:D

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

    .line 64
    iput p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->numCols:I

    .line 65
    iput p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->numRows:I

    .line 66
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->minLength:I

    .line 67
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 69
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->dataQR:[[D

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lt v2, p2, :cond_0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    array-length v1, v1

    if-ge v1, p1, :cond_1

    .line 70
    :cond_0
    filled-new-array {p2, p1}, [I

    move-result-object p1

    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->dataQR:[[D

    .line 71
    new-array p1, v0, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->v:[D

    .line 72
    iget p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->minLength:I

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->gammas:[D

    .line 75
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->v:[D

    array-length p1, p1

    if-ge p1, v0, :cond_2

    .line 76
    new-array p1, v0, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->v:[D

    .line 78
    :cond_2
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->gammas:[D

    array-length p1, p1

    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->minLength:I

    if-ge p1, p2, :cond_3

    .line 79
    new-array p1, p2, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->gammas:[D

    :cond_3
    return-void
.end method

.method protected updateA(I)V
    .locals 11

    .line 242
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->dataQR:[[D

    aget-object v0, v0, p1

    add-int/lit8 v1, p1, 0x1

    move v2, v1

    .line 244
    :goto_0
    iget v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->numCols:I

    if-ge v2, v3, :cond_2

    .line 246
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->dataQR:[[D

    aget-object v3, v3, v2

    .line 247
    aget-wide v4, v3, p1

    move v6, v1

    .line 249
    :goto_1
    iget v7, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->numRows:I

    if-ge v6, v7, :cond_0

    .line 250
    aget-wide v7, v0, v6

    aget-wide v9, v3, v6

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 252
    :cond_0
    iget-wide v6, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->gamma:D

    mul-double/2addr v4, v6

    .line 254
    aget-wide v6, v3, p1

    sub-double/2addr v6, v4

    aput-wide v6, v3, p1

    move v6, v1

    .line 255
    :goto_2
    iget v7, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_DDRM;->numRows:I

    if-ge v6, v7, :cond_1

    .line 256
    aget-wide v7, v3, v6

    aget-wide v9, v0, v6

    mul-double/2addr v9, v4

    sub-double/2addr v7, v9

    aput-wide v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
