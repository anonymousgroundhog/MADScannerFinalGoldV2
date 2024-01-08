.class public Lorg/ejml/simple/ops/SimpleOperations_FSCC;
.super Ljava/lang/Object;
.source "SimpleOperations_FSCC.java"

# interfaces
.implements Lorg/ejml/simple/SimpleSparseOperations;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/simple/SimpleSparseOperations<",
        "Lorg/ejml/data/FMatrixSparseCSC;",
        "Lorg/ejml/data/FMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field public transient gw:Lorg/ejml/data/IGrowArray;

.field public transient gx:Lorg/ejml/data/FGrowArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/IGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    .line 43
    new-instance v0, Lorg/ejml/data/FGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/FGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->gx:Lorg/ejml/data/FGrowArray;

    return-void
.end method


# virtual methods
.method public changeSign(Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 0

    .line 260
    invoke-static {p1, p1}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->changeSign(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

.method public bridge synthetic changeSign(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->changeSign(Lorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

.method public conditionP2(Lorg/ejml/data/FMatrixSparseCSC;)D
    .locals 1

    .line 194
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unsupported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic conditionP2(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->conditionP2(Lorg/ejml/data/FMatrixSparseCSC;)D

    move-result-wide v0

    return-wide v0
.end method

.method public determinant(Lorg/ejml/data/FMatrixSparseCSC;)D
    .locals 2

    .line 199
    invoke-static {p1}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->det(Lorg/ejml/data/FMatrixSparseCSC;)F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method

.method public bridge synthetic determinant(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->determinant(Lorg/ejml/data/FMatrixSparseCSC;)D

    move-result-wide v0

    return-wide v0
.end method

.method public diag(Lorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 3

    .line 241
    invoke-static {p1}, Lorg/ejml/sparse/csc/MatrixFeatures_FSCC;->isVector(Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 243
    new-instance v1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-direct {v1, v0, v0}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(II)V

    .line 244
    iget-object p1, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, v0}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->diag(Lorg/ejml/data/FMatrixSparseCSC;[FII)Lorg/ejml/data/FMatrixSparseCSC;

    goto :goto_0

    .line 246
    :cond_0
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 247
    new-instance v1, Lorg/ejml/data/FMatrixSparseCSC;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(II)V

    .line 248
    invoke-static {p1, v1}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->extractDiag(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V

    :goto_0
    return-object v1
.end method

.method public bridge synthetic diag(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->diag(Lorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p1

    return-object p1
.end method

.method public divide(Lorg/ejml/data/FMatrixSparseCSC;DLorg/ejml/data/FMatrixSparseCSC;)V
    .locals 0

    double-to-float p2, p2

    .line 155
    invoke-static {p1, p2, p4}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->divide(Lorg/ejml/data/FMatrixSparseCSC;FLorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

.method public bridge synthetic divide(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p4, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->divide(Lorg/ejml/data/FMatrixSparseCSC;DLorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

.method public dot(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)D
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 145
    iget-object v4, p0, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    iget-object v5, p0, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->gx:Lorg/ejml/data/FGrowArray;

    move-object v0, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->dotInnerColumns(Lorg/ejml/data/FMatrixSparseCSC;ILorg/ejml/data/FMatrixSparseCSC;ILorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method public bridge synthetic dot(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)D
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->dot(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)D

    move-result-wide p1

    return-wide p1
.end method

.method public elementDiv(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 0

    .line 285
    new-instance p1, Lorg/ejml/simple/ConvertToDenseException;

    invoke-direct {p1}, Lorg/ejml/simple/ConvertToDenseException;-><init>()V

    throw p1
.end method

.method public bridge synthetic elementDiv(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p3, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->elementDiv(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

.method public elementExp(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 0

    .line 300
    new-instance p1, Lorg/ejml/simple/ConvertToDenseException;

    invoke-direct {p1}, Lorg/ejml/simple/ConvertToDenseException;-><init>()V

    throw p1
.end method

.method public bridge synthetic elementExp(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->elementExp(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

.method public elementLog(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 0

    .line 305
    new-instance p1, Lorg/ejml/simple/ConvertToDenseException;

    invoke-direct {p1}, Lorg/ejml/simple/ConvertToDenseException;-><init>()V

    throw p1
.end method

.method public bridge synthetic elementLog(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->elementLog(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

.method public elementMaxAbs(Lorg/ejml/data/FMatrixSparseCSC;)D
    .locals 2

    .line 265
    invoke-static {p1}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->elementMaxAbs(Lorg/ejml/data/FMatrixSparseCSC;)F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method

.method public bridge synthetic elementMaxAbs(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->elementMaxAbs(Lorg/ejml/data/FMatrixSparseCSC;)D

    move-result-wide v0

    return-wide v0
.end method

.method public elementMinAbs(Lorg/ejml/data/FMatrixSparseCSC;)D
    .locals 2

    .line 270
    invoke-static {p1}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->elementMinAbs(Lorg/ejml/data/FMatrixSparseCSC;)F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method

.method public bridge synthetic elementMinAbs(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->elementMinAbs(Lorg/ejml/data/FMatrixSparseCSC;)D

    move-result-wide v0

    return-wide v0
.end method

.method public elementMult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 1

    const/4 v0, 0x0

    .line 280
    invoke-static {p1, p2, p3, v0, v0}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->elementMult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)Lorg/ejml/data/FMatrixSparseCSC;

    return-void
.end method

.method public bridge synthetic elementMult(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p3, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->elementMult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

.method public elementPower(Lorg/ejml/data/FMatrixSparseCSC;DLorg/ejml/data/FMatrixSparseCSC;)V
    .locals 0

    .line 295
    new-instance p1, Lorg/ejml/simple/ConvertToDenseException;

    invoke-direct {p1}, Lorg/ejml/simple/ConvertToDenseException;-><init>()V

    throw p1
.end method

.method public elementPower(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 0

    .line 290
    new-instance p1, Lorg/ejml/simple/ConvertToDenseException;

    invoke-direct {p1}, Lorg/ejml/simple/ConvertToDenseException;-><init>()V

    throw p1
.end method

.method public bridge synthetic elementPower(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p4, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->elementPower(Lorg/ejml/data/FMatrixSparseCSC;DLorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

.method public bridge synthetic elementPower(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p3, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->elementPower(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

.method public elementSum(Lorg/ejml/data/FMatrixSparseCSC;)D
    .locals 2

    .line 275
    invoke-static {p1}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->elementSum(Lorg/ejml/data/FMatrixSparseCSC;)F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method

.method public bridge synthetic elementSum(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->elementSum(Lorg/ejml/data/FMatrixSparseCSC;)D

    move-result-wide v0

    return-wide v0
.end method

.method public extract(Lorg/ejml/data/FMatrixSparseCSC;IIIILorg/ejml/data/FMatrixSparseCSC;II)V
    .locals 0

    .line 235
    invoke-static/range {p1 .. p8}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->extract(Lorg/ejml/data/FMatrixSparseCSC;IIIILorg/ejml/data/FMatrixSparseCSC;II)V

    return-void
.end method

.method public bridge synthetic extract(Lorg/ejml/data/Matrix;IIIILorg/ejml/data/Matrix;II)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p6, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual/range {p0 .. p8}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->extract(Lorg/ejml/data/FMatrixSparseCSC;IIIILorg/ejml/data/FMatrixSparseCSC;II)V

    return-void
.end method

.method public extractDiag(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 94
    invoke-static {p1, p2}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->extractDiag(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic extractDiag(Lorg/ejml/data/MatrixSparse;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->extractDiag(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public fill(Lorg/ejml/data/FMatrixSparseCSC;D)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double p2, p2, v0

    if-nez p2, :cond_0

    .line 69
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixSparseCSC;->zero()V

    return-void

    .line 71
    :cond_0
    new-instance p1, Lorg/ejml/simple/ConvertToDenseException;

    invoke-direct {p1}, Lorg/ejml/simple/ConvertToDenseException;-><init>()V

    throw p1
.end method

.method public bridge synthetic fill(Lorg/ejml/data/Matrix;D)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->fill(Lorg/ejml/data/FMatrixSparseCSC;D)V

    return-void
.end method

.method public get(Lorg/ejml/data/FMatrixSparseCSC;II)D
    .locals 0

    .line 57
    invoke-virtual {p1, p2, p3}, Lorg/ejml/data/FMatrixSparseCSC;->get(II)F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method public bridge synthetic get(Lorg/ejml/data/Matrix;II)D
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->get(Lorg/ejml/data/FMatrixSparseCSC;II)D

    move-result-wide p1

    return-wide p1
.end method

.method public get(Lorg/ejml/data/FMatrixSparseCSC;IILorg/ejml/data/Complex_F64;)V
    .locals 0

    .line 62
    invoke-virtual {p1, p2, p3}, Lorg/ejml/data/FMatrixSparseCSC;->get(II)F

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

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->get(Lorg/ejml/data/FMatrixSparseCSC;IILorg/ejml/data/Complex_F64;)V

    return-void
.end method

.method public hasUncountable(Lorg/ejml/data/FMatrixSparseCSC;)Z
    .locals 0

    .line 255
    invoke-static {p1}, Lorg/ejml/sparse/csc/MatrixFeatures_FSCC;->hasUncountable(Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hasUncountable(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->hasUncountable(Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public invert(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)Z
    .locals 2

    .line 160
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-static {v0, v1}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->identity(II)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->solve(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->invert(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public isIdentical(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;D)Z
    .locals 0

    double-to-float p3, p3

    .line 310
    invoke-static {p1, p2, p3}, Lorg/ejml/sparse/csc/MatrixFeatures_FSCC;->isEqualsSort(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;F)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isIdentical(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;D)Z
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->isIdentical(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;D)Z

    move-result p1

    return p1
.end method

.method public kron(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 0

    .line 110
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unsupported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic kron(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p3, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->kron(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

.method public minus(Lorg/ejml/data/FMatrixSparseCSC;DLorg/ejml/data/FMatrixSparseCSC;)V
    .locals 0

    .line 125
    new-instance p1, Lorg/ejml/simple/ConvertToDenseException;

    invoke-direct {p1}, Lorg/ejml/simple/ConvertToDenseException;-><init>()V

    throw p1
.end method

.method public minus(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 120
    invoke-static/range {v0 .. v6}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->add(FLorg/ejml/data/FMatrixSparseCSC;FLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)Lorg/ejml/data/FMatrixSparseCSC;

    return-void
.end method

.method public bridge synthetic minus(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p4, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->minus(Lorg/ejml/data/FMatrixSparseCSC;DLorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

.method public bridge synthetic minus(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p3, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->minus(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

.method public mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 104
    invoke-static {p1, p2, p3}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method

.method public mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 0

    .line 82
    invoke-static {p1, p2, p3}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;

    return-void
.end method

.method public bridge synthetic mult(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p3, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

.method public bridge synthetic mult(Lorg/ejml/data/MatrixSparse;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    check-cast p3, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public multTransA(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-static {p1, p2, p3, v0}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->multTransA(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FGrowArray;)Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method

.method public multTransA(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 2

    .line 87
    new-instance v0, Lorg/ejml/data/FMatrixSparseCSC;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(II)V

    .line 88
    iget-object v1, p0, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    invoke-static {p1, v0, v1}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->transpose(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)Lorg/ejml/data/FMatrixSparseCSC;

    .line 89
    iget-object p1, p0, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    iget-object v1, p0, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->gx:Lorg/ejml/data/FGrowArray;

    invoke-static {v0, p2, p3, p1, v1}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)Lorg/ejml/data/FMatrixSparseCSC;

    return-void
.end method

.method public bridge synthetic multTransA(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p3, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->multTransA(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

.method public bridge synthetic multTransA(Lorg/ejml/data/MatrixSparse;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    check-cast p3, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->multTransA(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void
.end method

.method public normF(Lorg/ejml/data/FMatrixSparseCSC;)D
    .locals 2

    .line 189
    invoke-static {p1}, Lorg/ejml/sparse/csc/NormOps_FSCC;->normF(Lorg/ejml/data/FMatrixSparseCSC;)F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method

.method public bridge synthetic normF(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->normF(Lorg/ejml/data/FMatrixSparseCSC;)D

    move-result-wide v0

    return-wide v0
.end method

.method public plus(DLorg/ejml/data/FMatrixSparseCSC;DLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 7

    double-to-float v0, p1

    double-to-float v2, p4

    .line 140
    iget-object v5, p0, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    iget-object v6, p0, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->gx:Lorg/ejml/data/FGrowArray;

    move-object v1, p3

    move-object v3, p6

    move-object v4, p7

    invoke-static/range {v0 .. v6}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->add(FLorg/ejml/data/FMatrixSparseCSC;FLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)Lorg/ejml/data/FMatrixSparseCSC;

    return-void
.end method

.method public bridge synthetic plus(DLorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p3, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p6, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p7, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual/range {p0 .. p7}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->plus(DLorg/ejml/data/FMatrixSparseCSC;DLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

.method public plus(Lorg/ejml/data/FMatrixSparseCSC;DLorg/ejml/data/FMatrixSparseCSC;)V
    .locals 0

    .line 130
    new-instance p1, Lorg/ejml/simple/ConvertToDenseException;

    invoke-direct {p1}, Lorg/ejml/simple/ConvertToDenseException;-><init>()V

    throw p1
.end method

.method public plus(Lorg/ejml/data/FMatrixSparseCSC;DLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    double-to-float v2, p2

    .line 135
    iget-object v5, p0, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    iget-object v6, p0, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->gx:Lorg/ejml/data/FGrowArray;

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v6}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->add(FLorg/ejml/data/FMatrixSparseCSC;FLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)Lorg/ejml/data/FMatrixSparseCSC;

    return-void
.end method

.method public plus(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 115
    invoke-static/range {v0 .. v6}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->add(FLorg/ejml/data/FMatrixSparseCSC;FLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)Lorg/ejml/data/FMatrixSparseCSC;

    return-void
.end method

.method public bridge synthetic plus(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p4, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->plus(Lorg/ejml/data/FMatrixSparseCSC;DLorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

.method public bridge synthetic plus(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p4, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p5, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual/range {p0 .. p5}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->plus(Lorg/ejml/data/FMatrixSparseCSC;DLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

.method public bridge synthetic plus(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p3, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->plus(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

.method public print(Ljava/io/PrintStream;Lorg/ejml/data/Matrix;Ljava/lang/String;)V
    .locals 0

    .line 315
    check-cast p2, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-static {p1, p2, p3}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/FMatrixSparseCSC;Ljava/lang/String;)V

    return-void
.end method

.method public pseudoInverse(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 0

    .line 170
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unsupported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic pseudoInverse(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->pseudoInverse(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

.method public scale(Lorg/ejml/data/FMatrixSparseCSC;DLorg/ejml/data/FMatrixSparseCSC;)V
    .locals 0

    double-to-float p2, p2

    .line 150
    invoke-static {p2, p1, p4}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->scale(FLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

.method public bridge synthetic scale(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p4, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->scale(Lorg/ejml/data/FMatrixSparseCSC;DLorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

.method public set(Lorg/ejml/data/FMatrixSparseCSC;IID)V
    .locals 0

    double-to-float p4, p4

    .line 47
    invoke-virtual {p1, p2, p3, p4}, Lorg/ejml/data/FMatrixSparseCSC;->set(IIF)V

    return-void
.end method

.method public set(Lorg/ejml/data/FMatrixSparseCSC;IIDD)V
    .locals 0

    .line 52
    new-instance p1, Lorg/ejml/simple/ConvertToImaginaryException;

    invoke-direct {p1}, Lorg/ejml/simple/ConvertToImaginaryException;-><init>()V

    throw p1
.end method

.method public bridge synthetic set(Lorg/ejml/data/Matrix;IID)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual/range {p0 .. p5}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->set(Lorg/ejml/data/FMatrixSparseCSC;IID)V

    return-void
.end method

.method public bridge synthetic set(Lorg/ejml/data/Matrix;IIDD)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual/range {p0 .. p7}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->set(Lorg/ejml/data/FMatrixSparseCSC;IIDD)V

    return-void
.end method

.method public varargs setColumn(Lorg/ejml/data/FMatrixSparseCSC;II[D)V
    .locals 4

    const/4 v0, 0x0

    .line 228
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    add-int v1, p3, v0

    .line 229
    aget-wide v2, p4, v0

    double-to-float v2, v2

    invoke-virtual {p1, v1, p2, v2}, Lorg/ejml/data/FMatrixSparseCSC;->set(IIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setColumn(Lorg/ejml/data/Matrix;II[D)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->setColumn(Lorg/ejml/data/FMatrixSparseCSC;II[D)V

    return-void
.end method

.method public setIdentity(Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 0

    .line 165
    invoke-static {p1}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->setIdentity(Lorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

.method public bridge synthetic setIdentity(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->setIdentity(Lorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

.method public varargs setRow(Lorg/ejml/data/FMatrixSparseCSC;II[D)V
    .locals 4

    const/4 v0, 0x0

    .line 210
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    add-int v1, p3, v0

    .line 211
    aget-wide v2, p4, v0

    double-to-float v2, v2

    invoke-virtual {p1, p2, v1, v2}, Lorg/ejml/data/FMatrixSparseCSC;->set(IIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setRow(Lorg/ejml/data/Matrix;II[D)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->setRow(Lorg/ejml/data/FMatrixSparseCSC;II[D)V

    return-void
.end method

.method public solve(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 0

    .line 179
    invoke-static {p1, p2, p3}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->solve(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public solve(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)Z
    .locals 0

    .line 175
    invoke-static {p1, p2, p3}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->solve(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p3, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->solve(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public trace(Lorg/ejml/data/FMatrixSparseCSC;)D
    .locals 2

    .line 204
    invoke-static {p1}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->trace(Lorg/ejml/data/FMatrixSparseCSC;)F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method

.method public bridge synthetic trace(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->trace(Lorg/ejml/data/FMatrixSparseCSC;)D

    move-result-wide v0

    return-wide v0
.end method

.method public transpose(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    invoke-static {p1, p2, v0}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->transpose(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)Lorg/ejml/data/FMatrixSparseCSC;

    return-void
.end method

.method public bridge synthetic transpose(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->transpose(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method

.method public zero(Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 0

    .line 184
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixSparseCSC;->zero()V

    return-void
.end method

.method public bridge synthetic zero(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;->zero(Lorg/ejml/data/FMatrixSparseCSC;)V

    return-void
.end method
