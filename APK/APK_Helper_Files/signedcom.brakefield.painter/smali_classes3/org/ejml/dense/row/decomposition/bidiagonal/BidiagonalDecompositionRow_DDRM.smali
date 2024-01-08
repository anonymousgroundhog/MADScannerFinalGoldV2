.class public Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;
.super Ljava/lang/Object;
.source "BidiagonalDecompositionRow_DDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64<",
        "Lorg/ejml/data/DMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field private UBV:Lorg/ejml/data/DMatrixRMaj;

.field protected b:[D

.field private gammasU:[D

.field private gammasV:[D

.field private m:I

.field private min:I

.field private n:I

.field protected u:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 69
    invoke-direct {p0, v0}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, p1}, Lorg/ejml/data/DMatrixRMaj;-><init>(I)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->UBV:Lorg/ejml/data/DMatrixRMaj;

    .line 62
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->gammasU:[D

    .line 63
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->gammasV:[D

    .line 64
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->b:[D

    .line 65
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->u:[D

    return-void
.end method

.method private _decompose()Z
    .locals 2

    const/4 v0, 0x0

    .line 288
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->min:I

    if-ge v0, v1, :cond_0

    .line 290
    invoke-virtual {p0, v0}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->computeU(I)V

    .line 293
    invoke-virtual {p0, v0}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->computeV(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static handleB(Lorg/ejml/data/DMatrixRMaj;ZIII)Lorg/ejml/data/DMatrixRMaj;
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

    .line 158
    new-instance p0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p0, p4, v0}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_1

    .line 160
    :cond_1
    invoke-virtual {p0, p4, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    .line 161
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->zero()V

    goto :goto_1

    :cond_2
    if-nez p0, :cond_3

    .line 165
    new-instance p0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p0, p2, p3}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_1

    .line 167
    :cond_3
    invoke-virtual {p0, p2, p3, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    .line 168
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->zero()V

    :goto_1
    return-object p0
.end method

.method public static handleU(Lorg/ejml/data/DMatrixRMaj;ZZIII)Lorg/ejml/data/DMatrixRMaj;
    .locals 0

    const/4 p4, 0x0

    if-eqz p2, :cond_3

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    .line 209
    new-instance p0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p0, p5, p3}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p0, p5, p3, p4}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    .line 215
    new-instance p0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p0, p3, p5}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {p0, p3, p5, p4}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    goto :goto_0

    :cond_3
    if-nez p0, :cond_4

    .line 221
    new-instance p0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p0, p3, p3}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 223
    :cond_4
    invoke-virtual {p0, p3, p3, p4}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    :goto_0
    return-object p0
.end method

.method public static handleV(Lorg/ejml/data/DMatrixRMaj;ZZIII)Lorg/ejml/data/DMatrixRMaj;
    .locals 0

    if-le p4, p3, :cond_0

    add-int/lit8 p5, p5, 0x1

    :cond_0
    const/4 p3, 0x0

    if-eqz p2, :cond_4

    if-eqz p1, :cond_2

    if-nez p0, :cond_1

    .line 265
    new-instance p0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p0, p5, p4}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {p0, p5, p4, p3}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    .line 270
    new-instance p0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p0, p4, p5}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 272
    :cond_3
    invoke-virtual {p0, p4, p5, p3}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    goto :goto_0

    :cond_4
    if-nez p0, :cond_5

    .line 276
    new-instance p0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p0, p4, p4}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 278
    :cond_5
    invoke-virtual {p0, p4, p4, p3}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method protected computeU(I)V
    .locals 19

    move-object/from16 v7, p0

    move/from16 v6, p1

    .line 302
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->UBV:Lorg/ejml/data/DMatrixRMaj;

    iget-object v5, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const-wide/16 v0, 0x0

    move-wide v3, v0

    move v2, v6

    .line 308
    :goto_0
    iget v8, v7, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->m:I

    if-ge v2, v8, :cond_1

    .line 311
    iget-object v8, v7, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->u:[D

    iget v9, v7, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->n:I

    mul-int/2addr v9, v2

    add-int/2addr v9, v6

    aget-wide v9, v5, v9

    aput-wide v9, v8, v2

    .line 312
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v10, v8, v3

    if-lez v10, :cond_0

    move-wide v3, v8

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    cmpl-double v2, v3, v0

    if-lez v2, :cond_2

    .line 319
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->u:[D

    invoke-static {v6, v8, v0, v3, v4}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->computeTauAndDivide(II[DD)D

    move-result-wide v1

    .line 323
    iget-object v11, v7, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->u:[D

    aget-wide v8, v11, v6

    add-double v16, v8, v1

    add-int/lit8 v18, v6, 0x1

    .line 324
    iget v9, v7, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->m:I

    iget v10, v7, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->n:I

    move/from16 v8, v18

    move-object v12, v5

    move/from16 v13, p1

    move-wide/from16 v14, v16

    invoke-static/range {v8 .. v15}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->divideElements_Bcol(III[D[DID)V

    .line 325
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->u:[D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v0, v6

    div-double v8, v16, v1

    .line 328
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->gammasU:[D

    aput-wide v8, v0, v6

    .line 331
    iget-object v10, v7, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->UBV:Lorg/ejml/data/DMatrixRMaj;

    iget v11, v7, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->m:I

    move-object/from16 v0, p0

    move-wide v12, v1

    move-object v1, v10

    move-wide v14, v3

    move-wide v2, v8

    move/from16 v4, v18

    move-object v8, v5

    move/from16 v5, p1

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;DIII)V

    .line 333
    iget v0, v7, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->n:I

    mul-int v0, v0, p1

    add-int v0, v0, p1

    neg-double v1, v12

    mul-double/2addr v1, v14

    aput-wide v1, v8, v0

    goto :goto_1

    .line 335
    :cond_2
    iget-object v2, v7, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->gammasU:[D

    aput-wide v0, v2, p1

    :goto_1
    return-void
.end method

.method protected computeV(I)V
    .locals 20

    move-object/from16 v7, p0

    .line 348
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->UBV:Lorg/ejml/data/DMatrixRMaj;

    iget-object v15, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    .line 350
    iget v0, v7, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->n:I

    mul-int v12, p1, v0

    add-int v1, v12, p1

    add-int/lit8 v13, v1, 0x1

    sub-int v0, v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 354
    invoke-static {v15, v13, v0}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->findMax([DII)D

    move-result-wide v16

    const-wide/16 v0, 0x0

    cmpl-double v2, v16, v0

    if-lez v2, :cond_0

    add-int/lit8 v18, p1, 0x1

    .line 359
    iget v2, v7, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->n:I

    move/from16 v1, v18

    move-object v3, v15

    move v4, v12

    move-wide/from16 v5, v16

    invoke-static/range {v1 .. v6}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->computeTauAndDivide(II[DID)D

    move-result-wide v5

    .line 362
    aget-wide v0, v15, v13

    add-double/2addr v0, v5

    add-int/lit8 v8, p1, 0x2

    .line 363
    iget v9, v7, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->n:I

    iget-object v10, v7, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->u:[D

    move-object v11, v15

    move/from16 v19, v13

    move-wide v13, v0

    invoke-static/range {v8 .. v14}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->divideElements_Brow(II[D[DID)V

    .line 365
    iget-object v2, v7, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->u:[D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    aput-wide v3, v2, v18

    div-double v2, v0, v5

    .line 368
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->gammasV:[D

    aput-wide v2, v0, p1

    .line 373
    iget-object v1, v7, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->UBV:Lorg/ejml/data/DMatrixRMaj;

    iget v8, v7, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->n:I

    move-object/from16 v0, p0

    move/from16 v4, v18

    move-wide v9, v5

    move/from16 v5, v18

    move v6, v8

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->rank1UpdateMultL(Lorg/ejml/data/DMatrixRMaj;DIII)V

    neg-double v0, v9

    mul-double v0, v0, v16

    .line 375
    aput-wide v0, v15, v19

    goto :goto_0

    .line 377
    :cond_0
    iget-object v2, v7, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->gammasV:[D

    aput-wide v0, v2, p1

    :goto_0
    return-void
.end method

.method public decompose(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 0

    .line 81
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->init(Lorg/ejml/data/DMatrixRMaj;)V

    .line 82
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->_decompose()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 35
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getB(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;
    .locals 3

    .line 137
    iget v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->m:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->n:I

    iget v2, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->min:I

    invoke-static {p1, p2, v0, v1, v2}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->handleB(Lorg/ejml/data/DMatrixRMaj;ZIII)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    .line 141
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->UBV:Lorg/ejml/data/DMatrixRMaj;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v1

    invoke-virtual {p1, v0, v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    const/4 p2, 0x1

    .line 142
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->min:I

    if-ge p2, v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->UBV:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, p2, p2}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v0

    invoke-virtual {p1, p2, p2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v0, p2, -0x1

    .line 144
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->UBV:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v1, v0, p2}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v1

    invoke-virtual {p1, v0, p2, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 146
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->n:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->m:I

    if-le p2, v1, :cond_1

    add-int/lit8 p2, v0, -0x1

    .line 147
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->UBV:Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v1

    invoke-virtual {p1, p2, v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    :cond_1
    return-object p1
.end method

.method public bridge synthetic getB(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 35
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->getB(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getDiagonal([D[D)V
    .locals 4

    .line 122
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->UBV:Lorg/ejml/data/DMatrixRMaj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ejml/data/DMatrixRMaj;->get(I)D

    move-result-wide v2

    aput-wide v2, p1, v1

    const/4 v0, 0x1

    .line 123
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->n:I

    if-ge v0, v1, :cond_0

    .line 124
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->UBV:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v1, v0, v0}, Lorg/ejml/data/DMatrixRMaj;->unsafe_get(II)D

    move-result-wide v1

    aput-wide v1, p1, v0

    add-int/lit8 v1, v0, -0x1

    .line 125
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->UBV:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v2, v1, v0}, Lorg/ejml/data/DMatrixRMaj;->unsafe_get(II)D

    move-result-wide v2

    aput-wide v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getGammasU()[D
    .locals 1

    .line 385
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->gammasU:[D

    return-object v0
.end method

.method public getGammasV()[D
    .locals 1

    .line 392
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->gammasV:[D

    return-object v0
.end method

.method public getU(Lorg/ejml/data/DMatrixRMaj;ZZ)Lorg/ejml/data/DMatrixRMaj;
    .locals 9

    .line 182
    iget v3, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->m:I

    iget v4, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->n:I

    iget v5, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->min:I

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->handleU(Lorg/ejml/data/DMatrixRMaj;ZZIII)Lorg/ejml/data/DMatrixRMaj;

    move-result-object v7

    .line 183
    invoke-static {v7}, Lorg/ejml/dense/row/CommonOps_DDRM;->setIdentity(Lorg/ejml/data/DMatrix1Row;)V

    const/4 v0, 0x0

    .line 185
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->m:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->u:[D

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    iget v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->min:I

    add-int/lit8 v0, v0, -0x1

    move v8, v0

    :goto_1
    if-ltz v8, :cond_3

    .line 188
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->u:[D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    aput-wide v1, v0, v8

    add-int/lit8 v0, v8, 0x1

    .line 189
    :goto_2
    iget v6, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->m:I

    if-ge v0, v6, :cond_1

    .line 190
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->u:[D

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->UBV:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v2, v0, v8}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    .line 194
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->gammasU:[D

    aget-wide v2, v0, v8

    move-object v0, p0

    move-object v1, v7

    move v4, v8

    move v5, v8

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->rank1UpdateMultL(Lorg/ejml/data/DMatrixRMaj;DIII)V

    goto :goto_3

    .line 196
    :cond_2
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->gammasU:[D

    aget-wide v2, v0, v8

    move-object v0, p0

    move-object v1, v7

    move v4, v8

    move v5, v8

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;DIII)V

    :goto_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_3
    return-object v7
.end method

.method public bridge synthetic getU(Lorg/ejml/data/Matrix;ZZ)Lorg/ejml/data/Matrix;
    .locals 0

    .line 35
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->getU(Lorg/ejml/data/DMatrixRMaj;ZZ)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getUBV()Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->UBV:Lorg/ejml/data/DMatrixRMaj;

    return-object v0
.end method

.method public getV(Lorg/ejml/data/DMatrixRMaj;ZZ)Lorg/ejml/data/DMatrixRMaj;
    .locals 9

    .line 237
    iget v3, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->m:I

    iget v4, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->n:I

    iget v5, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->min:I

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->handleV(Lorg/ejml/data/DMatrixRMaj;ZZIII)Lorg/ejml/data/DMatrixRMaj;

    move-result-object v7

    .line 238
    invoke-static {v7}, Lorg/ejml/dense/row/CommonOps_DDRM;->setIdentity(Lorg/ejml/data/DMatrix1Row;)V

    .line 243
    iget v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->min:I

    add-int/lit8 v0, v0, -0x1

    move v8, v0

    :goto_0
    if-ltz v8, :cond_2

    .line 244
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->u:[D

    add-int/lit8 v5, v8, 0x1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    aput-wide v1, v0, v5

    add-int/lit8 v0, v8, 0x2

    .line 245
    :goto_1
    iget v6, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->n:I

    if-ge v0, v6, :cond_0

    .line 246
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->u:[D

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->UBV:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v2, v8, v0}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 249
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->gammasV:[D

    aget-wide v2, v0, v8

    move-object v0, p0

    move-object v1, v7

    move v4, v5

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->rank1UpdateMultL(Lorg/ejml/data/DMatrixRMaj;DIII)V

    goto :goto_2

    .line 251
    :cond_1
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->gammasV:[D

    aget-wide v2, v0, v8

    move-object v0, p0

    move-object v1, v7

    move v4, v5

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;DIII)V

    :goto_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_2
    return-object v7
.end method

.method public bridge synthetic getV(Lorg/ejml/data/Matrix;ZZ)Lorg/ejml/data/Matrix;
    .locals 0

    .line 35
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->getV(Lorg/ejml/data/DMatrixRMaj;ZZ)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method protected init(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 1

    .line 91
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->UBV:Lorg/ejml/data/DMatrixRMaj;

    .line 93
    iget p1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iput p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->m:I

    .line 94
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->UBV:Lorg/ejml/data/DMatrixRMaj;

    iget p1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iput p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->n:I

    .line 96
    iget v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->m:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->min:I

    .line 97
    iget p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->m:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->n:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 99
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->b:[D

    array-length v0, v0

    add-int/lit8 p1, p1, 0x1

    if-ge v0, p1, :cond_0

    .line 100
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->b:[D

    .line 101
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->u:[D

    .line 103
    :cond_0
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->gammasU:[D

    array-length p1, p1

    iget v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->m:I

    if-ge p1, v0, :cond_1

    .line 104
    new-array p1, v0, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->gammasU:[D

    .line 106
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->gammasV:[D

    array-length p1, p1

    iget v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->n:I

    if-ge p1, v0, :cond_2

    .line 107
    new-array p1, v0, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->gammasV:[D

    :cond_2
    return-void
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected rank1UpdateMultL(Lorg/ejml/data/DMatrixRMaj;DIII)V
    .locals 7

    .line 340
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->u:[D

    move-object v0, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->rank1UpdateMultL(Lorg/ejml/data/DMatrixRMaj;[DDIII)V

    return-void
.end method

.method protected rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;DIII)V
    .locals 8

    .line 344
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->u:[D

    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->b:[D

    move-object v0, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;[DDIII[D)V

    return-void
.end method
