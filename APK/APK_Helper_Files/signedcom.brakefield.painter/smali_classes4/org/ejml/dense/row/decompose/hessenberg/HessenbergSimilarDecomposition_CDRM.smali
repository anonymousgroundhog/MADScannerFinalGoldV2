.class public Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;
.super Ljava/lang/Object;
.source "HessenbergSimilarDecomposition_CDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/DecompositionInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/DecompositionInterface<",
        "Lorg/ejml/data/CMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field private N:I

.field private QH:Lorg/ejml/data/CMatrixRMaj;

.field private b:[F

.field private gammas:[F

.field private tau:Lorg/ejml/data/Complex_F32;

.field private u:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    .line 82
    invoke-direct {p0, v0}, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lorg/ejml/data/Complex_F32;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F32;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    .line 76
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->gammas:[F

    mul-int/lit8 p1, p1, 0x2

    .line 77
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->b:[F

    .line 78
    new-array p1, p1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->u:[F

    return-void
.end method

.method private _decompose()Z
    .locals 22

    move-object/from16 v0, p0

    .line 166
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->QH:Lorg/ejml/data/CMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    const/4 v2, 0x0

    .line 168
    :goto_0
    iget v5, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->N:I

    add-int/lit8 v3, v5, -0x2

    const/4 v9, 0x1

    if-ge v2, v3, :cond_2

    .line 169
    iget-object v7, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->u:[F

    mul-int/lit8 v3, v2, 0x2

    const/4 v10, 0x0

    aput v10, v7, v3

    add-int/2addr v3, v9

    .line 170
    aput v10, v7, v3

    .line 171
    iget-object v3, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->QH:Lorg/ejml/data/CMatrixRMaj;

    add-int/lit8 v15, v2, 0x1

    const/4 v8, 0x0

    move v4, v15

    move v6, v2

    invoke-static/range {v3 .. v8}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->extractColumnAndMax(Lorg/ejml/data/CMatrixRMaj;III[FI)F

    move-result v3

    cmpl-float v4, v3, v10

    if-lez v4, :cond_1

    .line 176
    iget v4, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->N:I

    iget-object v5, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->u:[F

    iget-object v6, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    invoke-static {v15, v4, v5, v3, v6}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->computeTauGammaAndDivide(II[FFLorg/ejml/data/Complex_F32;)F

    move-result v4

    .line 177
    iget-object v5, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->gammas:[F

    aput v4, v5, v2

    .line 180
    iget-object v5, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->u:[F

    mul-int/lit8 v6, v15, 0x2

    aget v5, v5, v6

    iget-object v7, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    iget v7, v7, Lorg/ejml/data/Complex_F32;->real:F

    add-float v20, v5, v7

    .line 181
    iget-object v5, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->u:[F

    add-int/lit8 v7, v6, 0x1

    aget v5, v5, v7

    iget-object v8, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    iget v8, v8, Lorg/ejml/data/Complex_F32;->imaginary:F

    add-float v21, v5, v8

    add-int/lit8 v5, v2, 0x2

    .line 182
    iget v8, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->N:I

    iget-object v11, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->u:[F

    const/16 v19, 0x0

    move/from16 v16, v5

    move/from16 v17, v8

    move-object/from16 v18, v11

    invoke-static/range {v16 .. v21}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->divideElements(II[FIFF)V

    .line 185
    :goto_1
    iget v8, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->N:I

    if-ge v5, v8, :cond_0

    mul-int v11, v5, v8

    add-int/2addr v11, v2

    mul-int/lit8 v11, v11, 0x2

    .line 186
    iget-object v12, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->u:[F

    mul-int/lit8 v13, v5, 0x2

    aget v14, v12, v13

    aput v14, v1, v11

    mul-int/2addr v8, v5

    add-int/2addr v8, v2

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v9

    add-int/2addr v13, v9

    .line 187
    aget v11, v12, v13

    aput v11, v1, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 190
    :cond_0
    iget-object v12, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->u:[F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v12, v6

    .line 191
    aput v10, v12, v7

    .line 194
    iget-object v11, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->QH:Lorg/ejml/data/CMatrixRMaj;

    const/4 v13, 0x0

    iget-object v5, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->b:[F

    move v14, v4

    move v6, v15

    move/from16 v16, v6

    move/from16 v17, v8

    move-object/from16 v18, v5

    invoke-static/range {v11 .. v18}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->rank1UpdateMultR(Lorg/ejml/data/CMatrixRMaj;[FIFIII[F)V

    .line 197
    iget-object v11, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->QH:Lorg/ejml/data/CMatrixRMaj;

    iget-object v12, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->u:[F

    const/4 v15, 0x0

    iget v5, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->N:I

    move/from16 v17, v5

    invoke-static/range {v11 .. v17}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->rank1UpdateMultL(Lorg/ejml/data/CMatrixRMaj;[FIFIII)V

    .line 201
    iget v4, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->N:I

    mul-int v15, v6, v4

    add-int/2addr v15, v2

    mul-int/lit8 v15, v15, 0x2

    iget-object v4, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    iget v4, v4, Lorg/ejml/data/Complex_F32;->real:F

    neg-float v4, v4

    mul-float/2addr v4, v3

    aput v4, v1, v15

    .line 202
    iget v4, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->N:I

    mul-int v15, v6, v4

    add-int/2addr v15, v2

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v9

    iget-object v2, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->tau:Lorg/ejml/data/Complex_F32;

    iget v2, v2, Lorg/ejml/data/Complex_F32;->imaginary:F

    neg-float v2, v2

    mul-float/2addr v2, v3

    aput v2, v1, v15

    goto :goto_2

    :cond_1
    move v6, v15

    .line 204
    iget-object v3, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->gammas:[F

    aput v10, v3, v2

    :goto_2
    move v2, v6

    goto/16 :goto_0

    :cond_2
    return v9
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/CMatrixRMaj;)Z
    .locals 2

    .line 94
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_2

    .line 96
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 99
    :cond_0
    iput-object p1, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->QH:Lorg/ejml/data/CMatrixRMaj;

    .line 101
    iget p1, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    iput p1, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->N:I

    .line 103
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->b:[F

    array-length v0, v0

    mul-int/lit8 v1, p1, 0x2

    if-ge v0, v1, :cond_1

    mul-int/lit8 v0, p1, 0x2

    .line 104
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->b:[F

    .line 105
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->gammas:[F

    mul-int/lit8 p1, p1, 0x2

    .line 106
    new-array p1, p1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->u:[F

    .line 108
    :cond_1
    invoke-direct {p0}, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->_decompose()Z

    move-result p1

    return p1

    .line 95
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A must be square."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 53
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->decompose(Lorg/ejml/data/CMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getGammas()[F
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->gammas:[F

    return-object v0
.end method

.method public getH(Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;
    .locals 7

    .line 132
    iget v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->N:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_CDRM;->checkZeros(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    .line 135
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->QH:Lorg/ejml/data/CMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget-object v1, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget v2, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->N:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    move v1, v0

    .line 137
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->N:I

    if-ge v1, v2, :cond_0

    .line 138
    iget-object v2, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->QH:Lorg/ejml/data/CMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget v3, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->N:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v1

    sub-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x2

    iget-object v4, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget v5, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->N:I

    mul-int v6, v1, v5

    add-int/2addr v6, v1

    sub-int/2addr v6, v0

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v1

    add-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v2, v3, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public getQ(Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;
    .locals 10

    .line 151
    iget v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->N:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_CDRM;->checkIdentity(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    .line 153
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->u:[F

    iget v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->N:I

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([FIIF)V

    .line 154
    iget v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->N:I

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_0

    .line 155
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->QH:Lorg/ejml/data/CMatrixRMaj;

    add-int/lit8 v7, v0, 0x1

    iget v3, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->N:I

    iget-object v5, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->u:[F

    const/4 v6, 0x0

    move v2, v7

    move v4, v0

    invoke-static/range {v1 .. v6}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->extractHouseholderColumn(Lorg/ejml/data/CMatrixRMaj;III[FI)V

    .line 156
    iget-object v2, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->u:[F

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->gammas:[F

    aget v4, v1, v0

    iget v8, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->N:I

    iget-object v9, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->b:[F

    move-object v1, p1

    move v5, v7

    move v6, v7

    move v7, v8

    move-object v8, v9

    invoke-static/range {v1 .. v8}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->rank1UpdateMultR(Lorg/ejml/data/CMatrixRMaj;[FIFIII[F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public getQH()Lorg/ejml/data/CMatrixRMaj;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_CDRM;->QH:Lorg/ejml/data/CMatrixRMaj;

    return-object v0
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
