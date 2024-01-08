.class public Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;
.super Ljava/lang/Object;
.source "HessenbergSimilarDecomposition_FDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/DecompositionInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/DecompositionInterface<",
        "Lorg/ejml/data/FMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field private N:I

.field private QH:Lorg/ejml/data/FMatrixRMaj;

.field protected b:[F

.field private gammas:[F

.field protected u:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    .line 78
    invoke-direct {p0, v0}, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->gammas:[F

    .line 73
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->b:[F

    .line 74
    new-array p1, p1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->u:[F

    return-void
.end method

.method private _decompose()Z
    .locals 12

    .line 166
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->QH:Lorg/ejml/data/FMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x0

    .line 168
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->N:I

    add-int/lit8 v2, v2, -0x2

    if-ge v1, v2, :cond_6

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    move v4, v2

    move v9, v3

    .line 173
    :goto_1
    iget v5, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->N:I

    if-ge v4, v5, :cond_1

    .line 176
    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->u:[F

    mul-int/2addr v5, v4

    add-int/2addr v5, v1

    aget v5, v0, v5

    aput v5, v6, v4

    .line 177
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v6, v5, v9

    if-lez v6, :cond_0

    move v9, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    cmpl-float v4, v9, v3

    if-lez v4, :cond_5

    move v4, v2

    move v5, v3

    .line 188
    :goto_2
    iget v6, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->N:I

    if-ge v4, v6, :cond_2

    .line 189
    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->u:[F

    aget v7, v6, v4

    div-float/2addr v7, v9

    aput v7, v6, v4

    mul-float/2addr v7, v7

    add-float/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    float-to-double v4, v5

    .line 193
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 195
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->u:[F

    aget v6, v5, v2

    cmpg-float v3, v6, v3

    if-gez v3, :cond_3

    neg-float v4, v4

    :cond_3
    move v10, v4

    add-float/2addr v6, v10

    const/high16 v3, 0x3f800000    # 1.0f

    .line 200
    aput v3, v5, v2

    add-int/lit8 v3, v1, 0x2

    .line 202
    :goto_3
    iget v8, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->N:I

    if-ge v3, v8, :cond_4

    mul-int/2addr v8, v3

    add-int/2addr v8, v1

    .line 203
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->u:[F

    aget v5, v4, v3

    div-float/2addr v5, v6

    aput v5, v4, v3

    aput v5, v0, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    div-float v11, v6, v10

    .line 207
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->gammas:[F

    aput v11, v3, v1

    .line 210
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->QH:Lorg/ejml/data/FMatrixRMaj;

    move-object v3, p0

    move v5, v11

    move v6, v2

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;FIII)V

    .line 213
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->QH:Lorg/ejml/data/FMatrixRMaj;

    const/4 v6, 0x0

    iget v8, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->N:I

    invoke-virtual/range {v3 .. v8}, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->rank1UpdateMultL(Lorg/ejml/data/FMatrixRMaj;FIII)V

    .line 217
    iget v3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->N:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v1

    neg-float v1, v10

    mul-float/2addr v1, v9

    aput v1, v0, v3

    goto :goto_4

    .line 219
    :cond_5
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->gammas:[F

    aput v3, v4, v1

    :goto_4
    move v1, v2

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 2

    .line 90
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_2

    .line 92
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 95
    :cond_0
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->QH:Lorg/ejml/data/FMatrixRMaj;

    .line 97
    iget p1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iput p1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->N:I

    .line 99
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->b:[F

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 100
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->b:[F

    .line 101
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->gammas:[F

    .line 102
    new-array p1, p1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->u:[F

    .line 104
    :cond_1
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->_decompose()Z

    move-result p1

    return p1

    .line 91
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A must be square."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 50
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getGammas()[F
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->gammas:[F

    return-object v0
.end method

.method public getH(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 4

    .line 128
    iget v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->N:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->ensureZeros(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    .line 131
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->QH:Lorg/ejml/data/FMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->N:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    .line 133
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->N:I

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, -0x1

    .line 134
    :goto_1
    iget v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->N:I

    if-ge v1, v2, :cond_0

    .line 135
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->QH:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v2, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getQ(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 7

    .line 149
    iget v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->N:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->ensureIdentity(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    .line 151
    iget v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->N:I

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_1

    .line 152
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->u:[F

    add-int/lit8 v5, v0, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v5

    add-int/lit8 v1, v0, 0x2

    .line 153
    :goto_1
    iget v6, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->N:I

    if-ge v1, v6, :cond_0

    .line 154
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->u:[F

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->QH:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v3, v1, v0}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 156
    :cond_0
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->gammas:[F

    aget v3, v1, v0

    move-object v1, p0

    move-object v2, p1

    move v4, v5

    invoke-virtual/range {v1 .. v6}, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;FIII)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getQH()Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->QH:Lorg/ejml/data/FMatrixRMaj;

    return-object v0
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected rank1UpdateMultL(Lorg/ejml/data/FMatrixRMaj;FIII)V
    .locals 6

    .line 227
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->u:[F

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

    .line 231
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->u:[F

    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->b:[F

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;[FFIII[F)V

    return-void
.end method
