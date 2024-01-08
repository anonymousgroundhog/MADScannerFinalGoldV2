.class public Lorg/ejml/simple/ops/SimpleOperations_DDRM;
.super Ljava/lang/Object;
.source "SimpleOperations_DDRM.java"

# interfaces
.implements Lorg/ejml/simple/SimpleOperations;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/simple/SimpleOperations<",
        "Lorg/ejml/data/DMatrixRMaj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeSign(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 220
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_DDRM;->changeSign(Lorg/ejml/data/DMatrixD1;)V

    return-void
.end method

.method public bridge synthetic changeSign(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->changeSign(Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public conditionP2(Lorg/ejml/data/DMatrixRMaj;)D
    .locals 2

    .line 166
    invoke-static {p1}, Lorg/ejml/dense/row/NormOps_DDRM;->conditionP2(Lorg/ejml/data/DMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic conditionP2(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->conditionP2(Lorg/ejml/data/DMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public determinant(Lorg/ejml/data/DMatrixRMaj;)D
    .locals 2

    .line 171
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_DDRM;->det(Lorg/ejml/data/DMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic determinant(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->determinant(Lorg/ejml/data/DMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public diag(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 3

    .line 201
    invoke-static {p1}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 203
    new-instance v1, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v1, v0, v0}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 204
    iget-object p1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    invoke-static {v1, v0, p1}, Lorg/ejml/dense/row/CommonOps_DDRM;->diag(Lorg/ejml/data/DMatrixRMaj;I[D)Lorg/ejml/data/DMatrixRMaj;

    goto :goto_0

    .line 206
    :cond_0
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 207
    new-instance v1, Lorg/ejml/data/DMatrixRMaj;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 208
    invoke-static {p1, v1}, Lorg/ejml/dense/row/CommonOps_DDRM;->extractDiag(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    :goto_0
    return-object v1
.end method

.method public bridge synthetic diag(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->diag(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public divide(Lorg/ejml/data/DMatrixRMaj;DLorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 131
    invoke-static {p1, p2, p3, p4}, Lorg/ejml/dense/row/CommonOps_DDRM;->divide(Lorg/ejml/data/DMatrixD1;DLorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    return-void
.end method

.method public bridge synthetic divide(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p4, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->divide(Lorg/ejml/data/DMatrixRMaj;DLorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public dot(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)D
    .locals 0

    .line 121
    invoke-static {p1, p2}, Lorg/ejml/dense/row/mult/VectorVectorMult_DDRM;->innerProd(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic dot(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)D
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->dot(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)D

    move-result-wide p1

    return-wide p1
.end method

.method public elementDiv(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 245
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/CommonOps_DDRM;->elementDiv(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    return-void
.end method

.method public bridge synthetic elementDiv(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    check-cast p3, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->elementDiv(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public elementExp(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 260
    invoke-static {p1, p2}, Lorg/ejml/dense/row/CommonOps_DDRM;->elementExp(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    return-void
.end method

.method public bridge synthetic elementExp(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->elementExp(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public elementLog(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 265
    invoke-static {p1, p2}, Lorg/ejml/dense/row/CommonOps_DDRM;->elementLog(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    return-void
.end method

.method public bridge synthetic elementLog(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->elementLog(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public elementMaxAbs(Lorg/ejml/data/DMatrixRMaj;)D
    .locals 2

    .line 225
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_DDRM;->elementMaxAbs(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic elementMaxAbs(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->elementMaxAbs(Lorg/ejml/data/DMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public elementMinAbs(Lorg/ejml/data/DMatrixRMaj;)D
    .locals 2

    .line 230
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_DDRM;->elementMinAbs(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic elementMinAbs(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->elementMinAbs(Lorg/ejml/data/DMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public elementMult(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 240
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/CommonOps_DDRM;->elementMult(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    return-void
.end method

.method public bridge synthetic elementMult(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    check-cast p3, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->elementMult(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public elementPower(Lorg/ejml/data/DMatrixRMaj;DLorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 255
    invoke-static {p1, p2, p3, p4}, Lorg/ejml/dense/row/CommonOps_DDRM;->elementPower(Lorg/ejml/data/DMatrixD1;DLorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    return-void
.end method

.method public elementPower(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 250
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/CommonOps_DDRM;->elementPower(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    return-void
.end method

.method public bridge synthetic elementPower(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p4, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->elementPower(Lorg/ejml/data/DMatrixRMaj;DLorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic elementPower(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    check-cast p3, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->elementPower(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public elementSum(Lorg/ejml/data/DMatrixRMaj;)D
    .locals 2

    .line 235
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_DDRM;->elementSum(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic elementSum(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->elementSum(Lorg/ejml/data/DMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public extract(Lorg/ejml/data/DMatrixRMaj;IIIILorg/ejml/data/DMatrixRMaj;II)V
    .locals 0

    .line 195
    invoke-static/range {p1 .. p8}, Lorg/ejml/dense/row/CommonOps_DDRM;->extract(Lorg/ejml/data/DMatrix;IIIILorg/ejml/data/DMatrix;II)V

    return-void
.end method

.method public bridge synthetic extract(Lorg/ejml/data/Matrix;IIIILorg/ejml/data/Matrix;II)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p6, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual/range {p0 .. p8}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->extract(Lorg/ejml/data/DMatrixRMaj;IIIILorg/ejml/data/DMatrixRMaj;II)V

    return-void
.end method

.method public fill(Lorg/ejml/data/DMatrixRMaj;D)V
    .locals 0

    .line 66
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/CommonOps_DDRM;->fill(Lorg/ejml/data/DMatrixD1;D)V

    return-void
.end method

.method public bridge synthetic fill(Lorg/ejml/data/Matrix;D)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->fill(Lorg/ejml/data/DMatrixRMaj;D)V

    return-void
.end method

.method public get(Lorg/ejml/data/DMatrixRMaj;II)D
    .locals 0

    .line 55
    invoke-virtual {p1, p2, p3}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic get(Lorg/ejml/data/Matrix;II)D
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->get(Lorg/ejml/data/DMatrixRMaj;II)D

    move-result-wide p1

    return-wide p1
.end method

.method public get(Lorg/ejml/data/DMatrixRMaj;IILorg/ejml/data/Complex_F64;)V
    .locals 0

    .line 60
    invoke-virtual {p1, p2, p3}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide p1

    iput-wide p1, p4, Lorg/ejml/data/Complex_F64;->real:D

    const-wide/16 p1, 0x0

    .line 61
    iput-wide p1, p4, Lorg/ejml/data/Complex_F64;->imaginary:D

    return-void
.end method

.method public bridge synthetic get(Lorg/ejml/data/Matrix;IILorg/ejml/data/Complex_F64;)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->get(Lorg/ejml/data/DMatrixRMaj;IILorg/ejml/data/Complex_F64;)V

    return-void
.end method

.method public hasUncountable(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 0

    .line 215
    invoke-static {p1}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->hasUncountable(Lorg/ejml/data/DMatrixD1;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hasUncountable(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->hasUncountable(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public invert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 0

    .line 136
    invoke-static {p1, p2}, Lorg/ejml/dense/row/CommonOps_DDRM;->invert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->invert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public isIdentical(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;D)Z
    .locals 0

    .line 270
    invoke-static {p1, p2, p3, p4}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isIdentical(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;D)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isIdentical(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;D)Z
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->isIdentical(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;D)Z

    move-result p1

    return p1
.end method

.method public kron(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 86
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/CommonOps_DDRM;->kron(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method

.method public bridge synthetic kron(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    check-cast p3, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->kron(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public minus(Lorg/ejml/data/DMatrixRMaj;DLorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 101
    invoke-static {p1, p2, p3, p4}, Lorg/ejml/dense/row/CommonOps_DDRM;->subtract(Lorg/ejml/data/DMatrixD1;DLorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    return-void
.end method

.method public minus(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 96
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/CommonOps_DDRM;->subtract(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    return-void
.end method

.method public bridge synthetic minus(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p4, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->minus(Lorg/ejml/data/DMatrixRMaj;DLorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic minus(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    check-cast p3, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->minus(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public mult(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 76
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/CommonOps_DDRM;->mult(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;

    return-void
.end method

.method public bridge synthetic mult(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    check-cast p3, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->mult(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public multTransA(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 81
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/CommonOps_DDRM;->multTransA(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;

    return-void
.end method

.method public bridge synthetic multTransA(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    check-cast p3, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->multTransA(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public normF(Lorg/ejml/data/DMatrixRMaj;)D
    .locals 2

    .line 161
    invoke-static {p1}, Lorg/ejml/dense/row/NormOps_DDRM;->normF(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic normF(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->normF(Lorg/ejml/data/DMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public plus(DLorg/ejml/data/DMatrixRMaj;DLorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 116
    invoke-static/range {p1 .. p7}, Lorg/ejml/dense/row/CommonOps_DDRM;->add(DLorg/ejml/data/DMatrixD1;DLorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    return-void
.end method

.method public bridge synthetic plus(DLorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 41
    check-cast p3, Lorg/ejml/data/DMatrixRMaj;

    check-cast p6, Lorg/ejml/data/DMatrixRMaj;

    check-cast p7, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual/range {p0 .. p7}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->plus(DLorg/ejml/data/DMatrixRMaj;DLorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public plus(Lorg/ejml/data/DMatrixRMaj;DLorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 106
    invoke-static {p1, p2, p3, p4}, Lorg/ejml/dense/row/CommonOps_DDRM;->add(Lorg/ejml/data/DMatrixD1;DLorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    return-void
.end method

.method public plus(Lorg/ejml/data/DMatrixRMaj;DLorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 111
    invoke-static {p1, p2, p3, p4, p5}, Lorg/ejml/dense/row/CommonOps_DDRM;->add(Lorg/ejml/data/DMatrixD1;DLorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    return-void
.end method

.method public plus(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 91
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/CommonOps_DDRM;->add(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    return-void
.end method

.method public bridge synthetic plus(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p4, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->plus(Lorg/ejml/data/DMatrixRMaj;DLorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic plus(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p4, Lorg/ejml/data/DMatrixRMaj;

    check-cast p5, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual/range {p0 .. p5}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->plus(Lorg/ejml/data/DMatrixRMaj;DLorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic plus(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    check-cast p3, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->plus(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public print(Ljava/io/PrintStream;Lorg/ejml/data/Matrix;Ljava/lang/String;)V
    .locals 0

    .line 275
    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-static {p1, p2, p3}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;Ljava/lang/String;)V

    return-void
.end method

.method public pseudoInverse(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 146
    invoke-static {p1, p2}, Lorg/ejml/dense/row/CommonOps_DDRM;->pinv(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic pseudoInverse(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->pseudoInverse(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public scale(Lorg/ejml/data/DMatrixRMaj;DLorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 126
    invoke-static {p2, p3, p1, p4}, Lorg/ejml/dense/row/CommonOps_DDRM;->scale(DLorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V

    return-void
.end method

.method public bridge synthetic scale(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p4, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->scale(Lorg/ejml/data/DMatrixRMaj;DLorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public set(Lorg/ejml/data/DMatrixRMaj;IID)V
    .locals 0

    .line 45
    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    return-void
.end method

.method public set(Lorg/ejml/data/DMatrixRMaj;IIDD)V
    .locals 0

    .line 50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Does not support imaginary values"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic set(Lorg/ejml/data/Matrix;IID)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual/range {p0 .. p5}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->set(Lorg/ejml/data/DMatrixRMaj;IID)V

    return-void
.end method

.method public bridge synthetic set(Lorg/ejml/data/Matrix;IIDD)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual/range {p0 .. p7}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->set(Lorg/ejml/data/DMatrixRMaj;IIDD)V

    return-void
.end method

.method public varargs setColumn(Lorg/ejml/data/DMatrixRMaj;II[D)V
    .locals 4

    const/4 v0, 0x0

    .line 188
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    add-int v1, p3, v0

    .line 189
    aget-wide v2, p4, v0

    invoke-virtual {p1, v1, p2, v2, v3}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setColumn(Lorg/ejml/data/Matrix;II[D)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->setColumn(Lorg/ejml/data/DMatrixRMaj;II[D)V

    return-void
.end method

.method public setIdentity(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 141
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_DDRM;->setIdentity(Lorg/ejml/data/DMatrix1Row;)V

    return-void
.end method

.method public bridge synthetic setIdentity(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->setIdentity(Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public varargs setRow(Lorg/ejml/data/DMatrixRMaj;II[D)V
    .locals 4

    const/4 v0, 0x0

    .line 181
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    add-int v1, p3, v0

    .line 182
    aget-wide v2, p4, v0

    invoke-virtual {p1, p2, v1, v2, v3}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setRow(Lorg/ejml/data/Matrix;II[D)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->setRow(Lorg/ejml/data/DMatrixRMaj;II[D)V

    return-void
.end method

.method public solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 0

    .line 151
    invoke-static {p1, p3, p2}, Lorg/ejml/dense/row/CommonOps_DDRM;->solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    check-cast p3, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public trace(Lorg/ejml/data/DMatrixRMaj;)D
    .locals 2

    .line 176
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_DDRM;->trace(Lorg/ejml/data/DMatrix1Row;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic trace(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->trace(Lorg/ejml/data/DMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public transpose(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 71
    invoke-static {p1, p2}, Lorg/ejml/dense/row/CommonOps_DDRM;->transpose(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method

.method public bridge synthetic transpose(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->transpose(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public zero(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 156
    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->zero()V

    return-void
.end method

.method public bridge synthetic zero(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 41
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;->zero(Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method
