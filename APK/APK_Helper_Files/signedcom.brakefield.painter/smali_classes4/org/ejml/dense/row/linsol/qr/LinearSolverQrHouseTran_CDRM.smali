.class public Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_CDRM;
.source "LinearSolverQrHouseTran_CDRM.java"


# instance fields
.field private QR:Lorg/ejml/data/CMatrixRMaj;

.field private U:Lorg/ejml/data/CMatrixRMaj;

.field private a:[F

.field private final decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;

.field protected maxCols:I

.field protected maxRows:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_CDRM;-><init>()V

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->maxRows:I

    .line 56
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->maxCols:I

    .line 65
    new-instance v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;

    return-void
.end method


# virtual methods
.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->getDecomposition()Lorg/ejml/interfaces/decomposition/QRDecomposition;

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

    .line 194
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;

    return-object v0
.end method

.method public modifiesA()Z
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->inputModified()Z

    move-result v0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public quality()D
    .locals 2

    .line 97
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_CDRM;->qualityTriangular(Lorg/ejml/data/CMatrixRMaj;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/CMatrixRMaj;)Z
    .locals 2

    .line 82
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->maxRows:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->maxCols:I

    if-le v0, v1, :cond_1

    .line 83
    :cond_0
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->setMaxSize(II)V

    .line 85
    :cond_1
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->_setA(Lorg/ejml/data/CMatrixRMaj;)V

    .line 86
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->decompose(Lorg/ejml/data/CMatrixRMaj;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    .line 89
    :cond_2
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->getQR()Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 47
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->setA(Lorg/ejml/data/CMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public setMaxSize(II)V
    .locals 0

    .line 69
    iput p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->maxRows:I

    .line 70
    iput p2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->maxCols:I

    mul-int/lit8 p1, p1, 0x2

    .line 72
    new-array p1, p1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->a:[F

    return-void
.end method

.method public solve(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 108
    iget v3, v1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->numRows:I

    if-ne v3, v4, :cond_6

    .line 110
    iget v3, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->numCols:I

    iget v4, v1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-virtual {v2, v3, v4}, Lorg/ejml/data/CMatrixRMaj;->reshape(II)V

    .line 112
    iget-object v3, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;

    iget-object v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->U:Lorg/ejml/data/CMatrixRMaj;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->getR(Lorg/ejml/data/CMatrixRMaj;Z)Lorg/ejml/data/CMatrixRMaj;

    move-result-object v3

    iput-object v3, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->U:Lorg/ejml/data/CMatrixRMaj;

    .line 113
    iget-object v3, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;

    invoke-virtual {v3}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_CDRM;->getGammas()[F

    move-result-object v3

    .line 114
    iget-object v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->QR:Lorg/ejml/data/CMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/CMatrixRMaj;->data:[F

    .line 116
    iget v6, v1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_5

    const/4 v9, 0x0

    .line 122
    :goto_1
    iget v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->numRows:I

    if-ge v9, v10, :cond_0

    mul-int v10, v9, v6

    add-int/2addr v10, v8

    mul-int/lit8 v10, v10, 0x2

    .line 124
    iget-object v11, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->a:[F

    mul-int/lit8 v12, v9, 0x2

    iget-object v13, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v13, v13, v10

    aput v13, v11, v12

    .line 125
    iget-object v11, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->a:[F

    add-int/2addr v12, v5

    iget-object v13, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/2addr v10, v5

    aget v10, v13, v10

    aput v10, v11, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    .line 133
    :goto_2
    iget v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->numCols:I

    if-ge v9, v10, :cond_3

    .line 134
    iget v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->numRows:I

    mul-int/2addr v10, v9

    add-int/2addr v10, v9

    add-int/2addr v10, v5

    mul-int/lit8 v10, v10, 0x2

    .line 136
    iget-object v11, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->a:[F

    mul-int/lit8 v12, v9, 0x2

    aget v13, v11, v12

    add-int/lit8 v14, v12, 0x1

    .line 137
    aget v11, v11, v14

    add-int/lit8 v15, v9, 0x1

    move v7, v15

    .line 140
    :goto_3
    iget v5, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->numRows:I

    if-ge v7, v5, :cond_1

    add-int/lit8 v5, v10, 0x1

    .line 141
    aget v10, v4, v10

    add-int/lit8 v17, v5, 0x1

    .line 142
    aget v5, v4, v5

    neg-float v5, v5

    .line 144
    iget-object v1, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->a:[F

    mul-int/lit8 v18, v7, 0x2

    aget v19, v1, v18

    const/16 v16, 0x1

    add-int/lit8 v18, v18, 0x1

    .line 145
    aget v1, v1, v18

    mul-float v18, v10, v19

    mul-float v20, v5, v1

    sub-float v18, v18, v20

    add-float v13, v13, v18

    mul-float/2addr v10, v1

    mul-float v5, v5, v19

    add-float/2addr v10, v5

    add-float/2addr v11, v10

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move/from16 v10, v17

    goto :goto_3

    .line 152
    :cond_1
    aget v1, v3, v9

    mul-float/2addr v13, v1

    mul-float/2addr v11, v1

    .line 155
    iget-object v1, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->a:[F

    aget v5, v1, v12

    sub-float/2addr v5, v13

    aput v5, v1, v12

    .line 156
    aget v5, v1, v14

    sub-float/2addr v5, v11

    aput v5, v1, v14

    .line 158
    iget v1, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->numRows:I

    mul-int/2addr v1, v9

    add-int/2addr v1, v9

    const/4 v5, 0x1

    add-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0x2

    move v5, v15

    .line 159
    :goto_4
    iget v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->numRows:I

    if-ge v5, v7, :cond_2

    add-int/lit8 v7, v1, 0x1

    .line 160
    aget v1, v4, v1

    add-int/lit8 v9, v7, 0x1

    .line 161
    aget v7, v4, v7

    .line 163
    iget-object v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->a:[F

    mul-int/lit8 v12, v5, 0x2

    aget v14, v10, v12

    mul-float v17, v1, v13

    mul-float v18, v7, v11

    sub-float v17, v17, v18

    sub-float v14, v14, v17

    aput v14, v10, v12

    const/4 v14, 0x1

    add-int/2addr v12, v14

    .line 164
    aget v14, v10, v12

    mul-float/2addr v1, v11

    mul-float/2addr v7, v13

    add-float/2addr v1, v7

    sub-float/2addr v14, v1

    aput v14, v10, v12

    add-int/lit8 v5, v5, 0x1

    move v1, v9

    goto :goto_4

    :cond_2
    move-object/from16 v1, p1

    move v9, v15

    const/4 v5, 0x1

    goto/16 :goto_2

    .line 169
    :cond_3
    iget-object v1, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->U:Lorg/ejml/data/CMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget-object v5, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->a:[F

    iget v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->numCols:I

    invoke-static {v1, v5, v7}, Lorg/ejml/dense/row/decompose/TriangularSolver_CDRM;->solveU([F[FI)V

    const/4 v1, 0x0

    .line 173
    :goto_5
    iget v5, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->numCols:I

    if-ge v1, v5, :cond_4

    .line 174
    iget v5, v2, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v8

    mul-int/lit8 v5, v5, 0x2

    .line 176
    iget-object v7, v2, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget-object v9, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->a:[F

    mul-int/lit8 v10, v1, 0x2

    aget v9, v9, v10

    aput v9, v7, v5

    .line 177
    iget-object v7, v2, Lorg/ejml/data/CMatrixRMaj;->data:[F

    const/4 v9, 0x1

    add-int/2addr v5, v9

    iget-object v11, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->a:[F

    add-int/2addr v10, v9

    aget v10, v11, v10

    aput v10, v7, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    move v5, v9

    goto/16 :goto_0

    :cond_5
    return-void

    .line 109
    :cond_6
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

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_CDRM;->solve(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method
