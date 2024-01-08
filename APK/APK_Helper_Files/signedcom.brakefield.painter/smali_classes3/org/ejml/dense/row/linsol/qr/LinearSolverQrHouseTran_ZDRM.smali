.class public Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_ZDRM;
.source "LinearSolverQrHouseTran_ZDRM.java"


# instance fields
.field private QR:Lorg/ejml/data/ZMatrixRMaj;

.field private U:Lorg/ejml/data/ZMatrixRMaj;

.field private a:[D

.field private final decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;

.field protected maxCols:I

.field protected maxRows:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_ZDRM;-><init>()V

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->maxRows:I

    .line 54
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->maxCols:I

    .line 63
    new-instance v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;

    return-void
.end method


# virtual methods
.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->getDecomposition()Lorg/ejml/interfaces/decomposition/QRDecomposition;

    move-result-object v0

    return-object v0
.end method

.method public getDecomposition()Lorg/ejml/interfaces/decomposition/QRDecomposition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
            "Lorg/ejml/data/ZMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;

    return-object v0
.end method

.method public modifiesA()Z
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->inputModified()Z

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

    .line 95
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_ZDRM;->qualityTriangular(Lorg/ejml/data/ZMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 46
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->setA(Lorg/ejml/data/ZMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public setA(Lorg/ejml/data/ZMatrixRMaj;)Z
    .locals 2

    .line 80
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->maxRows:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->maxCols:I

    if-le v0, v1, :cond_1

    .line 81
    :cond_0
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->setMaxSize(II)V

    .line 83
    :cond_1
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->_setA(Lorg/ejml/data/ZMatrixRMaj;)V

    .line 84
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->decompose(Lorg/ejml/data/ZMatrixRMaj;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    .line 87
    :cond_2
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->getQR()Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    const/4 p1, 0x1

    return p1
.end method

.method public setMaxSize(II)V
    .locals 0

    .line 67
    iput p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->maxRows:I

    .line 68
    iput p2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->maxCols:I

    mul-int/lit8 p1, p1, 0x2

    .line 70
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->a:[D

    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 46
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p2, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->solve(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public solve(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 106
    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->numRows:I

    if-ne v3, v4, :cond_6

    .line 108
    iget v3, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->numCols:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-virtual {v2, v3, v4}, Lorg/ejml/data/ZMatrixRMaj;->reshape(II)V

    .line 110
    iget-object v3, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;

    iget-object v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->U:Lorg/ejml/data/ZMatrixRMaj;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->getR(Lorg/ejml/data/ZMatrixRMaj;Z)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object v3

    iput-object v3, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->U:Lorg/ejml/data/ZMatrixRMaj;

    .line 111
    iget-object v3, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;

    invoke-virtual {v3}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholderTran_ZDRM;->getGammas()[D

    move-result-object v3

    .line 112
    iget-object v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    .line 114
    iget v6, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_5

    const/4 v9, 0x0

    .line 120
    :goto_1
    iget v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->numRows:I

    if-ge v9, v10, :cond_0

    mul-int v10, v9, v6

    add-int/2addr v10, v8

    mul-int/lit8 v10, v10, 0x2

    .line 122
    iget-object v11, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->a:[D

    mul-int/lit8 v12, v9, 0x2

    iget-object v13, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v13, v13, v10

    aput-wide v13, v11, v12

    .line 123
    iget-object v11, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->a:[D

    add-int/2addr v12, v5

    iget-object v13, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/2addr v10, v5

    aget-wide v13, v13, v10

    aput-wide v13, v11, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    .line 131
    :goto_2
    iget v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->numCols:I

    if-ge v9, v10, :cond_3

    .line 132
    iget v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->numRows:I

    mul-int/2addr v10, v9

    add-int/2addr v10, v9

    add-int/2addr v10, v5

    mul-int/lit8 v10, v10, 0x2

    .line 134
    iget-object v11, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->a:[D

    mul-int/lit8 v12, v9, 0x2

    aget-wide v13, v11, v12

    add-int/lit8 v15, v12, 0x1

    .line 135
    aget-wide v16, v11, v15

    add-int/lit8 v11, v9, 0x1

    move v7, v11

    .line 138
    :goto_3
    iget v5, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->numRows:I

    if-ge v7, v5, :cond_1

    add-int/lit8 v5, v10, 0x1

    .line 139
    aget-wide v19, v4, v10

    add-int/lit8 v10, v5, 0x1

    move/from16 v21, v6

    .line 140
    aget-wide v5, v4, v5

    neg-double v5, v5

    .line 142
    iget-object v1, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->a:[D

    mul-int/lit8 v22, v7, 0x2

    aget-wide v23, v1, v22

    const/16 v18, 0x1

    add-int/lit8 v22, v22, 0x1

    .line 143
    aget-wide v25, v1, v22

    mul-double v27, v19, v23

    mul-double v29, v5, v25

    sub-double v27, v27, v29

    add-double v13, v13, v27

    mul-double v19, v19, v25

    mul-double v5, v5, v23

    add-double v19, v19, v5

    add-double v16, v16, v19

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move/from16 v6, v21

    goto :goto_3

    :cond_1
    move/from16 v21, v6

    .line 150
    aget-wide v5, v3, v9

    mul-double/2addr v13, v5

    mul-double v16, v16, v5

    .line 153
    iget-object v1, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->a:[D

    aget-wide v5, v1, v12

    sub-double/2addr v5, v13

    aput-wide v5, v1, v12

    .line 154
    aget-wide v5, v1, v15

    sub-double v5, v5, v16

    aput-wide v5, v1, v15

    .line 156
    iget v1, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->numRows:I

    mul-int/2addr v1, v9

    add-int/2addr v1, v9

    const/4 v5, 0x1

    add-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0x2

    move v5, v11

    .line 157
    :goto_4
    iget v6, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->numRows:I

    if-ge v5, v6, :cond_2

    add-int/lit8 v6, v1, 0x1

    .line 158
    aget-wide v9, v4, v1

    add-int/lit8 v1, v6, 0x1

    .line 159
    aget-wide v6, v4, v6

    .line 161
    iget-object v12, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->a:[D

    mul-int/lit8 v15, v5, 0x2

    aget-wide v19, v12, v15

    mul-double v22, v9, v13

    mul-double v24, v6, v16

    sub-double v22, v22, v24

    sub-double v19, v19, v22

    aput-wide v19, v12, v15

    const/16 v18, 0x1

    add-int/lit8 v15, v15, 0x1

    .line 162
    aget-wide v19, v12, v15

    mul-double v9, v9, v16

    mul-double/2addr v6, v13

    add-double/2addr v9, v6

    sub-double v19, v19, v9

    aput-wide v19, v12, v15

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_2
    move-object/from16 v1, p1

    move v9, v11

    move/from16 v6, v21

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_3
    move/from16 v21, v6

    .line 167
    iget-object v1, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->U:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget-object v5, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->a:[D

    iget v6, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->numCols:I

    invoke-static {v1, v5, v6}, Lorg/ejml/dense/row/decompose/TriangularSolver_ZDRM;->solveU([D[DI)V

    const/4 v1, 0x0

    .line 171
    :goto_5
    iget v5, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->numCols:I

    if-ge v1, v5, :cond_4

    .line 172
    iget v5, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v8

    mul-int/lit8 v5, v5, 0x2

    .line 174
    iget-object v6, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->a:[D

    mul-int/lit8 v9, v1, 0x2

    aget-wide v10, v7, v9

    aput-wide v10, v6, v5

    .line 175
    iget-object v6, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    const/4 v7, 0x1

    add-int/2addr v5, v7

    iget-object v10, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseTran_ZDRM;->a:[D

    add-int/2addr v9, v7

    aget-wide v9, v10, v9

    aput-wide v9, v6, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    const/4 v7, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    move v5, v7

    move/from16 v6, v21

    goto/16 :goto_0

    :cond_5
    return-void

    .line 107
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unexpected dimensions for B"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
