.class public Lorg/ejml/simple/ops/SimpleOperations_ZDRM;
.super Ljava/lang/Object;
.source "SimpleOperations_ZDRM.java"

# interfaces
.implements Lorg/ejml/simple/SimpleOperations;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/simple/SimpleOperations<",
        "Lorg/ejml/data/ZMatrixRMaj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic changeSign(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->changeSign(Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public changeSign(Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 0

    .line 229
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic conditionP2(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->conditionP2(Lorg/ejml/data/ZMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public conditionP2(Lorg/ejml/data/ZMatrixRMaj;)D
    .locals 0

    .line 173
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic determinant(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->determinant(Lorg/ejml/data/ZMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public determinant(Lorg/ejml/data/ZMatrixRMaj;)D
    .locals 2

    .line 178
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_ZDRM;->det(Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/Complex_F64;

    move-result-object p1

    iget-wide v0, p1, Lorg/ejml/data/Complex_F64;->real:D

    return-wide v0
.end method

.method public bridge synthetic diag(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->diag(Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public diag(Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;
    .locals 3

    .line 209
    invoke-static {p1}, Lorg/ejml/dense/row/MatrixFeatures_ZDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 211
    new-instance v1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {v1, v0, v0}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    .line 212
    iget-object p1, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    invoke-static {v1, v0, p1}, Lorg/ejml/dense/row/CommonOps_ZDRM;->diag(Lorg/ejml/data/ZMatrixRMaj;I[D)Lorg/ejml/data/ZMatrixRMaj;

    goto :goto_0

    .line 214
    :cond_0
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 215
    new-instance v1, Lorg/ejml/data/ZMatrixRMaj;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    .line 216
    invoke-static {p1, v1}, Lorg/ejml/dense/row/CommonOps_ZDRM;->extractDiag(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    :goto_0
    return-object v1
.end method

.method public bridge synthetic divide(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p4, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->divide(Lorg/ejml/data/ZMatrixRMaj;DLorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public divide(Lorg/ejml/data/ZMatrixRMaj;DLorg/ejml/data/ZMatrixRMaj;)V
    .locals 0

    .line 136
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic dot(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)D
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p2, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->dot(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)D

    move-result-wide p1

    return-wide p1
.end method

.method public dot(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)D
    .locals 0

    .line 124
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic elementDiv(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p2, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p3, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->elementDiv(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public elementDiv(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 0

    .line 257
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic elementExp(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p2, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->elementExp(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public elementExp(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 0

    .line 275
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic elementLog(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p2, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->elementLog(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public elementLog(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 0

    .line 281
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic elementMaxAbs(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->elementMaxAbs(Lorg/ejml/data/ZMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public elementMaxAbs(Lorg/ejml/data/ZMatrixRMaj;)D
    .locals 2

    .line 234
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_ZDRM;->elementMaxAbs(Lorg/ejml/data/ZMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic elementMinAbs(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->elementMinAbs(Lorg/ejml/data/ZMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public elementMinAbs(Lorg/ejml/data/ZMatrixRMaj;)D
    .locals 2

    .line 239
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_ZDRM;->elementMinAbs(Lorg/ejml/data/ZMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic elementMult(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p2, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p3, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->elementMult(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public elementMult(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 0

    .line 251
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic elementPower(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p4, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->elementPower(Lorg/ejml/data/ZMatrixRMaj;DLorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic elementPower(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p2, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p3, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->elementPower(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public elementPower(Lorg/ejml/data/ZMatrixRMaj;DLorg/ejml/data/ZMatrixRMaj;)V
    .locals 0

    .line 269
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public elementPower(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 0

    .line 263
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic elementSum(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->elementSum(Lorg/ejml/data/ZMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public elementSum(Lorg/ejml/data/ZMatrixRMaj;)D
    .locals 0

    .line 245
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic extract(Lorg/ejml/data/Matrix;IIIILorg/ejml/data/Matrix;II)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p6, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual/range {p0 .. p8}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->extract(Lorg/ejml/data/ZMatrixRMaj;IIIILorg/ejml/data/ZMatrixRMaj;II)V

    return-void
.end method

.method public extract(Lorg/ejml/data/ZMatrixRMaj;IIIILorg/ejml/data/ZMatrixRMaj;II)V
    .locals 0

    .line 203
    invoke-static/range {p1 .. p8}, Lorg/ejml/dense/row/CommonOps_ZDRM;->extract(Lorg/ejml/data/ZMatrixRMaj;IIIILorg/ejml/data/ZMatrixRMaj;II)V

    return-void
.end method

.method public bridge synthetic fill(Lorg/ejml/data/Matrix;D)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->fill(Lorg/ejml/data/ZMatrixRMaj;D)V

    return-void
.end method

.method public fill(Lorg/ejml/data/ZMatrixRMaj;D)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 64
    invoke-static {p1, p2, p3, v0, v1}, Lorg/ejml/dense/row/CommonOps_ZDRM;->fill(Lorg/ejml/data/ZMatrixD1;DD)V

    return-void
.end method

.method public bridge synthetic get(Lorg/ejml/data/Matrix;II)D
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->get(Lorg/ejml/data/ZMatrixRMaj;II)D

    move-result-wide p1

    return-wide p1
.end method

.method public get(Lorg/ejml/data/ZMatrixRMaj;II)D
    .locals 0

    .line 52
    invoke-virtual {p1, p2, p3}, Lorg/ejml/data/ZMatrixRMaj;->getReal(II)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic get(Lorg/ejml/data/Matrix;IILorg/ejml/data/Complex_F64;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->get(Lorg/ejml/data/ZMatrixRMaj;IILorg/ejml/data/Complex_F64;)V

    return-void
.end method

.method public get(Lorg/ejml/data/ZMatrixRMaj;IILorg/ejml/data/Complex_F64;)V
    .locals 2

    .line 57
    invoke-virtual {p1, p2, p3}, Lorg/ejml/data/ZMatrixRMaj;->getIndex(II)I

    move-result p2

    .line 58
    iget-object p3, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v0, p3, p2

    iput-wide v0, p4, Lorg/ejml/data/Complex_F64;->real:D

    .line 59
    iget-object p1, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 p2, p2, 0x1

    aget-wide p1, p1, p2

    iput-wide p1, p4, Lorg/ejml/data/Complex_F64;->imaginary:D

    return-void
.end method

.method public bridge synthetic hasUncountable(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->hasUncountable(Lorg/ejml/data/ZMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public hasUncountable(Lorg/ejml/data/ZMatrixRMaj;)Z
    .locals 0

    .line 223
    invoke-static {p1}, Lorg/ejml/dense/row/MatrixFeatures_ZDRM;->hasUncountable(Lorg/ejml/data/ZMatrixD1;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p2, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->invert(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public invert(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)Z
    .locals 0

    .line 141
    invoke-static {p1, p2}, Lorg/ejml/dense/row/CommonOps_ZDRM;->invert(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isIdentical(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;D)Z
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p2, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->isIdentical(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;D)Z

    move-result p1

    return p1
.end method

.method public isIdentical(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;D)Z
    .locals 0

    .line 286
    invoke-static {p1, p2, p3, p4}, Lorg/ejml/dense/row/MatrixFeatures_ZDRM;->isIdentical(Lorg/ejml/data/ZMatrixD1;Lorg/ejml/data/ZMatrixD1;D)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic kron(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p2, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p3, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->kron(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public kron(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 0

    .line 85
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic minus(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p4, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->minus(Lorg/ejml/data/ZMatrixRMaj;DLorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic minus(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p2, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p3, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->minus(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public minus(Lorg/ejml/data/ZMatrixRMaj;DLorg/ejml/data/ZMatrixRMaj;)V
    .locals 0

    .line 101
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public minus(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 0

    .line 95
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/CommonOps_ZDRM;->subtract(Lorg/ejml/data/ZMatrixD1;Lorg/ejml/data/ZMatrixD1;Lorg/ejml/data/ZMatrixD1;)V

    return-void
.end method

.method public bridge synthetic mult(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p2, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p3, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->mult(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public mult(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 0

    .line 74
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/CommonOps_ZDRM;->mult(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic multTransA(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p2, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p3, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->multTransA(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public multTransA(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 0

    .line 79
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/CommonOps_ZDRM;->multTransA(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic normF(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->normF(Lorg/ejml/data/ZMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public normF(Lorg/ejml/data/ZMatrixRMaj;)D
    .locals 2

    .line 167
    invoke-static {p1}, Lorg/ejml/dense/row/NormOps_ZDRM;->normF(Lorg/ejml/data/ZMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic plus(DLorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 39
    check-cast p3, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p6, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p7, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual/range {p0 .. p7}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->plus(DLorg/ejml/data/ZMatrixRMaj;DLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public plus(DLorg/ejml/data/ZMatrixRMaj;DLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 0

    .line 118
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic plus(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p4, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->plus(Lorg/ejml/data/ZMatrixRMaj;DLorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic plus(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p4, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p5, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual/range {p0 .. p5}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->plus(Lorg/ejml/data/ZMatrixRMaj;DLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic plus(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p2, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p3, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->plus(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public plus(Lorg/ejml/data/ZMatrixRMaj;DLorg/ejml/data/ZMatrixRMaj;)V
    .locals 0

    .line 107
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public plus(Lorg/ejml/data/ZMatrixRMaj;DLorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 0

    .line 113
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public plus(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 0

    .line 90
    invoke-static {p1, p2, p3}, Lorg/ejml/dense/row/CommonOps_ZDRM;->add(Lorg/ejml/data/ZMatrixD1;Lorg/ejml/data/ZMatrixD1;Lorg/ejml/data/ZMatrixD1;)V

    return-void
.end method

.method public print(Ljava/io/PrintStream;Lorg/ejml/data/Matrix;Ljava/lang/String;)V
    .locals 0

    .line 291
    check-cast p2, Lorg/ejml/data/ZMatrixRMaj;

    invoke-static {p1, p2, p3}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/ZMatrix;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic pseudoInverse(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p2, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->pseudoInverse(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public pseudoInverse(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 0

    .line 152
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic scale(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p4, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->scale(Lorg/ejml/data/ZMatrixRMaj;DLorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public scale(Lorg/ejml/data/ZMatrixRMaj;DLorg/ejml/data/ZMatrixRMaj;)V
    .locals 0

    .line 130
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic set(Lorg/ejml/data/Matrix;IID)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual/range {p0 .. p5}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->set(Lorg/ejml/data/ZMatrixRMaj;IID)V

    return-void
.end method

.method public bridge synthetic set(Lorg/ejml/data/Matrix;IIDD)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual/range {p0 .. p7}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->set(Lorg/ejml/data/ZMatrixRMaj;IIDD)V

    return-void
.end method

.method public set(Lorg/ejml/data/ZMatrixRMaj;IID)V
    .locals 7

    const-wide/16 v5, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move-wide v3, p4

    .line 42
    invoke-virtual/range {v0 .. v6}, Lorg/ejml/data/ZMatrixRMaj;->set(IIDD)V

    return-void
.end method

.method public set(Lorg/ejml/data/ZMatrixRMaj;IIDD)V
    .locals 0

    .line 47
    invoke-virtual/range {p1 .. p7}, Lorg/ejml/data/ZMatrixRMaj;->set(IIDD)V

    return-void
.end method

.method public bridge synthetic setColumn(Lorg/ejml/data/Matrix;II[D)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->setColumn(Lorg/ejml/data/ZMatrixRMaj;II[D)V

    return-void
.end method

.method public varargs setColumn(Lorg/ejml/data/ZMatrixRMaj;II[D)V
    .locals 9

    const/4 v0, 0x0

    .line 196
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    add-int v3, p3, v0

    .line 197
    aget-wide v5, p4, v0

    const-wide/16 v7, 0x0

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v2 .. v8}, Lorg/ejml/data/ZMatrixRMaj;->set(IIDD)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setIdentity(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->setIdentity(Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public setIdentity(Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 0

    .line 146
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_ZDRM;->setIdentity(Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic setRow(Lorg/ejml/data/Matrix;II[D)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->setRow(Lorg/ejml/data/ZMatrixRMaj;II[D)V

    return-void
.end method

.method public varargs setRow(Lorg/ejml/data/ZMatrixRMaj;II[D)V
    .locals 9

    const/4 v0, 0x0

    .line 189
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    add-int v4, p3, v0

    .line 190
    aget-wide v5, p4, v0

    const-wide/16 v7, 0x0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v2 .. v8}, Lorg/ejml/data/ZMatrixRMaj;->set(IIDD)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p2, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p3, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->solve(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public solve(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)Z
    .locals 0

    .line 157
    invoke-static {p1, p3, p2}, Lorg/ejml/dense/row/CommonOps_ZDRM;->solve(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trace(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->trace(Lorg/ejml/data/ZMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public trace(Lorg/ejml/data/ZMatrixRMaj;)D
    .locals 0

    .line 184
    new-instance p1, Lorg/ejml/simple/UnsupportedOperation;

    invoke-direct {p1}, Lorg/ejml/simple/UnsupportedOperation;-><init>()V

    throw p1
.end method

.method public bridge synthetic transpose(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    check-cast p2, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->transpose(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public transpose(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 0

    .line 69
    invoke-static {p1, p2}, Lorg/ejml/dense/row/CommonOps_ZDRM;->transpose(Lorg/ejml/data/ZMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;

    return-void
.end method

.method public bridge synthetic zero(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;->zero(Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public zero(Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 0

    .line 162
    invoke-virtual {p1}, Lorg/ejml/data/ZMatrixRMaj;->zero()V

    return-void
.end method
