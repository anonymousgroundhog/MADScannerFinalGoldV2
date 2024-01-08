.class public Lorg/ejml/simple/ops/SimpleOperations_CDRM;
.super Ljava/lang/Object;
.source "SimpleOperations_CDRM.java"

# interfaces
.implements Lorg/ejml/simple/SimpleOperations;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/simple/SimpleOperations<",
        "Lorg/ejml/data/CMatrixRMaj;",
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
.method public changeSign(Lorg/ejml/data/CMatrixRMaj;)V
    .locals 0

    .line 231
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic changeSign(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->changeSign(Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public conditionP2(Lorg/ejml/data/CMatrixRMaj;)D
    .locals 0

    .line 175
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic conditionP2(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->conditionP2(Lorg/ejml/data/CMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public determinant(Lorg/ejml/data/CMatrixRMaj;)D
    .locals 2

    .line 180
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_CDRM;->det(Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/Complex_F32;

    move-result-object p1

    iget p1, p1, Lorg/ejml/data/Complex_F32;->real:F

    float-to-double v0, p1

    return-wide v0
.end method

.method public bridge synthetic determinant(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->determinant(Lorg/ejml/data/CMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public diag(Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;
    .locals 3

    .line 211
    invoke-static {p1}, Lorg/ejml/dense/row/MatrixFeatures_CDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 213
    new-instance v1, Lorg/ejml/data/CMatrixRMaj;

    invoke-direct {v1, v0, v0}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    .line 214
    iget-object p1, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    invoke-static {v1, v0, p1}, Lorg/ejml/dense/row/CommonOps_CDRM;->diag(Lorg/ejml/data/CMatrixRMaj;I[F)Lorg/ejml/data/CMatrixRMaj;

    goto :goto_0

    .line 216
    :cond_0
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 217
    new-instance v1, Lorg/ejml/data/CMatrixRMaj;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    .line 218
    invoke-static {p1, v1}, Lorg/ejml/dense/row/CommonOps_CDRM;->extractDiag(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    :goto_0
    return-object v1
.end method

.method public bridge synthetic diag(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->diag(Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public divide(Lorg/ejml/data/CMatrixRMaj;DLorg/ejml/data/CMatrixRMaj;)V
    .locals 0

    .line 138
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic divide(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p4, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->divide(Lorg/ejml/data/CMatrixRMaj;DLorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public dot(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)D
    .locals 0

    .line 126
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic dot(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)D
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p2, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->dot(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)D

    move-result-wide p1

    return-wide p1
.end method

.method public elementDiv(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 0

    .line 259
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic elementDiv(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p2, Lorg/ejml/data/CMatrixRMaj;

    check-cast p3, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->elementDiv(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public elementExp(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 0

    .line 277
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic elementExp(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p2, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->elementExp(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public elementLog(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 0

    .line 283
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic elementLog(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p2, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->elementLog(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public elementMaxAbs(Lorg/ejml/data/CMatrixRMaj;)D
    .locals 2

    .line 236
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_CDRM;->elementMaxAbs(Lorg/ejml/data/CMatrixRMaj;)F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method

.method public bridge synthetic elementMaxAbs(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->elementMaxAbs(Lorg/ejml/data/CMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public elementMinAbs(Lorg/ejml/data/CMatrixRMaj;)D
    .locals 2

    .line 241
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_CDRM;->elementMinAbs(Lorg/ejml/data/CMatrixRMaj;)F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method

.method public bridge synthetic elementMinAbs(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->elementMinAbs(Lorg/ejml/data/CMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public elementMult(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 0

    .line 253
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic elementMult(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p2, Lorg/ejml/data/CMatrixRMaj;

    check-cast p3, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->elementMult(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public elementPower(Lorg/ejml/data/CMatrixRMaj;DLorg/ejml/data/CMatrixRMaj;)V
    .locals 0

    .line 271
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public elementPower(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 0

    .line 265
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic elementPower(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p4, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->elementPower(Lorg/ejml/data/CMatrixRMaj;DLorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic elementPower(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p2, Lorg/ejml/data/CMatrixRMaj;

    check-cast p3, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->elementPower(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public elementSum(Lorg/ejml/data/CMatrixRMaj;)D
    .locals 0

    .line 247
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic elementSum(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->elementSum(Lorg/ejml/data/CMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public extract(Lorg/ejml/data/CMatrixRMaj;IIIILorg/ejml/data/CMatrixRMaj;II)V
    .locals 0

    .line 205
    invoke-static/range {p1 .. p8}, Lorg/ejml/dense/row/CommonOps_CDRM;->extract(Lorg/ejml/data/CMatrixRMaj;IIIILorg/ejml/data/CMatrixRMaj;II)V

    return-void
.end method

.method public bridge synthetic extract(Lorg/ejml/data/Matrix;IIIILorg/ejml/data/Matrix;II)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p6, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual/range {p0 .. p8}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->extract(Lorg/ejml/data/CMatrixRMaj;IIIILorg/ejml/data/CMatrixRMaj;II)V

    return-void
.end method

.method public fill(Lorg/ejml/data/CMatrixRMaj;D)V
    .locals 0

    double-to-float p2, p2

    const/4 p3, 0x0

    .line 66
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/CommonOps_CDRM;->fill(Lorg/ejml/data/CMatrixD1;FF)V

    return-void
.end method

.method public bridge synthetic fill(Lorg/ejml/data/Matrix;D)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->fill(Lorg/ejml/data/CMatrixRMaj;D)V

    return-void
.end method

.method public get(Lorg/ejml/data/CMatrixRMaj;II)D
    .locals 0

    .line 54
    invoke-virtual {p1, p2, p3}, Lorg/ejml/data/CMatrixRMaj;->getReal(II)F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method public bridge synthetic get(Lorg/ejml/data/Matrix;II)D
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->get(Lorg/ejml/data/CMatrixRMaj;II)D

    move-result-wide p1

    return-wide p1
.end method

.method public get(Lorg/ejml/data/CMatrixRMaj;IILorg/ejml/data/Complex_F64;)V
    .locals 2

    .line 59
    invoke-virtual {p1, p2, p3}, Lorg/ejml/data/CMatrixRMaj;->getIndex(II)I

    move-result p2

    .line 60
    iget-object p3, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget p3, p3, p2

    float-to-double v0, p3

    iput-wide v0, p4, Lorg/ejml/data/Complex_F64;->real:D

    .line 61
    iget-object p1, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 p2, p2, 0x1

    aget p1, p1, p2

    float-to-double p1, p1

    iput-wide p1, p4, Lorg/ejml/data/Complex_F64;->imaginary:D

    return-void
.end method

.method public bridge synthetic get(Lorg/ejml/data/Matrix;IILorg/ejml/data/Complex_F64;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->get(Lorg/ejml/data/CMatrixRMaj;IILorg/ejml/data/Complex_F64;)V

    return-void
.end method

.method public hasUncountable(Lorg/ejml/data/CMatrixRMaj;)Z
    .locals 0

    .line 225
    invoke-static {p1}, Lorg/ejml/dense/row/MatrixFeatures_CDRM;->hasUncountable(Lorg/ejml/data/CMatrixD1;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hasUncountable(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->hasUncountable(Lorg/ejml/data/CMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public invert(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)Z
    .locals 0

    .line 143
    invoke-static {p1, p2}, Lorg/ejml/dense/row/CommonOps_CDRM;->invert(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p2, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->invert(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public isIdentical(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;D)Z
    .locals 0

    double-to-float p3, p3

    .line 288
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/MatrixFeatures_CDRM;->isIdentical(Lorg/ejml/data/CMatrixD1;Lorg/ejml/data/CMatrixD1;F)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isIdentical(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;D)Z
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p2, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->isIdentical(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;D)Z

    move-result p1

    return p1
.end method

.method public kron(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 0

    .line 87
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic kron(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p2, Lorg/ejml/data/CMatrixRMaj;

    check-cast p3, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->kron(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public minus(Lorg/ejml/data/CMatrixRMaj;DLorg/ejml/data/CMatrixRMaj;)V
    .locals 0

    .line 103
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public minus(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 0

    .line 97
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/CommonOps_CDRM;->subtract(Lorg/ejml/data/CMatrixD1;Lorg/ejml/data/CMatrixD1;Lorg/ejml/data/CMatrixD1;)V

    return-void
.end method

.method public bridge synthetic minus(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p4, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->minus(Lorg/ejml/data/CMatrixRMaj;DLorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic minus(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p2, Lorg/ejml/data/CMatrixRMaj;

    check-cast p3, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->minus(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public mult(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 0

    .line 76
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/CommonOps_CDRM;->mult(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic mult(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p2, Lorg/ejml/data/CMatrixRMaj;

    check-cast p3, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->mult(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public multTransA(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 0

    .line 81
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/CommonOps_CDRM;->multTransA(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic multTransA(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p2, Lorg/ejml/data/CMatrixRMaj;

    check-cast p3, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->multTransA(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public normF(Lorg/ejml/data/CMatrixRMaj;)D
    .locals 2

    .line 169
    invoke-static {p1}, Lorg/ejml/dense/row/NormOps_CDRM;->normF(Lorg/ejml/data/CMatrixRMaj;)F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method

.method public bridge synthetic normF(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->normF(Lorg/ejml/data/CMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public plus(DLorg/ejml/data/CMatrixRMaj;DLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 0

    .line 120
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic plus(DLorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 40
    check-cast p3, Lorg/ejml/data/CMatrixRMaj;

    check-cast p6, Lorg/ejml/data/CMatrixRMaj;

    check-cast p7, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual/range {p0 .. p7}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->plus(DLorg/ejml/data/CMatrixRMaj;DLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public plus(Lorg/ejml/data/CMatrixRMaj;DLorg/ejml/data/CMatrixRMaj;)V
    .locals 0

    .line 109
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public plus(Lorg/ejml/data/CMatrixRMaj;DLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 0

    .line 115
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public plus(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 0

    .line 92
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/CommonOps_CDRM;->add(Lorg/ejml/data/CMatrixD1;Lorg/ejml/data/CMatrixD1;Lorg/ejml/data/CMatrixD1;)V

    return-void
.end method

.method public bridge synthetic plus(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p4, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->plus(Lorg/ejml/data/CMatrixRMaj;DLorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic plus(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p4, Lorg/ejml/data/CMatrixRMaj;

    check-cast p5, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual/range {p0 .. p5}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->plus(Lorg/ejml/data/CMatrixRMaj;DLorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic plus(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p2, Lorg/ejml/data/CMatrixRMaj;

    check-cast p3, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->plus(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public print(Ljava/io/PrintStream;Lorg/ejml/data/Matrix;Ljava/lang/String;)V
    .locals 0

    .line 293
    check-cast p2, Lorg/ejml/data/CMatrixRMaj;

    invoke-static {p1, p2, p3}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/CMatrix;Ljava/lang/String;)V

    return-void
.end method

.method public pseudoInverse(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 0

    .line 154
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic pseudoInverse(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p2, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->pseudoInverse(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public scale(Lorg/ejml/data/CMatrixRMaj;DLorg/ejml/data/CMatrixRMaj;)V
    .locals 0

    .line 132
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic scale(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p4, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->scale(Lorg/ejml/data/CMatrixRMaj;DLorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public set(Lorg/ejml/data/CMatrixRMaj;IID)V
    .locals 0

    double-to-float p4, p4

    const/4 p5, 0x0

    .line 44
    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/ejml/data/CMatrixRMaj;->set(IIFF)V

    return-void
.end method

.method public set(Lorg/ejml/data/CMatrixRMaj;IIDD)V
    .locals 0

    double-to-float p4, p4

    double-to-float p5, p6

    .line 49
    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/ejml/data/CMatrixRMaj;->set(IIFF)V

    return-void
.end method

.method public bridge synthetic set(Lorg/ejml/data/Matrix;IID)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual/range {p0 .. p5}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->set(Lorg/ejml/data/CMatrixRMaj;IID)V

    return-void
.end method

.method public bridge synthetic set(Lorg/ejml/data/Matrix;IIDD)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual/range {p0 .. p7}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->set(Lorg/ejml/data/CMatrixRMaj;IIDD)V

    return-void
.end method

.method public varargs setColumn(Lorg/ejml/data/CMatrixRMaj;II[D)V
    .locals 4

    const/4 v0, 0x0

    .line 198
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    add-int v1, p3, v0

    .line 199
    aget-wide v2, p4, v0

    double-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, p2, v2, v3}, Lorg/ejml/data/CMatrixRMaj;->set(IIFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setColumn(Lorg/ejml/data/Matrix;II[D)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->setColumn(Lorg/ejml/data/CMatrixRMaj;II[D)V

    return-void
.end method

.method public setIdentity(Lorg/ejml/data/CMatrixRMaj;)V
    .locals 0

    .line 148
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_CDRM;->setIdentity(Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic setIdentity(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->setIdentity(Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public varargs setRow(Lorg/ejml/data/CMatrixRMaj;II[D)V
    .locals 4

    const/4 v0, 0x0

    .line 191
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    add-int v1, p3, v0

    .line 192
    aget-wide v2, p4, v0

    double-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v1, v2, v3}, Lorg/ejml/data/CMatrixRMaj;->set(IIFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setRow(Lorg/ejml/data/Matrix;II[D)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->setRow(Lorg/ejml/data/CMatrixRMaj;II[D)V

    return-void
.end method

.method public solve(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)Z
    .locals 0

    .line 159
    invoke-static {p1, p3, p2}, Lorg/ejml/dense/row/CommonOps_CDRM;->solve(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p2, Lorg/ejml/data/CMatrixRMaj;

    check-cast p3, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->solve(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public trace(Lorg/ejml/data/CMatrixRMaj;)D
    .locals 0

    .line 186
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic trace(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->trace(Lorg/ejml/data/CMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public transpose(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 0

    .line 71
    invoke-static {p1, p2}, Lorg/ejml/dense/row/CommonOps_CDRM;->transpose(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;

    return-void
.end method

.method public bridge synthetic transpose(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    check-cast p2, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->transpose(Lorg/ejml/data/CMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public zero(Lorg/ejml/data/CMatrixRMaj;)V
    .locals 0

    .line 164
    invoke-virtual {p1}, Lorg/ejml/data/CMatrixRMaj;->zero()V

    return-void
.end method

.method public bridge synthetic zero(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;->zero(Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method
