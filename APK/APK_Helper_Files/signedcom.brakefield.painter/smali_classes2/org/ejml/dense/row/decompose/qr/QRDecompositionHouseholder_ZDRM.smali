.class public Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;
.super Ljava/lang/Object;
.source "QRDecompositionHouseholder_ZDRM.java"

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

.field protected dataQR:[D

.field protected error:Z

.field protected gammas:[D

.field protected minLength:I

.field protected numCols:I

.field protected numRows:I

.field protected tau:Lorg/ejml/data/Complex_F64;

.field protected u:[D

.field protected v:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lorg/ejml/data/Complex_F64;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F64;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    return-void
.end method


# virtual methods
.method protected commonSetup(Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 2

    .line 249
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->setExpectedMaxSize(II)V

    .line 251
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {v0, p1}, Lorg/ejml/data/ZMatrixRMaj;->set(Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 53
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->decompose(Lorg/ejml/data/ZMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public decompose(Lorg/ejml/data/ZMatrixRMaj;)Z
    .locals 1

    .line 180
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->commonSetup(Lorg/ejml/data/ZMatrixRMaj;)V

    const/4 p1, 0x0

    .line 182
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->minLength:I

    if-ge p1, v0, :cond_0

    .line 183
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->householder(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 186
    :cond_0
    iget-boolean p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->error:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getGammas()[D
    .locals 1

    .line 255
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->gammas:[D

    return-object v0
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 53
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->getQ(Lorg/ejml/data/ZMatrixRMaj;Z)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getQ(Lorg/ejml/data/ZMatrixRMaj;Z)Lorg/ejml/data/ZMatrixRMaj;
    .locals 9

    if-eqz p2, :cond_0

    .line 129
    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->minLength:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_ZDRM;->checkIdentity(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 131
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->numRows:I

    invoke-static {p1, p2, p2}, Lorg/ejml/dense/row/decompose/UtilDecompositons_ZDRM;->checkIdentity(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    .line 133
    :goto_0
    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->minLength:I

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_1

    .line 134
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget v2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->numRows:I

    iget-object v4, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->u:[D

    const/4 v5, 0x0

    move v1, p2

    move v3, p2

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->extractHouseholderColumn(Lorg/ejml/data/ZMatrixRMaj;III[DI)V

    .line 135
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->u:[D

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->gammas:[D

    aget-wide v3, v0, p2

    iget v7, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->numRows:I

    iget-object v8, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->v:[D

    move-object v0, p1

    move v5, p2

    move v6, p2

    invoke-static/range {v0 .. v8}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->rank1UpdateMultR(Lorg/ejml/data/ZMatrixRMaj;[DIDIII[D)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public getQR()Lorg/ejml/data/ZMatrixRMaj;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    return-object v0
.end method

.method public bridge synthetic getR(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 53
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->getR(Lorg/ejml/data/ZMatrixRMaj;Z)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getR(Lorg/ejml/data/ZMatrixRMaj;Z)Lorg/ejml/data/ZMatrixRMaj;
    .locals 8

    if-eqz p2, :cond_0

    .line 149
    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->minLength:I

    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->numCols:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_ZDRM;->checkZerosLT(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 151
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->numRows:I

    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->numCols:I

    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_ZDRM;->checkZerosLT(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    .line 153
    :goto_1
    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->minLength:I

    if-ge p2, v0, :cond_2

    move v7, p2

    .line 154
    :goto_2
    iget v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->numCols:I

    if-ge v7, v0, :cond_1

    .line 155
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {v0, p2, v7}, Lorg/ejml/data/ZMatrixRMaj;->getIndex(II)I

    move-result v0

    .line 156
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v3, v1, v0

    .line 157
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v0, v0, 0x1

    aget-wide v5, v1, v0

    move-object v0, p1

    move v1, p2

    move v2, v7

    .line 159
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
    .locals 24

    move-object/from16 v0, p0

    move/from16 v10, p1

    .line 211
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget v3, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->numRows:I

    iget-object v5, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->u:[D

    const/4 v6, 0x0

    move/from16 v2, p1

    move/from16 v4, p1

    invoke-static/range {v1 .. v6}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->extractColumnAndMax(Lorg/ejml/data/ZMatrixRMaj;III[DI)D

    move-result-wide v11

    const-wide/16 v7, 0x0

    cmpg-double v1, v11, v7

    const/4 v13, 0x1

    if-gtz v1, :cond_0

    .line 214
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->gammas:[D

    aput-wide v7, v1, v10

    .line 215
    iput-boolean v13, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->error:Z

    goto/16 :goto_1

    .line 217
    :cond_0
    iget v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->numRows:I

    iget-object v3, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->u:[D

    iget-object v6, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    move/from16 v1, p1

    move-wide v4, v11

    invoke-static/range {v1 .. v6}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->computeTauGammaAndDivide(II[DDLorg/ejml/data/Complex_F64;)D

    move-result-wide v4

    .line 218
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->gammas:[D

    aput-wide v4, v1, v10

    .line 221
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->u:[D

    mul-int/lit8 v2, v10, 0x2

    aget-wide v14, v1, v2

    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    iget-wide v7, v1, Lorg/ejml/data/Complex_F64;->real:D

    add-double v20, v14, v7

    .line 222
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->u:[D

    add-int/lit8 v3, v2, 0x1

    aget-wide v6, v1, v3

    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    iget-wide v8, v1, Lorg/ejml/data/Complex_F64;->imaginary:D

    add-double v22, v6, v8

    add-int/lit8 v6, v10, 0x1

    .line 223
    iget v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->numRows:I

    iget-object v7, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->u:[D

    const/16 v19, 0x0

    move/from16 v16, v6

    move/from16 v17, v1

    move-object/from16 v18, v7

    invoke-static/range {v16 .. v23}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->divideElements(II[DIDD)V

    move v1, v6

    .line 226
    :goto_0
    iget v8, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->numRows:I

    if-ge v1, v8, :cond_1

    .line 227
    iget-object v7, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->dataQR:[D

    iget v8, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->numCols:I

    mul-int v9, v1, v8

    add-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x2

    iget-object v14, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->u:[D

    mul-int/lit8 v15, v1, 0x2

    aget-wide v16, v14, v15

    aput-wide v16, v7, v9

    mul-int/2addr v8, v1

    add-int/2addr v8, v10

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v13

    add-int/2addr v15, v13

    .line 228
    aget-wide v14, v14, v15

    aput-wide v14, v7, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    :cond_1
    iget-object v7, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->u:[D

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    aput-wide v14, v7, v2

    const-wide/16 v1, 0x0

    .line 232
    aput-wide v1, v7, v3

    .line 234
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    const/4 v3, 0x0

    iget-object v9, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->v:[D

    move-object v2, v7

    move/from16 v7, p1

    invoke-static/range {v1 .. v9}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->rank1UpdateMultR(Lorg/ejml/data/ZMatrixRMaj;[DIDIII[D)V

    .line 238
    iget v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->numCols:I

    if-ge v10, v1, :cond_2

    .line 239
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->dataQR:[D

    mul-int/2addr v1, v10

    add-int/2addr v1, v10

    mul-int/lit8 v1, v1, 0x2

    iget-object v3, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    iget-wide v3, v3, Lorg/ejml/data/Complex_F64;->real:D

    neg-double v3, v3

    mul-double/2addr v3, v11

    aput-wide v3, v2, v1

    .line 240
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->dataQR:[D

    iget v2, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->numCols:I

    mul-int/2addr v2, v10

    add-int/2addr v2, v10

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v13

    iget-object v3, v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    iget-wide v3, v3, Lorg/ejml/data/Complex_F64;->imaginary:D

    neg-double v3, v3

    mul-double/2addr v3, v11

    aput-wide v3, v1, v2

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

    .line 82
    iput-boolean v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->error:Z

    .line 84
    iput p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->numCols:I

    .line 85
    iput p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->numRows:I

    .line 86
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->minLength:I

    .line 87
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 89
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {v1, p1, p2}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    iput-object v1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    mul-int/lit8 p1, v0, 0x2

    .line 91
    new-array p2, p1, [D

    iput-object p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->u:[D

    .line 92
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->v:[D

    .line 93
    iget p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->minLength:I

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->gammas:[D

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v1, p1, p2}, Lorg/ejml/data/ZMatrixRMaj;->reshape(II)V

    .line 98
    :goto_0
    iget-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object p1, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->dataQR:[D

    .line 100
    iget-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->u:[D

    array-length p1, p1

    mul-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_1

    .line 101
    new-array p1, v0, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->u:[D

    .line 102
    new-array p1, v0, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->v:[D

    .line 105
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->gammas:[D

    array-length p1, p1

    iget p2, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->minLength:I

    if-ge p1, p2, :cond_2

    .line 106
    new-array p1, p2, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->gammas:[D

    :cond_2
    return-void
.end method
