.class public Lorg/ejml/sparse/csc/CommonOpsWithSemiRing_FSCC;
.super Ljava/lang/Object;
.source "CommonOpsWithSemiRing_FSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(FLorg/ejml/data/FMatrixSparseCSC;FLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/ops/FSemiRing;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 8

    .line 194
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p3, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p3, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ne v0, v1, :cond_0

    .line 196
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-static {p4, p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p4

    check-cast p4, Lorg/ejml/data/FMatrixSparseCSC;

    move v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 198
    invoke-static/range {v0 .. v7}, Lorg/ejml/sparse/csc/misc/ImplCommonOpsWithSemiRing_FSCC;->add(FLorg/ejml/data/FMatrixSparseCSC;FLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/ops/FSemiRing;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)V

    return-object p4

    .line 195
    :cond_0
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    new-instance p2, Ljava/lang/StringBuilder;

    const/4 p4, 0x0

    sget-object p4, Lcom/google/android/gms/common/data/ieA/NoHYdmAciUCT;->SVtHuRkHFNpRW:Ljava/lang/String;

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static elementMult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/ops/FSemiRing;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 6

    .line 217
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_0

    .line 219
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-static {p2, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrixSparseCSC;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 221
    invoke-static/range {v0 .. v5}, Lorg/ejml/sparse/csc/misc/ImplCommonOpsWithSemiRing_FSCC;->elementMult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/ops/FSemiRing;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)V

    return-object p2

    .line 218
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

.method public static mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FSemiRing;)Lorg/ejml/data/FMatrixRMaj;
    .locals 2

    .line 73
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    .line 76
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p2

    .line 78
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_FSCC;->mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FSemiRing;)V

    return-object p2

    .line 74
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

.method public static mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/ops/FSemiRing;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 40
    invoke-static/range {v0 .. v5}, Lorg/ejml/sparse/csc/CommonOpsWithSemiRing_FSCC;->mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/ops/FSemiRing;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p0

    return-object p0
.end method

.method public static mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/ops/FSemiRing;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 6

    .line 55
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_0

    .line 57
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-static {p2, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrixSparseCSC;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 59
    invoke-static/range {v0 .. v5}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_FSCC;->mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/ops/FSemiRing;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)V

    return-object p2

    .line 56
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

.method public static multAdd(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FSemiRing;)V
    .locals 2

    .line 87
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_0

    .line 90
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_FSCC;->multAdd(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FSemiRing;)V

    return-void

    .line 88
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

.method public static multAddTransA(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FSemiRing;)V
    .locals 2

    .line 116
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_0

    .line 119
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_FSCC;->multAddTransA(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FSemiRing;)V

    return-void

    .line 117
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

.method public static multAddTransAB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FSemiRing;)V
    .locals 2

    .line 173
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_0

    .line 176
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_FSCC;->multAddTransAB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FSemiRing;)V

    return-void

    .line 174
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

.method public static multAddTransB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FSemiRing;)V
    .locals 2

    .line 144
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_0

    .line 147
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_FSCC;->multAddTransB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FSemiRing;)V

    return-void

    .line 145
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

.method public static multTransA(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FSemiRing;)Lorg/ejml/data/FMatrixRMaj;
    .locals 2

    .line 102
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    .line 105
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p2

    .line 107
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_FSCC;->multTransA(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FSemiRing;)V

    return-object p2

    .line 103
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

.method public static multTransAB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FSemiRing;)Lorg/ejml/data/FMatrixRMaj;
    .locals 2

    .line 159
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_0

    .line 161
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p2

    .line 163
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_FSCC;->multTransAB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FSemiRing;)V

    return-object p2

    .line 160
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

.method public static multTransB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FSemiRing;)Lorg/ejml/data/FMatrixRMaj;
    .locals 2

    .line 131
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_0

    .line 133
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p2

    .line 135
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_FSCC;->multTransB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FSemiRing;)V

    return-object p2

    .line 132
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
