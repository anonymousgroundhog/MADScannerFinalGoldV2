.class public Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;
.super Ljava/lang/Object;
.source "BidiagonalDecompositionRow_FDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32<",
        "Lorg/ejml/data/FMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field private UBV:Lorg/ejml/data/FMatrixRMaj;

.field protected b:[F

.field private gammasU:[F

.field private gammasV:[F

.field private m:I

.field private min:I

.field private n:I

.field protected u:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 71
    invoke-direct {p0, v0}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p1}, Lorg/ejml/data/FMatrixRMaj;-><init>(I)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->UBV:Lorg/ejml/data/FMatrixRMaj;

    .line 64
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->gammasU:[F

    .line 65
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->gammasV:[F

    .line 66
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->b:[F

    .line 67
    new-array p1, p1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->u:[F

    return-void
.end method

.method private _decompose()Z
    .locals 2

    const/4 v0, 0x0

    .line 290
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->min:I

    if-ge v0, v1, :cond_0

    .line 292
    invoke-virtual {p0, v0}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->computeU(I)V

    .line 295
    invoke-virtual {p0, v0}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->computeV(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static handleB(Lorg/ejml/data/FMatrixRMaj;ZIII)Lorg/ejml/data/FMatrixRMaj;
    .locals 2

    if-le p3, p2, :cond_0

    add-int/lit8 v0, p4, 0x1

    goto :goto_0

    :cond_0
    move v0, p4

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-nez p0, :cond_1

    .line 160
    new-instance p0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p0, p4, v0}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_1

    .line 162
    :cond_1
    invoke-virtual {p0, p4, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    .line 163
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->zero()V

    goto :goto_1

    :cond_2
    if-nez p0, :cond_3

    .line 167
    new-instance p0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p0, p2, p3}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_1

    .line 169
    :cond_3
    invoke-virtual {p0, p2, p3, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    .line 170
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->zero()V

    :goto_1
    return-object p0
.end method

.method public static handleU(Lorg/ejml/data/FMatrixRMaj;ZZIII)Lorg/ejml/data/FMatrixRMaj;
    .locals 0

    const/4 p4, 0x0

    if-eqz p2, :cond_3

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    .line 211
    new-instance p0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p0, p5, p3}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p0, p5, p3, p4}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    .line 217
    new-instance p0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p0, p3, p5}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 219
    :cond_2
    invoke-virtual {p0, p3, p5, p4}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    goto :goto_0

    :cond_3
    if-nez p0, :cond_4

    .line 223
    new-instance p0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p0, p3, p3}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 225
    :cond_4
    invoke-virtual {p0, p3, p3, p4}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    :goto_0
    return-object p0
.end method

.method public static handleV(Lorg/ejml/data/FMatrixRMaj;ZZIII)Lorg/ejml/data/FMatrixRMaj;
    .locals 0

    if-le p4, p3, :cond_0

    add-int/lit8 p5, p5, 0x1

    :cond_0
    const/4 p3, 0x0

    if-eqz p2, :cond_4

    if-eqz p1, :cond_2

    if-nez p0, :cond_1

    .line 267
    new-instance p0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p0, p5, p4}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 269
    :cond_1
    invoke-virtual {p0, p5, p4, p3}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    .line 272
    new-instance p0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p0, p4, p5}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 274
    :cond_3
    invoke-virtual {p0, p4, p5, p3}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    goto :goto_0

    :cond_4
    if-nez p0, :cond_5

    .line 278
    new-instance p0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p0, p4, p4}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 280
    :cond_5
    invoke-virtual {p0, p4, p4, p3}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method protected computeU(I)V
    .locals 16

    move-object/from16 v6, p0

    move/from16 v14, p1

    .line 304
    iget-object v0, v6, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->UBV:Lorg/ejml/data/FMatrixRMaj;

    iget-object v15, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v0, 0x0

    move v5, v0

    move v1, v14

    .line 310
    :goto_0
    iget v2, v6, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->m:I

    if-ge v1, v2, :cond_1

    .line 313
    iget-object v2, v6, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->u:[F

    iget v3, v6, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->n:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v14

    aget v3, v15, v3

    aput v3, v2, v1

    .line 314
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v3, v2, v5

    if-lez v3, :cond_0

    move v5, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    cmpl-float v1, v5, v0

    if-lez v1, :cond_2

    .line 321
    iget-object v0, v6, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->u:[F

    invoke-static {v14, v2, v0, v5}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->computeTauAndDivide(II[FF)F

    move-result v4

    .line 325
    iget-object v10, v6, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->u:[F

    aget v0, v10, v14

    add-float/2addr v0, v4

    add-int/lit8 v3, v14, 0x1

    .line 326
    iget v8, v6, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->m:I

    iget v9, v6, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->n:I

    move v7, v3

    move-object v11, v15

    move/from16 v12, p1

    move v13, v0

    invoke-static/range {v7 .. v13}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->divideElements_Bcol(III[F[FIF)V

    .line 327
    iget-object v1, v6, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->u:[F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v14

    div-float v2, v0, v4

    .line 330
    iget-object v0, v6, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->gammasU:[F

    aput v2, v0, v14

    .line 333
    iget-object v1, v6, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->UBV:Lorg/ejml/data/FMatrixRMaj;

    iget v7, v6, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->m:I

    move-object/from16 v0, p0

    move v8, v4

    move/from16 v4, p1

    move v9, v5

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;FIII)V

    .line 335
    iget v0, v6, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->n:I

    mul-int/2addr v0, v14

    add-int/2addr v0, v14

    neg-float v1, v8

    mul-float/2addr v1, v9

    aput v1, v15, v0

    goto :goto_1

    .line 337
    :cond_2
    iget-object v1, v6, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->gammasU:[F

    aput v0, v1, v14

    :goto_1
    return-void
.end method

.method protected computeV(I)V
    .locals 16

    move-object/from16 v6, p0

    .line 350
    iget-object v0, v6, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->UBV:Lorg/ejml/data/FMatrixRMaj;

    iget-object v13, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    .line 352
    iget v0, v6, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->n:I

    mul-int v11, p1, v0

    add-int v1, v11, p1

    add-int/lit8 v14, v1, 0x1

    sub-int v0, v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 356
    invoke-static {v13, v14, v0}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->findMax([FII)F

    move-result v15

    const/4 v0, 0x0

    cmpl-float v1, v15, v0

    if-lez v1, :cond_0

    add-int/lit8 v4, p1, 0x1

    .line 361
    iget v0, v6, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->n:I

    invoke-static {v4, v0, v13, v11, v15}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->computeTauAndDivide(II[FIF)F

    move-result v5

    .line 364
    aget v0, v13, v14

    add-float/2addr v0, v5

    add-int/lit8 v7, p1, 0x2

    .line 365
    iget v8, v6, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->n:I

    iget-object v9, v6, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->u:[F

    move-object v10, v13

    move v12, v0

    invoke-static/range {v7 .. v12}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->divideElements_Brow(II[F[FIF)V

    .line 367
    iget-object v1, v6, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->u:[F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v4

    div-float v2, v0, v5

    .line 370
    iget-object v0, v6, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->gammasV:[F

    aput v2, v0, p1

    .line 375
    iget-object v1, v6, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->UBV:Lorg/ejml/data/FMatrixRMaj;

    iget v7, v6, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->n:I

    move-object/from16 v0, p0

    move v3, v4

    move v8, v5

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->rank1UpdateMultL(Lorg/ejml/data/FMatrixRMaj;FIII)V

    neg-float v0, v8

    mul-float/2addr v0, v15

    .line 377
    aput v0, v13, v14

    goto :goto_0

    .line 379
    :cond_0
    iget-object v1, v6, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->gammasV:[F

    aput v0, v1, p1

    :goto_0
    return-void
.end method

.method public decompose(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->init(Lorg/ejml/data/FMatrixRMaj;)V

    .line 84
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->_decompose()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 36
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getB(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;
    .locals 3

    .line 139
    iget v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->m:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->n:I

    iget v2, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->min:I

    invoke-static {p1, p2, v0, v1, v2}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->handleB(Lorg/ejml/data/FMatrixRMaj;ZIII)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    .line 143
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->UBV:Lorg/ejml/data/FMatrixRMaj;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result p2

    invoke-virtual {p1, v0, v0, p2}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    const/4 p2, 0x1

    .line 144
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->min:I

    if-ge p2, v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->UBV:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, p2, p2}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v0

    invoke-virtual {p1, p2, p2, v0}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v0, p2, -0x1

    .line 146
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->UBV:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v1, v0, p2}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v1

    invoke-virtual {p1, v0, p2, v1}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 148
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->n:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->m:I

    if-le p2, v1, :cond_1

    add-int/lit8 p2, v0, -0x1

    .line 149
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->UBV:Lorg/ejml/data/FMatrixRMaj;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    :cond_1
    return-object p1
.end method

.method public bridge synthetic getB(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 36
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->getB(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getDiagonal([F[F)V
    .locals 3

    .line 124
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->UBV:Lorg/ejml/data/FMatrixRMaj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ejml/data/FMatrixRMaj;->get(I)F

    move-result v0

    aput v0, p1, v1

    const/4 v0, 0x1

    .line 125
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->n:I

    if-ge v0, v1, :cond_0

    .line 126
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->UBV:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v1, v0, v0}, Lorg/ejml/data/FMatrixRMaj;->unsafe_get(II)F

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v1, v0, -0x1

    .line 127
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->UBV:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v2, v1, v0}, Lorg/ejml/data/FMatrixRMaj;->unsafe_get(II)F

    move-result v2

    aput v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getGammasU()[F
    .locals 1

    .line 387
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->gammasU:[F

    return-object v0
.end method

.method public getGammasV()[F
    .locals 1

    .line 394
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->gammasV:[F

    return-object v0
.end method

.method public getU(Lorg/ejml/data/FMatrixRMaj;ZZ)Lorg/ejml/data/FMatrixRMaj;
    .locals 12

    .line 184
    iget v3, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->m:I

    iget v4, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->n:I

    iget v5, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->min:I

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->handleU(Lorg/ejml/data/FMatrixRMaj;ZZIII)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    .line 185
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_FDRM;->setIdentity(Lorg/ejml/data/FMatrix1Row;)V

    const/4 p3, 0x0

    .line 187
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->m:I

    if-ge p3, v0, :cond_0

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->u:[F

    const/4 v1, 0x0

    aput v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 189
    :cond_0
    iget p3, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->min:I

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_3

    .line 190
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->u:[F

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, p3

    add-int/lit8 v0, p3, 0x1

    .line 191
    :goto_2
    iget v11, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->m:I

    if-ge v0, v11, :cond_1

    .line 192
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->u:[F

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->UBV:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v2, v0, p3}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    .line 196
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->gammasU:[F

    aget v8, v0, p3

    move-object v6, p0

    move-object v7, p1

    move v9, p3

    move v10, p3

    invoke-virtual/range {v6 .. v11}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->rank1UpdateMultL(Lorg/ejml/data/FMatrixRMaj;FIII)V

    goto :goto_3

    .line 198
    :cond_2
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->gammasU:[F

    aget v8, v0, p3

    move-object v6, p0

    move-object v7, p1

    move v9, p3

    move v10, p3

    invoke-virtual/range {v6 .. v11}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;FIII)V

    :goto_3
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public bridge synthetic getU(Lorg/ejml/data/Matrix;ZZ)Lorg/ejml/data/Matrix;
    .locals 0

    .line 36
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->getU(Lorg/ejml/data/FMatrixRMaj;ZZ)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getUBV()Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->UBV:Lorg/ejml/data/FMatrixRMaj;

    return-object v0
.end method

.method public getV(Lorg/ejml/data/FMatrixRMaj;ZZ)Lorg/ejml/data/FMatrixRMaj;
    .locals 12

    .line 239
    iget v3, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->m:I

    iget v4, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->n:I

    iget v5, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->min:I

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->handleV(Lorg/ejml/data/FMatrixRMaj;ZZIII)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    .line 240
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_FDRM;->setIdentity(Lorg/ejml/data/FMatrix1Row;)V

    .line 245
    iget p3, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->min:I

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ltz p3, :cond_2

    .line 246
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->u:[F

    add-int/lit8 v10, p3, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, v10

    add-int/lit8 v0, p3, 0x2

    .line 247
    :goto_1
    iget v11, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->n:I

    if-ge v0, v11, :cond_0

    .line 248
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->u:[F

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->UBV:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v2, p3, v0}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 251
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->gammasV:[F

    aget v8, v0, p3

    move-object v6, p0

    move-object v7, p1

    move v9, v10

    invoke-virtual/range {v6 .. v11}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->rank1UpdateMultL(Lorg/ejml/data/FMatrixRMaj;FIII)V

    goto :goto_2

    .line 253
    :cond_1
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->gammasV:[F

    aget v8, v0, p3

    move-object v6, p0

    move-object v7, p1

    move v9, v10

    invoke-virtual/range {v6 .. v11}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;FIII)V

    :goto_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public bridge synthetic getV(Lorg/ejml/data/Matrix;ZZ)Lorg/ejml/data/Matrix;
    .locals 0

    .line 36
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->getV(Lorg/ejml/data/FMatrixRMaj;ZZ)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method protected init(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 1

    .line 93
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->UBV:Lorg/ejml/data/FMatrixRMaj;

    .line 95
    iget p1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iput p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->m:I

    .line 96
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->UBV:Lorg/ejml/data/FMatrixRMaj;

    iget p1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iput p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->n:I

    .line 98
    iget v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->m:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->min:I

    .line 99
    iget p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->m:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->n:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 101
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->b:[F

    array-length v0, v0

    add-int/lit8 p1, p1, 0x1

    if-ge v0, p1, :cond_0

    .line 102
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->b:[F

    .line 103
    new-array p1, p1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->u:[F

    .line 105
    :cond_0
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->gammasU:[F

    array-length p1, p1

    iget v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->m:I

    if-ge p1, v0, :cond_1

    .line 106
    new-array p1, v0, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->gammasU:[F

    .line 108
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->gammasV:[F

    array-length p1, p1

    iget v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->n:I

    if-ge p1, v0, :cond_2

    .line 109
    new-array p1, v0, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->gammasV:[F

    :cond_2
    return-void
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected rank1UpdateMultL(Lorg/ejml/data/FMatrixRMaj;FIII)V
    .locals 6

    .line 342
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->u:[F

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->rank1UpdateMultL(Lorg/ejml/data/FMatrixRMaj;[FFIII)V

    return-void
.end method

.method protected rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;FIII)V
    .locals 7

    .line 346
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->u:[F

    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->b:[F

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;[FFIII[F)V

    return-void
.end method
