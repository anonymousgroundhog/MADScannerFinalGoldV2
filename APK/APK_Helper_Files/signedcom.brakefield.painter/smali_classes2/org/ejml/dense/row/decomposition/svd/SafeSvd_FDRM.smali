.class public Lorg/ejml/dense/row/decomposition/svd/SafeSvd_FDRM;
.super Ljava/lang/Object;
.source "SafeSvd_FDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32<",
        "Lorg/ejml/data/FMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field alg:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation
.end field

.field work:Lorg/ejml/data/FMatrixRMaj;


# direct methods
.method public constructor <init>(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_FDRM;->work:Lorg/ejml/data/FMatrixRMaj;

    .line 41
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_FDRM;->alg:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 3

    .line 86
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_FDRM;->alg:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->inputModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_FDRM;->work:Lorg/ejml/data/FMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v2, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 88
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_FDRM;->work:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, p1}, Lorg/ejml/data/FMatrixRMaj;->set(Lorg/ejml/data/FMatrixD1;)V

    .line 89
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_FDRM;->alg:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_FDRM;->work:Lorg/ejml/data/FMatrixRMaj;

    invoke-interface {p1, v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    return p1

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_FDRM;->alg:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 32
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getSingularValues()[F
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_FDRM;->alg:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getSingularValues()[F

    move-result-object v0

    return-object v0
.end method

.method public getU(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_FDRM;->alg:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    invoke-interface {v0, p1, p2}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getU(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    return-object p1
.end method

.method public bridge synthetic getU(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 32
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_FDRM;->getU(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getV(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_FDRM;->alg:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    invoke-interface {v0, p1, p2}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getV(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    return-object p1
.end method

.method public bridge synthetic getV(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 32
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_FDRM;->getV(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getW(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_FDRM;->alg:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getW(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    return-object p1
.end method

.method public bridge synthetic getW(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 32
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_FDRM;->getW(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

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

    .line 56
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_FDRM;->alg:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->isCompact()Z

    move-result v0

    return v0
.end method

.method public numCols()I
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_FDRM;->alg:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numCols()I

    move-result v0

    return v0
.end method

.method public numRows()I
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_FDRM;->alg:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numRows()I

    move-result v0

    return v0
.end method

.method public numberOfSingularValues()I
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SafeSvd_FDRM;->alg:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numberOfSingularValues()I

    move-result v0

    return v0
.end method
