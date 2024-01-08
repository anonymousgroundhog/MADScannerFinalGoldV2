.class public Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;
.super Ljava/lang/Object;
.source "TridiagonalDecompositionHouseholder_DDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64<",
        "Lorg/ejml/data/DMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field protected N:I

.field protected QT:Lorg/ejml/data/DMatrixRMaj;

.field protected b:[D

.field protected gammas:[D

.field protected w:[D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 69
    iput v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    new-array v1, v0, [D

    .line 70
    iput-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->w:[D

    new-array v1, v0, [D

    .line 71
    iput-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->b:[D

    new-array v0, v0, [D

    .line 72
    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->gammas:[D

    return-void
.end method

.method private similarTransform(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v7, p1

    .line 173
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v14, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v1, v7, -0x1

    .line 179
    iget v2, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    mul-int v11, v1, v2

    const-wide/16 v1, 0x0

    move-wide v15, v1

    move v3, v7

    .line 181
    :goto_0
    iget v4, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    if-ge v3, v4, :cond_1

    add-int v4, v11, v3

    .line 182
    aget-wide v4, v14, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v6, v4, v15

    if-lez v6, :cond_0

    move-wide v15, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    cmpl-double v3, v15, v1

    if-lez v3, :cond_2

    move/from16 v1, p1

    move v2, v4

    move-object v3, v14

    move v4, v11

    move-wide v5, v15

    .line 190
    invoke-static/range {v1 .. v6}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->computeTauAndDivide(II[DID)D

    move-result-wide v1

    add-int v3, v11, v7

    .line 193
    aget-wide v4, v14, v3

    add-double/2addr v4, v1

    add-int/lit8 v8, v7, 0x1

    .line 194
    iget v9, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    move-object v10, v14

    move-wide v12, v4

    invoke-static/range {v8 .. v13}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->divideElements(II[DID)V

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 195
    aput-wide v8, v14, v3

    div-double/2addr v4, v1

    .line 198
    iget-object v6, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->gammas:[D

    aput-wide v4, v6, v7

    .line 201
    invoke-virtual {v0, v7, v4, v5}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->householderSymmetric(ID)V

    neg-double v1, v1

    mul-double/2addr v1, v15

    .line 205
    aput-wide v1, v14, v3

    goto :goto_1

    .line 207
    :cond_2
    iget-object v3, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->gammas:[D

    aput-wide v1, v3, v7

    :goto_1
    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 2

    .line 160
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->init(Lorg/ejml/data/DMatrixRMaj;)V

    const/4 p1, 0x1

    move v0, p1

    .line 162
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    if-ge v0, v1, :cond_0

    .line 163
    invoke-direct {p0, v0}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->similarTransform(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 48
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getDiagonal([D[D)V
    .locals 5

    const/4 v0, 0x0

    .line 84
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    if-ge v0, v1, :cond_1

    .line 85
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    mul-int v3, v0, v2

    add-int/2addr v3, v0

    aget-wide v3, v1, v3

    aput-wide v3, p1, v0

    add-int/lit8 v1, v0, 0x1

    if-ge v1, v2, :cond_0

    .line 88
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    aget-wide v2, v2, v3

    aput-wide v2, p2, v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getQ(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;
    .locals 10

    .line 128
    iget v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->ensureIdentity(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    const/4 v0, 0x0

    .line 130
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->w:[D

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-eqz p2, :cond_2

    add-int/lit8 v1, v1, -0x2

    move p2, v1

    :goto_1
    if-ltz p2, :cond_4

    .line 134
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->w:[D

    add-int/lit8 v6, p2, 0x1

    aput-wide v8, v0, v6

    add-int/lit8 v0, p2, 0x2

    .line 135
    :goto_2
    iget v7, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    if-ge v0, v7, :cond_1

    .line 136
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->w:[D

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    mul-int/2addr v3, p2

    add-int/2addr v3, v0

    aget-wide v2, v2, v3

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 138
    :cond_1
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->gammas:[D

    aget-wide v3, v0, v6

    move-object v1, p0

    move-object v2, p1

    move v5, v6

    invoke-virtual/range {v1 .. v7}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->rank1UpdateMultL(Lorg/ejml/data/DMatrixRMaj;DIII)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x2

    move p2, v1

    :goto_3
    if-ltz p2, :cond_4

    .line 142
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->w:[D

    add-int/lit8 v6, p2, 0x1

    aput-wide v8, v0, v6

    add-int/lit8 v0, p2, 0x2

    .line 143
    :goto_4
    iget v7, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    if-ge v0, v7, :cond_3

    .line 144
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->w:[D

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v2, p2, v0}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 146
    :cond_3
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->gammas:[D

    aget-wide v3, v0, v6

    move-object v1, p0

    move-object v2, p1

    move v5, v6

    invoke-virtual/range {v1 .. v7}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;DIII)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_4
    return-object p1
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 48
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->getQ(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getQT()Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    return-object v0
.end method

.method public getT(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 6

    .line 101
    iget v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->ensureZeros(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    .line 103
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    aput-wide v3, v0, v2

    const/4 v0, 0x1

    move v1, v0

    .line 105
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    if-ge v1, v2, :cond_0

    .line 106
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v2, v1, v1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v2

    invoke-virtual {p1, v1, v1, v2, v3}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    .line 107
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3, v1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v4

    .line 108
    invoke-virtual {p1, v3, v1, v4, v5}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    .line 109
    invoke-virtual {p1, v1, v3, v4, v5}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-le v2, v0, :cond_1

    .line 113
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    add-int/lit8 v3, v2, -0x1

    mul-int/2addr v3, v2

    add-int/2addr v3, v2

    sub-int/2addr v3, v0

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    add-int/lit8 v5, v4, -0x1

    mul-int/2addr v5, v4

    add-int/2addr v5, v4

    sub-int/2addr v5, v0

    aget-wide v4, v2, v5

    aput-wide v4, v1, v3

    .line 114
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    add-int/lit8 v3, v2, -0x1

    mul-int/2addr v3, v2

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x2

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    add-int/lit8 v5, v4, -0x2

    mul-int/2addr v5, v4

    add-int/2addr v5, v4

    sub-int/2addr v5, v0

    aget-wide v4, v2, v5

    aput-wide v4, v1, v3

    :cond_1
    return-object p1
.end method

.method public bridge synthetic getT(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 48
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->getT(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public householderSymmetric(ID)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    add-int/lit8 v3, p1, -0x1

    .line 218
    iget v4, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    mul-int/2addr v3, v4

    move/from16 v4, p1

    .line 221
    :goto_0
    iget v5, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    const-wide/16 v6, 0x0

    if-ge v4, v5, :cond_2

    move/from16 v5, p1

    :goto_1
    if-ge v5, v4, :cond_0

    .line 227
    iget-object v8, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v9, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    mul-int/2addr v9, v5

    add-int/2addr v9, v4

    aget-wide v8, v8, v9

    iget-object v10, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v10, v10, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int v11, v3, v5

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v4

    .line 229
    :goto_2
    iget v8, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    if-ge v5, v8, :cond_1

    .line 230
    iget-object v8, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v9, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    mul-int/2addr v9, v4

    add-int/2addr v9, v5

    aget-wide v8, v8, v9

    iget-object v10, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v10, v10, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int v11, v3, v5

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 232
    :cond_1
    iget-object v5, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->w:[D

    neg-double v8, v1

    mul-double/2addr v8, v6

    aput-wide v8, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move/from16 v4, p1

    .line 237
    :goto_3
    iget v5, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    if-ge v4, v5, :cond_3

    .line 238
    iget-object v5, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int v8, v3, v4

    aget-wide v8, v5, v8

    iget-object v5, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->w:[D

    aget-wide v10, v5, v4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    mul-double/2addr v1, v4

    mul-double/2addr v6, v1

    move/from16 v1, p1

    .line 243
    :goto_4
    iget v2, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    if-ge v1, v2, :cond_4

    .line 244
    iget-object v2, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->w:[D

    aget-wide v4, v2, v1

    iget-object v8, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int v9, v3, v1

    aget-wide v8, v8, v9

    mul-double/2addr v8, v6

    add-double/2addr v4, v8

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    move/from16 v1, p1

    .line 247
    :goto_5
    iget v2, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    if-ge v1, v2, :cond_6

    .line 249
    iget-object v2, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->w:[D

    aget-wide v4, v2, v1

    .line 250
    iget-object v2, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int v6, v3, v1

    aget-wide v6, v2, v6

    .line 252
    iget v2, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    mul-int/2addr v2, v1

    move v8, v1

    .line 253
    :goto_6
    iget v9, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    if-ge v8, v9, :cond_5

    .line 256
    iget-object v9, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v9, v9, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int v10, v2, v8

    aget-wide v11, v9, v10

    iget-object v13, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    iget-object v13, v13, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int v14, v3, v8

    aget-wide v13, v13, v14

    mul-double/2addr v13, v4

    iget-object v15, v0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->w:[D

    aget-wide v15, v15, v8

    mul-double/2addr v15, v6

    add-double/2addr v13, v15

    add-double/2addr v11, v13

    aput-wide v11, v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method

.method public init(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 2

    .line 267
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_1

    .line 270
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    if-eq v0, v1, :cond_0

    .line 271
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->N:I

    .line 273
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->w:[D

    array-length v1, v1

    if-ge v1, v0, :cond_0

    .line 274
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->w:[D

    .line 275
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->gammas:[D

    .line 276
    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->b:[D

    .line 280
    :cond_0
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->QT:Lorg/ejml/data/DMatrixRMaj;

    return-void

    .line 268
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must be square"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected rank1UpdateMultL(Lorg/ejml/data/DMatrixRMaj;DIII)V
    .locals 7

    .line 284
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->w:[D

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

    .line 288
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->w:[D

    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRM;->b:[D

    move-object v0, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;[DDIII[D)V

    return-void
.end method
