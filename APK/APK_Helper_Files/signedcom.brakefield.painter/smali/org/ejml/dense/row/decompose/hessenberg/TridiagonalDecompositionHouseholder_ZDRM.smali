.class public Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;
.super Ljava/lang/Object;
.source "TridiagonalDecompositionHouseholder_ZDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64<",
        "Lorg/ejml/data/ZMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field private N:I

.field private QT:Lorg/ejml/data/ZMatrixRMaj;

.field private b:[D

.field private gammas:[D

.field private final tau:Lorg/ejml/data/Complex_F64;

.field private w:[D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lorg/ejml/data/Complex_F64;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F64;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    const/4 v0, 0x1

    .line 74
    iput v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    const/4 v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    .line 75
    new-array v1, v1, [D

    iput-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->w:[D

    mul-int/lit8 v1, v0, 0x2

    .line 76
    new-array v1, v1, [D

    iput-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->b:[D

    new-array v0, v0, [D

    .line 77
    iput-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->gammas:[D

    return-void
.end method

.method private similarTransform(I)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 171
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    .line 175
    iget-object v3, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    add-int/lit8 v4, v1, 0x1

    iget v5, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    invoke-static {v3, v1, v4, v5}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->computeRowMax(Lorg/ejml/data/ZMatrixRMaj;III)D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v3, v11, v13

    if-lez v3, :cond_1

    .line 178
    iget v3, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    mul-int v4, v1, v3

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    mul-int v5, v1, v3

    add-int/2addr v5, v3

    iget-object v8, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    move v3, v4

    move v4, v5

    move-object v5, v2

    move-wide v6, v11

    invoke-static/range {v3 .. v8}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->computeTauGammaAndDivide(II[DDLorg/ejml/data/Complex_F64;)D

    move-result-wide v9

    .line 179
    iget-object v3, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->gammas:[D

    aput-wide v9, v3, v1

    .line 182
    iget v3, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x2

    aget-wide v3, v2, v3

    iget-object v5, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    iget-wide v5, v5, Lorg/ejml/data/Complex_F64;->real:D

    add-double v7, v3, v5

    .line 183
    iget v3, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-wide v3, v2, v3

    iget-object v5, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    iget-wide v5, v5, Lorg/ejml/data/Complex_F64;->imaginary:D

    add-double v15, v3, v5

    add-int/lit8 v17, v1, 0x2

    .line 184
    iget v4, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    mul-int v6, v1, v4

    move/from16 v3, v17

    move-object v5, v2

    move-wide/from16 v18, v9

    move-wide v9, v15

    invoke-static/range {v3 .. v10}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->divideElements(II[DIDD)V

    .line 188
    :goto_0
    iget v4, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    if-ge v3, v4, :cond_0

    mul-int v5, v1, v4

    add-int/2addr v5, v3

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    .line 189
    aget-wide v6, v2, v4

    neg-double v6, v6

    aput-wide v6, v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    mul-int v3, v1, v4

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 192
    aput-wide v5, v2, v3

    mul-int v3, v1, v4

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    .line 193
    aput-wide v13, v2, v3

    move-wide/from16 v3, v18

    .line 199
    invoke-virtual {v0, v1, v3, v4}, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->householderSymmetric(ID)V

    .line 203
    iget v3, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x2

    iget-object v4, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    iget-wide v4, v4, Lorg/ejml/data/Complex_F64;->real:D

    neg-double v4, v4

    mul-double/2addr v4, v11

    aput-wide v4, v2, v3

    .line 204
    iget v3, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    iget-object v1, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->tau:Lorg/ejml/data/Complex_F64;

    iget-wide v4, v1, Lorg/ejml/data/Complex_F64;->imaginary:D

    neg-double v4, v4

    mul-double/2addr v4, v11

    aput-wide v4, v2, v3

    goto :goto_1

    .line 206
    :cond_1
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->gammas:[D

    aput-wide v13, v2, v1

    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 51
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->decompose(Lorg/ejml/data/ZMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public decompose(Lorg/ejml/data/ZMatrixRMaj;)Z
    .locals 2

    .line 158
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->init(Lorg/ejml/data/ZMatrixRMaj;)V

    const/4 p1, 0x0

    .line 160
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    .line 161
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->similarTransform(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getDiagonal([D[D)V
    .locals 7

    const/4 v0, 0x0

    .line 89
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    if-ge v0, v1, :cond_1

    mul-int/lit8 v1, v0, 0x2

    .line 90
    iget-object v2, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget v3, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x2

    aget-wide v2, v2, v3

    aput-wide v2, p1, v1

    add-int/lit8 v2, v1, 0x1

    .line 91
    iget-object v3, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget v4, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    mul-int v5, v0, v4

    add-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-wide v5, v3, v5

    aput-wide v5, p1, v2

    add-int/lit8 v3, v0, 0x1

    if-ge v3, v4, :cond_0

    .line 94
    iget-object v4, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget v5, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, 0x2

    aget-wide v4, v4, v5

    aput-wide v4, p2, v1

    .line 95
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget v4, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-wide v0, v1, v4

    aput-wide v0, p2, v2

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getGammas()[D
    .locals 1

    .line 331
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->gammas:[D

    return-object v0
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 51
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->getQ(Lorg/ejml/data/ZMatrixRMaj;Z)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getQ(Lorg/ejml/data/ZMatrixRMaj;Z)Lorg/ejml/data/ZMatrixRMaj;
    .locals 10

    .line 132
    iget v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_ZDRM;->checkIdentity(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    .line 134
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->w:[D

    iget v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    mul-int/lit8 v1, v1, 0x2

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/util/Arrays;->fill([DIID)V

    if-eqz p2, :cond_0

    .line 137
    iget p2, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    add-int/lit8 p2, p2, -0x2

    :goto_0
    if-ltz p2, :cond_1

    .line 138
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    add-int/lit8 v7, p2, 0x1

    iget v3, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    iget-object v4, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->w:[D

    const/4 v5, 0x0

    move v1, p2

    move v2, v7

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->extractHouseholderRow(Lorg/ejml/data/ZMatrixRMaj;III[DI)V

    .line 139
    iget-object v2, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->w:[D

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->gammas:[D

    aget-wide v4, v0, p2

    iget v8, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    move-object v1, p1

    move v6, v7

    invoke-static/range {v1 .. v8}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->rank1UpdateMultL(Lorg/ejml/data/ZMatrixRMaj;[DIDIII)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 142
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    add-int/lit8 p2, p2, -0x2

    :goto_1
    if-ltz p2, :cond_1

    .line 143
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    add-int/lit8 v7, p2, 0x1

    iget v3, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    iget-object v4, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->w:[D

    const/4 v5, 0x0

    move v1, p2

    move v2, v7

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->extractHouseholderRow(Lorg/ejml/data/ZMatrixRMaj;III[DI)V

    .line 144
    iget-object v2, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->w:[D

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->gammas:[D

    aget-wide v4, v0, p2

    iget v8, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    iget-object v9, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->b:[D

    move-object v1, p1

    move v6, v7

    invoke-static/range {v1 .. v9}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->rank1UpdateMultR(Lorg/ejml/data/ZMatrixRMaj;[DIDIII[D)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public getQT()Lorg/ejml/data/ZMatrixRMaj;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    return-object v0
.end method

.method public bridge synthetic getT(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 51
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->getT(Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getT(Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;
    .locals 13

    .line 108
    iget v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_ZDRM;->checkZeros(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    .line 110
    iget-object v0, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    aput-wide v3, v0, v2

    .line 111
    iget-object v0, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    const/4 v2, 0x1

    aget-wide v3, v1, v2

    aput-wide v3, v0, v2

    move v0, v2

    .line 113
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    if-ge v0, v1, :cond_0

    .line 114
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {v1, v0, v0}, Lorg/ejml/data/ZMatrixRMaj;->getReal(II)D

    move-result-wide v4

    iget-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {v1, v0, v0}, Lorg/ejml/data/ZMatrixRMaj;->getImag(II)D

    move-result-wide v6

    move-object v1, p1

    move v2, v0

    move v3, v0

    invoke-virtual/range {v1 .. v7}, Lorg/ejml/data/ZMatrixRMaj;->set(IIDD)V

    .line 115
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v1, v8, v0}, Lorg/ejml/data/ZMatrixRMaj;->getReal(II)D

    move-result-wide v9

    .line 116
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {v1, v8, v0}, Lorg/ejml/data/ZMatrixRMaj;->getImag(II)D

    move-result-wide v11

    move-object v1, p1

    move v2, v8

    move-wide v4, v9

    move-wide v6, v11

    .line 117
    invoke-virtual/range {v1 .. v7}, Lorg/ejml/data/ZMatrixRMaj;->set(IIDD)V

    neg-double v6, v11

    move v2, v0

    move v3, v8

    .line 118
    invoke-virtual/range {v1 .. v7}, Lorg/ejml/data/ZMatrixRMaj;->set(IIDD)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public householderSymmetric(ID)V
    .locals 29

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    .line 217
    iget v3, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    mul-int v3, v3, p1

    add-int/lit8 v4, p1, 0x1

    move v5, v4

    .line 220
    :goto_0
    iget v6, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    const-wide/16 v7, 0x0

    if-ge v5, v6, :cond_2

    move v6, v4

    move-wide v9, v7

    :goto_1
    if-ge v6, v5, :cond_0

    .line 228
    iget-object v11, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v11, v11, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget v12, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    mul-int/2addr v12, v6

    add-int/2addr v12, v5

    mul-int/lit8 v12, v12, 0x2

    aget-wide v11, v11, v12

    .line 229
    iget-object v13, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v13, v13, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget v14, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    mul-int/2addr v14, v6

    add-int/2addr v14, v5

    mul-int/lit8 v14, v14, 0x2

    add-int/lit8 v14, v14, 0x1

    aget-wide v13, v13, v14

    neg-double v13, v13

    .line 231
    iget-object v15, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v15, v15, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int v16, v3, v6

    mul-int/lit8 v16, v16, 0x2

    aget-wide v17, v15, v16

    .line 232
    iget-object v15, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v15, v15, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v16, v16, 0x1

    aget-wide v15, v15, v16

    mul-double v19, v11, v17

    mul-double v21, v13, v15

    sub-double v19, v19, v21

    add-double v7, v7, v19

    mul-double/2addr v11, v15

    mul-double v13, v13, v17

    add-double/2addr v11, v13

    add-double/2addr v9, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v5

    .line 237
    :goto_2
    iget v11, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    if-ge v6, v11, :cond_1

    .line 238
    iget-object v11, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v11, v11, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget v12, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    mul-int/2addr v12, v5

    add-int/2addr v12, v6

    mul-int/lit8 v12, v12, 0x2

    aget-wide v11, v11, v12

    .line 239
    iget-object v13, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v13, v13, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget v14, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    mul-int/2addr v14, v5

    add-int/2addr v14, v6

    mul-int/lit8 v14, v14, 0x2

    add-int/lit8 v14, v14, 0x1

    aget-wide v13, v13, v14

    .line 241
    iget-object v15, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v15, v15, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int v16, v3, v6

    mul-int/lit8 v16, v16, 0x2

    aget-wide v17, v15, v16

    .line 242
    iget-object v15, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v15, v15, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v16, v16, 0x1

    aget-wide v15, v15, v16

    mul-double v19, v11, v17

    mul-double v21, v13, v15

    sub-double v19, v19, v21

    add-double v7, v7, v19

    mul-double/2addr v11, v15

    mul-double v13, v13, v17

    add-double/2addr v11, v13

    add-double/2addr v9, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 247
    :cond_1
    iget-object v6, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->w:[D

    mul-int/lit8 v11, v5, 0x2

    neg-double v12, v1

    mul-double/2addr v7, v12

    aput-wide v7, v6, v11

    add-int/lit8 v11, v11, 0x1

    mul-double/2addr v12, v9

    .line 248
    aput-wide v12, v6, v11

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_2
    move v9, v4

    move-wide v5, v7

    .line 255
    :goto_3
    iget v10, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    if-ge v9, v10, :cond_3

    .line 256
    iget-object v10, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v10, v10, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int v11, v3, v9

    mul-int/lit8 v11, v11, 0x2

    aget-wide v12, v10, v11

    .line 257
    iget-object v10, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v10, v10, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v11, v11, 0x1

    aget-wide v10, v10, v11

    neg-double v10, v10

    .line 259
    iget-object v14, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->w:[D

    mul-int/lit8 v15, v9, 0x2

    aget-wide v16, v14, v15

    add-int/lit8 v15, v15, 0x1

    .line 260
    aget-wide v14, v14, v15

    mul-double v18, v12, v16

    mul-double v20, v10, v14

    sub-double v18, v18, v20

    add-double v7, v7, v18

    mul-double/2addr v12, v14

    mul-double v10, v10, v16

    add-double/2addr v12, v10

    add-double/2addr v5, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    const-wide/high16 v9, -0x4020000000000000L    # -0.5

    mul-double/2addr v1, v9

    mul-double/2addr v7, v1

    mul-double/2addr v5, v1

    move v1, v4

    .line 269
    :goto_4
    iget v2, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    if-ge v1, v2, :cond_4

    .line 270
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int v9, v3, v1

    mul-int/lit8 v9, v9, 0x2

    aget-wide v10, v2, v9

    .line 271
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v2, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v9, v9, 0x1

    aget-wide v12, v2, v9

    .line 273
    iget-object v2, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->w:[D

    mul-int/lit8 v9, v1, 0x2

    aget-wide v14, v2, v9

    mul-double v16, v7, v10

    mul-double v18, v5, v12

    sub-double v16, v16, v18

    add-double v14, v14, v16

    aput-wide v14, v2, v9

    add-int/lit8 v9, v9, 0x1

    .line 274
    aget-wide v14, v2, v9

    mul-double/2addr v12, v7

    mul-double/2addr v10, v5

    add-double/2addr v12, v10

    add-double/2addr v14, v12

    aput-wide v14, v2, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 278
    :cond_4
    :goto_5
    iget v1, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    if-ge v4, v1, :cond_6

    .line 280
    iget-object v1, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->w:[D

    mul-int/lit8 v2, v4, 0x2

    aget-wide v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 281
    aget-wide v1, v1, v2

    .line 283
    iget-object v7, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int v8, v3, v4

    mul-int/lit8 v8, v8, 0x2

    aget-wide v9, v7, v8

    .line 284
    iget-object v7, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v8, v8, 0x1

    aget-wide v7, v7, v8

    .line 286
    iget v11, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    mul-int/2addr v11, v4

    add-int/2addr v11, v4

    mul-int/lit8 v11, v11, 0x2

    move v12, v4

    .line 287
    :goto_6
    iget v13, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    if-ge v12, v13, :cond_5

    .line 291
    iget-object v13, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v13, v13, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int v14, v3, v12

    mul-int/lit8 v14, v14, 0x2

    aget-wide v15, v13, v14

    .line 292
    iget-object v13, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v13, v13, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v14, v14, 0x1

    aget-wide v13, v13, v14

    neg-double v13, v13

    move/from16 v17, v3

    .line 294
    iget-object v3, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->w:[D

    mul-int/lit8 v18, v12, 0x2

    aget-wide v19, v3, v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v21, v4

    .line 295
    aget-wide v3, v3, v18

    neg-double v3, v3

    move/from16 v18, v12

    .line 297
    iget-object v12, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v12, v12, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v22, v11, 0x1

    aget-wide v23, v12, v11

    mul-double v25, v5, v15

    mul-double v27, v1, v13

    sub-double v25, v25, v27

    mul-double v27, v19, v9

    add-double v25, v25, v27

    mul-double v27, v3, v7

    sub-double v25, v25, v27

    add-double v23, v23, v25

    aput-wide v23, v12, v11

    .line 298
    iget-object v11, v0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v11, v11, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v12, v22, 0x1

    aget-wide v23, v11, v22

    mul-double/2addr v13, v5

    mul-double/2addr v15, v1

    add-double/2addr v13, v15

    mul-double v19, v19, v7

    add-double v13, v13, v19

    mul-double/2addr v3, v9

    add-double/2addr v13, v3

    add-double v23, v23, v13

    aput-wide v23, v11, v22

    add-int/lit8 v3, v18, 0x1

    move v11, v12

    move/from16 v4, v21

    move v12, v3

    move/from16 v3, v17

    goto :goto_6

    :cond_5
    move/from16 v17, v3

    move/from16 v21, v4

    add-int/lit8 v4, v21, 0x1

    goto/16 :goto_5

    :cond_6
    return-void
.end method

.method public init(Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 2

    .line 309
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_1

    .line 312
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    if-eq v0, v1, :cond_0

    .line 313
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iput v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->N:I

    .line 315
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->w:[D

    array-length v1, v1

    if-ge v1, v0, :cond_0

    mul-int/lit8 v1, v0, 0x2

    .line 316
    new-array v1, v1, [D

    iput-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->w:[D

    mul-int/lit8 v1, v0, 0x2

    .line 317
    new-array v1, v1, [D

    iput-object v1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->gammas:[D

    mul-int/lit8 v0, v0, 0x2

    .line 318
    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->b:[D

    .line 322
    :cond_0
    iput-object p1, p0, Lorg/ejml/dense/row/decompose/hessenberg/TridiagonalDecompositionHouseholder_ZDRM;->QT:Lorg/ejml/data/ZMatrixRMaj;

    return-void

    .line 310
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
