.class public Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;
.super Ljava/lang/Object;
.source "HessenbergSimilarDecomposition_ZDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/DecompositionInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/DecompositionInterface<",
        "Lorg/ejml/data/ZMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field private N:I

.field private QH:Lorg/ejml/data/ZMatrixRMaj;

.field private b:[D

.field private gammas:[D

.field private tau:Lorg/ejml/data/Complex_F64;

.field private u:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    .line 80
    invoke-direct {p0, v0}, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lorg/ejml/data/Complex_F64;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F64;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    .line 74
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->gammas:[D

    mul-int/lit8 p1, p1, 0x2

    .line 75
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->b:[D

    .line 76
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->u:[D

    return-void
.end method

.method private _decompose()Z
    .locals 30

    move-object/from16 v0, p0

    .line 164
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->QH:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    const/4 v2, 0x0

    .line 166
    :goto_0
    iget v5, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->N:I

    add-int/lit8 v3, v5, -0x2

    const/4 v9, 0x1

    if-ge v2, v3, :cond_2

    .line 167
    iget-object v7, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->u:[D

    mul-int/lit8 v3, v2, 0x2

    const-wide/16 v10, 0x0

    aput-wide v10, v7, v3

    add-int/2addr v3, v9

    .line 168
    aput-wide v10, v7, v3

    .line 169
    iget-object v3, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->QH:Lorg/ejml/data/ZMatrixRMaj;

    add-int/lit8 v21, v2, 0x1

    const/4 v8, 0x0

    move/from16 v4, v21

    move v6, v2

    invoke-static/range {v3 .. v8}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->extractColumnAndMax(Lorg/ejml/data/ZMatrixRMaj;III[DI)D

    move-result-wide v3

    cmpl-double v5, v3, v10

    if-lez v5, :cond_1

    .line 174
    iget v13, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->N:I

    iget-object v14, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->u:[D

    iget-object v5, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    move/from16 v12, v21

    move-wide v15, v3

    move-object/from16 v17, v5

    invoke-static/range {v12 .. v17}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->computeTauGammaAndDivide(II[DDLorg/ejml/data/Complex_F64;)D

    move-result-wide v5

    .line 175
    iget-object v7, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->gammas:[D

    aput-wide v5, v7, v2

    .line 178
    iget-object v7, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->u:[D

    mul-int/lit8 v8, v21, 0x2

    aget-wide v12, v7, v8

    iget-object v7, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    iget-wide v14, v7, Lorg/ejml/data/Complex_F64;->real:D

    add-double v26, v12, v14

    .line 179
    iget-object v7, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->u:[D

    add-int/lit8 v12, v8, 0x1

    aget-wide v13, v7, v12

    iget-object v7, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    iget-wide v10, v7, Lorg/ejml/data/Complex_F64;->imaginary:D

    add-double v28, v13, v10

    add-int/lit8 v7, v2, 0x2

    .line 180
    iget v10, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->N:I

    iget-object v11, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->u:[D

    const/16 v25, 0x0

    move/from16 v22, v7

    move/from16 v23, v10

    move-object/from16 v24, v11

    invoke-static/range {v22 .. v29}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->divideElements(II[DIDD)V

    .line 183
    :goto_1
    iget v10, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->N:I

    if-ge v7, v10, :cond_0

    mul-int v11, v7, v10

    add-int/2addr v11, v2

    mul-int/lit8 v11, v11, 0x2

    .line 184
    iget-object v13, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->u:[D

    mul-int/lit8 v14, v7, 0x2

    aget-wide v17, v13, v14

    aput-wide v17, v1, v11

    mul-int/2addr v10, v7

    add-int/2addr v10, v2

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v9

    add-int/2addr v14, v9

    .line 185
    aget-wide v13, v13, v14

    aput-wide v13, v1, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 188
    :cond_0
    iget-object v13, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->u:[D

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    aput-wide v17, v13, v8

    const-wide/16 v7, 0x0

    .line 189
    aput-wide v7, v13, v12

    .line 192
    iget-object v12, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->QH:Lorg/ejml/data/ZMatrixRMaj;

    const/4 v14, 0x0

    iget-object v7, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->b:[D

    move-wide v15, v5

    move/from16 v17, v21

    move/from16 v18, v21

    move/from16 v19, v10

    move-object/from16 v20, v7

    invoke-static/range {v12 .. v20}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->rank1UpdateMultR(Lorg/ejml/data/ZMatrixRMaj;[DIDIII[D)V

    .line 195
    iget-object v12, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->QH:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v13, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->u:[D

    const/16 v17, 0x0

    iget v7, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->N:I

    move/from16 v19, v7

    invoke-static/range {v12 .. v19}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->rank1UpdateMultL(Lorg/ejml/data/ZMatrixRMaj;[DIDIII)V

    .line 199
    iget v5, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->N:I

    mul-int v5, v5, v21

    add-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0x2

    iget-object v6, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    iget-wide v6, v6, Lorg/ejml/data/Complex_F64;->real:D

    neg-double v6, v6

    mul-double/2addr v6, v3

    aput-wide v6, v1, v5

    .line 200
    iget v5, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->N:I

    mul-int v5, v5, v21

    add-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v9

    iget-object v2, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    iget-wide v6, v2, Lorg/ejml/data/Complex_F64;->imaginary:D

    neg-double v6, v6

    mul-double/2addr v6, v3

    aput-wide v6, v1, v5

    goto :goto_2

    .line 202
    :cond_1
    iget-object v3, v0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->gammas:[D

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    :goto_2
    move/from16 v2, v21

    goto/16 :goto_0

    :cond_2
    return v9
.end method


# virtual methods
.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 52
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->decompose(Lorg/ejml/data/ZMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public decompose(Lorg/ejml/data/ZMatrixRMaj;)Z
    .locals 2

    .line 92
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_2

    .line 94
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 97
    :cond_0
    iput-object p1, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->QH:Lorg/ejml/data/ZMatrixRMaj;

    .line 99
    iget p1, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iput p1, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->N:I

    .line 101
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->b:[D

    array-length v0, v0

    mul-int/lit8 v1, p1, 0x2

    if-ge v0, v1, :cond_1

    mul-int/lit8 v0, p1, 0x2

    .line 102
    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->b:[D

    .line 103
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->gammas:[D

    mul-int/lit8 p1, p1, 0x2

    .line 104
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->u:[D

    .line 106
    :cond_1
    invoke-direct {p0}, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->_decompose()Z

    move-result p1

    return p1

    .line 93
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A must be square."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getGammas()[D
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->gammas:[D

    return-object v0
.end method

.method public getH(Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;
    .locals 7

    .line 130
    iget v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->N:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_ZDRM;->checkZeros(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    .line 133
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->QH:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget-object v1, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget v2, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->N:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    move v1, v0

    .line 135
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->N:I

    if-ge v1, v2, :cond_0

    .line 136
    iget-object v2, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->QH:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget v3, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->N:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v1

    sub-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x2

    iget-object v4, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget v5, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->N:I

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

.method public getQ(Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;
    .locals 10

    .line 149
    iget v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->N:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_ZDRM;->checkIdentity(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    .line 151
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->u:[D

    iget v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->N:I

    mul-int/lit8 v1, v1, 0x2

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/util/Arrays;->fill([DIID)V

    .line 152
    iget v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->N:I

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_0

    .line 153
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->QH:Lorg/ejml/data/ZMatrixRMaj;

    add-int/lit8 v7, v0, 0x1

    iget v3, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->N:I

    iget-object v5, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->u:[D

    const/4 v6, 0x0

    move v2, v7

    move v4, v0

    invoke-static/range {v1 .. v6}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->extractHouseholderColumn(Lorg/ejml/data/ZMatrixRMaj;III[DI)V

    .line 154
    iget-object v2, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->u:[D

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->gammas:[D

    aget-wide v4, v1, v0

    iget v8, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->N:I

    iget-object v9, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->b:[D

    move-object v1, p1

    move v6, v7

    invoke-static/range {v1 .. v9}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->rank1UpdateMultR(Lorg/ejml/data/ZMatrixRMaj;[DIDIII[D)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public getQH()Lorg/ejml/data/ZMatrixRMaj;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/HessenbergSimilarDecomposition_ZDRM;->QH:Lorg/ejml/data/ZMatrixRMaj;

    return-object v0
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
