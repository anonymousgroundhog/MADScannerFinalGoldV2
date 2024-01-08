.class public Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;
.super Ljava/lang/Object;
.source "SymmetricQRAlgorithmDecomposition_FDRM.java"

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
.field private V:Lorg/ejml/data/FMatrixRMaj;

.field computeVectors:Z

.field private computeVectorsWithValues:Z

.field private final decomp:Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation
.end field

.field private diag:[F

.field private diagSaved:[F

.field private eigenvectors:[Lorg/ejml/data/FMatrixRMaj;

.field private final helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

.field private off:[F

.field private offSaved:[F

.field private values:[F

.field private final vector:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;


# direct methods
.method public constructor <init>(Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;Z)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->computeVectorsWithValues:Z

    .line 82
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->decomp:Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32;

    .line 83
    iput-boolean p2, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->computeVectors:Z

    .line 85
    new-instance p1, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    invoke-direct {p1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;-><init>()V

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    .line 86
    new-instance p2, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;

    invoke-direct {p2, p1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;-><init>(Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;)V

    iput-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->vector:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-static {v0}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->tridiagonal(I)Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;-><init>(Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32;Z)V

    return-void
.end method

.method private computeEigenValues()Z
    .locals 4

    .line 228
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->diagSaved:[F

    invoke-virtual {v0, v1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->copyDiag([F)[F

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->diagSaved:[F

    .line 229
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->offSaved:[F

    invoke-virtual {v0, v1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->copyOff([F)[F

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->offSaved:[F

    .line 231
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->vector:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->setQ(Lorg/ejml/data/FMatrixRMaj;)V

    .line 232
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->vector:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->setFastEigenvalues(Z)V

    .line 235
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->vector:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->process(I[F[F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 239
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->values:[F

    invoke-virtual {v0, v1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->copyEigenvalues([F)[F

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->values:[F

    return v2
.end method

.method private extractSeparate(I)Z
    .locals 5

    .line 196
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->computeEigenValues()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 201
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->reset(I)V

    .line 202
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->diagSaved:[F

    invoke-virtual {p1, v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->swapDiag([F)[F

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->diagSaved:[F

    .line 203
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->offSaved:[F

    invoke-virtual {p1, v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->swapOff([F)[F

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->offSaved:[F

    .line 206
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->decomp:Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32;

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->V:Lorg/ejml/data/FMatrixRMaj;

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32;->getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->V:Lorg/ejml/data/FMatrixRMaj;

    .line 209
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->vector:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->setQ(Lorg/ejml/data/FMatrixRMaj;)V

    .line 212
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->vector:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;

    const/4 v0, -0x1

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->values:[F

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v4, v3}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->process(I[F[F[F)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 216
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->values:[F

    invoke-virtual {p1, v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->copyEigenvalues([F)[F

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->values:[F

    .line 218
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->V:Lorg/ejml/data/FMatrixRMaj;

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->eigenvectors:[Lorg/ejml/data/FMatrixRMaj;

    invoke-static {p1, v0}, Lorg/ejml/dense/row/CommonOps_FDRM;->rowsToVector(Lorg/ejml/data/FMatrixRMaj;[Lorg/ejml/data/FMatrixRMaj;)[Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->eigenvectors:[Lorg/ejml/data/FMatrixRMaj;

    return v2
.end method

.method private extractTogether()Z
    .locals 5

    .line 175
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->decomp:Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32;

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->V:Lorg/ejml/data/FMatrixRMaj;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32;->getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/FMatrixRMaj;

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->V:Lorg/ejml/data/FMatrixRMaj;

    .line 178
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    invoke-virtual {v1, v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->setQ(Lorg/ejml/data/FMatrixRMaj;)V

    .line 180
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->vector:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->setFastEigenvalues(Z)V

    .line 183
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->vector:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v4}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->process(I[F[F)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 187
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->V:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->eigenvectors:[Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v0, v1}, Lorg/ejml/dense/row/CommonOps_FDRM;->rowsToVector(Lorg/ejml/data/FMatrixRMaj;[Lorg/ejml/data/FMatrixRMaj;)[Lorg/ejml/data/FMatrixRMaj;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->eigenvectors:[Lorg/ejml/data/FMatrixRMaj;

    .line 190
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->values:[F

    invoke-virtual {v0, v1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->copyEigenvalues([F)[F

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->values:[F

    return v2
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 3

    .line 135
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_6

    .line 137
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 140
    :cond_0
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    .line 143
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->decomp:Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32;

    invoke-interface {v2, p1}, Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 146
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->diag:[F

    .line 147
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->off:[F

    if-eqz p1, :cond_2

    .line 148
    array-length v2, p1

    if-ge v2, v0, :cond_3

    .line 149
    :cond_2
    new-array p1, v0, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->diag:[F

    add-int/lit8 v1, v0, -0x1

    .line 150
    new-array v1, v1, [F

    iput-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->off:[F

    .line 152
    :cond_3
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->decomp:Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32;

    invoke-interface {v2, p1, v1}, Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32;->getDiagonal([F[F)V

    .line 155
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    invoke-virtual {v2, p1, v1, v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->init([F[FI)V

    .line 157
    iget-boolean p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->computeVectors:Z

    if-eqz p1, :cond_5

    .line 158
    iget-boolean p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->computeVectorsWithValues:Z

    if-eqz p1, :cond_4

    .line 159
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->extractTogether()Z

    move-result p1

    return p1

    .line 161
    :cond_4
    invoke-direct {p0, v0}, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->extractSeparate(I)Z

    move-result p1

    return p1

    .line 164
    :cond_5
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->computeEigenValues()Z

    move-result p1

    return p1

    .line 136
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x0

    sget-object v0, Landroidx/core/view/contentcapture/cO/WfeUtUoIBm;->bbdvbawiSo:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 45
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getEigenVector(I)Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->eigenvectors:[Lorg/ejml/data/FMatrixRMaj;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic getEigenVector(I)Lorg/ejml/data/Matrix;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->getEigenVector(I)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getEigenvalue(I)Lorg/ejml/data/Complex_F32;
    .locals 2

    .line 118
    new-instance v0, Lorg/ejml/data/Complex_F32;

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->values:[F

    aget p1, v1, p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/ejml/data/Complex_F32;-><init>(FF)V

    return-object v0
.end method

.method public getNumberOfEigenvalues()I
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_FDRM;->getMatrixSize()I

    move-result v0

    return v0
.end method

.method public inputModified()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->decomp:Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32;->inputModified()Z

    move-result v0

    return v0
.end method

.method public setComputeVectorsWithValues(Z)V
    .locals 1

    .line 95
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->computeVectors:Z

    if-eqz v0, :cond_0

    .line 98
    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->computeVectorsWithValues:Z

    return-void

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Compute eigenvalues has been set to false"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxIterations(I)V
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_FDRM;->vector:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_FDRM;->setMaxIterations(I)V

    return-void
.end method
