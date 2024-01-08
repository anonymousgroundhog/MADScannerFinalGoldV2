.class public Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_CDRM;
.source "LinearSolverQrHouseCol_CDRM.java"


# instance fields
.field private QR:[[F

.field private final R:Lorg/ejml/data/CMatrixRMaj;

.field private final a:Lorg/ejml/data/CMatrixRMaj;

.field private final decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;

.field private gammas:[F

.field protected maxCols:I

.field protected maxRows:I

.field private final temp:Lorg/ejml/data/CMatrixRMaj;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_CDRM;-><init>()V

    .line 53
    new-instance v0, Lorg/ejml/data/CMatrixRMaj;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->a:Lorg/ejml/data/CMatrixRMaj;

    .line 54
    new-instance v0, Lorg/ejml/data/CMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->temp:Lorg/ejml/data/CMatrixRMaj;

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->maxRows:I

    .line 57
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->maxCols:I

    .line 60
    new-instance v0, Lorg/ejml/data/CMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->R:Lorg/ejml/data/CMatrixRMaj;

    .line 67
    new-instance v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;

    return-void
.end method


# virtual methods
.method public getDecomposition()Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;

    return-object v0
.end method

.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->getDecomposition()Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;

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

    .line 103
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->R:Lorg/ejml/data/CMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_CDRM;->qualityTriangular(Lorg/ejml/data/CMatrixRMaj;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/CMatrixRMaj;)Z
    .locals 3

    .line 82
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    if-lt v0, v1, :cond_3

    .line 84
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->maxRows:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->maxCols:I

    if-le v0, v1, :cond_1

    .line 85
    :cond_0
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->setMaxSize(II)V

    .line 87
    :cond_1
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->R:Lorg/ejml/data/CMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    iget v2, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/CMatrixRMaj;->reshape(II)V

    .line 88
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->a:Lorg/ejml/data/CMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/CMatrixRMaj;->reshape(II)V

    .line 89
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->temp:Lorg/ejml/data/CMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/CMatrixRMaj;->reshape(II)V

    .line 91
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->_setA(Lorg/ejml/data/CMatrixRMaj;)V

    .line 92
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->decompose(Lorg/ejml/data/CMatrixRMaj;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    .line 95
    :cond_2
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->getGammas()[F

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->gammas:[F

    .line 96
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->getQR()[[F

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->QR:[[F

    .line 97
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;

    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->R:Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p1, v0, v2}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderColumn_CDRM;->getR(Lorg/ejml/data/CMatrixRMaj;Z)Lorg/ejml/data/CMatrixRMaj;

    return v2

    .line 83
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t solve for wide systems.  More variables than equations."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 47
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->setA(Lorg/ejml/data/CMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public setMaxSize(II)V
    .locals 0

    .line 71
    iput p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->maxRows:I

    .line 72
    iput p2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->maxCols:I

    return-void
.end method

.method public solve(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 114
    iget v3, v1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->numRows:I

    if-ne v3, v4, :cond_4

    .line 116
    iget v3, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->numCols:I

    iget v4, v1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-virtual {v2, v3, v4}, Lorg/ejml/data/CMatrixRMaj;->reshape(II)V

    .line 118
    iget v3, v1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    move v6, v4

    .line 124
    :goto_1
    iget v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->numRows:I

    if-ge v6, v7, :cond_0

    mul-int v7, v6, v3

    add-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0x2

    .line 126
    iget-object v8, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->a:Lorg/ejml/data/CMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/CMatrixRMaj;->data:[F

    mul-int/lit8 v9, v6, 0x2

    iget-object v10, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v10, v10, v7

    aput v10, v8, v9

    .line 127
    iget-object v8, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->a:Lorg/ejml/data/CMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v9, v9, 0x1

    iget-object v10, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v7, v7, 0x1

    aget v7, v10, v7

    aput v7, v8, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v4

    .line 135
    :goto_2
    iget v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->numCols:I

    if-ge v6, v7, :cond_1

    .line 136
    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->QR:[[F

    aget-object v15, v7, v6

    mul-int/lit8 v16, v6, 0x2

    .line 138
    aget v17, v15, v16

    add-int/lit8 v18, v16, 0x1

    .line 139
    aget v19, v15, v18

    const/high16 v7, 0x3f800000    # 1.0f

    .line 141
    aput v7, v15, v16

    const/4 v7, 0x0

    .line 142
    aput v7, v15, v18

    .line 144
    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->a:Lorg/ejml/data/CMatrixRMaj;

    const/4 v9, 0x0

    iget-object v8, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->gammas:[F

    aget v10, v8, v6

    const/4 v11, 0x0

    iget v13, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->numRows:I

    iget-object v8, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->temp:Lorg/ejml/data/CMatrixRMaj;

    iget-object v14, v8, Lorg/ejml/data/CMatrixRMaj;->data:[F

    move-object v8, v15

    move v12, v6

    invoke-static/range {v7 .. v14}, Lorg/ejml/dense/row/decompose/qr/QrHelperFunctions_CDRM;->rank1UpdateMultR(Lorg/ejml/data/CMatrixRMaj;[FIFIII[F)V

    .line 146
    aput v17, v15, v16

    .line 147
    aput v19, v15, v18

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 151
    :cond_1
    iget-object v6, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->R:Lorg/ejml/data/CMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->a:Lorg/ejml/data/CMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget v8, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->numCols:I

    invoke-static {v6, v7, v8}, Lorg/ejml/dense/row/decompose/TriangularSolver_CDRM;->solveU([F[FI)V

    move v6, v4

    .line 154
    :goto_3
    iget v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->numCols:I

    if-ge v6, v7, :cond_2

    mul-int v7, v6, v3

    add-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0x2

    .line 156
    iget-object v8, v2, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget-object v9, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->a:Lorg/ejml/data/CMatrixRMaj;

    iget-object v9, v9, Lorg/ejml/data/CMatrixRMaj;->data:[F

    mul-int/lit8 v10, v6, 0x2

    aget v9, v9, v10

    aput v9, v8, v7

    .line 157
    iget-object v8, v2, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v7, v7, 0x1

    iget-object v9, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->a:Lorg/ejml/data/CMatrixRMaj;

    iget-object v9, v9, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    aput v9, v8, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_3
    return-void

    .line 115
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unexpected dimensions for B"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 47
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p2, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_CDRM;->solve(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method
