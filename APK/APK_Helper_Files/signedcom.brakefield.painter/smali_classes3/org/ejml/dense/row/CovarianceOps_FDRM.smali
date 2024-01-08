.class public Lorg/ejml/dense/row/CovarianceOps_FDRM;
.super Ljava/lang/Object;
.source "CovarianceOps_FDRM.java"


# static fields
.field public static TOL:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget v0, Lorg/ejml/UtilEjml;->TESTP_F32:F

    sput v0, Lorg/ejml/dense/row/CovarianceOps_FDRM;->TOL:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invert(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 0

    .line 79
    invoke-static {p0, p0}, Lorg/ejml/dense/row/CovarianceOps_FDRM;->invert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p0

    return p0
.end method

.method public static invert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 3

    .line 91
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-gt v0, v1, :cond_2

    .line 92
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_1

    .line 96
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 97
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledInverseFromMinor_FDRM;->inv(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object p1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object p0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget p0, p0, v2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p0

    aput v0, p1, v2

    goto :goto_0

    .line 93
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must be a square matrix."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 101
    :cond_2
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {v0}, Lorg/ejml/dense/row/factory/LinearSolverFactory_FDRM;->symmPosDef(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object v0

    .line 103
    new-instance v1, Lorg/ejml/LinearSolverSafe;

    invoke-direct {v1, v0}, Lorg/ejml/LinearSolverSafe;-><init>(Lorg/ejml/interfaces/linsol/LinearSolverDense;)V

    .line 104
    invoke-interface {v1, p0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    .line 106
    :cond_3
    invoke-interface {v1, p1}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->invert(Lorg/ejml/data/Matrix;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isValid(Lorg/ejml/data/FMatrixRMaj;)I
    .locals 1

    .line 59
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isDiagonalPositive(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 62
    :cond_0
    sget v0, Lorg/ejml/dense/row/CovarianceOps_FDRM;->TOL:F

    invoke-static {p0, v0}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isSymmetric(Lorg/ejml/data/FMatrixRMaj;F)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 65
    :cond_1
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isPositiveSemidefinite(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidFast(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 0

    .line 49
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isDiagonalPositive(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p0

    return p0
.end method

.method public static randomVector(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Ljava/util/Random;)V
    .locals 1

    .line 122
    new-instance v0, Lorg/ejml/dense/row/CovarianceRandomDraw_FDRM;

    invoke-direct {v0, p2, p0}, Lorg/ejml/dense/row/CovarianceRandomDraw_FDRM;-><init>(Ljava/util/Random;Lorg/ejml/data/FMatrixRMaj;)V

    .line 123
    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/CovarianceRandomDraw_FDRM;->next(Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method
