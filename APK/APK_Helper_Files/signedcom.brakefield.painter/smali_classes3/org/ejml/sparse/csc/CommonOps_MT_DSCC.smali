.class public Lorg/ejml/sparse/csc/CommonOps_MT_DSCC;
.super Ljava/lang/Object;
.source "CommonOps_MT_DSCC.java"


# direct methods
.method public static synthetic $r8$lambda$EUv0wajhkQEpjMTqSP4N1q46jtI()Lorg/ejml/data/DGrowArray;
    .locals 1

    new-instance v0, Lorg/ejml/data/DGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/DGrowArray;-><init>()V

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(DLorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lpabeles/concurrency/GrowArray;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "D",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;",
            ">;)",
            "Lorg/ejml/data/DMatrixSparseCSC;"
        }
    .end annotation

    .line 82
    iget v0, p2, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p5, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_1

    iget v0, p2, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p5, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ne v0, v1, :cond_1

    .line 84
    iget v0, p2, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p2, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-static {p6, p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p6

    check-cast p6, Lorg/ejml/data/DMatrixSparseCSC;

    if-nez p7, :cond_0

    .line 87
    new-instance p7, Lpabeles/concurrency/GrowArray;

    new-instance v0, Lorg/ejml/sparse/csc/CommonOps_MT_DSCC$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/ejml/sparse/csc/CommonOps_MT_DSCC$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p7, v0}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V

    :cond_0
    move-object v7, p7

    move-wide v0, p0

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 89
    invoke-static/range {v0 .. v7}, Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_DSCC;->add(DLorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lpabeles/concurrency/GrowArray;)V

    return-object p6

    .line 83
    :cond_1
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Inconsistent matrix shapes. "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p5}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lpabeles/concurrency/GrowArray;)Lorg/ejml/data/DMatrixRMaj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/DGrowArray;",
            ">;)",
            "Lorg/ejml/data/DMatrixRMaj;"
        }
    .end annotation

    .line 103
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_1

    .line 105
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p2

    if-nez p3, :cond_0

    .line 107
    new-instance p3, Lpabeles/concurrency/GrowArray;

    new-instance v0, Lorg/ejml/sparse/csc/CommonOps_MT_DSCC$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/ejml/sparse/csc/CommonOps_MT_DSCC$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p3, v0}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V

    .line 109
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC;->mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lpabeles/concurrency/GrowArray;)V

    return-object p2

    .line 104
    :cond_1
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

.method public static mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-static {p0, p1, p2, v0}, Lorg/ejml/sparse/csc/CommonOps_MT_DSCC;->mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lpabeles/concurrency/GrowArray;)Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p0

    return-object p0
.end method

.method public static mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lpabeles/concurrency/GrowArray;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;",
            ">;)",
            "Lorg/ejml/data/DMatrixSparseCSC;"
        }
    .end annotation

    .line 55
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_1

    .line 57
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-static {p2, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/DMatrixSparseCSC;

    if-nez p3, :cond_0

    .line 60
    new-instance p3, Lpabeles/concurrency/GrowArray;

    new-instance v0, Lorg/ejml/sparse/csc/CommonOps_MT_DSCC$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/ejml/sparse/csc/CommonOps_MT_DSCC$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p3, v0}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V

    .line 62
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC;->mult(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lpabeles/concurrency/GrowArray;)V

    return-object p2

    .line 56
    :cond_1
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

