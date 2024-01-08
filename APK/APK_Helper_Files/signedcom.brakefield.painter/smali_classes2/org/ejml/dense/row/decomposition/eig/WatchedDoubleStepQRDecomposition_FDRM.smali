.class public Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;
.super Ljava/lang/Object;
.source "WatchedDoubleStepQRDecomposition_FDRM.java"

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
.field H:Lorg/ejml/data/FMatrixRMaj;

.field algValue:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;

.field algVector:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;

.field computeVectors:Z

.field hessenberg:Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;


# direct methods
.method public constructor <init>(Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;Z)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;->hessenberg:Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;

    .line 69
    new-instance p1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;

    invoke-direct {p1, p2}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;-><init>(Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;)V

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;->algValue:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;

    .line 70
    new-instance p1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;

    invoke-direct {p1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;-><init>()V

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;->algVector:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;

    .line 72
    iput-boolean p3, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;->computeVectors:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 60
    new-instance v0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;-><init>(I)V

    new-instance v1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    invoke-direct {v1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;-><init>()V

    invoke-direct {p0, v0, v1, p1}, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;-><init>(Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;Z)V

    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 4

    .line 78
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;->hessenberg:Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 81
    :cond_0
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;->hessenberg:Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->getH(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;->H:Lorg/ejml/data/FMatrixRMaj;

    .line 83
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;->algValue:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->getImplicitQR()Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    move-result-object p1

    iput-boolean v0, p1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->createR:Z

    .line 86
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;->algValue:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;->H:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p1, v2}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->process(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 93
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;->algValue:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;

    invoke-virtual {p1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->getImplicitQR()Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;->createR:Z

    .line 95
    iget-boolean p1, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;->computeVectors:Z

    if-eqz p1, :cond_2

    .line 96
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;->algVector:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;->algValue:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->getImplicitQR()Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;

    move-result-object v0

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;->H:Lorg/ejml/data/FMatrixRMaj;

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;->hessenberg:Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;

    invoke-virtual {v3, v1}, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->getQ(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->process(Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 45
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getEigenVector(I)Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;->algVector:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvector_FDRM;->getEigenvectors()[Lorg/ejml/data/FMatrixRMaj;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic getEigenVector(I)Lorg/ejml/data/Matrix;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;->getEigenVector(I)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getEigenvalue(I)Lorg/ejml/data/Complex_F32;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;->algValue:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->getEigenvalues()[Lorg/ejml/data/Complex_F32;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getNumberOfEigenvalues()I
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;->algValue:Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigenvalue_FDRM;->getEigenvalues()[Lorg/ejml/data/Complex_F32;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public inputModified()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/WatchedDoubleStepQRDecomposition_FDRM;->hessenberg:Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;->inputModified()Z

    move-result v0

    return v0
.end method
