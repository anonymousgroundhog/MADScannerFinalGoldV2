.class public Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_CDRM;
.source "LinearSolverQrHouse_CDRM.java"


# instance fields
.field private QR:Lorg/ejml/data/CMatrixRMaj;

.field private a:[F

.field private final decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;

.field private gammas:[F

.field private maxRows:I

.field private u:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_CDRM;-><init>()V

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->maxRows:I

    .line 60
    new-instance v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;

    return-void
.end method


# virtual methods
.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->getDecomposition()Lorg/ejml/interfaces/decomposition/QRDecomposition;

    move-result-object v0

    return-object v0
.end method

.method public getDecomposition()Lorg/ejml/interfaces/decomposition/QRDecomposition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
            "Lorg/ejml/data/CMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;

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

    .line 93
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_CDRM;->qualityTriangular(Lorg/ejml/data/CMatrixRMaj;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/CMatrixRMaj;)Z
    .locals 2

    .line 77
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->maxRows:I

    if-le v0, v1, :cond_0

    .line 78
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    invoke-virtual {p0, v0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->setMaxSize(I)V

    .line 81
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->_setA(Lorg/ejml/data/CMatrixRMaj;)V

    .line 82
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->decompose(Lorg/ejml/data/CMatrixRMaj;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 85
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->getGammas()[F

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->gammas:[F

    .line 86
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_CDRM;->getQR()Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 43
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->setA(Lorg/ejml/data/CMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public setMaxSize(I)V
    .locals 1

    .line 64
    iput p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->maxRows:I

    mul-int/lit8 p1, p1, 0x2

    .line 66
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->a:[F

    .line 67
    new-array p1, p1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->u:[F

    return-void
.end method

.method public solve(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 104
    iget v3, v1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->numRows:I

    if-ne v3, v4, :cond_6

    .line 106
    iget v3, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->numCols:I

    iget v4, v1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-virtual {v2, v3, v4}, Lorg/ejml/data/CMatrixRMaj;->reshape(II)V

    .line 108
    iget v3, v1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    const/4 v6, 0x0

    .line 114
    :goto_1
    iget v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->numRows:I

    if-ge v6, v7, :cond_0

    mul-int v7, v6, v3

    add-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0x2

    .line 116
    iget-object v8, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->a:[F

    mul-int/lit8 v9, v6, 0x2

    iget-object v10, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v10, v10, v7

    aput v10, v8, v9

    .line 117
    iget-object v8, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->a:[F

    add-int/lit8 v9, v9, 0x1

    iget-object v10, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v7, v7, 0x1

    aget v7, v10, v7

    aput v7, v8, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 125
    :goto_2
    iget v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->numCols:I

    if-ge v6, v7, :cond_3

    .line 126
    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->u:[F

    mul-int/lit8 v8, v6, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    add-int/lit8 v9, v8, 0x1

    const/4 v10, 0x0

    .line 127
    aput v10, v7, v9

    .line 129
    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->a:[F

    aget v8, v7, v8

    .line 130
    aget v7, v7, v9

    add-int/lit8 v9, v6, 0x1

    move v10, v9

    .line 132
    :goto_3
    iget v11, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->numRows:I

    if-ge v10, v11, :cond_1

    .line 133
    iget-object v11, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget v11, v11, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int/2addr v11, v10

    add-int/2addr v11, v6

    mul-int/lit8 v11, v11, 0x2

    .line 134
    iget-object v12, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->u:[F

    mul-int/lit8 v13, v10, 0x2

    iget-object v14, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v14, v14, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v14, v14, v11

    aput v14, v12, v13

    .line 135
    iget-object v12, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->u:[F

    add-int/lit8 v15, v13, 0x1

    iget-object v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v11, v11, 0x1

    aget v4, v4, v11

    aput v4, v12, v15

    .line 137
    iget-object v11, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->a:[F

    aget v12, v11, v13

    .line 138
    aget v11, v11, v15

    mul-float v13, v14, v12

    mul-float v15, v4, v11

    add-float/2addr v13, v15

    add-float/2addr v8, v13

    mul-float/2addr v14, v11

    mul-float/2addr v4, v12

    sub-float/2addr v14, v4

    add-float/2addr v7, v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 145
    :cond_1
    iget-object v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->gammas:[F

    aget v4, v4, v6

    mul-float/2addr v8, v4

    mul-float/2addr v7, v4

    .line 148
    :goto_4
    iget v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->numRows:I

    if-ge v6, v4, :cond_2

    .line 149
    iget-object v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->u:[F

    mul-int/lit8 v10, v6, 0x2

    aget v11, v4, v10

    add-int/lit8 v12, v10, 0x1

    .line 150
    aget v4, v4, v12

    .line 152
    iget-object v13, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->a:[F

    aget v14, v13, v10

    mul-float v15, v11, v8

    mul-float v16, v4, v7

    sub-float v15, v15, v16

    sub-float/2addr v14, v15

    aput v14, v13, v10

    .line 153
    aget v10, v13, v12

    mul-float/2addr v11, v7

    mul-float/2addr v4, v8

    add-float/2addr v11, v4

    sub-float/2addr v10, v11

    aput v10, v13, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_2
    move v6, v9

    goto/16 :goto_2

    .line 158
    :cond_3
    iget-object v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget-object v6, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->a:[F

    iget v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->numCols:I

    invoke-static {v4, v6, v7}, Lorg/ejml/dense/row/decompose/TriangularSolver_CDRM;->solveU([F[FI)V

    const/4 v4, 0x0

    .line 161
    :goto_5
    iget v6, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->numCols:I

    if-ge v4, v6, :cond_4

    .line 162
    iget v6, v2, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v5

    mul-int/lit8 v6, v6, 0x2

    .line 164
    iget-object v7, v2, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget-object v8, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->a:[F

    mul-int/lit8 v9, v4, 0x2

    aget v8, v8, v9

    aput v8, v7, v6

    .line 165
    iget-object v7, v2, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v6, v6, 0x1

    iget-object v8, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->a:[F

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    aput v8, v7, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_5
    return-void

    .line 105
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unexpected dimensions for B"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 43
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p2, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_CDRM;->solve(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method
