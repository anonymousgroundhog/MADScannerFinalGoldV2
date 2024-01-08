.class public Lorg/ejml/sparse/csc/CommonOps_MT_FSCC;
.super Ljava/lang/Object;
.source "CommonOps_MT_FSCC.java"


# direct methods
.method public static synthetic $r8$lambda$pq654f7UQ7aW8eY1DSwJEDd0k2c()Lorg/ejml/data/FGrowArray;
    .locals 1

    new-instance v0, Lorg/ejml/data/FGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/FGrowArray;-><init>()V

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(FLorg/ejml/data/FMatrixSparseCSC;FLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lpabeles/concurrency/GrowArray;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "F",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;",
            ">;)",
            "Lorg/ejml/data/FMatrixSparseCSC;"
        }
    .end annotation

    .line 84
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p3, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p3, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ne v0, v1, :cond_1

    .line 86
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-static {p4, p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p4

    check-cast p4, Lorg/ejml/data/FMatrixSparseCSC;

    if-nez p5, :cond_0

    .line 89
    new-instance p5, Lpabeles/concurrency/GrowArray;

    new-instance v0, Lorg/ejml/sparse/csc/CommonOps_MT_FSCC$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/ejml/sparse/csc/CommonOps_MT_FSCC$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p5, v0}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V

    :cond_0
    move-object v5, p5

    move v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 91
    invoke-static/range {v0 .. v5}, Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_FSCC;->add(FLorg/ejml/data/FMatrixSparseCSC;FLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lpabeles/concurrency/GrowArray;)V

    return-object p4

    .line 85
    :cond_1
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Inconsistent matrix shapes. "

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

.method public static mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lpabeles/concurrency/GrowArray;)Lorg/ejml/data/FMatrixRMaj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/FGrowArray;",
            ">;)",
            "Lorg/ejml/data/FMatrixRMaj;"
        }
    .end annotation

    .line 105
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_1

    .line 107
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p2

    if-nez p3, :cond_0

    .line 109
    new-instance p3, Lpabeles/concurrency/GrowArray;

    new-instance v0, Lorg/ejml/sparse/csc/CommonOps_MT_FSCC$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/ejml/sparse/csc/CommonOps_MT_FSCC$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p3, v0}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V

    .line 111
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC;->mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lpabeles/concurrency/GrowArray;)V

    return-object p2

    .line 106
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

.method public static mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-static {p0, p1, p2, v0}, Lorg/ejml/sparse/csc/CommonOps_MT_FSCC;->mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lpabeles/concurrency/GrowArray;)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p0

    return-object p0
.end method

.method public static mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lpabeles/concurrency/GrowArray;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;",
            ">;)",
            "Lorg/ejml/data/FMatrixSparseCSC;"
        }
    .end annotation

    .line 57
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_1

    .line 59
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-static {p2, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrixSparseCSC;

    if-nez p3, :cond_0

    .line 62
    new-instance p3, Lpabeles/concurrency/GrowArray;

    new-instance v0, Lorg/ejml/sparse/csc/CommonOps_MT_FSCC$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/ejml/sparse/csc/CommonOps_MT_FSCC$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p3, v0}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V

    .line 64
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC;->mult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lpabeles/concurrency/GrowArray;)V

    return-object p2

    .line 58
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

.method public static multAdd(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lpabeles/concurrency/GrowArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/FGrowArray;",
            ">;)V"
        }
    .end annotation

    .line 121
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const-string v2, "Inconsistent matrix shapes. "

    if-ne v0, v1, :cond_2

    .line 123
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_1

    if-nez p3, :cond_0

    .line 127
    new-instance p3, Lpabeles/concurrency/GrowArray;

    new-instance v0, Lorg/ejml/sparse/csc/CommonOps_MT_FSCC$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/ejml/sparse/csc/CommonOps_MT_FSCC$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p3, v0}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V

    .line 129
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC;->multAdd(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lpabeles/concurrency/GrowArray;)V

    return-void

    .line 124
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

    .line 122
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

.method public static multAddTransA(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lpabeles/concurrency/GrowArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/FGrowArray;",
            ">;)V"
        }
    .end annotation

    .line 159
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const-string v2, "Inconsistent matrix shapes. "

    if-ne v0, v1, :cond_2

    .line 161
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_1

    if-nez p3, :cond_0

    .line 165
    new-instance p3, Lpabeles/concurrency/GrowArray;

    new-instance v0, Lorg/ejml/sparse/csc/CommonOps_MT_FSCC$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/ejml/sparse/csc/CommonOps_MT_FSCC$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p3, v0}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V

    .line 167
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC;->multAddTransA(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lpabeles/concurrency/GrowArray;)V

    return-void

    .line 162
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

    .line 160
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

.method public static multAddTransAB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 3

    .line 228
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const-string v2, "Inconsistent matrix shapes. "

    if-ne v0, v1, :cond_1

    .line 230
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_0

    .line 233
    invoke-static {p0, p1, p2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC;->multAddTransAB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-void

    .line 231
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

    .line 229
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

.method public static multAddTransB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lpabeles/concurrency/GrowArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/FGrowArray;",
            ">;)V"
        }
    .end annotation

    .line 196
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const-string v2, "Inconsistent matrix shapes. "

    if-ne v0, v1, :cond_2

    .line 198
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_1

    if-nez p3, :cond_0

    .line 202
    new-instance p3, Lpabeles/concurrency/GrowArray;

    new-instance v0, Lorg/ejml/sparse/csc/CommonOps_MT_FSCC$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/ejml/sparse/csc/CommonOps_MT_FSCC$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p3, v0}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V

    .line 204
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC;->multAddTransB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lpabeles/concurrency/GrowArray;)V

    return-void

    .line 199
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

    .line 197
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

.method public static multTransA(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lpabeles/concurrency/GrowArray;)Lorg/ejml/data/FMatrixRMaj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/FGrowArray;",
            ">;)",
            "Lorg/ejml/data/FMatrixRMaj;"
        }
    .end annotation

    .line 141
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_1

    .line 144
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p2

    if-nez p3, :cond_0

    .line 147
    new-instance p3, Lpabeles/concurrency/GrowArray;

    new-instance v0, Lorg/ejml/sparse/csc/CommonOps_MT_FSCC$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/ejml/sparse/csc/CommonOps_MT_FSCC$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p3, v0}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V

    .line 149
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC;->multTransA(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lpabeles/concurrency/GrowArray;)V

    return-object p2

    .line 142
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

.method public static multTransAB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 2

    .line 215
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_0

    .line 217
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p2

    .line 219
    invoke-static {p0, p1, p2}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC;->multTransAB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-object p2

    .line 216
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

.method public static multTransB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lpabeles/concurrency/GrowArray;)Lorg/ejml/data/FMatrixRMaj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lorg/ejml/data/FMatrixRMaj;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/FGrowArray;",
            ">;)",
            "Lorg/ejml/data/FMatrixRMaj;"
        }
    .end annotation

    .line 179
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_1

    .line 181
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p2

    if-nez p3, :cond_0

    .line 184
    new-instance p3, Lpabeles/concurrency/GrowArray;

    new-instance v0, Lorg/ejml/sparse/csc/CommonOps_MT_FSCC$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/ejml/sparse/csc/CommonOps_MT_FSCC$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p3, v0}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V

    .line 186
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC;->multTransB(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lpabeles/concurrency/GrowArray;)V

    return-object p2

    .line 180
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
