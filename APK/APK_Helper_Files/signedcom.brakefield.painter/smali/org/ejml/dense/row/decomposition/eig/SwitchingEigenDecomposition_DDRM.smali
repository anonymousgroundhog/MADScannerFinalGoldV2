.class public Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;
.super Ljava/lang/Object;
.source "SwitchingEigenDecomposition_DDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64<",
        "Lorg/ejml/data/DMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field A:Lorg/ejml/data/DMatrixRMaj;

.field computeVectors:Z

.field generalAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation
.end field

.field symmetric:Z

.field symmetricAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation
.end field

.field private tol:D


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x1

    .line 66
    sget-wide v1, Lorg/ejml/UtilEjml;->TEST_F64:D

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;-><init>(IZD)V

    return-void
.end method

.method public constructor <init>(IZD)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    .line 52
    invoke-static {p1, p2, v1}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->eig(IZZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->symmetricAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;

    const/4 v0, 0x0

    .line 53
    invoke-static {p1, p2, v0}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->eig(IZZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->generalAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;

    .line 54
    iput-boolean p2, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->computeVectors:Z

    .line 55
    iput-wide p3, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->tol:D

    return-void
.end method

.method public constructor <init>(Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;D)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;",
            "Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;D)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    .line 60
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->symmetricAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;

    .line 61
    iput-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->generalAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;

    .line 62
    iput-wide p3, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->tol:D

    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 2

    .line 92
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, p1}, Lorg/ejml/data/DMatrixRMaj;->set(Lorg/ejml/data/DMatrixD1;)V

    .line 94
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    iget-wide v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->tol:D

    invoke-static {p1, v0, v1}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isSymmetric(Lorg/ejml/data/DMatrixRMaj;D)Z

    move-result p1

    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->symmetric:Z

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->symmetricAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-interface {p1, v0}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->generalAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->A:Lorg/ejml/data/DMatrixRMaj;

    invoke-interface {p1, v0}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 34
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getEigenVector(I)Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 83
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->computeVectors:Z

    if-eqz v0, :cond_1

    .line 86
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->symmetric:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->symmetricAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;->getEigenVector(I)Lorg/ejml/data/Matrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->generalAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;->getEigenVector(I)Lorg/ejml/data/Matrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    :goto_0
    return-object p1

    .line 84
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Configured to not compute eignevectors"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getEigenVector(I)Lorg/ejml/data/Matrix;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->getEigenVector(I)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getEigenvalue(I)Lorg/ejml/data/Complex_F64;
    .locals 1

    .line 77
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->symmetric:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->symmetricAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;->getEigenvalue(I)Lorg/ejml/data/Complex_F64;

    move-result-object p1

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->generalAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;->getEigenvalue(I)Lorg/ejml/data/Complex_F64;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getNumberOfEigenvalues()I
    .locals 1

    .line 71
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->symmetric:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->symmetricAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;->getNumberOfEigenvalues()I

    move-result v0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SwitchingEigenDecomposition_DDRM;->generalAlg:Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;->getNumberOfEigenvalues()I

    move-result v0

    :goto_0
    return v0
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
