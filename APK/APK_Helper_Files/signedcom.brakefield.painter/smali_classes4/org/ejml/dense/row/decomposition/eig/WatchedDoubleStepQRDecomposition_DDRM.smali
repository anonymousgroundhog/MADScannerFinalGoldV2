.class public Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;
.super Ljava/lang/Object;
.source "WatchedDoubleStepQRDecomposition_DDRM.java"

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
.field H:Lorg/ejml/data/DMatrixRMaj;

.field algValue:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;

.field algVector:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;

.field computeVectors:Z

.field hessenberg:Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;


# direct methods
.method public constructor <init>(Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;Z)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;->hessenberg:Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;

    .line 67
    new-instance p1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;

    invoke-direct {p1, p2}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;-><init>(Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;)V

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;->algValue:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;

    .line 68
    new-instance p1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;

    invoke-direct {p1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;-><init>()V

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;->algVector:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;

    .line 70
    iput-boolean p3, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;->computeVectors:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 58
    new-instance v0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;-><init>(I)V

    new-instance v1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    invoke-direct {v1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;-><init>()V

    invoke-direct {p0, v0, v1, p1}, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;-><init>(Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;Z)V

    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 4

    .line 76
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;->hessenberg:Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 79
    :cond_0
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;->hessenberg:Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->getH(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;->H:Lorg/ejml/data/DMatrixRMaj;

    .line 81
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;->algValue:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->getImplicitQR()Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    move-result-object p1

    iput-boolean v0, p1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->createR:Z

    .line 84
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;->algValue:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;->H:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p1, v2}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->process(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 91
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;->algValue:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->getImplicitQR()Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;->createR:Z

    .line 93
    iget-boolean p1, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;->computeVectors:Z

    if-eqz p1, :cond_2

    .line 94
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;->algVector:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;->algValue:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->getImplicitQR()Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;

    move-result-object v0

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;->H:Lorg/ejml/data/DMatrixRMaj;

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;->hessenberg:Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;

    invoke-virtual {v3, v1}, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->getQ(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->process(Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 44
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getEigenVector(I)Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;->algVector:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_DDRM;->getEigenvectors()[Lorg/ejml/data/DMatrixRMaj;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic getEigenVector(I)Lorg/ejml/data/Matrix;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;->getEigenVector(I)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getEigenvalue(I)Lorg/ejml/data/Complex_F64;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;->algValue:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->getEigenvalues()[Lorg/ejml/data/Complex_F64;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getNumberOfEigenvalues()I
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;->algValue:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_DDRM;->getEigenvalues()[Lorg/ejml/data/Complex_F64;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public inputModified()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_DDRM;->hessenberg:Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_DDRM;->inputModified()Z

    move-result v0

    return v0
.end method