.method public static multAdd(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lpabeles/concurrency/GrowArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/DGrowArray;",
            ">;)V"
        }
    .end annotation

    .line 119
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const-string v2, "Inconsistent matrix shapes. "

    if-ne v0, v1, :cond_2

    .line 121
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_1

    if-nez p3, :cond_0

    .line 125
    new-instance p3, Lpabeles/concurrency/GrowArray;

    new-instance v0, Lorg/ejml/sparse/csc/CommonOps_MT_DSCC$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/ejml/sparse/csc/CommonOps_MT_DSCC$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p3, v0}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V

    .line 127
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC;->multAdd(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lpabeles/concurrency/GrowArray;)V

    return-void

    .line 122
    :cond_1
    new-instance p3, Lorg/ejml/MatrixDimensionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 120
    :cond_2
    new-instance p2, Lorg/ejml/MatrixDimensionException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static multAddTransA(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lpabeles/concurrency/GrowArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/DGrowArray;",
            ">;)V"
        }
    .end annotation

    .line 157
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const-string v2, "Inconsistent matrix shapes. "

    if-ne v0, v1, :cond_2

    .line 159
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_1

    if-nez p3, :cond_0

    .line 163
    new-instance p3, Lpabeles/concurrency/GrowArray;

    new-instance v0, Lorg/ejml/sparse/csc/CommonOps_MT_DSCC$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/ejml/sparse/csc/CommonOps_MT_DSCC$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p3, v0}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V

    .line 165
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC;->multAddTransA(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lpabeles/concurrency/GrowArray;)V

    return-void

    .line 160
    :cond_1
    new-instance p3, Lorg/ejml/MatrixDimensionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 158
    :cond_2
    new-instance p2, Lorg/ejml/MatrixDimensionException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static multAddTransAB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 3

    .line 226
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const-string v2, "Inconsistent matrix shapes. "

    if-ne v0, v1, :cond_1

    .line 228
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_0

    .line 231
    invoke-static {p0, p1, p2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC;->multAddTransAB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-void

    .line 229
    :cond_0
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_1
    new-instance p2, Lorg/ejml/MatrixDimensionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static multAddTransB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lpabeles/concurrency/GrowArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/DGrowArray;",
            ">;)V"
        }
    .end annotation

    .line 194
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const-string v2, "Inconsistent matrix shapes. "

    if-ne v0, v1, :cond_2

    .line 196
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_1

    if-nez p3, :cond_0

    .line 200
    new-instance p3, Lpabeles/concurrency/GrowArray;

    new-instance v0, Lorg/ejml/sparse/csc/CommonOps_MT_DSCC$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/ejml/sparse/csc/CommonOps_MT_DSCC$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p3, v0}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V

    .line 202
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC;->multAddTransB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lpabeles/concurrency/GrowArray;)V

    return-void

    .line 197
    :cond_1
    new-instance p3, Lorg/ejml/MatrixDimensionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 195
    :cond_2
    new-instance p2, Lorg/ejml/MatrixDimensionException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static multTransA(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lpabeles/concurrency/GrowArray;)Lorg/ejml/data/DMatrixRMaj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/DGrowArray;",
            ">;)",
            "Lorg/ejml/data/DMatrixRMaj;"
        }
    .end annotation

    .line 139
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_1

    .line 142
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p2

    if-nez p3, :cond_0

    .line 145
    new-instance p3, Lpabeles/concurrency/GrowArray;

    new-instance v0, Lorg/ejml/sparse/csc/CommonOps_MT_DSCC$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/ejml/sparse/csc/CommonOps_MT_DSCC$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p3, v0}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V

    .line 147
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC;->multTransA(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lpabeles/concurrency/GrowArray;)V

    return-object p2

    .line 140
    :cond_1
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

.method public static multTransAB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 2

    .line 213
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_0

    .line 215
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p2

    .line 217
    invoke-static {p0, p1, p2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC;->multTransAB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    return-object p2

    .line 214
    :cond_0
    new-instance p2, Lorg/ejml/MatrixDimensionException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistent matrix shapes. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static multTransB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lpabeles/concurrency/GrowArray;)Lorg/ejml/data/DMatrixRMaj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lorg/ejml/data/DMatrixRMaj;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/DGrowArray;",
            ">;)",
            "Lorg/ejml/data/DMatrixRMaj;"
        }
    .end annotation

    .line 177
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_1

    .line 179
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p2

    if-nez p3, :cond_0

    .line 182
    new-instance p3, Lpabeles/concurrency/GrowArray;

    new-instance v0, Lorg/ejml/sparse/csc/CommonOps_MT_DSCC$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/ejml/sparse/csc/CommonOps_MT_DSCC$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p3, v0}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V

    .line 184
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC;->multTransB(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lpabeles/concurrency/GrowArray;)V

    return-object p2

    .line 178
    :cond_1
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
