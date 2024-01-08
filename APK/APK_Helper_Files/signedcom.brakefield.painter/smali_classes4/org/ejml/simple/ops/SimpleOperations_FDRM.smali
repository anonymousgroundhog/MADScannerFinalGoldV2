.class public Lorg/ejml/simple/ops/SimpleOperations_FDRM;
.super Ljava/lang/Object;
.source "SimpleOperations_FDRM.java"

# interfaces
.implements Lorg/ejml/simple/SimpleOperations;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/simple/SimpleOperations<",
        "Lorg/ejml/data/FMatrixRMaj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeSign(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 222
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_FDRM;->changeSign(Lorg/ejml/data/FMatrixD1;)V

    return-void
.end method

.method public bridge synthetic changeSign(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->changeSign(Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public conditionP2(Lorg/ejml/data/FMatrixRMaj;)D
    .locals 2

    .line 168
    invoke-static {p1}, Lorg/ejml/dense/row/NormOps_FDRM;->conditionP2(Lorg/ejml/data/FMatrixRMaj;)F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method

.method public bridge synthetic conditionP2(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->conditionP2(Lorg/ejml/data/FMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public determinant(Lorg/ejml/data/FMatrixRMaj;)D
    .locals 2

    .line 173
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_FDRM;->det(Lorg/ejml/data/FMatrixRMaj;)F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method

.method public bridge synthetic determinant(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->determinant(Lorg/ejml/data/FMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public diag(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 3

    .line 203
    invoke-static {p1}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 205
    new-instance v1, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v1, v0, v0}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 206
    iget-object p1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    invoke-static {v1, v0, p1}, Lorg/ejml/dense/row/CommonOps_FDRM;->diag(Lorg/ejml/data/FMatrixRMaj;I[F)Lorg/ejml/data/FMatrixRMaj;

    goto :goto_0

    .line 208
    :cond_0
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 209
    new-instance v1, Lorg/ejml/data/FMatrixRMaj;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 210
    invoke-static {p1, v1}, Lorg/ejml/dense/row/CommonOps_FDRM;->extractDiag(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    :goto_0
    return-object v1
.end method

.method public bridge synthetic diag(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->diag(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public divide(Lorg/ejml/data/FMatrixRMaj;DLorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    double-to-float p2, p2

    .line 133
    invoke-static {p1, p2, p4}, Lorg/ejml/dense/row/CommonOps_FDRM;->divide(Lorg/ejml/data/FMatrixD1;FLorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;

    return-void
.end method

.method public bridge synthetic divide(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p4, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->divide(Lorg/ejml/data/FMatrixRMaj;DLorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public dot(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)D
    .locals 0

    .line 123
    invoke-static {p1, p2}, Lorg/ejml/dense/row/mult/VectorVectorMult_FDRM;->innerProd(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method public bridge synthetic dot(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)D
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->dot(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)D

    move-result-wide p1

    return-wide p1
.end method

.method public elementDiv(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 247
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/CommonOps_FDRM;->elementDiv(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;

    return-void
.end method

.method public bridge synthetic elementDiv(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    check-cast p3, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->elementDiv(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public elementExp(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 262
    invoke-static {p1, p2}, Lorg/ejml/dense/row/CommonOps_FDRM;->elementExp(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;

    return-void
.end method

.method public bridge synthetic elementExp(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->elementExp(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public elementLog(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 267
    invoke-static {p1, p2}, Lorg/ejml/dense/row/CommonOps_FDRM;->elementLog(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;

    return-void
.end method

.method public bridge synthetic elementLog(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->elementLog(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public elementMaxAbs(Lorg/ejml/data/FMatrixRMaj;)D
    .locals 2

    .line 227
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_FDRM;->elementMaxAbs(Lorg/ejml/data/FMatrixD1;)F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method

.method public bridge synthetic elementMaxAbs(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->elementMaxAbs(Lorg/ejml/data/FMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public elementMinAbs(Lorg/ejml/data/FMatrixRMaj;)D
    .locals 2

    .line 232
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_FDRM;->elementMinAbs(Lorg/ejml/data/FMatrixD1;)F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method

.method public bridge synthetic elementMinAbs(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->elementMinAbs(Lorg/ejml/data/FMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public elementMult(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 242
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/CommonOps_FDRM;->elementMult(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;

    return-void
.end method

.method public bridge synthetic elementMult(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    check-cast p3, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->elementMult(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public elementPower(Lorg/ejml/data/FMatrixRMaj;DLorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    double-to-float p2, p2

    .line 257
    invoke-static {p1, p2, p4}, Lorg/ejml/dense/row/CommonOps_FDRM;->elementPower(Lorg/ejml/data/FMatrixD1;FLorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;

    return-void
.end method

.method public elementPower(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 252
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/CommonOps_FDRM;->elementPower(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;

    return-void
.end method

.method public bridge synthetic elementPower(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p4, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->elementPower(Lorg/ejml/data/FMatrixRMaj;DLorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic elementPower(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    check-cast p3, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->elementPower(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public elementSum(Lorg/ejml/data/FMatrixRMaj;)D
    .locals 2

    .line 237
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_FDRM;->elementSum(Lorg/ejml/data/FMatrixD1;)F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method

.method public bridge synthetic elementSum(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->elementSum(Lorg/ejml/data/FMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public extract(Lorg/ejml/data/FMatrixRMaj;IIIILorg/ejml/data/FMatrixRMaj;II)V
    .locals 0

    .line 197
    invoke-static/range {p1 .. p8}, Lorg/ejml/dense/row/CommonOps_FDRM;->extract(Lorg/ejml/data/FMatrix;IIIILorg/ejml/data/FMatrix;II)V

    return-void
.end method

.method public bridge synthetic extract(Lorg/ejml/data/Matrix;IIIILorg/ejml/data/Matrix;II)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p6, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual/range {p0 .. p8}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->extract(Lorg/ejml/data/FMatrixRMaj;IIIILorg/ejml/data/FMatrixRMaj;II)V

    return-void
.end method

.method public fill(Lorg/ejml/data/FMatrixRMaj;D)V
    .locals 0

    double-to-float p2, p2

    .line 68
    invoke-static {p1, p2}, Lorg/ejml/dense/row/CommonOps_FDRM;->fill(Lorg/ejml/data/FMatrixD1;F)V

    return-void
.end method

.method public bridge synthetic fill(Lorg/ejml/data/Matrix;D)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->fill(Lorg/ejml/data/FMatrixRMaj;D)V

    return-void
.end method

.method public get(Lorg/ejml/data/FMatrixRMaj;II)D
    .locals 0

    .line 57
    invoke-virtual {p1, p2, p3}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method public bridge synthetic get(Lorg/ejml/data/Matrix;II)D
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->get(Lorg/ejml/data/FMatrixRMaj;II)D

    move-result-wide p1

    return-wide p1
.end method

.method public get(Lorg/ejml/data/FMatrixRMaj;IILorg/ejml/data/Complex_F64;)V
    .locals 0

    .line 62
    invoke-virtual {p1, p2, p3}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result p1

    float-to-double p1, p1

    iput-wide p1, p4, Lorg/ejml/data/Complex_F64;->real:D

    const-wide/16 p1, 0x0

    .line 63
    iput-wide p1, p4, Lorg/ejml/data/Complex_F64;->imaginary:D

    return-void
.end method

.method public bridge synthetic get(Lorg/ejml/data/Matrix;IILorg/ejml/data/Complex_F64;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->get(Lorg/ejml/data/FMatrixRMaj;IILorg/ejml/data/Complex_F64;)V

    return-void
.end method

.method public hasUncountable(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 0

    .line 217
    invoke-static {p1}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->hasUncountable(Lorg/ejml/data/FMatrixD1;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hasUncountable(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->hasUncountable(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public invert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 0

    .line 138
    invoke-static {p1, p2}, Lorg/ejml/dense/row/CommonOps_FDRM;->invert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->invert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public isIdentical(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;D)Z
    .locals 0

    double-to-float p3, p3

    .line 272
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isIdentical(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;F)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isIdentical(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;D)Z
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->isIdentical(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;D)Z

    move-result p1

    return p1
.end method

.method public kron(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 88
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/CommonOps_FDRM;->kron(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method

.method public bridge synthetic kron(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    check-cast p3, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->kron(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public minus(Lorg/ejml/data/FMatrixRMaj;DLorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    double-to-float p2, p2

    .line 103
    invoke-static {p1, p2, p4}, Lorg/ejml/dense/row/CommonOps_FDRM;->subtract(Lorg/ejml/data/FMatrixD1;FLorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;

    return-void
.end method

.method public minus(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 98
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/CommonOps_FDRM;->subtract(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;

    return-void
.end method

.method public bridge synthetic minus(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p4, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->minus(Lorg/ejml/data/FMatrixRMaj;DLorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic minus(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    check-cast p3, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->minus(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public mult(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 78
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/CommonOps_FDRM;->mult(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;

    return-void
.end method

.method public bridge synthetic mult(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    check-cast p3, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->mult(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public multTransA(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 83
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/CommonOps_FDRM;->multTransA(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;

    return-void
.end method

.method public bridge synthetic multTransA(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    check-cast p3, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->multTransA(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public normF(Lorg/ejml/data/FMatrixRMaj;)D
    .locals 2

    .line 163
    invoke-static {p1}, Lorg/ejml/dense/row/NormOps_FDRM;->normF(Lorg/ejml/data/FMatrixD1;)F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method

.method public bridge synthetic normF(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->normF(Lorg/ejml/data/FMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public plus(DLorg/ejml/data/FMatrixRMaj;DLorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    double-to-float p1, p1

    double-to-float p2, p4

    .line 118
    invoke-static {p1, p3, p2, p6, p7}, Lorg/ejml/dense/row/CommonOps_FDRM;->add(FLorg/ejml/data/FMatrixD1;FLorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;

    return-void
.end method

.method public bridge synthetic plus(DLorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 42
    check-cast p3, Lorg/ejml/data/FMatrixRMaj;

    check-cast p6, Lorg/ejml/data/FMatrixRMaj;

    check-cast p7, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual/range {p0 .. p7}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->plus(DLorg/ejml/data/FMatrixRMaj;DLorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public plus(Lorg/ejml/data/FMatrixRMaj;DLorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    double-to-float p2, p2

    .line 108
    invoke-static {p1, p2, p4}, Lorg/ejml/dense/row/CommonOps_FDRM;->add(Lorg/ejml/data/FMatrixD1;FLorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;

    return-void
.end method

.method public plus(Lorg/ejml/data/FMatrixRMaj;DLorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    double-to-float p2, p2

    .line 113
    invoke-static {p1, p2, p4, p5}, Lorg/ejml/dense/row/CommonOps_FDRM;->add(Lorg/ejml/data/FMatrixD1;FLorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;

    return-void
.end method

.method public plus(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 93
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/CommonOps_FDRM;->add(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;

    return-void
.end method

.method public bridge synthetic plus(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p4, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->plus(Lorg/ejml/data/FMatrixRMaj;DLorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic plus(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p4, Lorg/ejml/data/FMatrixRMaj;

    check-cast p5, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual/range {p0 .. p5}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->plus(Lorg/ejml/data/FMatrixRMaj;DLorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic plus(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    check-cast p3, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->plus(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public print(Ljava/io/PrintStream;Lorg/ejml/data/Matrix;Ljava/lang/String;)V
    .locals 0

    .line 277
    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-static {p1, p2, p3}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;Ljava/lang/String;)V

    return-void
.end method

.method public pseudoInverse(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 148
    invoke-static {p1, p2}, Lorg/ejml/dense/row/CommonOps_FDRM;->pinv(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic pseudoInverse(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->pseudoInverse(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public scale(Lorg/ejml/data/FMatrixRMaj;DLorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    double-to-float p2, p2

    .line 128
    invoke-static {p2, p1, p4}, Lorg/ejml/dense/row/CommonOps_FDRM;->scale(FLorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V

    return-void
.end method

.method public bridge synthetic scale(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p4, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->scale(Lorg/ejml/data/FMatrixRMaj;DLorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public set(Lorg/ejml/data/FMatrixRMaj;IID)V
    .locals 0

    double-to-float p4, p4

    .line 47
    invoke-virtual {p1, p2, p3, p4}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    return-void
.end method

.method public set(Lorg/ejml/data/FMatrixRMaj;IIDD)V
    .locals 0

    .line 52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Does not support imaginary values"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic set(Lorg/ejml/data/Matrix;IID)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual/range {p0 .. p5}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->set(Lorg/ejml/data/FMatrixRMaj;IID)V

    return-void
.end method

.method public bridge synthetic set(Lorg/ejml/data/Matrix;IIDD)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual/range {p0 .. p7}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->set(Lorg/ejml/data/FMatrixRMaj;IIDD)V

    return-void
.end method

.method public varargs setColumn(Lorg/ejml/data/FMatrixRMaj;II[D)V
    .locals 4

    const/4 v0, 0x0

    .line 190
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    add-int v1, p3, v0

    .line 191
    aget-wide v2, p4, v0

    double-to-float v2, v2

    invoke-virtual {p1, v1, p2, v2}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setColumn(Lorg/ejml/data/Matrix;II[D)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->setColumn(Lorg/ejml/data/FMatrixRMaj;II[D)V

    return-void
.end method

.method public setIdentity(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 143
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_FDRM;->setIdentity(Lorg/ejml/data/FMatrix1Row;)V

    return-void
.end method

.method public bridge synthetic setIdentity(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->setIdentity(Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public varargs setRow(Lorg/ejml/data/FMatrixRMaj;II[D)V
    .locals 4

    const/4 v0, 0x0

    .line 183
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    add-int v1, p3, v0

    .line 184
    aget-wide v2, p4, v0

    double-to-float v2, v2

    invoke-virtual {p1, p2, v1, v2}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setRow(Lorg/ejml/data/Matrix;II[D)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->setRow(Lorg/ejml/data/FMatrixRMaj;II[D)V

    return-void
.end method

.method public solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 0

    .line 153
    invoke-static {p1, p3, p2}, Lorg/ejml/dense/row/CommonOps_FDRM;->solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    check-cast p3, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public trace(Lorg/ejml/data/FMatrixRMaj;)D
    .locals 2

    .line 178
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_FDRM;->trace(Lorg/ejml/data/FMatrix1Row;)F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method

.method public bridge synthetic trace(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->trace(Lorg/ejml/data/FMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public transpose(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 73
    invoke-static {p1, p2}, Lorg/ejml/dense/row/CommonOps_FDRM;->transpose(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method

.method public bridge synthetic transpose(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->transpose(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public zero(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 158
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->zero()V

    return-void
.end method

.method public bridge synthetic zero(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 42
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;->zero(Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method
