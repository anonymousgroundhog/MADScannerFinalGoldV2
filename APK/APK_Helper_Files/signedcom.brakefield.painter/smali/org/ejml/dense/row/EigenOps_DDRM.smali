.class public Lorg/ejml/dense/row/EigenOps_DDRM;
.super Ljava/lang/Object;
.source "EigenOps_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static boundLargestEigenValue(Lorg/ejml/data/DMatrixRMaj;[D)[D
    .locals 16

    move-object/from16 v0, p0

    .line 209
    iget v1, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v2, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v1, v2, :cond_6

    .line 215
    iget v1, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v7, v2

    move-wide v8, v3

    :goto_0
    if-ge v7, v1, :cond_4

    move v10, v2

    move-wide v11, v3

    :goto_1
    if-ge v10, v1, :cond_1

    .line 220
    invoke-virtual {v0, v7, v10}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v13

    cmpg-double v15, v13, v3

    if-ltz v15, :cond_0

    add-double/2addr v11, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Matrix must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    cmpg-double v10, v11, v5

    if-gez v10, :cond_2

    move-wide v5, v11

    :cond_2
    cmpl-double v10, v11, v8

    if-lez v10, :cond_3

    move-wide v8, v11

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    const/4 v0, 0x2

    new-array v0, v0, [D

    goto :goto_2

    :cond_5
    move-object/from16 v0, p1

    .line 238
    :goto_2
    aput-wide v5, v0, v2

    const/4 v1, 0x1

    .line 239
    aput-wide v8, v0, v1

    return-object v0

    .line 210
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A must be a square matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static computeEigenValue(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)D
    .locals 2

    .line 51
    invoke-static {p1, p1}, Lorg/ejml/dense/row/mult/VectorVectorMult_DDRM;->innerProd(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    .line 52
    invoke-static {p1, p0, p1}, Lorg/ejml/dense/row/mult/VectorVectorMult_DDRM;->innerProdA(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)D

    move-result-wide p0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static computeEigenVector(Lorg/ejml/data/DMatrixRMaj;D)Lorg/ejml/data/DEigenpair;
    .locals 29

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 78
    iget v3, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v4, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v3, v4, :cond_a

    .line 81
    new-instance v3, Lorg/ejml/data/DMatrixRMaj;

    iget v4, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v5, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-direct {v3, v4, v5}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 83
    new-instance v4, Lorg/ejml/data/DMatrixRMaj;

    iget v5, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 84
    new-instance v5, Lorg/ejml/data/DMatrixRMaj;

    iget v7, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-direct {v5, v7, v6}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 86
    invoke-static {v5, v7, v8}, Lorg/ejml/dense/row/CommonOps_DDRM;->fill(Lorg/ejml/data/DMatrixD1;D)V

    neg-double v9, v1

    .line 93
    invoke-static {v0, v3, v9, v10}, Lorg/ejml/dense/row/SpecializedOps_DDRM;->addIdentity(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;D)V

    .line 95
    invoke-static/range {p0 .. p0}, Lorg/ejml/dense/row/NormOps_DDRM;->normPInf(Lorg/ejml/data/DMatrixRMaj;)D

    move-result-wide v9

    sget-wide v11, Lorg/ejml/UtilEjml;->EPS:D

    mul-double/2addr v9, v11

    .line 100
    iget v11, v3, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {v11}, Lorg/ejml/dense/row/factory/LinearSolverFactory_DDRM;->linear(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object v11

    move-wide v12, v1

    const/4 v15, 0x0

    const-wide v16, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/16 v18, 0x0

    :goto_0
    const/16 v14, 0xc8

    if-ge v15, v14, :cond_9

    .line 108
    invoke-interface {v11, v3}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result v14

    if-nez v14, :cond_0

    move v14, v6

    goto :goto_1

    .line 111
    :cond_0
    invoke-interface {v11, v5, v4}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    const/4 v14, 0x0

    .line 115
    :goto_1
    invoke-static {v4}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->hasUncountable(Lorg/ejml/data/DMatrixD1;)Z

    move-result v19

    if-eqz v19, :cond_1

    move v14, v6

    :cond_1
    const-wide v19, 0x3fefff2e48e8a71eL    # 0.9999

    const-wide v21, 0x3ff00068db8bac71L    # 1.0001

    if-eqz v14, :cond_4

    if-nez v18, :cond_3

    .line 122
    rem-int/lit8 v12, v15, 0x2

    if-nez v12, :cond_2

    move-wide/from16 v12, v19

    goto :goto_2

    :cond_2
    move-wide/from16 v12, v21

    .line 126
    :goto_2
    div-int/lit8 v14, v15, 0x2

    add-int/2addr v14, v6

    int-to-double v6, v14

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v6, v1

    neg-double v12, v6

    .line 127
    invoke-static {v0, v3, v12, v13}, Lorg/ejml/dense/row/SpecializedOps_DDRM;->addIdentity(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;D)V

    move-wide v12, v6

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    goto :goto_5

    .line 131
    :cond_3
    new-instance v0, Lorg/ejml/data/DEigenpair;

    invoke-direct {v0, v12, v13, v5}, Lorg/ejml/data/DEigenpair;-><init>(DLorg/ejml/data/DMatrixRMaj;)V

    return-object v0

    .line 136
    :cond_4
    invoke-virtual {v5, v4}, Lorg/ejml/data/DMatrixRMaj;->set(Lorg/ejml/data/DMatrixD1;)V

    .line 137
    invoke-static {v5}, Lorg/ejml/dense/row/NormOps_DDRM;->normalizeF(Lorg/ejml/data/DMatrixRMaj;)V

    .line 140
    invoke-static {v3, v5, v4}, Lorg/ejml/dense/row/CommonOps_DDRM;->mult(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;

    .line 141
    invoke-static {v4}, Lorg/ejml/dense/row/NormOps_DDRM;->normPInf(Lorg/ejml/data/DMatrixRMaj;)D

    move-result-wide v6

    sub-double v23, v6, v16

    .line 143
    sget-wide v25, Lorg/ejml/UtilEjml;->EPS:D

    const-wide/high16 v27, 0x4024000000000000L    # 10.0

    mul-double v25, v25, v27

    cmpl-double v8, v23, v25

    if-lez v8, :cond_6

    .line 149
    rem-int/lit8 v6, v15, 0x2

    if-nez v6, :cond_5

    move-wide/from16 v6, v19

    goto :goto_3

    :cond_5
    move-wide/from16 v6, v21

    :goto_3
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 150
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v6, v1

    move-wide/from16 v19, v12

    const-wide v16, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/16 v18, 0x0

    goto :goto_4

    :cond_6
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v6, v9

    if-lez v8, :cond_8

    sub-double v16, v16, v6

    .line 153
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    sget-wide v21, Lorg/ejml/UtilEjml;->EPS:D

    cmpg-double v8, v16, v21

    if-gtz v8, :cond_7

    goto :goto_6

    .line 158
    :cond_7
    invoke-static {v5, v0, v5}, Lorg/ejml/dense/row/mult/VectorVectorMult_DDRM;->innerProdA(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v12

    move-wide/from16 v16, v6

    move-wide v6, v12

    const/16 v18, 0x1

    :goto_4
    neg-double v12, v6

    .line 161
    invoke-static {v0, v3, v12, v13}, Lorg/ejml/dense/row/SpecializedOps_DDRM;->addIdentity(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;D)V

    move-wide v12, v6

    :goto_5
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v7, v19

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 154
    :cond_8
    :goto_6
    new-instance v0, Lorg/ejml/data/DEigenpair;

    invoke-direct {v0, v12, v13, v5}, Lorg/ejml/data/DEigenpair;-><init>(DLorg/ejml/data/DMatrixRMaj;)V

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be a square matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createMatrixD(Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;)Lorg/ejml/data/DMatrixRMaj;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64<",
            "*>;)",
            "Lorg/ejml/data/DMatrixRMaj;"
        }
    .end annotation

    .line 254
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;->getNumberOfEigenvalues()I

    move-result v0

    .line 256
    new-instance v1, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v1, v0, v0}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 259
    invoke-interface {p0, v2}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;->getEigenvalue(I)Lorg/ejml/data/Complex_F64;

    move-result-object v3

    .line 261
    invoke-virtual {v3}, Lorg/ejml/data/Complex_F64;->isReal()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 262
    iget-wide v3, v3, Lorg/ejml/data/Complex_F64;->real:D

    invoke-virtual {v1, v2, v2, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static createMatrixV(Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;)Lorg/ejml/data/DMatrixRMaj;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;)",
            "Lorg/ejml/data/DMatrixRMaj;"
        }
    .end annotation

    .line 279
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;->getNumberOfEigenvalues()I

    move-result v0

    .line 281
    new-instance v1, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v1, v0, v0}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 284
    invoke-interface {p0, v3}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;->getEigenvalue(I)Lorg/ejml/data/Complex_F64;

    move-result-object v4

    .line 286
    invoke-virtual {v4}, Lorg/ejml/data/Complex_F64;->isReal()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    invoke-interface {p0, v3}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;->getEigenVector(I)Lorg/ejml/data/Matrix;

    move-result-object v4

    check-cast v4, Lorg/ejml/data/DMatrixRMaj;

    if-eqz v4, :cond_0

    move v5, v2

    :goto_1
    if-ge v5, v0, :cond_0

    .line 291
    invoke-virtual {v4, v5, v2}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v6

    invoke-virtual {v1, v5, v3, v6, v7}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static dominantEigenpair(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DEigenpair;
    .locals 3

    .line 184
    new-instance v0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-direct {v0, v1}, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;-><init>(I)V

    const-wide v1, 0x3fb999999999999aL    # 0.1

    .line 187
    invoke-virtual {v0, p0, v1, v2}, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_DDRM;->computeShiftInvert(Lorg/ejml/data/DMatrixRMaj;D)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 190
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Not yet implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
