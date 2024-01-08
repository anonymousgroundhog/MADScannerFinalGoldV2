.class public Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;
.super Ljava/lang/Object;
.source "QrUpdate_FDRM.java"


# instance fields
.field private Q:Lorg/ejml/data/FMatrixRMaj;

.field private Qm:Lorg/ejml/data/FMatrixRMaj;

.field private R:Lorg/ejml/data/FMatrixRMaj;

.field private U_tran:Lorg/ejml/data/FMatrixRMaj;

.field private autoGrow:Z

.field private m:I

.field private m_m:I

.field private maxCols:I

.field private maxRows:I

.field private n:I

.field private r_row:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->autoGrow:Z

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->autoGrow:Z

    .line 86
    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->declareInternalData(II)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-boolean p3, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->autoGrow:Z

    .line 95
    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->declareInternalData(II)V

    return-void
.end method

.method private applyFirstGivens([F)V
    .locals 10

    const/4 v0, 0x0

    .line 310
    aget v1, p1, v0

    .line 311
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v2, v2, v0

    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_0

    float-to-double v3, v3

    .line 315
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    div-float/2addr v1, v3

    div-float v4, v2, v3

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 323
    :goto_0
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aput v3, v2, v0

    const/4 v2, 0x1

    move v3, v2

    .line 324
    :goto_1
    iget v5, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->n:I

    if-ge v3, v5, :cond_1

    .line 325
    aget v5, p1, v3

    .line 326
    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v6, v6, v3

    .line 328
    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/FMatrixRMaj;->data:[F

    mul-float v8, v1, v5

    mul-float v9, v4, v6

    add-float/2addr v8, v9

    aput v8, v7, v3

    .line 329
    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->r_row:[F

    mul-float/2addr v6, v1

    mul-float/2addr v5, v4

    sub-float/2addr v6, v5

    aput v6, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 333
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->U_tran:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_FDRM;->setIdentity(Lorg/ejml/data/FMatrix1Row;)V

    .line 334
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->U_tran:Lorg/ejml/data/FMatrixRMaj;

    iget-object p1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aput v1, p1, v0

    .line 335
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->U_tran:Lorg/ejml/data/FMatrixRMaj;

    iget-object p1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aput v4, p1, v2

    .line 336
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->U_tran:Lorg/ejml/data/FMatrixRMaj;

    iget-object p1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m_m:I

    neg-float v3, v4

    aput v3, p1, v0

    .line 337
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->U_tran:Lorg/ejml/data/FMatrixRMaj;

    iget-object p1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m_m:I

    add-int/2addr v0, v2

    aput v1, p1, v0

    return-void
.end method

.method private applyLaterGivens()V
    .locals 11

    const/4 v0, 0x1

    .line 341
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->n:I

    if-ge v0, v1, :cond_3

    .line 344
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->r_row:[F

    aget v1, v1, v0

    .line 345
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v3, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->n:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v0

    aget v2, v2, v3

    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_0

    float-to-double v3, v3

    .line 349
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    div-float/2addr v1, v3

    div-float v4, v2, v3

    goto :goto_1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 358
    :goto_1
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v5, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->n:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v0

    aput v3, v2, v5

    add-int/lit8 v2, v0, 0x1

    move v3, v2

    .line 359
    :goto_2
    iget v5, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->n:I

    if-ge v3, v5, :cond_1

    .line 360
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->r_row:[F

    aget v5, v5, v3

    .line 361
    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v7, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->n:I

    mul-int/2addr v7, v0

    add-int/2addr v7, v3

    aget v6, v6, v7

    .line 363
    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v8, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->n:I

    mul-int/2addr v8, v0

    add-int/2addr v8, v3

    mul-float v9, v1, v5

    mul-float v10, v4, v6

    add-float/2addr v9, v10

    aput v9, v7, v8

    .line 364
    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->r_row:[F

    mul-float/2addr v6, v1

    mul-float/2addr v5, v4

    sub-float/2addr v6, v5

    aput v6, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_3
    if-gt v3, v2, :cond_2

    .line 369
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->U_tran:Lorg/ejml/data/FMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v6, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m_m:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v3

    aget v5, v5, v6

    .line 370
    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->U_tran:Lorg/ejml/data/FMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v7, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m_m:I

    mul-int/2addr v7, v2

    add-int/2addr v7, v3

    aget v6, v6, v7

    .line 372
    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->U_tran:Lorg/ejml/data/FMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v8, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m_m:I

    mul-int/2addr v8, v0

    add-int/2addr v8, v3

    mul-float v9, v1, v5

    mul-float v10, v4, v6

    add-float/2addr v9, v10

    aput v9, v7, v8

    .line 373
    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->U_tran:Lorg/ejml/data/FMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v8, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m_m:I

    mul-int/2addr v8, v2

    add-int/2addr v8, v3

    mul-float/2addr v6, v1

    mul-float/2addr v5, v4

    sub-float/2addr v6, v5

    aput v6, v7, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private computeRemoveGivens(I)V
    .locals 12

    .line 379
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->U_tran:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/CommonOps_FDRM;->setIdentity(Lorg/ejml/data/FMatrix1Row;)V

    .line 381
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m:I

    mul-int v2, p1, v1

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    add-int/lit8 v1, v1, -0x2

    :goto_0
    if-ltz v1, :cond_2

    .line 386
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v3, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m:I

    mul-int/2addr v3, p1

    add-int/2addr v3, v1

    aget v2, v2, v3

    mul-float v3, v2, v2

    mul-float v4, v0, v0

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_0

    float-to-double v3, v3

    .line 390
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    div-float/2addr v2, v3

    div-float v4, v0, v3

    goto :goto_1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    move v0, v3

    move v3, v1

    .line 402
    :goto_2
    iget v5, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m:I

    if-ge v3, v5, :cond_1

    .line 403
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->U_tran:Lorg/ejml/data/FMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v6, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v3

    aget v5, v5, v6

    .line 404
    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->U_tran:Lorg/ejml/data/FMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v7, v1, 0x1

    iget v8, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m:I

    mul-int/2addr v8, v7

    add-int/2addr v8, v3

    aget v6, v6, v8

    .line 406
    iget-object v8, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->U_tran:Lorg/ejml/data/FMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v9, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m:I

    mul-int/2addr v9, v1

    add-int/2addr v9, v3

    mul-float v10, v2, v5

    mul-float v11, v4, v6

    add-float/2addr v10, v11

    aput v10, v8, v9

    .line 407
    iget-object v8, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->U_tran:Lorg/ejml/data/FMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v9, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m:I

    mul-int/2addr v7, v9

    add-int/2addr v7, v3

    mul-float/2addr v6, v2

    mul-float/2addr v5, v4

    sub-float/2addr v6, v5

    aput v6, v8, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setQR(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;I)V
    .locals 2

    .line 210
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_3

    .line 214
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    .line 215
    iput-object p2, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    .line 217
    iget p1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iput p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m:I

    .line 218
    iget p1, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iput p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->n:I

    .line 220
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m:I

    add-int v0, p2, p3

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->maxRows:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->maxCols:I

    if-le p1, v0, :cond_1

    .line 221
    :cond_0
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->autoGrow:Z

    if-eqz v0, :cond_2

    add-int/2addr p2, p3

    .line 222
    invoke-virtual {p0, p2, p1}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->declareInternalData(II)V

    :cond_1
    return-void

    .line 224
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Autogrow has been set to false and the maximum number of rows or columns has been exceeded."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 211
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Q should be square."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updateInsertQ(I)V
    .locals 9

    .line 236
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->Qm:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, v1}, Lorg/ejml/data/FMatrixRMaj;->set(Lorg/ejml/data/FMatrixD1;)V

    .line 237
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m_m:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    move v0, v2

    :goto_0
    const/4 v1, 0x0

    if-ge v0, p1, :cond_2

    move v3, v2

    .line 240
    :goto_1
    iget v4, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m_m:I

    if-ge v3, v4, :cond_1

    move v5, v1

    move v4, v2

    .line 242
    :goto_2
    iget v6, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m:I

    if-ge v4, v6, :cond_0

    .line 243
    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->Qm:Lorg/ejml/data/FMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v7, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m:I

    mul-int/2addr v7, v0

    add-int/2addr v7, v4

    aget v6, v6, v7

    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->U_tran:Lorg/ejml/data/FMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v8, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m_m:I

    mul-int/2addr v8, v3

    add-int/2addr v8, v4

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 245
    :cond_0
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v6, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m_m:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v3

    aput v5, v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 249
    :goto_3
    iget v3, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m_m:I

    if-ge v0, v3, :cond_3

    .line 250
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v4, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m_m:I

    mul-int/2addr v4, p1

    add-int/2addr v4, v0

    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->U_tran:Lorg/ejml/data/FMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v6, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m_m:I

    mul-int/2addr v6, v0

    aget v5, v5, v6

    aput v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 p1, p1, 0x1

    .line 253
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m_m:I

    if-ge p1, v0, :cond_6

    move v0, v2

    .line 254
    :goto_5
    iget v3, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m_m:I

    if-ge v0, v3, :cond_5

    move v4, v1

    move v3, v2

    .line 256
    :goto_6
    iget v5, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m:I

    if-ge v3, v5, :cond_4

    .line 257
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->Qm:Lorg/ejml/data/FMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v6, p1, -0x1

    iget v7, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v3

    aget v5, v5, v6

    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->U_tran:Lorg/ejml/data/FMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v7, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m_m:I

    mul-int/2addr v7, v0

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 259
    :cond_4
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v5, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m_m:I

    mul-int/2addr v5, p1

    add-int/2addr v5, v0

    aput v4, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    goto :goto_4

    :cond_6
    return-void
.end method

.method private updateRemoveQ(I)V
    .locals 10

    .line 269
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->Qm:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, v1}, Lorg/ejml/data/FMatrixRMaj;->set(Lorg/ejml/data/FMatrixD1;)V

    .line 270
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m_m:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    move v0, v2

    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ge v0, p1, :cond_2

    move v4, v3

    .line 273
    :goto_1
    iget v5, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m:I

    if-ge v4, v5, :cond_1

    move v6, v1

    move v5, v2

    .line 275
    :goto_2
    iget v7, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m:I

    if-ge v5, v7, :cond_0

    .line 276
    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->Qm:Lorg/ejml/data/FMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v8, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m:I

    mul-int/2addr v8, v0

    add-int/2addr v8, v5

    aget v7, v7, v8

    iget-object v8, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->U_tran:Lorg/ejml/data/FMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v9, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m:I

    mul-int/2addr v9, v4

    add-int/2addr v9, v5

    aget v8, v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 278
    :cond_0
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v7, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m_m:I

    mul-int/2addr v7, v0

    add-int/2addr v7, v4

    sub-int/2addr v7, v3

    aput v6, v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr p1, v3

    .line 282
    :goto_3
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m:I

    if-ge p1, v0, :cond_5

    move v0, v3

    .line 283
    :goto_4
    iget v4, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m:I

    if-ge v0, v4, :cond_4

    move v5, v1

    move v4, v2

    .line 285
    :goto_5
    iget v6, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m:I

    if-ge v4, v6, :cond_3

    .line 286
    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->Qm:Lorg/ejml/data/FMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v7, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m:I

    mul-int/2addr v7, p1

    add-int/2addr v7, v4

    aget v6, v6, v7

    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->U_tran:Lorg/ejml/data/FMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v8, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m:I

    mul-int/2addr v8, v0

    add-int/2addr v8, v4

    aget v7, v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 288
    :cond_3
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v6, p1, -0x1

    iget v7, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m_m:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v0

    sub-int/2addr v6, v3

    aput v5, v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method private updateRemoveR()V
    .locals 9

    const/4 v0, 0x1

    move v1, v0

    .line 297
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->n:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    .line 298
    :goto_1
    iget v3, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->n:I

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v1, -0x1

    const/4 v4, 0x0

    move v5, v3

    :goto_2
    if-gt v5, v2, :cond_0

    .line 301
    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->U_tran:Lorg/ejml/data/FMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v7, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m:I

    mul-int/2addr v7, v1

    add-int/2addr v7, v5

    aget v6, v6, v7

    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v8, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->n:I

    mul-int/2addr v8, v5

    add-int/2addr v8, v2

    aget v7, v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 303
    :cond_0
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v6, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->n:I

    mul-int/2addr v3, v6

    add-int/2addr v3, v2

    aput v4, v5, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addRow(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;[FIZ)V
    .locals 2

    const/4 v0, 0x1

    .line 141
    invoke-direct {p0, p1, p2, v0}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->setQR(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;I)V

    .line 142
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m_m:I

    .line 144
    iget-object p1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    array-length p1, p1

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m_m:I

    mul-int/2addr v0, v0

    if-lt p1, v0, :cond_3

    if-eqz p5, :cond_1

    .line 147
    iget-object p1, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    array-length p1, p1

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m_m:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->n:I

    mul-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "R matrix does not have enough data to grow"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    if-eqz p5, :cond_2

    .line 151
    iget p5, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m_m:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->n:I

    invoke-virtual {p2, p5, v0, p1}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    .line 153
    :cond_2
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->U_tran:Lorg/ejml/data/FMatrixRMaj;

    iget p5, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m_m:I

    invoke-virtual {p2, p5, p5, p1}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    .line 156
    invoke-direct {p0, p3}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->applyFirstGivens([F)V

    .line 157
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->applyLaterGivens()V

    .line 159
    invoke-direct {p0, p4}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->updateInsertQ(I)V

    const/4 p1, 0x0

    .line 162
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    return-void

    .line 145
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Q matrix does not have enough data to grow"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declareInternalData(II)V
    .locals 1

    .line 109
    iput p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->maxRows:I

    .line 110
    iput p2, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->maxCols:I

    .line 112
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p1, p1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->U_tran:Lorg/ejml/data/FMatrixRMaj;

    .line 113
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p1, p1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->Qm:Lorg/ejml/data/FMatrixRMaj;

    .line 115
    new-array p1, p2, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->r_row:[F

    return-void
.end method

.method public deleteRow(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;IZ)V
    .locals 3

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1, p2, v0}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->setQR(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;I)V

    .line 183
    iget p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m:I

    add-int/lit8 v1, p1, -0x1

    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->n:I

    if-lt v1, v2, :cond_1

    add-int/lit8 v1, p1, -0x1

    .line 187
    iput v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m_m:I

    .line 188
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->U_tran:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v1, p1, p1, v0}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    if-eqz p4, :cond_0

    .line 191
    iget p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->m_m:I

    iget p4, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->n:I

    invoke-virtual {p2, p1, p4, v0}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    .line 193
    :cond_0
    invoke-direct {p0, p3}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->computeRemoveGivens(I)V

    .line 194
    invoke-direct {p0, p3}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->updateRemoveQ(I)V

    .line 196
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->updateRemoveR()V

    const/4 p1, 0x0

    .line 199
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->R:Lorg/ejml/data/FMatrixRMaj;

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    return-void

    .line 184
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Removing any row would make the system under determined."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getU_tran()Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 413
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_FDRM;->U_tran:Lorg/ejml/data/FMatrixRMaj;

    return-object v0
.end method
