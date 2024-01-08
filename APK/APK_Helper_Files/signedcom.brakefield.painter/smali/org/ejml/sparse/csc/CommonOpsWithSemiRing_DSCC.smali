.class public Lorg/ejml/sparse/csc/CommonOpsWithSemiRing_DSCC;
.super Ljava/lang/Object;
.source "CommonOpsWithSemiRing_DSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(DLorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/ops/DSemiRing;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 11

    move-object v2, p2

    move-object/from16 v5, p5

    .line 192
    iget v0, v2, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, v5, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, v2, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, v5, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ne v0, v1, :cond_0

    .line 194
    iget v0, v2, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, v2, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    move-object/from16 v3, p6

    invoke-static {v3, p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lorg/ejml/data/DMatrixSparseCSC;

    move-wide v0, p0

    move-object v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object v6, v10

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 196
    invoke-static/range {v0 .. v9}, Lorg/ejml/sparse/csc/misc/ImplCommonOpsWithSemiRing_DSCC;->add(DLorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/ops/DSemiRing;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)V

    return-object v10

    .line 193
    :cond_0
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Inconsistent matrix shapes. "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v5}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static elementMult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/ops/DSemiRing;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 6

    .line 215
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_0

    .line 217
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-static {p2, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/DMatrixSparseCSC;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 219
    invoke-static/range {v0 .. v5}, Lorg/ejml/sparse/csc/misc/ImplCommonOpsWithSemiRing_DSCC;->elementMult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/ops/DSemiRing;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)V

    return-object p2

    .line 216
    :cond_0
    new-instance p2, Lorg/ejml/MatrixDimensionException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "All inputs must have the same number of rows and columns. "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DSemiRing;)Lorg/ejml/data/DMatrixRMaj;
    .locals 2

    .line 71
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    .line 74
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p2

    .line 76
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_DSCC;->mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DSemiRing;)V

    return-object p2

    .line 72
    :cond_0
    new-instance p2, Lorg/ejml/MatrixDimensionException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Inconsistent matrix shapes. "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/ops/DSemiRing;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 38
    invoke-static/range {v0 .. v5}, Lorg/ejml/sparse/csc/CommonOpsWithSemiRing_DSCC;->mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/ops/DSemiRing;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p0

    return-object p0
.end method

.method public static mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/ops/DSemiRing;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 6

    .line 53
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_0

    .line 55
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-static {p2, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/DMatrixSparseCSC;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 57
    invoke-static/range {v0 .. v5}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_DSCC;->mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/ops/DSemiRing;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/DGrowArray;)V

    return-object p2

    .line 54
    :cond_0
    new-instance p2, Lorg/ejml/MatrixDimensionException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Inconsistent matrix shapes. "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static multAdd(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DSemiRing;)V
    .locals 2

    .line 85
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_0

    .line 88
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_DSCC;->multAdd(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DSemiRing;)V

    return-void

    .line 86
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistent matrix shapes. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public static multAddTransA(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DSemiRing;)V
    .locals 2

    .line 114
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_0

    .line 117
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_DSCC;->multAddTransA(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DSemiRing;)V

    return-void

    .line 115
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistent matrix shapes. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public static multAddTransAB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DSemiRing;)V
    .locals 2

    .line 171
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_0

    .line 174
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_DSCC;->multAddTransAB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DSemiRing;)V

    return-void

    .line 172
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistent matrix shapes. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public static multAddTransB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DSemiRing;)V
    .locals 2

    .line 142
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_0

    .line 145
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_DSCC;->multAddTransB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DSemiRing;)V

    return-void

    .line 143
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistent matrix shapes. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public static multTransA(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DSemiRing;)Lorg/ejml/data/DMatrixRMaj;
    .locals 2

    .line 100
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    .line 103
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p2

    .line 105
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_DSCC;->multTransA(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DSemiRing;)V

    return-object p2

    .line 101
    :cond_0
    new-instance p2, Lorg/ejml/MatrixDimensionException;

    new-instance p3, Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    sget-object v0, Lcom/fasterxml/jackson/core/base/wdxk/XdOzfHnSj;->ZcgkHwXiOeLtbS:Ljava/lang/String;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static multTransAB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DSemiRing;)Lorg/ejml/data/DMatrixRMaj;
    .locals 2

    .line 157
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_0

    .line 159
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p2

    .line 161
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_DSCC;->multTransAB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DSemiRing;)V

    return-object p2

    .line 158
    :cond_0
    new-instance p2, Lorg/ejml/MatrixDimensionException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Inconsistent matrix shapes. "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static multTransB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DSemiRing;)Lorg/ejml/data/DMatrixRMaj;
    .locals 2

    .line 129
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_0

    .line 131
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p2

    .line 133
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_DSCC;->multTransB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DSemiRing;)V

    return-object p2

    .line 130
    :cond_0
    new-instance p2, Lorg/ejml/MatrixDimensionException;

    new-instance p3, Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/gzDJ/JGPXHEH;->neISiyIrdQPoa:Ljava/lang/String;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
