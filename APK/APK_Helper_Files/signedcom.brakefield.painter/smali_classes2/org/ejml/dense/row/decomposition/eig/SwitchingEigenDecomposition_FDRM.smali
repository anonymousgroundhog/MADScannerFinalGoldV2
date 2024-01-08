.class public Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;
.super Ljava/lang/Object;
.source "SwitchingEigenDecomposition_FDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32<",
        "Lorg/ejml/data/FMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field A:Lorg/ejml/data/FMatrixRMaj;

.field computeVectors:Z

.field generalAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation
.end field

.field symmetric:Z

.field symmetricAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation
.end field

.field private tol:F


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    .line 68
    sget v1, Lorg/ejml/UtilEjml;->TEST_F32:F

    invoke-direct {p0, p1, v0, v1}, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;-><init>(IZF)V

    return-void
.end method

.method public constructor <init>(IZF)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    .line 54
    invoke-static {p1, p2, v1}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->eig(IZZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->symmetricAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;

    const/4 v0, 0x0

    .line 55
    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->eig(IZZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->generalAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;

    .line 56
    iput-boolean p2, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->computeVectors:Z

    .line 57
    iput p3, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->tol:F

    return-void
.end method

.method public constructor <init>(Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;F)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;",
            "Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;F)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    .line 62
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->symmetricAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;

    .line 63
    iput-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->generalAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;

    .line 64
    iput p3, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->tol:F

    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, p1}, Lorg/ejml/data/FMatrixRMaj;->set(Lorg/ejml/data/FMatrixD1;)V

    .line 96
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    iget v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->tol:F

    invoke-static {p1, v0}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isSymmetric(Lorg/ejml/data/FMatrixRMaj;F)Z

    move-result p1

    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->symmetric:Z

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->symmetricAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-interface {p1, v0}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->generalAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->A:Lorg/ejml/data/FMatrixRMaj;

    invoke-interface {p1, v0}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 35
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getEigenVector(I)Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 85
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->computeVectors:Z

    if-eqz v0, :cond_1

    .line 88
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->symmetric:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->symmetricAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;->getEigenVector(I)Lorg/ejml/data/Matrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->generalAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;->getEigenVector(I)Lorg/ejml/data/Matrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    :goto_0
    return-object p1

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Configured to not compute eignevectors"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getEigenVector(I)Lorg/ejml/data/Matrix;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->getEigenVector(I)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getEigenvalue(I)Lorg/ejml/data/Complex_F32;
    .locals 1

    .line 79
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->symmetric:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->symmetricAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;->getEigenvalue(I)Lorg/ejml/data/Complex_F32;

    move-result-object p1

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->generalAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;->getEigenvalue(I)Lorg/ejml/data/Complex_F32;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getNumberOfEigenvalues()I
    .locals 1

    .line 73
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->symmetric:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->symmetricAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;->getNumberOfEigenvalues()I

    move-result v0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_FDRM;->generalAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;->getNumberOfEigenvalues()I

    move-result v0

    :goto_0
    return v0
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
