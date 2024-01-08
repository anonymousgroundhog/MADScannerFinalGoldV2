.class public Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;
.super Ljava/lang/Object;
.source "SolvePseudoInverseSvd_FDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/linsol/LinearSolverDense;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
        "Lorg/ejml/data/FMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field private U_t:Lorg/ejml/data/FMatrixRMaj;

.field private V:Lorg/ejml/data/FMatrixRMaj;

.field private pinv:Lorg/ejml/data/FMatrixRMaj;

.field private svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation
.end field

.field private threshold:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x64

    .line 75
    invoke-direct {p0, v0, v0}, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->pinv:Lorg/ejml/data/FMatrixRMaj;

    .line 55
    sget v0, Lorg/ejml/UtilEjml;->F_EPS:F

    iput v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->threshold:F

    .line 58
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->U_t:Lorg/ejml/data/FMatrixRMaj;

    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->V:Lorg/ejml/data/FMatrixRMaj;

    .line 68
    invoke-static {p1, p2, v1, v1, v1}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    return-void
.end method


# virtual methods
.method public getDecomposer()Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    return-object v0
.end method

.method public bridge synthetic getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->getDecomposition()Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    move-result-object v0

    return-object v0
.end method

.method public getDecomposition()Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    return-object v0
.end method

.method public invert(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->pinv:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p1, v0}, Lorg/ejml/data/FMatrixRMaj;->set(Lorg/ejml/data/FMatrixD1;)V

    return-void
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 45
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->invert(Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public modifiesA()Z
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->inputModified()Z

    move-result v0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public quality()D
    .locals 6

    .line 126
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getSingularValues()[F

    move-result-object v0

    .line 127
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->pinv:Lorg/ejml/data/FMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget-object v2, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->pinv:Lorg/ejml/data/FMatrixRMaj;

    iget v2, v2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    .line 128
    aget v3, v0, v2

    move v4, v3

    :goto_0
    if-ge v2, v1, :cond_0

    .line 131
    aget v5, v0, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 132
    aget v5, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    div-float/2addr v3, v4

    float-to-double v0, v3

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 9

    .line 80
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->pinv:Lorg/ejml/data/FMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v2, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    .line 82
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->U_t:Lorg/ejml/data/FMatrixRMaj;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getU(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    .line 86
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->V:Lorg/ejml/data/FMatrixRMaj;

    invoke-interface {v0, v1, v3}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getV(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    .line 87
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getSingularValues()[F

    move-result-object v0

    .line 88
    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v4, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v4, 0x0

    move v5, v3

    move v6, v4

    :goto_0
    if-ge v5, v1, :cond_2

    .line 93
    aget v7, v0, v5

    cmpl-float v8, v7, v6

    if-lez v8, :cond_1

    move v6, v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 97
    :cond_2
    iget v5, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->threshold:F

    iget v7, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget p1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {v7, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v5, p1

    mul-float/2addr v5, v6

    cmpl-float p1, v6, v4

    if-eqz p1, :cond_4

    move p1, v3

    :goto_1
    if-ge p1, v1, :cond_4

    .line 102
    aget v6, v0, p1

    cmpg-float v7, v6, v5

    if-gez v7, :cond_3

    .line 104
    aput v4, v0, p1

    goto :goto_2

    :cond_3
    const/high16 v7, 0x3f800000    # 1.0f

    div-float/2addr v7, v6

    .line 106
    aput v7, v0, p1

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    move p1, v3

    .line 111
    :goto_3
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->V:Lorg/ejml/data/FMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge p1, v1, :cond_6

    .line 112
    iget-object v1, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->V:Lorg/ejml/data/FMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v1, p1

    move v4, v3

    .line 113
    :goto_4
    iget-object v5, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->V:Lorg/ejml/data/FMatrixRMaj;

    iget v5, v5, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v4, v5, :cond_5

    .line 114
    iget-object v5, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->V:Lorg/ejml/data/FMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v6, v1, 0x1

    aget v7, v5, v1

    aget v8, v0, v4

    mul-float/2addr v7, v8

    aput v7, v5, v1

    add-int/lit8 v4, v4, 0x1

    move v1, v6

    goto :goto_4

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 119
    :cond_6
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->V:Lorg/ejml/data/FMatrixRMaj;

    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->U_t:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->pinv:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {p1, v0, v1}, Lorg/ejml/dense/row/CommonOps_FDRM;->mult(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;

    return v2
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 45
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->setA(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public setThreshold(F)V
    .locals 0

    .line 168
    iput p1, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->threshold:F

    return-void
.end method

.method public solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->pinv:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v0, p1, p2}, Lorg/ejml/dense/row/CommonOps_FDRM;->mult(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;

    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 45
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/linsol/svd/SolvePseudoInverseSvd_FDRM;->solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method
