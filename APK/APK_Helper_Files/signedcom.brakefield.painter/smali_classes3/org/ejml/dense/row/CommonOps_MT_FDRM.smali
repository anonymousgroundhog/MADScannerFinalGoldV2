.class public Lorg/ejml/dense/row/CommonOps_MT_FDRM;
.super Ljava/lang/Object;
.source "CommonOps_MT_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mult(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrix1Row;",
            ">(FTT;TT;TT;)TT;"
        }
    .end annotation

    .line 75
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v1, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    invoke-static {p3, p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p3

    check-cast p3, Lorg/ejml/data/FMatrix1Row;

    .line 76
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM;->mult_reorder(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    return-object p3
.end method

.method public static mult(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrix1Row;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    .line 52
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    invoke-static {p2, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrix1Row;

    .line 53
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM;->mult_reorder(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    return-object p2
.end method

.method public static multAdd(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 0

    .line 249
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM;->multAdd_reorder(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    return-void
.end method

.method public static multAdd(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 0

    .line 232
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM;->multAdd_reorder(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    return-void
.end method

.method public static multAddTransA(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 0

    .line 282
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM;->multAddTransA_reorder(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    return-void
.end method

.method public static multAddTransA(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 0

    .line 265
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM;->multAddTransA_reorder(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    return-void
.end method

.method public static multAddTransAB(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 0

    .line 348
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM;->multAddTransAB(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    return-void
.end method

.method public static multAddTransAB(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 0

    .line 331
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM;->multAddTransAB(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    return-void
.end method

.method public static multAddTransB(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 0

    .line 315
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM;->multAddTransB(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    return-void
.end method

.method public static multAddTransB(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 0

    .line 298
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM;->multAddTransB(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    return-void
.end method

.method public static multTransA(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrix1Row;",
            ">(FTT;TT;TT;)TT;"
        }
    .end annotation

    .line 120
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v1, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    invoke-static {p3, p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p3

    check-cast p3, Lorg/ejml/data/FMatrix1Row;

    .line 121
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM;->multTransA_reorder(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    return-object p3
.end method

.method public static multTransA(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrix1Row;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    .line 97
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    invoke-static {p2, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrix1Row;

    .line 98
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM;->multTransA_reorder(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    return-object p2
.end method

.method public static multTransAB(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrix1Row;",
            ">(FTT;TT;TT;)TT;"
        }
    .end annotation

    .line 210
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v1, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    invoke-static {p3, p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p3

    check-cast p3, Lorg/ejml/data/FMatrix1Row;

    .line 211
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 214
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM;->multTransAB(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    return-object p3
.end method

.method public static multTransAB(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrix1Row;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    .line 187
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    invoke-static {p2, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrix1Row;

    .line 188
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM;->multTransAB(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    return-object p2
.end method

.method public static multTransB(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrix1Row;",
            ">(FTT;TT;TT;)TT;"
        }
    .end annotation

    .line 165
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v1, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    invoke-static {p3, p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p3

    check-cast p3, Lorg/ejml/data/FMatrix1Row;

    .line 166
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM;->multTransB(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    return-object p3
.end method

.method public static multTransB(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrix1Row;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    .line 142
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    invoke-static {p2, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrix1Row;

    .line 143
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM;->multTransB(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    return-object p2
.end method

.method public static transpose(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 2

    .line 385
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    .line 387
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    sget v1, Lorg/ejml/EjmlParameters;->TRANSPOSE_SWITCH:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->TRANSPOSE_SWITCH:I

    if-le v0, v1, :cond_0

    .line 389
    sget v0, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH:I

    invoke-static {p0, p1, v0}, Lorg/ejml/dense/row/misc/TransposeAlgs_MT_FDRM;->block(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;I)V

    goto :goto_0

    .line 391
    :cond_0
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/TransposeAlgs_MT_FDRM;->standard(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    :goto_0
    return-object p1
.end method

.method public static transpose(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 3

    .line 363
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    .line 364
    invoke-static {p0}, Lorg/ejml/dense/row/misc/TransposeAlgs_MT_FDRM;->square(Lorg/ejml/data/FMatrix1Row;)V

    goto :goto_0

    .line 366
    :cond_0
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 367
    invoke-static {p0, v0}, Lorg/ejml/dense/row/CommonOps_MT_FDRM;->transpose(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    .line 368
    invoke-virtual {p0, v0}, Lorg/ejml/data/FMatrixRMaj;->set(Lorg/ejml/data/FMatrixD1;)V

    :goto_0
    return-void
.end method
