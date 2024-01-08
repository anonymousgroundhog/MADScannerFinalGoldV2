.class public Lorg/ejml/dense/row/CovarianceRandomDraw_DDRM;
.super Ljava/lang/Object;
.source "CovarianceRandomDraw_DDRM.java"


# instance fields
.field private A:Lorg/ejml/data/DMatrixRMaj;

.field private r:Lorg/ejml/data/DMatrixRMaj;

.field private rand:Ljava/util/Random;


# direct methods
.method public constructor <init>(Ljava/util/Random;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/CovarianceRandomDraw_DDRM;->r:Lorg/ejml/data/DMatrixRMaj;

    .line 44
    new-instance v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;

    invoke-direct {v0, v2}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;-><init>(Z)V

    .line 46
    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->inputModified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p2}, Lorg/ejml/data/DMatrixRMaj;->copy()Lorg/ejml/data/DMatrixRMaj;

    move-result-object p2

    .line 48
    :cond_0
    invoke-virtual {v0, p2}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 51
    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_DDRM;->getT()Lorg/ejml/data/DMatrixRMaj;

    move-result-object p2

    iput-object p2, p0, Lorg/ejml/dense/row/CovarianceRandomDraw_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    .line 52
    iput-object p1, p0, Lorg/ejml/dense/row/CovarianceRandomDraw_DDRM;->rand:Ljava/util/Random;

    return-void

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Decomposition failed!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public computeLikelihoodP()D
    .locals 8

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x0

    move v3, v2

    .line 74
    :goto_0
    iget-object v4, p0, Lorg/ejml/dense/row/CovarianceRandomDraw_DDRM;->r:Lorg/ejml/data/DMatrixRMaj;

    iget v4, v4, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v3, v4, :cond_0

    .line 75
    iget-object v4, p0, Lorg/ejml/dense/row/CovarianceRandomDraw_DDRM;->r:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v4, v3, v2}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v4

    neg-double v6, v4

    mul-double/2addr v6, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v4

    .line 77
    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public next(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 59
    :goto_0
    iget-object v2, p0, Lorg/ejml/dense/row/CovarianceRandomDraw_DDRM;->r:Lorg/ejml/data/DMatrixRMaj;

    iget v2, v2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v1, v2, :cond_0

    .line 60
    iget-object v2, p0, Lorg/ejml/dense/row/CovarianceRandomDraw_DDRM;->r:Lorg/ejml/data/DMatrixRMaj;

    iget-object v3, p0, Lorg/ejml/dense/row/CovarianceRandomDraw_DDRM;->rand:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v3

    invoke-virtual {v2, v1, v0, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/CovarianceRandomDraw_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/dense/row/CovarianceRandomDraw_DDRM;->r:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v0, v1, p1}, Lorg/ejml/dense/row/CommonOps_DDRM;->multAdd(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    return-void
.end method
