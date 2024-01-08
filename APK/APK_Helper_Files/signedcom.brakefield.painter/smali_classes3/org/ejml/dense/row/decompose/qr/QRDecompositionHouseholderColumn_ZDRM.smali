.class public Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;
.super Ljava/lang/Object;
.source "QRDecompositionHouseholderColumn_ZDRM.java"

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
.field protected dataQR:[[D

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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lorg/ejml/data/Complex_F64;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F64;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    return-void
.end method


# virtual methods
.method protected convertToColumnMajor(Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    .line 190
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->numCols:I

    if-ge v1, v2, :cond_1

    .line 191
    iget-object v2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->dataQR:[[D

    aget-object v2, v2, v1

    move v3, v0

    move v4, v3

    .line 193
    :goto_1
    iget v5, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->numRows:I

    if-ge v3, v5, :cond_0

    .line 194
    iget v5, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->numCols:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v1

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v4, 0x1

    .line 195
    iget-object v7, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v7, v7, v5

    aput-wide v7, v2, v4

    add-int/lit8 v4, v6, 0x1

    .line 196
    iget-object v7, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v5, v5, 0x1

    aget-wide v7, v7, v5

    aput-wide v7, v2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->decompose(Lorg/ejml/data/ZMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public decompose(Lorg/ejml/data/ZMatrixRMaj;)Z
    .locals 2

    .line 164
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->setExpectedMaxSize(II)V

    .line 166
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->convertToColumnMajor(Lorg/ejml/data/ZMatrixRMaj;)V

    const/4 p1, 0x0

    .line 168
    iput-boolean p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->error:Z

    .line 170
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->minLength:I

    if-ge p1, v0, :cond_0

    .line 171
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->householder(I)V

    .line 172
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->updateA(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 175
    :cond_0
    iget-boolean p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->error:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getGammas()[D
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->gammas:[D

    return-object v0
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->getQ(Lorg/ejml/data/ZMatrixRMaj;Z)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getQ(Lorg/ejml/data/ZMatrixRMaj;Z)Lorg/ejml/data/ZMatrixRMaj;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz p2, :cond_0

    .line 102
    iget v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->numRows:I

    iget v3, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->minLength:I

    invoke-static {v1, v2, v3}, Lorg/ejml/dense/row/decompose/UtilDecompositons_ZDRM;->checkIdentity(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object v1

    goto :goto_0

    .line 104
    :cond_0
    iget v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->numRows:I

    invoke-static {v1, v2, v2}, Lorg/ejml/dense/row/decompose/UtilDecompositons_ZDRM;->checkIdentity(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object v1

    .line 106
    :goto_0
    iget v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->minLength:I

    add-int/lit8 v2, v2, -0x1

    move v11, v2

    :goto_1
    if-ltz v11, :cond_1

    .line 107
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->dataQR:[[D

    aget-object v12, v2, v11

    mul-int/lit8 v13, v11, 0x2

    .line 109
    aget-wide v14, v12, v13

    add-int/lit8 v16, v13, 0x1

    .line 110
    aget-wide v17, v12, v16

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 112
    aput-wide v2, v12, v13

    const-wide/16 v2, 0x0

    .line 113
    aput-wide v2, v12, v16

    .line 114
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->gammas:[D

    aget-wide v5, v2, v11

    const/4 v4, 0x0

    .line 116
    iget v9, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->numRows:I

    iget-object v10, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->v:[D

    move-object v2, v1

    move-object v3, v12

    move v7, v11

    move v8, v11

    invoke-static/range {v2 .. v10}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->rank1UpdateMultR(Lorg/ejml/data/ZMatrixRMaj;[DIDIII[D)V

    .line 118
    aput-wide v14, v12, v13

    .line 119
    aput-wide v17, v12, v16

    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public getQR()[[D
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->dataQR:[[D

    return-object v0
.end method

.method public bridge synthetic getR(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->getR(Lorg/ejml/data/ZMatrixRMaj;Z)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getR(Lorg/ejml/data/ZMatrixRMaj;Z)Lorg/ejml/data/ZMatrixRMaj;
    .locals 11

    if-eqz p2, :cond_0

    .line 135
    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->minLength:I

    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->numCols:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_ZDRM;->checkZerosLT(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 137
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->numCols:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_ZDRM;->checkZerosLT(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    move v7, p2

    .line 139
    :goto_1
    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->numCols:I

    if-ge v7, v0, :cond_2

    .line 140
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->dataQR:[[D

    aget-object v8, v0, v7

    .line 141
    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->numRows:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v10, p2

    :goto_2
    if-gt v10, v9, :cond_1

    mul-int/lit8 v0, v10, 0x2

    .line 143
    aget-wide v3, v8, v0

    add-int/lit8 v0, v0, 0x1

    aget-wide v5, v8, v0

    move-object v0, p1

    move v1, v10

    move v2, v7

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/data/ZMatrixRMaj;->set(IIDD)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method protected householder(I)V
    .locals 13

    .line 217
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->dataQR:[[D

    aget-object v0, v0, p1

    .line 221
    iget v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->numRows:I

    sub-int/2addr v1, p1

    invoke-static {v0, p1, v1}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->findMax([DII)D

    move-result-wide v9

    const-wide/16 v1, 0x0

    cmpl-double v3, v9, v1

    if-nez v3, :cond_0

    .line 224
    iput-wide v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->gamma:D

    const/4 v0, 0x1

    .line 225
    iput-boolean v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->error:Z

    goto :goto_0

    .line 228
    :cond_0
    iget v2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->numRows:I

    iget-object v6, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    move v1, p1

    move-object v3, v0

    move-wide v4, v9

    invoke-static/range {v1 .. v6}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->computeTauGammaAndDivide(II[DDLorg/ejml/data/Complex_F64;)D

    move-result-wide v1

    iput-wide v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->gamma:D

    mul-int/lit8 v11, p1, 0x2

    .line 232
    aget-wide v1, v0, v11

    iget-object v3, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    iget-wide v3, v3, Lorg/ejml/data/Complex_F64;->real:D

    add-double v5, v1, v3

    add-int/lit8 v12, v11, 0x1

    .line 233
    aget-wide v1, v0, v12

    iget-object v3, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    iget-wide v3, v3, Lorg/ejml/data/Complex_F64;->imaginary:D

    add-double v7, v1, v3

    add-int/lit8 v1, p1, 0x1

    .line 234
    iget v2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->numRows:I

    const/4 v4, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v8}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->divideElements(II[DIDD)V

    .line 236
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    iget-wide v2, v1, Lorg/ejml/data/Complex_F64;->real:D

    mul-double/2addr v2, v9

    iput-wide v2, v1, Lorg/ejml/data/Complex_F64;->real:D

    .line 237
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    iget-wide v2, v1, Lorg/ejml/data/Complex_F64;->imaginary:D

    mul-double/2addr v2, v9

    iput-wide v2, v1, Lorg/ejml/data/Complex_F64;->imaginary:D

    .line 239
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    iget-wide v1, v1, Lorg/ejml/data/Complex_F64;->real:D

    neg-double v1, v1

    aput-wide v1, v0, v11

    .line 240
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    iget-wide v1, v1, Lorg/ejml/data/Complex_F64;->imaginary:D

    neg-double v1, v1

    aput-wide v1, v0, v12

    .line 243
    :goto_0
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->gammas:[D

    iget-wide v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->gamma:D

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

    .line 65
    iput p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->numCols:I

    .line 66
    iput p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->numRows:I

    .line 67
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->minLength:I

    .line 68
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 70
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->dataQR:[[D

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

    .line 71
    filled-new-array {p2, p1}, [I

    move-result-object p1

    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->dataQR:[[D

    mul-int/lit8 p1, v0, 0x2

    .line 72
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->v:[D

    .line 73
    iget p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->minLength:I

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->gammas:[D

    .line 76
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->v:[D

    array-length p1, p1

    mul-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_2

    .line 77
    new-array p1, v0, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->v:[D

    .line 79
    :cond_2
    iget-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->gammas:[D

    array-length p1, p1

    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->minLength:I

    if-ge p1, p2, :cond_3

    .line 80
    new-array p1, p2, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->gammas:[D

    :cond_3
    return-void
.end method

.method protected updateA(I)V
    .locals 26

    move-object/from16 v0, p0

    .line 256
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->dataQR:[[D

    aget-object v1, v1, p1

    add-int/lit8 v2, p1, 0x1

    move v3, v2

    .line 258
    :goto_0
    iget v4, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->numCols:I

    if-ge v3, v4, :cond_2

    .line 260
    iget-object v4, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->dataQR:[[D

    aget-object v4, v4, v3

    mul-int/lit8 v5, p1, 0x2

    .line 262
    aget-wide v6, v4, v5

    add-int/lit8 v8, v5, 0x1

    .line 263
    aget-wide v9, v4, v8

    move v11, v2

    .line 265
    :goto_1
    iget v12, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->numRows:I

    if-ge v11, v12, :cond_0

    mul-int/lit8 v12, v11, 0x2

    .line 266
    aget-wide v13, v1, v12

    add-int/lit8 v15, v12, 0x1

    move/from16 v16, v2

    move/from16 v17, v3

    .line 267
    aget-wide v2, v1, v15

    neg-double v2, v2

    .line 269
    aget-wide v18, v4, v12

    .line 270
    aget-wide v20, v4, v15

    mul-double v22, v13, v18

    mul-double v24, v2, v20

    sub-double v22, v22, v24

    add-double v6, v6, v22

    mul-double v2, v2, v18

    mul-double v13, v13, v20

    add-double/2addr v2, v13

    add-double/2addr v9, v2

    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v16

    move/from16 v3, v17

    goto :goto_1

    :cond_0
    move/from16 v16, v2

    move/from16 v17, v3

    .line 275
    iget-wide v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->gamma:D

    mul-double/2addr v6, v2

    mul-double/2addr v9, v2

    .line 278
    aget-wide v2, v4, v5

    sub-double/2addr v2, v6

    aput-wide v2, v4, v5

    .line 279
    aget-wide v2, v4, v8

    sub-double/2addr v2, v9

    aput-wide v2, v4, v8

    move/from16 v2, v16

    .line 281
    :goto_2
    iget v3, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->numRows:I

    if-ge v2, v3, :cond_1

    mul-int/lit8 v3, v2, 0x2

    .line 282
    aget-wide v11, v1, v3

    add-int/lit8 v5, v3, 0x1

    .line 283
    aget-wide v13, v1, v5

    .line 285
    aget-wide v18, v4, v3

    mul-double v20, v11, v6

    mul-double v22, v13, v9

    sub-double v20, v20, v22

    sub-double v18, v18, v20

    aput-wide v18, v4, v3

    .line 286
    aget-wide v18, v4, v5

    mul-double/2addr v13, v6

    mul-double/2addr v11, v9

    add-double/2addr v13, v11

    sub-double v18, v18, v13

    aput-wide v18, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v17, 0x1

    move/from16 v2, v16

    goto :goto_0

    :cond_2
    return-void
.end method
