.class public Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_ZDRM;
.source "LinearSolverQrHouseCol_ZDRM.java"


# instance fields
.field private QR:[[D

.field private final R:Lorg/ejml/data/ZMatrixRMaj;

.field private final a:Lorg/ejml/data/ZMatrixRMaj;

.field private final decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;

.field private gammas:[D

.field protected maxCols:I

.field protected maxRows:I

.field private final temp:Lorg/ejml/data/ZMatrixRMaj;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_ZDRM;-><init>()V

    .line 51
    new-instance v0, Lorg/ejml/data/ZMatrixRMaj;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->a:Lorg/ejml/data/ZMatrixRMaj;

    .line 52
    new-instance v0, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->temp:Lorg/ejml/data/ZMatrixRMaj;

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->maxRows:I

    .line 55
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->maxCols:I

    .line 58
    new-instance v0, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->R:Lorg/ejml/data/ZMatrixRMaj;

    .line 65
    new-instance v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;

    return-void
.end method


# virtual methods
.method public getDecomposition()Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;

    return-object v0
.end method

.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->getDecomposition()Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;

    move-result-object v0

    return-object v0
.end method

.method public modifiesA()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public quality()D
    .locals 2

    .line 101
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->R:Lorg/ejml/data/ZMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_ZDRM;->qualityTriangular(Lorg/ejml/data/ZMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 46
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->setA(Lorg/ejml/data/ZMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public setA(Lorg/ejml/data/ZMatrixRMaj;)Z
    .locals 3

    .line 80
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-lt v0, v1, :cond_3

    .line 82
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->maxRows:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->maxCols:I

    if-le v0, v1, :cond_1

    .line 83
    :cond_0
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->setMaxSize(II)V

    .line 85
    :cond_1
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->R:Lorg/ejml/data/ZMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v2, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/ZMatrixRMaj;->reshape(II)V

    .line 86
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->a:Lorg/ejml/data/ZMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/ZMatrixRMaj;->reshape(II)V

    .line 87
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->temp:Lorg/ejml/data/ZMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/ZMatrixRMaj;->reshape(II)V

    .line 89
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->_setA(Lorg/ejml/data/ZMatrixRMaj;)V

    .line 90
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->decompose(Lorg/ejml/data/ZMatrixRMaj;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    .line 93
    :cond_2
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->getGammas()[D

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->gammas:[D

    .line 94
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->getQR()[[D

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->QR:[[D

    .line 95
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;

    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->R:Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p1, v0, v2}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_ZDRM;->getR(Lorg/ejml/data/ZMatrixRMaj;Z)Lorg/ejml/data/ZMatrixRMaj;

    return v2

    .line 81
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t solve for wide systems.  More variables than equations."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxSize(II)V
    .locals 0

    .line 69
    iput p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->maxRows:I

    .line 70
    iput p2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->maxCols:I

    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 46
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p2, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->solve(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public solve(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 112
    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->numRows:I

    if-ne v3, v4, :cond_4

    .line 114
    iget v3, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->numCols:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-virtual {v2, v3, v4}, Lorg/ejml/data/ZMatrixRMaj;->reshape(II)V

    .line 116
    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    move v6, v4

    .line 122
    :goto_1
    iget v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->numRows:I

    if-ge v6, v7, :cond_0

    mul-int v7, v6, v3

    add-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0x2

    .line 124
    iget-object v8, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->a:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    mul-int/lit8 v9, v6, 0x2

    iget-object v10, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v10, v10, v7

    aput-wide v10, v8, v9

    .line 125
    iget-object v8, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->a:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v9, v9, 0x1

    iget-object v10, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v7, v7, 0x1

    aget-wide v10, v10, v7

    aput-wide v10, v8, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v4

    .line 133
    :goto_2
    iget v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->numCols:I

    if-ge v6, v7, :cond_1

    .line 134
    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->QR:[[D

    aget-object v16, v7, v6

    mul-int/lit8 v17, v6, 0x2

    .line 136
    aget-wide v18, v16, v17

    add-int/lit8 v20, v17, 0x1

    .line 137
    aget-wide v21, v16, v20

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 139
    aput-wide v7, v16, v17

    const-wide/16 v7, 0x0

    .line 140
    aput-wide v7, v16, v20

    .line 142
    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->a:Lorg/ejml/data/ZMatrixRMaj;

    const/4 v9, 0x0

    iget-object v8, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->gammas:[D

    aget-wide v10, v8, v6

    const/4 v12, 0x0

    iget v14, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->numRows:I

    iget-object v8, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->temp:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v15, v8, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    move-object/from16 v8, v16

    move v13, v6

    invoke-static/range {v7 .. v15}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_ZDRM;->rank1UpdateMultR(Lorg/ejml/data/ZMatrixRMaj;[DIDIII[D)V

    .line 144
    aput-wide v18, v16, v17

    .line 145
    aput-wide v21, v16, v20

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 149
    :cond_1
    iget-object v6, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->R:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->a:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget v8, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->numCols:I

    invoke-static {v6, v7, v8}, Lorg/ejml/dense/row/decompose/TriangularSolver_ZDRM;->solveU([D[DI)V

    move v6, v4

    .line 152
    :goto_3
    iget v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->numCols:I

    if-ge v6, v7, :cond_2

    mul-int v7, v6, v3

    add-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0x2

    .line 154
    iget-object v8, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget-object v9, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->a:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v9, v9, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    mul-int/lit8 v10, v6, 0x2

    aget-wide v11, v9, v10

    aput-wide v11, v8, v7

    .line 155
    iget-object v8, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v7, v7, 0x1

    iget-object v9, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_ZDRM;->a:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v9, v9, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v10, v10, 0x1

    aget-wide v9, v9, v10

    aput-wide v9, v8, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_3
    return-void

    .line 113
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unexpected dimensions for B"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
