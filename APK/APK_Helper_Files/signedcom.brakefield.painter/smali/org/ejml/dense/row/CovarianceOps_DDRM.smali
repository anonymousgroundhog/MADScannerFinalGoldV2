.class public Lorg/ejml/dense/row/CovarianceOps_DDRM;
.super Ljava/lang/Object;
.source "CovarianceOps_DDRM.java"


# static fields
.field public static TOL:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    sget-wide v0, Lorg/ejml/UtilEjml;->TESTP_F64:D

    sput-wide v0, Lorg/ejml/dense/row/CovarianceOps_DDRM;->TOL:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invert(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 0

    .line 77
    invoke-static {p0, p0}, Lorg/ejml/dense/row/CovarianceOps_DDRM;->invert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p0

    return p0
.end method

.method public static invert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 5

    .line 89
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-gt v0, v1, :cond_2

    .line 90
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_1

    .line 94
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 95
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledInverseFromMinor_DDRM;->inv(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object p0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v0, p0, v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double/2addr v3, v0

    aput-wide v3, p1, v2

    goto :goto_0

    .line 91
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must be a square matrix."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_2
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {v0}, Lorg/ejml/dense/row/factory/LinearSolverFactory_DDRM;->symmPosDef(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object v0

    .line 101
    new-instance v1, Lorg/ejml/LinearSolverSafe;

    invoke-direct {v1, v0}, Lorg/ejml/LinearSolverSafe;-><init>(Lorg/ejml/interfaces/linsol/LinearSolverDense;)V

    .line 102
    invoke-interface {v1, p0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    .line 104
    :cond_3
    invoke-interface {v1, p1}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->invert(Lorg/ejml/data/Matrix;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isValid(Lorg/ejml/data/DMatrixRMaj;)I
    .locals 2

    .line 57
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isDiagonalPositive(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 60
    :cond_0
    sget-wide v0, Lorg/ejml/dense/row/CovarianceOps_DDRM;->TOL:D

    invoke-static {p0, v0, v1}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isSymmetric(Lorg/ejml/data/DMatrixRMaj;D)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 63
    :cond_1
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isPositiveSemidefinite(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidFast(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 0

    .line 47
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isDiagonalPositive(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p0

    return p0
.end method

.method public static randomVector(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Ljava/util/Random;)V
    .locals 1

    .line 120
    new-instance v0, Lorg/ejml/dense/row/CovarianceRandomDraw_DDRM;

    invoke-direct {v0, p2, p0}, Lorg/ejml/dense/row/CovarianceRandomDraw_DDRM;-><init>(Ljava/util/Random;Lorg/ejml/data/DMatrixRMaj;)V

    .line 121
    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/CovarianceRandomDraw_DDRM;->next(Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method
