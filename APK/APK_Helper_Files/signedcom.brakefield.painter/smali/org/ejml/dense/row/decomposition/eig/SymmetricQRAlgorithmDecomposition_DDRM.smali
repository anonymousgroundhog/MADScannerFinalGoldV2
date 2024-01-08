.class public Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;
.super Ljava/lang/Object;
.source "SymmetricQRAlgorithmDecomposition_DDRM.java"

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
.field private V:Lorg/ejml/data/DMatrixRMaj;

.field computeVectors:Z

.field private computeVectorsWithValues:Z

.field private final decomp:Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation
.end field

.field private diag:[D

.field private diagSaved:[D

.field private eigenvectors:[Lorg/ejml/data/DMatrixRMaj;

.field private final helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

.field private off:[D

.field private offSaved:[D

.field private values:[D

.field private final vector:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;


# direct methods
.method public constructor <init>(Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;Z)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->computeVectorsWithValues:Z

    .line 80
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->decomp:Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64;

    .line 81
    iput-boolean p2, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->computeVectors:Z

    .line 83
    new-instance p1, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    invoke-direct {p1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;-><init>()V

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    .line 84
    new-instance p2, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;

    invoke-direct {p2, p1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;-><init>(Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;)V

    iput-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->vector:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-static {v0}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->tridiagonal(I)Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;-><init>(Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64;Z)V

    return-void
.end method

.method private computeEigenValues()Z
    .locals 4

    .line 226
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->diagSaved:[D

    invoke-virtual {v0, v1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->copyDiag([D)[D

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->diagSaved:[D

    .line 227
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->offSaved:[D

    invoke-virtual {v0, v1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->copyOff([D)[D

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->offSaved:[D

    .line 229
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->vector:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->setQ(Lorg/ejml/data/DMatrixRMaj;)V

    .line 230
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->vector:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->setFastEigenvalues(Z)V

    .line 233
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->vector:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->process(I[D[D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 237
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->values:[D

    invoke-virtual {v0, v1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->copyEigenvalues([D)[D

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->values:[D

    return v2
.end method

.method private extractSeparate(I)Z
    .locals 5

    .line 194
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->computeEigenValues()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->reset(I)V

    .line 200
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->diagSaved:[D

    invoke-virtual {p1, v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->swapDiag([D)[D

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->diagSaved:[D

    .line 201
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->offSaved:[D

    invoke-virtual {p1, v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->swapOff([D)[D

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->offSaved:[D

    .line 204
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->decomp:Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64;

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->V:Lorg/ejml/data/DMatrixRMaj;

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64;->getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->V:Lorg/ejml/data/DMatrixRMaj;

    .line 207
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->vector:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->setQ(Lorg/ejml/data/DMatrixRMaj;)V

    .line 210
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->vector:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;

    const/4 v0, -0x1

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->values:[D

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v4, v3}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->process(I[D[D[D)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 214
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->values:[D

    invoke-virtual {p1, v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->copyEigenvalues([D)[D

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->values:[D

    .line 216
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->V:Lorg/ejml/data/DMatrixRMaj;

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->eigenvectors:[Lorg/ejml/data/DMatrixRMaj;

    invoke-static {p1, v0}, Lorg/ejml/dense/row/CommonOps_DDRM;->rowsToVector(Lorg/ejml/data/DMatrixRMaj;[Lorg/ejml/data/DMatrixRMaj;)[Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->eigenvectors:[Lorg/ejml/data/DMatrixRMaj;

    return v2
.end method

.method private extractTogether()Z
    .locals 5

    .line 173
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->decomp:Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64;

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->V:Lorg/ejml/data/DMatrixRMaj;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64;->getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/DMatrixRMaj;

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->V:Lorg/ejml/data/DMatrixRMaj;

    .line 176
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    invoke-virtual {v1, v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->setQ(Lorg/ejml/data/DMatrixRMaj;)V

    .line 178
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->vector:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->setFastEigenvalues(Z)V

    .line 181
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->vector:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v4}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->process(I[D[D)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 185
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->V:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->eigenvectors:[Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v0, v1}, Lorg/ejml/dense/row/CommonOps_DDRM;->rowsToVector(Lorg/ejml/data/DMatrixRMaj;[Lorg/ejml/data/DMatrixRMaj;)[Lorg/ejml/data/DMatrixRMaj;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->eigenvectors:[Lorg/ejml/data/DMatrixRMaj;

    .line 188
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->values:[D

    invoke-virtual {v0, v1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->copyEigenvalues([D)[D

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->values:[D

    return v2
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 3

    .line 133
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_6

    .line 135
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 138
    :cond_0
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    .line 141
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->decomp:Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64;

    invoke-interface {v2, p1}, Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 144
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->diag:[D

    .line 145
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->off:[D

    if-eqz p1, :cond_2

    .line 146
    array-length v2, p1

    if-ge v2, v0, :cond_3

    .line 147
    :cond_2
    new-array p1, v0, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->diag:[D

    add-int/lit8 v1, v0, -0x1

    .line 148
    new-array v1, v1, [D

    iput-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->off:[D

    .line 150
    :cond_3
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->decomp:Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64;

    invoke-interface {v2, p1, v1}, Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64;->getDiagonal([D[D)V

    .line 153
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    invoke-virtual {v2, p1, v1, v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->init([D[DI)V

    .line 155
    iget-boolean p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->computeVectors:Z

    if-eqz p1, :cond_5

    .line 156
    iget-boolean p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->computeVectorsWithValues:Z

    if-eqz p1, :cond_4

    .line 157
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->extractTogether()Z

    move-result p1

    return p1

    .line 159
    :cond_4
    invoke-direct {p0, v0}, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->extractSeparate(I)Z

    move-result p1

    return p1

    .line 162
    :cond_5
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->computeEigenValues()Z

    move-result p1

    return p1

    .line 134
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Matrix must be square."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 44
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getEigenVector(I)Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->eigenvectors:[Lorg/ejml/data/DMatrixRMaj;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic getEigenVector(I)Lorg/ejml/data/Matrix;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->getEigenVector(I)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getEigenvalue(I)Lorg/ejml/data/Complex_F64;
    .locals 5

    .line 116
    new-instance v0, Lorg/ejml/data/Complex_F64;

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->values:[D

    aget-wide v1, v1, p1

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/ejml/data/Complex_F64;-><init>(DD)V

    return-object v0
.end method

.method public getNumberOfEigenvalues()I
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->helper:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQREigenHelper_DDRM;->getMatrixSize()I

    move-result v0

    return v0
.end method

.method public inputModified()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->decomp:Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64;->inputModified()Z

    move-result v0

    return v0
.end method

.method public setComputeVectorsWithValues(Z)V
    .locals 1

    .line 93
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->computeVectors:Z

    if-eqz v0, :cond_0

    .line 96
    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->computeVectorsWithValues:Z

    return-void

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Compute eigenvalues has been set to false"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxIterations(I)V
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/SymmetricQRAlgorithmDecomposition_DDRM;->vector:Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/decomposition/eig/symm/SymmetricQrAlgorithm_DDRM;->setMaxIterations(I)V

    return-void
.end method
