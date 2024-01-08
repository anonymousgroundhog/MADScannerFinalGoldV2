.class public Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;
.super Ljava/lang/Object;
.source "HessenbergSimilarDecomposition_DDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/DecompositionInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/DecompositionInterface<",
        "Lorg/ejml/data/DMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field private N:I

.field private QH:Lorg/ejml/data/DMatrixRMaj;

.field protected b:[D

.field private gammas:[D

.field protected u:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    .line 76
    invoke-direct {p0, v0}, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->gammas:[D

    .line 71
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->b:[D

    .line 72
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->u:[D

    return-void
.end method

.method private _decompose()Z
    .locals 18

    move-object/from16 v7, p0

    .line 164
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->QH:Lorg/ejml/data/DMatrixRMaj;

    iget-object v8, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v0, 0x0

    move v9, v0

    .line 166
    :goto_0
    iget v0, v7, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->N:I

    add-int/lit8 v0, v0, -0x2

    if-ge v9, v0, :cond_6

    add-int/lit8 v10, v9, 0x1

    const-wide/16 v0, 0x0

    move-wide v11, v0

    move v2, v10

    .line 171
    :goto_1
    iget v3, v7, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->N:I

    if-ge v2, v3, :cond_1

    .line 174
    iget-object v4, v7, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->u:[D

    mul-int/2addr v3, v2

    add-int/2addr v3, v9

    aget-wide v5, v8, v3

    aput-wide v5, v4, v2

    .line 175
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v5, v3, v11

    if-lez v5, :cond_0

    move-wide v11, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    cmpl-double v2, v11, v0

    if-lez v2, :cond_5

    move-wide v3, v0

    move v2, v10

    .line 186
    :goto_2
    iget v5, v7, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->N:I

    if-ge v2, v5, :cond_2

    .line 187
    iget-object v5, v7, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->u:[D

    aget-wide v13, v5, v2

    div-double/2addr v13, v11

    aput-wide v13, v5, v2

    mul-double/2addr v13, v13

    add-double/2addr v3, v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 191
    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 193
    iget-object v4, v7, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->u:[D

    aget-wide v5, v4, v10

    cmpg-double v0, v5, v0

    if-gez v0, :cond_3

    neg-double v2, v2

    :cond_3
    move-wide v13, v2

    add-double/2addr v5, v13

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 198
    aput-wide v0, v4, v10

    add-int/lit8 v0, v9, 0x2

    .line 200
    :goto_3
    iget v15, v7, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->N:I

    if-ge v0, v15, :cond_4

    mul-int/2addr v15, v0

    add-int/2addr v15, v9

    .line 201
    iget-object v1, v7, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->u:[D

    aget-wide v2, v1, v0

    div-double/2addr v2, v5

    aput-wide v2, v1, v0

    aput-wide v2, v8, v15

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    div-double v16, v5, v13

    .line 205
    iget-object v0, v7, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->gammas:[D

    aput-wide v16, v0, v9

    .line 208
    iget-object v1, v7, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->QH:Lorg/ejml/data/DMatrixRMaj;

    move-object/from16 v0, p0

    move-wide/from16 v2, v16

    move v4, v10

    move v5, v10

    move v6, v15

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;DIII)V

    .line 211
    iget-object v1, v7, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->QH:Lorg/ejml/data/DMatrixRMaj;

    const/4 v4, 0x0

    iget v6, v7, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->N:I

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->rank1UpdateMultL(Lorg/ejml/data/DMatrixRMaj;DIII)V

    .line 215
    iget v0, v7, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->N:I

    mul-int/2addr v0, v10

    add-int/2addr v0, v9

    neg-double v1, v13

    mul-double/2addr v1, v11

    aput-wide v1, v8, v0

    goto :goto_4

    .line 217
    :cond_5
    iget-object v2, v7, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->gammas:[D

    aput-wide v0, v2, v9

    :goto_4
    move v9, v10

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 2

    .line 88
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_2

    .line 90
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 93
    :cond_0
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->QH:Lorg/ejml/data/DMatrixRMaj;

    .line 95
    iget p1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iput p1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->N:I

    .line 97
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->b:[D

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 98
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->b:[D

    .line 99
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->gammas:[D

    .line 100
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->u:[D

    .line 102
    :cond_1
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->_decompose()Z

    move-result p1

    return p1

    .line 89
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A must be square."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 49
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getGammas()[D
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->gammas:[D

    return-object v0
.end method

.method public getH(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 4

    .line 126
    iget v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->N:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->ensureZeros(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    .line 129
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->QH:Lorg/ejml/data/DMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->N:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    .line 131
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->N:I

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, -0x1

    .line 132
    :goto_1
    iget v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->N:I

    if-ge v1, v2, :cond_0

    .line 133
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->QH:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getQ(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 8

    .line 147
    iget v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->N:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->ensureIdentity(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    .line 149
    iget v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->N:I

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_1

    .line 150
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->u:[D

    add-int/lit8 v6, v0, 0x1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v1, v6

    add-int/lit8 v1, v0, 0x2

    .line 151
    :goto_1
    iget v7, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->N:I

    if-ge v1, v7, :cond_0

    .line 152
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->u:[D

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->QH:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v3, v1, v0}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 154
    :cond_0
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->gammas:[D

    aget-wide v3, v1, v0

    move-object v1, p0

    move-object v2, p1

    move v5, v6

    invoke-virtual/range {v1 .. v7}, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;DIII)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getQH()Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->QH:Lorg/ejml/data/DMatrixRMaj;

    return-object v0
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected rank1UpdateMultL(Lorg/ejml/data/DMatrixRMaj;DIII)V
    .locals 7

    .line 225
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->u:[D

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

    .line 229
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->u:[D

    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->b:[D

    move-object v0, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_DDRM;->rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;[DDIII[D)V

    return-void
.end method
