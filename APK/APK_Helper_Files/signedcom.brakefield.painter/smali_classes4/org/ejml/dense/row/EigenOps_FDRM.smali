.class public Lorg/ejml/dense/row/EigenOps_FDRM;
.super Ljava/lang/Object;
.source "EigenOps_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static boundLargestEigenValue(Lorg/ejml/data/FMatrixRMaj;[F)[F
    .locals 10

    .line 211
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_6

    .line 217
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    move v4, v1

    move v5, v2

    :goto_0
    if-ge v4, v0, :cond_4

    move v6, v1

    move v7, v2

    :goto_1
    if-ge v6, v0, :cond_1

    .line 222
    invoke-virtual {p0, v4, v6}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v8

    cmpg-float v9, v8, v2

    if-ltz v9, :cond_0

    add-float/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 223
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Matrix must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    cmpg-float v6, v7, v3

    if-gez v6, :cond_2

    move v3, v7

    :cond_2
    cmpl-float v6, v7, v5

    if-lez v6, :cond_3

    move v5, v7

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    const/4 p0, 0x2

    new-array p1, p0, [F

    .line 240
    :cond_5
    aput v3, p1, v1

    const/4 p0, 0x1

    .line 241
    aput v5, p1, p0

    return-object p1

    .line 212
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A must be a square matrix."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static computeEigenValue(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)F
    .locals 1

    .line 53
    invoke-static {p1, p1}, Lorg/ejml/dense/row/mult/VectorVectorMult_FDRM;->innerProd(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)F

    move-result v0

    .line 54
    invoke-static {p1, p0, p1}, Lorg/ejml/dense/row/mult/VectorVectorMult_FDRM;->innerProdA(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)F

    move-result p0

    div-float/2addr p0, v0

    return p0
.end method

.method public static computeEigenVector(Lorg/ejml/data/FMatrixRMaj;F)Lorg/ejml/data/FEigenpair;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 80
    iget v2, v0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v3, v0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v2, v3, :cond_a

    .line 83
    new-instance v2, Lorg/ejml/data/FMatrixRMaj;

    iget v3, v0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v4, v0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-direct {v2, v3, v4}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 85
    new-instance v3, Lorg/ejml/data/FMatrixRMaj;

    iget v4, v0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 86
    new-instance v4, Lorg/ejml/data/FMatrixRMaj;

    iget v6, v0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-direct {v4, v6, v5}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    const/high16 v6, 0x3f800000    # 1.0f

    .line 88
    invoke-static {v4, v6}, Lorg/ejml/dense/row/CommonOps_FDRM;->fill(Lorg/ejml/data/FMatrixD1;F)V

    neg-float v6, v1

    .line 95
    invoke-static {v0, v2, v6}, Lorg/ejml/dense/row/SpecializedOps_FDRM;->addIdentity(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;F)V

    .line 97
    invoke-static/range {p0 .. p0}, Lorg/ejml/dense/row/NormOps_FDRM;->normPInf(Lorg/ejml/data/FMatrixRMaj;)F

    move-result v6

    sget v7, Lorg/ejml/UtilEjml;->F_EPS:F

    mul-float/2addr v6, v7

    .line 102
    iget v7, v2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {v7}, Lorg/ejml/dense/row/factory/LinearSolverFactory_FDRM;->linear(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object v7

    move v13, v1

    const/4 v10, 0x0

    const v11, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v12, 0x0

    :goto_0
    const/16 v14, 0xc8

    if-ge v10, v14, :cond_9

    .line 110
    invoke-interface {v7, v2}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result v14

    if-nez v14, :cond_0

    move v14, v5

    goto :goto_1

    .line 113
    :cond_0
    invoke-interface {v7, v4, v3}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    const/4 v14, 0x0

    .line 117
    :goto_1
    invoke-static {v3}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->hasUncountable(Lorg/ejml/data/FMatrixD1;)Z

    move-result v15

    if-eqz v15, :cond_1

    move v14, v5

    :cond_1
    const v15, 0x3f7ff972    # 0.9999f

    const v16, 0x3f800347    # 1.0001f

    if-eqz v14, :cond_4

    if-nez v12, :cond_3

    .line 124
    rem-int/lit8 v13, v10, 0x2

    if-nez v13, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v15, v16

    :goto_2
    float-to-double v13, v15

    .line 128
    div-int/lit8 v15, v10, 0x2

    add-int/2addr v15, v5

    int-to-double v8, v15

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v1

    neg-float v9, v8

    .line 129
    invoke-static {v0, v2, v9}, Lorg/ejml/dense/row/SpecializedOps_FDRM;->addIdentity(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;F)V

    :goto_3
    move v13, v8

    goto :goto_6

    .line 133
    :cond_3
    new-instance v0, Lorg/ejml/data/FEigenpair;

    invoke-direct {v0, v13, v4}, Lorg/ejml/data/FEigenpair;-><init>(FLorg/ejml/data/FMatrixRMaj;)V

    return-object v0

    .line 138
    :cond_4
    invoke-virtual {v4, v3}, Lorg/ejml/data/FMatrixRMaj;->set(Lorg/ejml/data/FMatrixD1;)V

    .line 139
    invoke-static {v4}, Lorg/ejml/dense/row/NormOps_FDRM;->normalizeF(Lorg/ejml/data/FMatrixRMaj;)V

    .line 142
    invoke-static {v2, v4, v3}, Lorg/ejml/dense/row/CommonOps_FDRM;->mult(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;

    .line 143
    invoke-static {v3}, Lorg/ejml/dense/row/NormOps_FDRM;->normPInf(Lorg/ejml/data/FMatrixRMaj;)F

    move-result v8

    sub-float v9, v8, v11

    .line 145
    sget v12, Lorg/ejml/UtilEjml;->F_EPS:F

    const/high16 v14, 0x41200000    # 10.0f

    mul-float/2addr v12, v14

    cmpl-float v9, v9, v12

    if-lez v9, :cond_6

    .line 151
    rem-int/lit8 v8, v10, 0x2

    if-nez v8, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v15, v16

    :goto_4
    float-to-double v8, v15

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 152
    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v1

    const v11, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v12, 0x0

    goto :goto_5

    :cond_6
    cmpg-float v9, v8, v6

    if-lez v9, :cond_8

    sub-float/2addr v11, v8

    .line 155
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sget v11, Lorg/ejml/UtilEjml;->F_EPS:F

    cmpg-float v9, v9, v11

    if-gtz v9, :cond_7

    goto :goto_7

    .line 160
    :cond_7
    invoke-static {v4, v0, v4}, Lorg/ejml/dense/row/mult/VectorVectorMult_FDRM;->innerProdA(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)F

    move-result v9

    move v12, v5

    move v11, v8

    move v8, v9

    :goto_5
    neg-float v9, v8

    .line 163
    invoke-static {v0, v2, v9}, Lorg/ejml/dense/row/SpecializedOps_FDRM;->addIdentity(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;F)V

    goto :goto_3

    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 156
    :cond_8
    :goto_7
    new-instance v0, Lorg/ejml/data/FEigenpair;

    invoke-direct {v0, v13, v4}, Lorg/ejml/data/FEigenpair;-><init>(FLorg/ejml/data/FMatrixRMaj;)V

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be a square matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createMatrixD(Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;)Lorg/ejml/data/FMatrixRMaj;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32<",
            "*>;)",
            "Lorg/ejml/data/FMatrixRMaj;"
        }
    .end annotation

    .line 256
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;->getNumberOfEigenvalues()I

    move-result v0

    .line 258
    new-instance v1, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v1, v0, v0}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 261
    invoke-interface {p0, v2}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;->getEigenvalue(I)Lorg/ejml/data/Complex_F32;

    move-result-object v3

    .line 263
    invoke-virtual {v3}, Lorg/ejml/data/Complex_F32;->isReal()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    iget v3, v3, Lorg/ejml/data/Complex_F32;->real:F

    invoke-virtual {v1, v2, v2, v3}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static createMatrixV(Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;)Lorg/ejml/data/FMatrixRMaj;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;)",
            "Lorg/ejml/data/FMatrixRMaj;"
        }
    .end annotation

    .line 281
    invoke-interface {p0}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;->getNumberOfEigenvalues()I

    move-result v0

    .line 283
    new-instance v1, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v1, v0, v0}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 286
    invoke-interface {p0, v3}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;->getEigenvalue(I)Lorg/ejml/data/Complex_F32;

    move-result-object v4

    .line 288
    invoke-virtual {v4}, Lorg/ejml/data/Complex_F32;->isReal()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 289
    invoke-interface {p0, v3}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;->getEigenVector(I)Lorg/ejml/data/Matrix;

    move-result-object v4

    check-cast v4, Lorg/ejml/data/FMatrixRMaj;

    if-eqz v4, :cond_0

    move v5, v2

    :goto_1
    if-ge v5, v0, :cond_0

    .line 293
    invoke-virtual {v4, v5, v2}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v6

    invoke-virtual {v1, v5, v3, v6}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static dominantEigenpair(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FEigenpair;
    .locals 2

    .line 186
    new-instance v0, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-direct {v0, v1}, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;-><init>(I)V

    const v1, 0x3dcccccd    # 0.1f

    .line 189
    invoke-virtual {v0, p0, v1}, Lorg/ejml/dense/row/decomposition/eig/EigenPowerMethod_FDRM;->computeShiftInvert(Lorg/ejml/data/FMatrixRMaj;F)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 192
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Not yet implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
