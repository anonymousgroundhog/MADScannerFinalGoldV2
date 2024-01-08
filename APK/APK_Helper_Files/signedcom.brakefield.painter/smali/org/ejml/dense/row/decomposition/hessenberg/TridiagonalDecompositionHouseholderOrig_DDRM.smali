.class public Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;
.super Ljava/lang/Object;
.source "TridiagonalDecompositionHouseholderOrig_DDRM.java"


# instance fields
.field N:I

.field QT:Lorg/ejml/data/DMatrixRMaj;

.field b:[D

.field gammas:[D

.field w:[D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 55
    iput v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    .line 56
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    .line 57
    iget v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    new-array v1, v0, [D

    iput-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->w:[D

    .line 58
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->b:[D

    .line 59
    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->gammas:[D

    return-void
.end method

.method private similarTransform(I)V
    .locals 13

    .line 136
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v1, p1, -0x1

    .line 142
    iget v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    mul-int/2addr v1, v2

    const-wide/16 v2, 0x0

    move v4, p1

    move-wide v5, v2

    .line 144
    :goto_0
    iget v7, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    if-ge v4, v7, :cond_1

    add-int v7, v1, v4

    .line 145
    aget-wide v7, v0, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpl-double v9, v7, v5

    if-lez v9, :cond_0

    move-wide v5, v7

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    cmpl-double v4, v5, v2

    if-lez v4, :cond_5

    move v4, p1

    move-wide v7, v2

    .line 156
    :goto_1
    iget v9, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    if-ge v4, v9, :cond_2

    add-int v9, v1, v4

    .line 157
    aget-wide v10, v0, v9

    div-double/2addr v10, v5

    aput-wide v10, v0, v9

    mul-double/2addr v10, v10

    add-double/2addr v7, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 161
    :cond_2
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    add-int v4, v1, p1

    .line 163
    aget-wide v9, v0, v4

    cmpg-double v2, v9, v2

    if-gez v2, :cond_3

    neg-double v7, v7

    :cond_3
    add-double/2addr v9, v7

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 168
    aput-wide v2, v0, v4

    add-int/lit8 v2, p1, 0x1

    .line 170
    :goto_2
    iget v3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    if-ge v2, v3, :cond_4

    add-int v3, v1, v2

    .line 171
    aget-wide v11, v0, v3

    div-double/2addr v11, v9

    aput-wide v11, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    div-double/2addr v9, v7

    .line 175
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->gammas:[D

    aput-wide v9, v1, p1

    .line 178
    invoke-virtual {p0, p1, v9, v10}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->householderSymmetric(ID)V

    neg-double v1, v7

    mul-double/2addr v1, v5

    .line 182
    aput-wide v1, v0, v4

    goto :goto_3

    .line 184
    :cond_5
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->gammas:[D

    aput-wide v2, v0, p1

    :goto_3
    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 1

    .line 123
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->init(Lorg/ejml/data/DMatrixRMaj;)V

    const/4 p1, 0x1

    .line 125
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    if-ge p1, v0, :cond_0

    .line 126
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->similarTransform(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getGamma(I)D
    .locals 2

    .line 257
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->gammas:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getQ(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 9

    .line 101
    iget v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->ensureIdentity(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    const/4 v0, 0x0

    .line 103
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->w:[D

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x2

    move v0, v1

    :goto_1
    if-ltz v0, :cond_2

    .line 106
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->w:[D

    add-int/lit8 v6, v0, 0x1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v1, v6

    add-int/lit8 v1, v0, 0x2

    .line 107
    :goto_2
    iget v7, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    if-ge v1, v7, :cond_1

    .line 108
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->w:[D

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v3, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 110
    :cond_1
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->w:[D

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->gammas:[D

    aget-wide v3, v1, v6

    iget-object v8, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->b:[D

    move-object v1, p1

    move v5, v6

    invoke-static/range {v1 .. v8}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;[DDIII[D)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public getQT()Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    return-object v0
.end method

.method public getT(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 6

    .line 76
    iget v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->ensureZeros(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    .line 78
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    aput-wide v3, v0, v2

    .line 79
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x1

    aget-wide v3, v1, v2

    aput-wide v3, v0, v2

    move v0, v2

    .line 82
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 83
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v1, v0, v0}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v3

    invoke-virtual {p1, v0, v0, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v1, v0, 0x1

    .line 84
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v3, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v3

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v3, v0, -0x1

    .line 85
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v4, v3, v0}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v4

    invoke-virtual {p1, v0, v3, v4, v5}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    move v0, v1

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    add-int/lit8 v3, v1, -0x1

    mul-int/2addr v3, v1

    add-int/2addr v3, v1

    sub-int/2addr v3, v2

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    add-int/lit8 v5, v4, -0x1

    mul-int/2addr v5, v4

    add-int/2addr v5, v4

    sub-int/2addr v5, v2

    aget-wide v4, v1, v5

    aput-wide v4, v0, v3

    .line 89
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    add-int/lit8 v3, v1, -0x1

    mul-int/2addr v3, v1

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x2

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    add-int/lit8 v5, v4, -0x2

    mul-int/2addr v5, v4

    add-int/2addr v5, v4

    sub-int/2addr v5, v2

    aget-wide v1, v1, v5

    aput-wide v1, v0, v3

    return-object p1
.end method

.method public householderSymmetric(ID)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    add-int/lit8 v3, p1, -0x1

    .line 195
    iget v4, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    mul-int/2addr v3, v4

    move/from16 v4, p1

    .line 198
    :goto_0
    iget v5, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    const-wide/16 v6, 0x0

    if-ge v4, v5, :cond_1

    move/from16 v5, p1

    .line 200
    :goto_1
    iget v8, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    if-ge v5, v8, :cond_0

    .line 201
    iget-object v8, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v9, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    mul-int/2addr v9, v4

    add-int/2addr v9, v5

    aget-wide v8, v8, v9

    iget-object v10, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v10, v10, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int v11, v3, v5

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 203
    :cond_0
    iget-object v5, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->w:[D

    neg-double v8, v1

    mul-double/2addr v8, v6

    aput-wide v8, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move/from16 v4, p1

    .line 209
    :goto_2
    iget v5, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    if-ge v4, v5, :cond_2

    .line 210
    iget-object v5, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int v8, v3, v4

    aget-wide v8, v5, v8

    iget-object v5, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->w:[D

    aget-wide v10, v5, v4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    mul-double/2addr v1, v4

    mul-double/2addr v6, v1

    move/from16 v1, p1

    .line 215
    :goto_3
    iget v2, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    if-ge v1, v2, :cond_3

    .line 216
    iget-object v2, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->w:[D

    aget-wide v4, v2, v1

    iget-object v8, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int v9, v3, v1

    aget-wide v8, v8, v9

    mul-double/2addr v8, v6

    add-double/2addr v4, v8

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move/from16 v1, p1

    .line 220
    :goto_4
    iget v2, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    if-ge v1, v2, :cond_5

    .line 222
    iget-object v2, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->w:[D

    aget-wide v4, v2, v1

    .line 223
    iget-object v2, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int v6, v3, v1

    aget-wide v6, v2, v6

    move v2, v1

    .line 226
    :goto_5
    iget v8, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    if-ge v2, v8, :cond_4

    .line 227
    iget-object v8, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v9, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    mul-int/2addr v9, v2

    add-int/2addr v9, v1

    iget-object v10, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v10, v10, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v11, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    mul-int/2addr v11, v1

    add-int/2addr v11, v2

    aget-wide v12, v10, v11

    iget-object v14, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v14, v14, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int v15, v3, v2

    aget-wide v14, v14, v15

    mul-double/2addr v14, v4

    move/from16 v16, v3

    iget-object v3, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->w:[D

    aget-wide v17, v3, v2

    mul-double v17, v17, v6

    add-double v14, v14, v17

    add-double/2addr v12, v14

    aput-wide v12, v10, v11

    aput-wide v12, v8, v9

    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v16

    goto :goto_5

    :cond_4
    move/from16 v16, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public init(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 3

    .line 238
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_1

    .line 241
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    if-eq v0, v1, :cond_0

    .line 242
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    .line 243
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v0, v2}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    .line 245
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->w:[D

    array-length v0, v0

    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->N:I

    if-ge v0, v1, :cond_0

    .line 246
    new-array v0, v1, [D

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->w:[D

    .line 247
    new-array v0, v1, [D

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->gammas:[D

    .line 248
    new-array v0, v1, [D

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->b:[D

    .line 253
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, p1}, Lorg/ejml/data/DMatrixRMaj;->set(Lorg/ejml/data/DMatrixD1;)V

    return-void

    .line 239
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must be square"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
