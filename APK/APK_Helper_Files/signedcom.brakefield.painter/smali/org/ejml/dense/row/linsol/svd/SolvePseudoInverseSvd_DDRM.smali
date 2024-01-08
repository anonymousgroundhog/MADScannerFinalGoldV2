.class public Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;
.super Ljava/lang/Object;
.source "SolvePseudoInverseSvd_DDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/linsol/LinearSolverDense;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
        "Lorg/ejml/data/DMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field private U_t:Lorg/ejml/data/DMatrixRMaj;

.field private V:Lorg/ejml/data/DMatrixRMaj;

.field private pinv:Lorg/ejml/data/DMatrixRMaj;

.field private svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation
.end field

.field private threshold:D


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x64

    .line 73
    invoke-direct {p0, v0, v0}, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->pinv:Lorg/ejml/data/DMatrixRMaj;

    .line 53
    sget-wide v2, Lorg/ejml/UtilEjml;->EPS:D

    iput-wide v2, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->threshold:D

    .line 56
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->U_t:Lorg/ejml/data/DMatrixRMaj;

    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->V:Lorg/ejml/data/DMatrixRMaj;

    .line 66
    invoke-static {p1, p2, v1, v1, v1}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    return-void
.end method


# virtual methods
.method public getDecomposer()Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    return-object v0
.end method

.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->getDecomposition()Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    move-result-object v0

    return-object v0
.end method

.method public getDecomposition()Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    return-object v0
.end method

.method public invert(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->pinv:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p1, v0}, Lorg/ejml/data/DMatrixRMaj;->set(Lorg/ejml/data/DMatrixD1;)V

    return-void
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 44
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->invert(Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public modifiesA()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->inputModified()Z

    move-result v0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public quality()D
    .locals 9

    .line 124
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getSingularValues()[D

    move-result-object v0

    .line 125
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->pinv:Lorg/ejml/data/DMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget-object v2, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->pinv:Lorg/ejml/data/DMatrixRMaj;

    iget v2, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    .line 126
    aget-wide v3, v0, v2

    move-wide v5, v3

    :goto_0
    if-ge v2, v1, :cond_0

    .line 129
    aget-wide v7, v0, v2

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    .line 130
    aget-wide v7, v0, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    div-double/2addr v3, v5

    return-wide v3
.end method

.method public setA(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 13

    .line 78
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->pinv:Lorg/ejml/data/DMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v2, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    .line 80
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->U_t:Lorg/ejml/data/DMatrixRMaj;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getU(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    .line 84
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->V:Lorg/ejml/data/DMatrixRMaj;

    invoke-interface {v0, v1, v3}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getV(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    .line 85
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getSingularValues()[D

    move-result-object v0

    .line 86
    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v4, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    const-wide/16 v4, 0x0

    move v6, v3

    move-wide v7, v4

    :goto_0
    if-ge v6, v1, :cond_2

    .line 91
    aget-wide v9, v0, v6

    cmpl-double v11, v9, v7

    if-lez v11, :cond_1

    move-wide v7, v9

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 95
    :cond_2
    iget-wide v9, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->threshold:D

    iget v6, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget p1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {v6, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-double v11, p1

    mul-double/2addr v9, v11

    mul-double/2addr v9, v7

    cmpl-double p1, v7, v4

    if-eqz p1, :cond_4

    move p1, v3

    :goto_1
    if-ge p1, v1, :cond_4

    .line 100
    aget-wide v6, v0, p1

    cmpg-double v8, v6, v9

    if-gez v8, :cond_3

    .line 102
    aput-wide v4, v0, p1

    goto :goto_2

    :cond_3
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    div-double/2addr v11, v6

    .line 104
    aput-wide v11, v0, p1

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    move p1, v3

    .line 109
    :goto_3
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->V:Lorg/ejml/data/DMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge p1, v1, :cond_6

    .line 110
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->V:Lorg/ejml/data/DMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v1, p1

    move v4, v3

    .line 111
    :goto_4
    iget-object v5, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->V:Lorg/ejml/data/DMatrixRMaj;

    iget v5, v5, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v4, v5, :cond_5

    .line 112
    iget-object v5, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->V:Lorg/ejml/data/DMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v6, v1, 0x1

    aget-wide v7, v5, v1

    aget-wide v9, v0, v4

    mul-double/2addr v7, v9

    aput-wide v7, v5, v1

    add-int/lit8 v4, v4, 0x1

    move v1, v6

    goto :goto_4

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 117
    :cond_6
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->V:Lorg/ejml/data/DMatrixRMaj;

    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->U_t:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->pinv:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {p1, v0, v1}, Lorg/ejml/dense/row/CommonOps_DDRM;->mult(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;

    return v2
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 44
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->setA(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public setThreshold(D)V
    .locals 0

    .line 166
    iput-wide p1, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->threshold:D

    return-void
.end method

.method public solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->pinv:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v0, p1, p2}, Lorg/ejml/dense/row/CommonOps_DDRM;->mult(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;

    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 44
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_DDRM;->solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method
