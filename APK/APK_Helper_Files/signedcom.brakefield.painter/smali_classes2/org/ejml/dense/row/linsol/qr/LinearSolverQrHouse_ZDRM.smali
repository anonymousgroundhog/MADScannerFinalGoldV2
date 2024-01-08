.class public Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;
.super Lorg/ejml/dense/row/linsol/LinearSolverAbstract_ZDRM;
.source "LinearSolverQrHouse_ZDRM.java"


# instance fields
.field private QR:Lorg/ejml/data/ZMatrixRMaj;

.field private a:[D

.field private final decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;

.field private gammas:[D

.field private maxRows:I

.field private u:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/LinearSolverAbstract_ZDRM;-><init>()V

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->maxRows:I

    .line 58
    new-instance v0, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;

    return-void
.end method


# virtual methods
.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->getDecomposition()Lorg/ejml/interfaces/decomposition/QRDecomposition;

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

    .line 180
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;

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

    .line 91
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_ZDRM;->qualityTriangular(Lorg/ejml/data/ZMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->setA(Lorg/ejml/data/ZMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public setA(Lorg/ejml/data/ZMatrixRMaj;)Z
    .locals 2

    .line 75
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->maxRows:I

    if-le v0, v1, :cond_0

    .line 76
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    invoke-virtual {p0, v0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->setMaxSize(I)V

    .line 79
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->_setA(Lorg/ejml/data/ZMatrixRMaj;)V

    .line 80
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->decompose(Lorg/ejml/data/ZMatrixRMaj;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 83
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->getGammas()[D

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->gammas:[D

    .line 84
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->decomposer:Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decompose/qr/QRDecompositionHouseholder_ZDRM;->getQR()Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    const/4 p1, 0x1

    return p1
.end method

.method public setMaxSize(I)V
    .locals 1

    .line 62
    iput p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->maxRows:I

    mul-int/lit8 p1, p1, 0x2

    .line 64
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->a:[D

    .line 65
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->u:[D

    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p2, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->solve(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public solve(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 102
    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->numRows:I

    if-ne v3, v4, :cond_6

    .line 104
    iget v3, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->numCols:I

    iget v4, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-virtual {v2, v3, v4}, Lorg/ejml/data/ZMatrixRMaj;->reshape(II)V

    .line 106
    iget v3, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    const/4 v6, 0x0

    .line 112
    :goto_1
    iget v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->numRows:I

    if-ge v6, v7, :cond_0

    mul-int v7, v6, v3

    add-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0x2

    .line 114
    iget-object v8, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->a:[D

    mul-int/lit8 v9, v6, 0x2

    iget-object v10, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v10, v10, v7

    aput-wide v10, v8, v9

    .line 115
    iget-object v8, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->a:[D

    add-int/lit8 v9, v9, 0x1

    iget-object v10, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v7, v7, 0x1

    aget-wide v10, v10, v7

    aput-wide v10, v8, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 123
    :goto_2
    iget v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->numCols:I

    if-ge v6, v7, :cond_3

    .line 124
    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->u:[D

    mul-int/lit8 v8, v6, 0x2

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    aput-wide v9, v7, v8

    add-int/lit8 v9, v8, 0x1

    const-wide/16 v10, 0x0

    .line 125
    aput-wide v10, v7, v9

    .line 127
    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->a:[D

    aget-wide v10, v7, v8

    .line 128
    aget-wide v7, v7, v9

    add-int/lit8 v9, v6, 0x1

    move v12, v9

    .line 130
    :goto_3
    iget v13, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->numRows:I

    if-ge v12, v13, :cond_1

    .line 131
    iget-object v13, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget v13, v13, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr v13, v12

    add-int/2addr v13, v6

    mul-int/lit8 v13, v13, 0x2

    .line 132
    iget-object v14, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->u:[D

    mul-int/lit8 v15, v12, 0x2

    iget-object v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v16, v4, v13

    aput-wide v16, v14, v15

    .line 133
    iget-object v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->u:[D

    add-int/lit8 v14, v15, 0x1

    iget-object v1, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v13, v13, 0x1

    aget-wide v18, v1, v13

    aput-wide v18, v4, v14

    .line 135
    iget-object v1, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->a:[D

    aget-wide v20, v1, v15

    .line 136
    aget-wide v13, v1, v14

    mul-double v22, v16, v20

    mul-double v24, v18, v13

    add-double v22, v22, v24

    add-double v10, v10, v22

    mul-double v16, v16, v13

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    add-double v7, v7, v16

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    goto :goto_3

    .line 143
    :cond_1
    iget-object v1, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->gammas:[D

    aget-wide v12, v1, v6

    mul-double/2addr v10, v12

    mul-double/2addr v7, v12

    .line 146
    :goto_4
    iget v1, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->numRows:I

    if-ge v6, v1, :cond_2

    .line 147
    iget-object v1, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->u:[D

    mul-int/lit8 v4, v6, 0x2

    aget-wide v12, v1, v4

    add-int/lit8 v14, v4, 0x1

    .line 148
    aget-wide v16, v1, v14

    .line 150
    iget-object v1, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->a:[D

    aget-wide v18, v1, v4

    mul-double v20, v12, v10

    mul-double v22, v16, v7

    sub-double v20, v20, v22

    sub-double v18, v18, v20

    aput-wide v18, v1, v4

    .line 151
    aget-wide v18, v1, v14

    mul-double/2addr v12, v7

    mul-double v16, v16, v10

    add-double v12, v12, v16

    sub-double v18, v18, v12

    aput-wide v18, v1, v14

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_2
    move-object/from16 v1, p1

    move v6, v9

    goto/16 :goto_2

    .line 156
    :cond_3
    iget-object v1, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->QR:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget-object v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->a:[D

    iget v6, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->numCols:I

    invoke-static {v1, v4, v6}, Lorg/ejml/dense/row/decompose/TriangularSolver_ZDRM;->solveU([D[DI)V

    const/4 v1, 0x0

    .line 159
    :goto_5
    iget v4, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->numCols:I

    if-ge v1, v4, :cond_4

    .line 160
    iget v4, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    .line 162
    iget-object v6, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->a:[D

    mul-int/lit8 v8, v1, 0x2

    aget-wide v9, v7, v8

    aput-wide v9, v6, v4

    .line 163
    iget-object v6, v2, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v4, v4, 0x1

    iget-object v7, v0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouse_ZDRM;->a:[D

    add-int/lit8 v8, v8, 0x1

    aget-wide v7, v7, v8

    aput-wide v7, v6, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_5
    return-void

    .line 103
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unexpected dimensions for B"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
