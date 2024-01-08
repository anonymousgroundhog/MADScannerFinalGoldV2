.class public Lorg/ejml/dense/row/decomposition/svd/SafeSvd_DDRM;
.super Ljava/lang/Object;
.source "SafeSvd_DDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64<",
        "Lorg/ejml/data/DMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field alg:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation
.end field

.field work:Lorg/ejml/data/DMatrixRMaj;


# direct methods
.method public constructor <init>(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_DDRM;->work:Lorg/ejml/data/DMatrixRMaj;

    .line 39
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_DDRM;->alg:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 3

    .line 84
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_DDRM;->alg:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->inputModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_DDRM;->work:Lorg/ejml/data/DMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v2, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 86
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_DDRM;->work:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, p1}, Lorg/ejml/data/DMatrixRMaj;->set(Lorg/ejml/data/DMatrixD1;)V

    .line 87
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_DDRM;->alg:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_DDRM;->work:Lorg/ejml/data/DMatrixRMaj;

    invoke-interface {p1, v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    return p1

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_DDRM;->alg:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 31
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getSingularValues()[D
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_DDRM;->alg:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getSingularValues()[D

    move-result-object v0

    return-object v0
.end method

.method public getU(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_DDRM;->alg:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    invoke-interface {v0, p1, p2}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getU(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    return-object p1
.end method

.method public bridge synthetic getU(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 31
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_DDRM;->getU(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getV(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_DDRM;->alg:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    invoke-interface {v0, p1, p2}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getV(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    return-object p1
.end method

.method public bridge synthetic getV(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 31
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_DDRM;->getV(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getW(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_DDRM;->alg:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getW(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    return-object p1
.end method

.method public bridge synthetic getW(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 31
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_DDRM;->getW(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCompact()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_DDRM;->alg:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->isCompact()Z

    move-result v0

    return v0
.end method

.method public numCols()I
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_DDRM;->alg:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numCols()I

    move-result v0

    return v0
.end method

.method public numRows()I
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_DDRM;->alg:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numRows()I

    move-result v0

    return v0
.end method

.method public numberOfSingularValues()I
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_DDRM;->alg:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numberOfSingularValues()I

    move-result v0

    return v0
.end method
