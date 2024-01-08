.class public Lorg/ejml/dense/row/CovarianceRandomDraw_FDRM;
.super Ljava/lang/Object;
.source "CovarianceRandomDraw_FDRM.java"


# instance fields
.field private A:Lorg/ejml/data/FMatrixRMaj;

.field private r:Lorg/ejml/data/FMatrixRMaj;

.field private rand:Ljava/util/Random;


# direct methods
.method public constructor <init>(Ljava/util/Random;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/CovarianceRandomDraw_FDRM;->r:Lorg/ejml/data/FMatrixRMaj;

    .line 46
    new-instance v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;

    invoke-direct {v0, v2}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;-><init>(Z)V

    .line 48
    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->inputModified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {p2}, Lorg/ejml/data/FMatrixRMaj;->copy()Lorg/ejml/data/FMatrixRMaj;

    move-result-object p2

    .line 50
    :cond_0
    invoke-virtual {v0, p2}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 53
    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionInner_FDRM;->getT()Lorg/ejml/data/FMatrixRMaj;

    move-result-object p2

    iput-object p2, p0, Lorg/ejml/dense/row/CovarianceRandomDraw_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    .line 54
    iput-object p1, p0, Lorg/ejml/dense/row/CovarianceRandomDraw_FDRM;->rand:Ljava/util/Random;

    return-void

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Decomposition failed!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public computeLikelihoodP()F
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    move v2, v1

    .line 76
    :goto_0
    iget-object v3, p0, Lorg/ejml/dense/row/CovarianceRandomDraw_FDRM;->r:Lorg/ejml/data/FMatrixRMaj;

    iget v3, v3, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v2, v3, :cond_0

    .line 77
    iget-object v3, p0, Lorg/ejml/dense/row/CovarianceRandomDraw_FDRM;->r:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v3, v2, v1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v3

    neg-float v4, v3

    mul-float/2addr v4, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    float-to-double v3, v4

    .line 79
    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public next(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 61
    :goto_0
    iget-object v2, p0, Lorg/ejml/dense/row/CovarianceRandomDraw_FDRM;->r:Lorg/ejml/data/FMatrixRMaj;

    iget v2, v2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v1, v2, :cond_0

    .line 62
    iget-object v2, p0, Lorg/ejml/dense/row/CovarianceRandomDraw_FDRM;->r:Lorg/ejml/data/FMatrixRMaj;

    iget-object v3, p0, Lorg/ejml/dense/row/CovarianceRandomDraw_FDRM;->rand:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v2, v1, v0, v3}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/CovarianceRandomDraw_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/dense/row/CovarianceRandomDraw_FDRM;->r:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v0, v1, p1}, Lorg/ejml/dense/row/CommonOps_FDRM;->multAdd(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    return-void
.end method
