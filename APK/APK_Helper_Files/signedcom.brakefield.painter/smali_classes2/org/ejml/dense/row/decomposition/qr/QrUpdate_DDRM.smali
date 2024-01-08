.class public Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;
.super Ljava/lang/Object;
.source "QrUpdate_DDRM.java"


# instance fields
.field private Q:Lorg/ejml/data/DMatrixRMaj;

.field private Qm:Lorg/ejml/data/DMatrixRMaj;

.field private R:Lorg/ejml/data/DMatrixRMaj;

.field private U_tran:Lorg/ejml/data/DMatrixRMaj;

.field private autoGrow:Z

.field private m:I

.field private m_m:I

.field private maxCols:I

.field private maxRows:I

.field private n:I

.field private r_row:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->autoGrow:Z

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->autoGrow:Z

    .line 84
    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->declareInternalData(II)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-boolean p3, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->autoGrow:Z

    .line 93
    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->declareInternalData(II)V

    return-void
.end method

.method private applyFirstGivens([D)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 308
    aget-wide v2, p1, v1

    .line 309
    iget-object v4, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v4, v4, v1

    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_0

    .line 313
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v2, v6

    div-double v8, v4, v6

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 321
    :goto_0
    iget-object v4, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aput-wide v6, v4, v1

    const/4 v4, 0x1

    move v5, v4

    .line 322
    :goto_1
    iget v6, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->n:I

    if-ge v5, v6, :cond_1

    .line 323
    aget-wide v6, p1, v5

    .line 324
    iget-object v10, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    iget-object v10, v10, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v10, v10, v5

    .line 326
    iget-object v12, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    iget-object v12, v12, Lorg/ejml/data/DMatrixRMaj;->data:[D

    mul-double v13, v2, v6

    mul-double v15, v8, v10

    add-double/2addr v13, v15

    aput-wide v13, v12, v5

    .line 327
    iget-object v12, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->r_row:[D

    mul-double/2addr v10, v2

    mul-double/2addr v6, v8

    sub-double/2addr v10, v6

    aput-wide v10, v12, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 331
    :cond_1
    iget-object v5, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->U_tran:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v5}, Lorg/ejml/dense/row/CommonOps_DDRM;->setIdentity(Lorg/ejml/data/DMatrix1Row;)V

    .line 332
    iget-object v5, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->U_tran:Lorg/ejml/data/DMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aput-wide v2, v5, v1

    .line 333
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->U_tran:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aput-wide v8, v1, v4

    .line 334
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->U_tran:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v5, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m_m:I

    neg-double v6, v8

    aput-wide v6, v1, v5

    .line 335
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->U_tran:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v5, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m_m:I

    add-int/2addr v5, v4

    aput-wide v2, v1, v5

    return-void
.end method

.method private applyLaterGivens()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 339
    :goto_0
    iget v2, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->n:I

    if-ge v1, v2, :cond_3

    .line 342
    iget-object v2, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->r_row:[D

    aget-wide v2, v2, v1

    .line 343
    iget-object v4, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v5, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->n:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v1

    aget-wide v4, v4, v5

    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_0

    .line 347
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v2, v6

    div-double v8, v4, v6

    goto :goto_1

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 356
    :goto_1
    iget-object v4, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v5, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->n:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v1

    aput-wide v6, v4, v5

    add-int/lit8 v4, v1, 0x1

    move v5, v4

    .line 357
    :goto_2
    iget v6, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->n:I

    if-ge v5, v6, :cond_1

    .line 358
    iget-object v6, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->r_row:[D

    aget-wide v6, v6, v5

    .line 359
    iget-object v10, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    iget-object v10, v10, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v11, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->n:I

    mul-int/2addr v11, v1

    add-int/2addr v11, v5

    aget-wide v10, v10, v11

    .line 361
    iget-object v12, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    iget-object v12, v12, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v13, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->n:I

    mul-int/2addr v13, v1

    add-int/2addr v13, v5

    mul-double v14, v2, v6

    mul-double v16, v8, v10

    add-double v14, v14, v16

    aput-wide v14, v12, v13

    .line 362
    iget-object v12, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->r_row:[D

    mul-double/2addr v10, v2

    mul-double/2addr v6, v8

    sub-double/2addr v10, v6

    aput-wide v10, v12, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_3
    if-gt v5, v4, :cond_2

    .line 367
    iget-object v6, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->U_tran:Lorg/ejml/data/DMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v7, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m_m:I

    mul-int/2addr v7, v1

    add-int/2addr v7, v5

    aget-wide v6, v6, v7

    .line 368
    iget-object v10, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->U_tran:Lorg/ejml/data/DMatrixRMaj;

    iget-object v10, v10, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v11, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m_m:I

    mul-int/2addr v11, v4

    add-int/2addr v11, v5

    aget-wide v10, v10, v11

    .line 370
    iget-object v12, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->U_tran:Lorg/ejml/data/DMatrixRMaj;

    iget-object v12, v12, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v13, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m_m:I

    mul-int/2addr v13, v1

    add-int/2addr v13, v5

    mul-double v14, v2, v6

    mul-double v16, v8, v10

    add-double v14, v14, v16

    aput-wide v14, v12, v13

    .line 371
    iget-object v12, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->U_tran:Lorg/ejml/data/DMatrixRMaj;

    iget-object v12, v12, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v13, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m_m:I

    mul-int/2addr v13, v4

    add-int/2addr v13, v5

    mul-double/2addr v10, v2

    mul-double/2addr v6, v8

    sub-double/2addr v10, v6

    aput-wide v10, v12, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    move v1, v4

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private computeRemoveGivens(I)V
    .locals 20

    move-object/from16 v0, p0

    .line 377
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->U_tran:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v1}, Lorg/ejml/dense/row/CommonOps_DDRM;->setIdentity(Lorg/ejml/data/DMatrix1Row;)V

    .line 379
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v2, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m:I

    mul-int v3, p1, v2

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-wide v3, v1, v3

    add-int/lit8 v2, v2, -0x2

    :goto_0
    if-ltz v2, :cond_2

    .line 384
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v5, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m:I

    mul-int v5, v5, p1

    add-int/2addr v5, v2

    aget-wide v5, v1, v5

    mul-double v7, v5, v5

    mul-double v9, v3, v3

    add-double/2addr v7, v9

    const-wide/16 v9, 0x0

    cmpl-double v1, v7, v9

    if-eqz v1, :cond_0

    .line 388
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    div-double v9, v3, v7

    goto :goto_1

    :cond_0
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    :goto_1
    move-wide v3, v7

    move v1, v2

    .line 400
    :goto_2
    iget v7, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m:I

    if-ge v1, v7, :cond_1

    .line 401
    iget-object v7, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->U_tran:Lorg/ejml/data/DMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v8, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m:I

    mul-int/2addr v8, v2

    add-int/2addr v8, v1

    aget-wide v7, v7, v8

    .line 402
    iget-object v11, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->U_tran:Lorg/ejml/data/DMatrixRMaj;

    iget-object v11, v11, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v12, v2, 0x1

    iget v13, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m:I

    mul-int/2addr v13, v12

    add-int/2addr v13, v1

    aget-wide v13, v11, v13

    .line 404
    iget-object v11, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->U_tran:Lorg/ejml/data/DMatrixRMaj;

    iget-object v11, v11, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v15, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m:I

    mul-int/2addr v15, v2

    add-int/2addr v15, v1

    mul-double v16, v5, v7

    mul-double v18, v9, v13

    add-double v16, v16, v18

    aput-wide v16, v11, v15

    .line 405
    iget-object v11, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->U_tran:Lorg/ejml/data/DMatrixRMaj;

    iget-object v11, v11, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v15, v0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m:I

    mul-int/2addr v12, v15

    add-int/2addr v12, v1

    mul-double/2addr v13, v5

    mul-double/2addr v7, v9

    sub-double/2addr v13, v7

    aput-wide v13, v11, v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setQR(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;I)V
    .locals 2

    .line 208
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_3

    .line 212
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    .line 213
    iput-object p2, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    .line 215
    iget p1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iput p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m:I

    .line 216
    iget p1, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iput p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->n:I

    .line 218
    iget p2, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m:I

    add-int v0, p2, p3

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->maxRows:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->maxCols:I

    if-le p1, v0, :cond_1

    .line 219
    :cond_0
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->autoGrow:Z

    if-eqz v0, :cond_2

    add-int/2addr p2, p3

    .line 220
    invoke-virtual {p0, p2, p1}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->declareInternalData(II)V

    :cond_1
    return-void

    .line 222
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Autogrow has been set to false and the maximum number of rows or columns has been exceeded."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 209
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Q should be square."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updateInsertQ(I)V
    .locals 12

    .line 234
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->Qm:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, v1}, Lorg/ejml/data/DMatrixRMaj;->set(Lorg/ejml/data/DMatrixD1;)V

    .line 235
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m_m:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    move v0, v2

    :goto_0
    const-wide/16 v3, 0x0

    if-ge v0, p1, :cond_2

    move v1, v2

    .line 238
    :goto_1
    iget v5, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m_m:I

    if-ge v1, v5, :cond_1

    move v5, v2

    move-wide v6, v3

    .line 240
    :goto_2
    iget v8, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m:I

    if-ge v5, v8, :cond_0

    .line 241
    iget-object v8, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->Qm:Lorg/ejml/data/DMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v9, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m:I

    mul-int/2addr v9, v0

    add-int/2addr v9, v5

    aget-wide v8, v8, v9

    iget-object v10, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->U_tran:Lorg/ejml/data/DMatrixRMaj;

    iget-object v10, v10, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v11, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m_m:I

    mul-int/2addr v11, v1

    add-int/2addr v11, v5

    add-int/lit8 v11, v11, 0x1

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 243
    :cond_0
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v8, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m_m:I

    mul-int/2addr v8, v0

    add-int/2addr v8, v1

    aput-wide v6, v5, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 247
    :goto_3
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m_m:I

    if-ge v0, v1, :cond_3

    .line 248
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v5, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m_m:I

    mul-int/2addr v5, p1

    add-int/2addr v5, v0

    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->U_tran:Lorg/ejml/data/DMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v7, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m_m:I

    mul-int/2addr v7, v0

    aget-wide v6, v6, v7

    aput-wide v6, v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 p1, p1, 0x1

    .line 251
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m_m:I

    if-ge p1, v0, :cond_6

    move v0, v2

    .line 252
    :goto_5
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m_m:I

    if-ge v0, v1, :cond_5

    move v1, v2

    move-wide v5, v3

    .line 254
    :goto_6
    iget v7, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m:I

    if-ge v1, v7, :cond_4

    .line 255
    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->Qm:Lorg/ejml/data/DMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v8, p1, -0x1

    iget v9, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v1

    aget-wide v7, v7, v8

    iget-object v9, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->U_tran:Lorg/ejml/data/DMatrixRMaj;

    iget-object v9, v9, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v10, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m_m:I

    mul-int/2addr v10, v0

    add-int/2addr v10, v1

    add-int/lit8 v10, v10, 0x1

    aget-wide v9, v9, v10

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 257
    :cond_4
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v7, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m_m:I

    mul-int/2addr v7, p1

    add-int/2addr v7, v0

    aput-wide v5, v1, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    goto :goto_4

    :cond_6
    return-void
.end method

.method private updateRemoveQ(I)V
    .locals 13

    .line 267
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->Qm:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, v1}, Lorg/ejml/data/DMatrixRMaj;->set(Lorg/ejml/data/DMatrixD1;)V

    .line 268
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m_m:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    move v0, v2

    :goto_0
    const-wide/16 v3, 0x0

    const/4 v1, 0x1

    if-ge v0, p1, :cond_2

    move v5, v1

    .line 271
    :goto_1
    iget v6, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m:I

    if-ge v5, v6, :cond_1

    move v6, v2

    move-wide v7, v3

    .line 273
    :goto_2
    iget v9, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m:I

    if-ge v6, v9, :cond_0

    .line 274
    iget-object v9, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->Qm:Lorg/ejml/data/DMatrixRMaj;

    iget-object v9, v9, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v10, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m:I

    mul-int/2addr v10, v0

    add-int/2addr v10, v6

    aget-wide v9, v9, v10

    iget-object v11, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->U_tran:Lorg/ejml/data/DMatrixRMaj;

    iget-object v11, v11, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v12, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m:I

    mul-int/2addr v12, v5

    add-int/2addr v12, v6

    aget-wide v11, v11, v12

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 276
    :cond_0
    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v9, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m_m:I

    mul-int/2addr v9, v0

    add-int/2addr v9, v5

    sub-int/2addr v9, v1

    aput-wide v7, v6, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr p1, v1

    .line 280
    :goto_3
    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m:I

    if-ge p1, v0, :cond_5

    move v0, v1

    .line 281
    :goto_4
    iget v5, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m:I

    if-ge v0, v5, :cond_4

    move v5, v2

    move-wide v6, v3

    .line 283
    :goto_5
    iget v8, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m:I

    if-ge v5, v8, :cond_3

    .line 284
    iget-object v8, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->Qm:Lorg/ejml/data/DMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v9, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m:I

    mul-int/2addr v9, p1

    add-int/2addr v9, v5

    aget-wide v8, v8, v9

    iget-object v10, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->U_tran:Lorg/ejml/data/DMatrixRMaj;

    iget-object v10, v10, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v11, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m:I

    mul-int/2addr v11, v0

    add-int/2addr v11, v5

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 286
    :cond_3
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v8, p1, -0x1

    iget v9, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m_m:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v0

    sub-int/2addr v8, v1

    aput-wide v6, v5, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method private updateRemoveR()V
    .locals 11

    const/4 v0, 0x1

    move v1, v0

    .line 295
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->n:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    .line 296
    :goto_1
    iget v3, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->n:I

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v1, -0x1

    const-wide/16 v4, 0x0

    move v6, v3

    :goto_2
    if-gt v6, v2, :cond_0

    .line 299
    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->U_tran:Lorg/ejml/data/DMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v8, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m:I

    mul-int/2addr v8, v1

    add-int/2addr v8, v6

    aget-wide v7, v7, v8

    iget-object v9, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    iget-object v9, v9, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v10, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->n:I

    mul-int/2addr v10, v6

    add-int/2addr v10, v2

    aget-wide v9, v9, v10

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 301
    :cond_0
    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v7, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->n:I

    mul-int/2addr v3, v7

    add-int/2addr v3, v2

    aput-wide v4, v6, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addRow(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;[DIZ)V
    .locals 2

    const/4 v0, 0x1

    .line 139
    invoke-direct {p0, p1, p2, v0}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->setQR(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;I)V

    .line 140
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m_m:I

    .line 142
    iget-object p1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    array-length p1, p1

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m_m:I

    mul-int/2addr v0, v0

    if-lt p1, v0, :cond_3

    if-eqz p5, :cond_1

    .line 145
    iget-object p1, p2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    array-length p1, p1

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m_m:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->n:I

    mul-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "R matrix does not have enough data to grow"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    if-eqz p5, :cond_2

    .line 149
    iget p5, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m_m:I

    iget v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->n:I

    invoke-virtual {p2, p5, v0, p1}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    .line 151
    :cond_2
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->U_tran:Lorg/ejml/data/DMatrixRMaj;

    iget p5, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m_m:I

    invoke-virtual {p2, p5, p5, p1}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    .line 154
    invoke-direct {p0, p3}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->applyFirstGivens([D)V

    .line 155
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->applyLaterGivens()V

    .line 157
    invoke-direct {p0, p4}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->updateInsertQ(I)V

    const/4 p1, 0x0

    .line 160
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    return-void

    .line 143
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Q matrix does not have enough data to grow"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declareInternalData(II)V
    .locals 1

    .line 107
    iput p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->maxRows:I

    .line 108
    iput p2, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->maxCols:I

    .line 110
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, p1, p1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->U_tran:Lorg/ejml/data/DMatrixRMaj;

    .line 111
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, p1, p1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->Qm:Lorg/ejml/data/DMatrixRMaj;

    .line 113
    new-array p1, p2, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->r_row:[D

    return-void
.end method

.method public deleteRow(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;IZ)V
    .locals 3

    const/4 v0, 0x0

    .line 180
    invoke-direct {p0, p1, p2, v0}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->setQR(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;I)V

    .line 181
    iget p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m:I

    add-int/lit8 v1, p1, -0x1

    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->n:I

    if-lt v1, v2, :cond_1

    add-int/lit8 v1, p1, -0x1

    .line 185
    iput v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m_m:I

    .line 186
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->U_tran:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v1, p1, p1, v0}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    if-eqz p4, :cond_0

    .line 189
    iget p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->m_m:I

    iget p4, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->n:I

    invoke-virtual {p2, p1, p4, v0}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    .line 191
    :cond_0
    invoke-direct {p0, p3}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->computeRemoveGivens(I)V

    .line 192
    invoke-direct {p0, p3}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->updateRemoveQ(I)V

    .line 194
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->updateRemoveR()V

    const/4 p1, 0x0

    .line 197
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->R:Lorg/ejml/data/DMatrixRMaj;

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    return-void

    .line 182
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Removing any row would make the system under determined."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getU_tran()Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 411
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrUpdate_DDRM;->U_tran:Lorg/ejml/data/DMatrixRMaj;

    return-object v0
.end method
