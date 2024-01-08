.class public Lorg/ejml/simple/ops/SimpleOperations_DSCC;
.super Ljava/lang/Object;
.source "SimpleOperations_DSCC.java"

# interfaces
.implements Lorg/ejml/simple/SimpleSparseOperations;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/simple/SimpleSparseOperations<",
        "Lorg/ejml/data/DMatrixSparseCSC;",
        "Lorg/ejml/data/DMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field public transient gw:Lorg/ejml/data/IGrowArray;

.field public transient gx:Lorg/ejml/data/DGrowArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/IGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    .line 41
    new-instance v0, Lorg/ejml/data/DGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/DGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->gx:Lorg/ejml/data/DGrowArray;

    return-void
.end method


# virtual methods
.method public changeSign(Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 0

    .line 258
    invoke-static {p1, p1}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->changeSign(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

.method public bridge synthetic changeSign(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->changeSign(Lorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

.method public conditionP2(Lorg/ejml/data/DMatrixSparseCSC;)D
    .locals 1

    .line 192
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unsupported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic conditionP2(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->conditionP2(Lorg/ejml/data/DMatrixSparseCSC;)D

    move-result-wide v0

    return-wide v0
.end method

.method public determinant(Lorg/ejml/data/DMatrixSparseCSC;)D
    .locals 2

    .line 197
    invoke-static {p1}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->det(Lorg/ejml/data/DMatrixSparseCSC;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic determinant(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->determinant(Lorg/ejml/data/DMatrixSparseCSC;)D

    move-result-wide v0

    return-wide v0
.end method

.method public diag(Lorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 3

    .line 239
    invoke-static {p1}, Lorg/ejml/sparse/csc/MatrixFeatures_DSCC;->isVector(Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 241
    new-instance v1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-direct {v1, v0, v0}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(II)V

    .line 242
    iget-object p1, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, v0}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->diag(Lorg/ejml/data/DMatrixSparseCSC;[DII)Lorg/ejml/data/DMatrixSparseCSC;

    goto :goto_0

    .line 244
    :cond_0
    iget v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 245
    new-instance v1, Lorg/ejml/data/DMatrixSparseCSC;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(II)V

    .line 246
    invoke-static {p1, v1}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->extractDiag(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V

    :goto_0
    return-object v1
.end method

.method public bridge synthetic diag(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->diag(Lorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p1

    return-object p1
.end method

.method public divide(Lorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;)V
    .locals 0

    .line 153
    invoke-static {p1, p2, p3, p4}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->divide(Lorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

.method public bridge synthetic divide(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p4, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->divide(Lorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

.method public dot(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)D
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 143
    iget-object v4, p0, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    iget-object v5, p0, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->gx:Lorg/ejml/data/DGrowArray;

    move-object v0, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->dotInnerColumns(Lorg/ejml/data/DMatrixSparseCSC;ILorg/ejml/data/DMatrixSparseCSC;ILorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic dot(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)D
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->dot(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)D

    move-result-wide p1

    return-wide p1
.end method

.method public elementDiv(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 0

    .line 283
    new-instance p1, Lorg/ejml/simple/ConvertToDenseException;

    invoke-direct {p1}, Lorg/ejml/simple/ConvertToDenseException;-><init>()V

    throw p1
.end method

.method public bridge synthetic elementDiv(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p3, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->elementDiv(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

.method public elementExp(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 0

    .line 298
    new-instance p1, Lorg/ejml/simple/ConvertToDenseException;

    invoke-direct {p1}, Lorg/ejml/simple/ConvertToDenseException;-><init>()V

    throw p1
.end method

.method public bridge synthetic elementExp(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->elementExp(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

.method public elementLog(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 0

    .line 303
    new-instance p1, Lorg/ejml/simple/ConvertToDenseException;

    invoke-direct {p1}, Lorg/ejml/simple/ConvertToDenseException;-><init>()V

    throw p1
.end method

.method public bridge synthetic elementLog(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->elementLog(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

.method public elementMaxAbs(Lorg/ejml/data/DMatrixSparseCSC;)D
    .locals 2

    .line 263
    invoke-static {p1}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->elementMaxAbs(Lorg/ejml/data/DMatrixSparseCSC;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic elementMaxAbs(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->elementMaxAbs(Lorg/ejml/data/DMatrixSparseCSC;)D

    move-result-wide v0

    return-wide v0
.end method

.method public elementMinAbs(Lorg/ejml/data/DMatrixSparseCSC;)D
    .locals 2

    .line 268
    invoke-static {p1}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->elementMinAbs(Lorg/ejml/data/DMatrixSparseCSC;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic elementMinAbs(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->elementMinAbs(Lorg/ejml/data/DMatrixSparseCSC;)D

    move-result-wide v0

    return-wide v0
.end method

.method public elementMult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 1

    const/4 v0, 0x0

    .line 278
    invoke-static {p1, p2, p3, v0, v0}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->elementMult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)Lorg/ejml/data/DMatrixSparseCSC;

    return-void
.end method

.method public bridge synthetic elementMult(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p3, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->elementMult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

.method public elementPower(Lorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;)V
    .locals 0

    .line 293
    new-instance p1, Lorg/ejml/simple/ConvertToDenseException;

    invoke-direct {p1}, Lorg/ejml/simple/ConvertToDenseException;-><init>()V

    throw p1
.end method

.method public elementPower(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 0

    .line 288
    new-instance p1, Lorg/ejml/simple/ConvertToDenseException;

    invoke-direct {p1}, Lorg/ejml/simple/ConvertToDenseException;-><init>()V

    throw p1
.end method

.method public bridge synthetic elementPower(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p4, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->elementPower(Lorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

.method public bridge synthetic elementPower(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p3, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->elementPower(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

.method public elementSum(Lorg/ejml/data/DMatrixSparseCSC;)D
    .locals 2

    .line 273
    invoke-static {p1}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->elementSum(Lorg/ejml/data/DMatrixSparseCSC;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic elementSum(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->elementSum(Lorg/ejml/data/DMatrixSparseCSC;)D

    move-result-wide v0

    return-wide v0
.end method

.method public extract(Lorg/ejml/data/DMatrixSparseCSC;IIIILorg/ejml/data/DMatrixSparseCSC;II)V
    .locals 0

    .line 233
    invoke-static/range {p1 .. p8}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->extract(Lorg/ejml/data/DMatrixSparseCSC;IIIILorg/ejml/data/DMatrixSparseCSC;II)V

    return-void
.end method

.method public bridge synthetic extract(Lorg/ejml/data/Matrix;IIIILorg/ejml/data/Matrix;II)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p6, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual/range {p0 .. p8}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->extract(Lorg/ejml/data/DMatrixSparseCSC;IIIILorg/ejml/data/DMatrixSparseCSC;II)V

    return-void
.end method

.method public extractDiag(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 92
    invoke-static {p1, p2}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->extractDiag(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public bridge synthetic extractDiag(Lorg/ejml/data/MatrixSparse;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->extractDiag(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public fill(Lorg/ejml/data/DMatrixSparseCSC;D)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double p2, p2, v0

    if-nez p2, :cond_0

    .line 67
    invoke-virtual {p1}, Lorg/ejml/data/DMatrixSparseCSC;->zero()V

    return-void

    .line 69
    :cond_0
    new-instance p1, Lorg/ejml/simple/ConvertToDenseException;

    invoke-direct {p1}, Lorg/ejml/simple/ConvertToDenseException;-><init>()V

    throw p1
.end method

.method public bridge synthetic fill(Lorg/ejml/data/Matrix;D)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->fill(Lorg/ejml/data/DMatrixSparseCSC;D)V

    return-void
.end method

.method public get(Lorg/ejml/data/DMatrixSparseCSC;II)D
    .locals 0

    .line 55
    invoke-virtual {p1, p2, p3}, Lorg/ejml/data/DMatrixSparseCSC;->get(II)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic get(Lorg/ejml/data/Matrix;II)D
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->get(Lorg/ejml/data/DMatrixSparseCSC;II)D

    move-result-wide p1

    return-wide p1
.end method

.method public get(Lorg/ejml/data/DMatrixSparseCSC;IILorg/ejml/data/Complex_F64;)V
    .locals 0

    .line 60
    invoke-virtual {p1, p2, p3}, Lorg/ejml/data/DMatrixSparseCSC;->get(II)D

    move-result-wide p1

    iput-wide p1, p4, Lorg/ejml/data/Complex_F64;->real:D

    const-wide/16 p1, 0x0

    .line 61
    iput-wide p1, p4, Lorg/ejml/data/Complex_F64;->imaginary:D

    return-void
.end method

.method public bridge synthetic get(Lorg/ejml/data/Matrix;IILorg/ejml/data/Complex_F64;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->get(Lorg/ejml/data/DMatrixSparseCSC;IILorg/ejml/data/Complex_F64;)V

    return-void
.end method

.method public hasUncountable(Lorg/ejml/data/DMatrixSparseCSC;)Z
    .locals 0

    .line 253
    invoke-static {p1}, Lorg/ejml/sparse/csc/MatrixFeatures_DSCC;->hasUncountable(Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hasUncountable(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->hasUncountable(Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public invert(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)Z
    .locals 2

    .line 158
    iget v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-static {v0, v1}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->identity(II)Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->solve(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->invert(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public isIdentical(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;D)Z
    .locals 0

    .line 308
    invoke-static {p1, p2, p3, p4}, Lorg/ejml/sparse/csc/MatrixFeatures_DSCC;->isEqualsSort(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;D)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isIdentical(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;D)Z
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->isIdentical(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;D)Z

    move-result p1

    return p1
.end method

.method public kron(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 0

    .line 108
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unsupported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic kron(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p3, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->kron(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

.method public minus(Lorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;)V
    .locals 0

    .line 123
    new-instance p1, Lorg/ejml/simple/ConvertToDenseException;

    invoke-direct {p1}, Lorg/ejml/simple/ConvertToDenseException;-><init>()V

    throw p1
.end method

.method public minus(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 9

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    .line 118
    invoke-static/range {v0 .. v8}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->add(DLorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)Lorg/ejml/data/DMatrixSparseCSC;

    return-void
.end method

.method public bridge synthetic minus(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p4, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->minus(Lorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

.method public bridge synthetic minus(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p3, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->minus(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

.method public mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 102
    invoke-static {p1, p2, p3}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method

.method public mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 0

    .line 80
    invoke-static {p1, p2, p3}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;

    return-void
.end method

.method public bridge synthetic mult(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p3, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

.method public bridge synthetic mult(Lorg/ejml/data/MatrixSparse;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    check-cast p3, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public multTransA(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-static {p1, p2, p3, v0}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->multTransA(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DGrowArray;)Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method

.method public multTransA(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 2

    .line 85
    new-instance v0, Lorg/ejml/data/DMatrixSparseCSC;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(II)V

    .line 86
    iget-object v1, p0, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    invoke-static {p1, v0, v1}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->transpose(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)Lorg/ejml/data/DMatrixSparseCSC;

    .line 87
    iget-object p1, p0, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    iget-object v1, p0, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->gx:Lorg/ejml/data/DGrowArray;

    invoke-static {v0, p2, p3, p1, v1}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)Lorg/ejml/data/DMatrixSparseCSC;

    return-void
.end method

.method public bridge synthetic multTransA(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p3, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->multTransA(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

.method public bridge synthetic multTransA(Lorg/ejml/data/MatrixSparse;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    check-cast p3, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->multTransA(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void
.end method

.method public normF(Lorg/ejml/data/DMatrixSparseCSC;)D
    .locals 2

    .line 187
    invoke-static {p1}, Lorg/ejml/sparse/csc/NormOps_DSCC;->normF(Lorg/ejml/data/DMatrixSparseCSC;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic normF(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->normF(Lorg/ejml/data/DMatrixSparseCSC;)D

    move-result-wide v0

    return-wide v0
.end method

.method public plus(DLorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 10

    move-object v0, p0

    .line 138
    iget-object v8, v0, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    iget-object v9, v0, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->gx:Lorg/ejml/data/DGrowArray;

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v1 .. v9}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->add(DLorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)Lorg/ejml/data/DMatrixSparseCSC;

    return-void
.end method

.method public bridge synthetic plus(DLorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 37
    check-cast p3, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p6, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p7, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual/range {p0 .. p7}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->plus(DLorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

.method public plus(Lorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;)V
    .locals 0

    .line 128
    new-instance p1, Lorg/ejml/simple/ConvertToDenseException;

    invoke-direct {p1}, Lorg/ejml/simple/ConvertToDenseException;-><init>()V

    throw p1
.end method

.method public plus(Lorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 9

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 133
    iget-object v7, p0, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    iget-object v8, p0, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->gx:Lorg/ejml/data/DGrowArray;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v8}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->add(DLorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)Lorg/ejml/data/DMatrixSparseCSC;

    return-void
.end method

.method public plus(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 9

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    .line 113
    invoke-static/range {v0 .. v8}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->add(DLorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)Lorg/ejml/data/DMatrixSparseCSC;

    return-void
.end method

.method public bridge synthetic plus(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p4, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->plus(Lorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

.method public bridge synthetic plus(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p4, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p5, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual/range {p0 .. p5}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->plus(Lorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

.method public bridge synthetic plus(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p3, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->plus(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

.method public print(Ljava/io/PrintStream;Lorg/ejml/data/Matrix;Ljava/lang/String;)V
    .locals 0

    .line 313
    check-cast p2, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-static {p1, p2, p3}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/DMatrixSparseCSC;Ljava/lang/String;)V

    return-void
.end method

.method public pseudoInverse(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 0

    .line 168
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unsupported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic pseudoInverse(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->pseudoInverse(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

.method public scale(Lorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;)V
    .locals 0

    .line 148
    invoke-static {p2, p3, p1, p4}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->scale(DLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

.method public bridge synthetic scale(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p4, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->scale(Lorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

.method public set(Lorg/ejml/data/DMatrixSparseCSC;IID)V
    .locals 0

    .line 45
    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/ejml/data/DMatrixSparseCSC;->set(IID)V

    return-void
.end method

.method public set(Lorg/ejml/data/DMatrixSparseCSC;IIDD)V
    .locals 0

    .line 50
    new-instance p1, Lorg/ejml/simple/ConvertToImaginaryException;

    invoke-direct {p1}, Lorg/ejml/simple/ConvertToImaginaryException;-><init>()V

    throw p1
.end method

.method public bridge synthetic set(Lorg/ejml/data/Matrix;IID)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual/range {p0 .. p5}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->set(Lorg/ejml/data/DMatrixSparseCSC;IID)V

    return-void
.end method

.method public bridge synthetic set(Lorg/ejml/data/Matrix;IIDD)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual/range {p0 .. p7}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->set(Lorg/ejml/data/DMatrixSparseCSC;IIDD)V

    return-void
.end method

.method public varargs setColumn(Lorg/ejml/data/DMatrixSparseCSC;II[D)V
    .locals 4

    const/4 v0, 0x0

    .line 226
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    add-int v1, p3, v0

    .line 227
    aget-wide v2, p4, v0

    invoke-virtual {p1, v1, p2, v2, v3}, Lorg/ejml/data/DMatrixSparseCSC;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setColumn(Lorg/ejml/data/Matrix;II[D)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->setColumn(Lorg/ejml/data/DMatrixSparseCSC;II[D)V

    return-void
.end method

.method public setIdentity(Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 0

    .line 163
    invoke-static {p1}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->setIdentity(Lorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

.method public bridge synthetic setIdentity(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->setIdentity(Lorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

.method public varargs setRow(Lorg/ejml/data/DMatrixSparseCSC;II[D)V
    .locals 4

    const/4 v0, 0x0

    .line 208
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    add-int v1, p3, v0

    .line 209
    aget-wide v2, p4, v0

    invoke-virtual {p1, p2, v1, v2, v3}, Lorg/ejml/data/DMatrixSparseCSC;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setRow(Lorg/ejml/data/Matrix;II[D)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->setRow(Lorg/ejml/data/DMatrixSparseCSC;II[D)V

    return-void
.end method

.method public solve(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 0

    .line 177
    invoke-static {p1, p2, p3}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->solve(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public solve(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)Z
    .locals 0

    .line 173
    invoke-static {p1, p2, p3}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->solve(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p3, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->solve(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public trace(Lorg/ejml/data/DMatrixSparseCSC;)D
    .locals 2

    .line 202
    invoke-static {p1}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->trace(Lorg/ejml/data/DMatrixSparseCSC;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic trace(Lorg/ejml/data/Matrix;)D
    .locals 2

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->trace(Lorg/ejml/data/DMatrixSparseCSC;)D

    move-result-wide v0

    return-wide v0
.end method

.method public transpose(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    invoke-static {p1, p2, v0}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->transpose(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)Lorg/ejml/data/DMatrixSparseCSC;

    return-void
.end method

.method public bridge synthetic transpose(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p2, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->transpose(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method

.method public zero(Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 0

    .line 182
    invoke-virtual {p1}, Lorg/ejml/data/DMatrixSparseCSC;->zero()V

    return-void
.end method

.method public bridge synthetic zero(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;->zero(Lorg/ejml/data/DMatrixSparseCSC;)V

    return-void
.end method
