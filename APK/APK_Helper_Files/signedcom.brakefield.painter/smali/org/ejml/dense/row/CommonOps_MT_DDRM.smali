.class public Lorg/ejml/dense/row/CommonOps_MT_DDRM;
.super Ljava/lang/Object;
.source "CommonOps_MT_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mult(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrix1Row;",
            ">(DTT;TT;TT;)TT;"
        }
    .end annotation

    .line 73
    iget v0, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v1, p3, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-static {p4, p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p4

    check-cast p4, Lorg/ejml/data/DMatrix1Row;

    .line 74
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM;->mult_reorder(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    return-object p4
.end method

.method public static mult(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrix1Row;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    .line 50
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-static {p2, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/DMatrix1Row;

    .line 51
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM;->mult_reorder(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    return-object p2
.end method

.method public static multAdd(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 0

    .line 247
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM;->multAdd_reorder(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    return-void
.end method

.method public static multAdd(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 0

    .line 230
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM;->multAdd_reorder(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    return-void
.end method

.method public static multAddTransA(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 0

    .line 280
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM;->multAddTransA_reorder(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    return-void
.end method

.method public static multAddTransA(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 0

    .line 263
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM;->multAddTransA_reorder(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    return-void
.end method

.method public static multAddTransAB(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 0

    .line 346
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM;->multAddTransAB(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    return-void
.end method

.method public static multAddTransAB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 0

    .line 329
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM;->multAddTransAB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    return-void
.end method

.method public static multAddTransB(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 0

    .line 313
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM;->multAddTransB(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    return-void
.end method

.method public static multAddTransB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 0

    .line 296
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM;->multAddTransB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    return-void
.end method

.method public static multTransA(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrix1Row;",
            ">(DTT;TT;TT;)TT;"
        }
    .end annotation

    .line 118
    iget v0, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v1, p3, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-static {p4, p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p4

    check-cast p4, Lorg/ejml/data/DMatrix1Row;

    .line 119
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM;->multTransA_reorder(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    return-object p4
.end method

.method public static multTransA(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrix1Row;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    .line 95
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-static {p2, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/DMatrix1Row;

    .line 96
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM;->multTransA_reorder(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    return-object p2
.end method

.method public static multTransAB(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrix1Row;",
            ">(DTT;TT;TT;)TT;"
        }
    .end annotation

    .line 208
    iget v0, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v1, p3, Lorg/ejml/data/DMatrix1Row;->numRows:I

    invoke-static {p4, p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p4

    check-cast p4, Lorg/ejml/data/DMatrix1Row;

    .line 209
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 210
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM;->multTransAB(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    return-object p4
.end method

.method public static multTransAB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrix1Row;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    .line 185
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    invoke-static {p2, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/DMatrix1Row;

    .line 186
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM;->multTransAB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    return-object p2
.end method

.method public static multTransB(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrix1Row;",
            ">(DTT;TT;TT;)TT;"
        }
    .end annotation

    .line 163
    iget v0, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v1, p3, Lorg/ejml/data/DMatrix1Row;->numRows:I

    invoke-static {p4, p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p4

    check-cast p4, Lorg/ejml/data/DMatrix1Row;

    .line 164
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM;->multTransB(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    return-object p4
.end method

.method public static multTransB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrix1Row;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    .line 140
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    invoke-static {p2, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/DMatrix1Row;

    .line 141
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM;->multTransB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    return-object p2
.end method

.method public static transpose(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 2

    .line 383
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    .line 385
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    sget v1, Lorg/ejml/EjmlParameters;->TRANSPOSE_SWITCH:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->TRANSPOSE_SWITCH:I

    if-le v0, v1, :cond_0

    .line 387
    sget v0, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH:I

    invoke-static {p0, p1, v0}, Lorg/ejml/dense/row/misc/TransposeAlgs_MT_DDRM;->block(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;I)V

    goto :goto_0

    .line 389
    :cond_0
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/TransposeAlgs_MT_DDRM;->standard(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    :goto_0
    return-object p1
.end method

.method public static transpose(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 3

    .line 361
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    .line 362
    invoke-static {p0}, Lorg/ejml/dense/row/misc/TransposeAlgs_MT_DDRM;->square(Lorg/ejml/data/DMatrix1Row;)V

    goto :goto_0

    .line 364
    :cond_0
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 365
    invoke-static {p0, v0}, Lorg/ejml/dense/row/CommonOps_MT_DDRM;->transpose(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    .line 366
    invoke-virtual {p0, v0}, Lorg/ejml/data/DMatrixRMaj;->set(Lorg/ejml/data/DMatrixD1;)V

    :goto_0
    return-void
.end method
