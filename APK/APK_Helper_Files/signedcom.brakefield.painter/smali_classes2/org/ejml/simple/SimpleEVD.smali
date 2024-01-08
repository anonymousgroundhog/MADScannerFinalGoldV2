.class public Lorg/ejml/simple/SimpleEVD;
.super Ljava/lang/Object;
.source "SimpleEVD.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/ejml/simple/SimpleBase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private eig:Lorg/ejml/interfaces/decomposition/EigenDecomposition;

.field mat:Lorg/ejml/data/Matrix;


# direct methods
.method public constructor <init>(Lorg/ejml/data/Matrix;)V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/ejml/simple/SimpleEVD;->mat:Lorg/ejml/data/Matrix;

    .line 46
    sget-object v0, Lorg/ejml/simple/SimpleEVD$1;->$SwitchMap$org$ejml$data$MatrixType:[I

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ejml/data/MatrixType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 48
    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v0

    invoke-static {v0, v1}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->eig(IZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/simple/SimpleEVD;->eig:Lorg/ejml/interfaces/decomposition/EigenDecomposition;

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Matrix type not yet supported. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v0

    invoke-static {v0, v1}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->eig(IZ)Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/simple/SimpleEVD;->eig:Lorg/ejml/interfaces/decomposition/EigenDecomposition;

    .line 52
    :goto_0
    iget-object v0, p0, Lorg/ejml/simple/SimpleEVD;->eig:Lorg/ejml/interfaces/decomposition/EigenDecomposition;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/EigenDecomposition;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 53
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Eigenvalue Decomposition failed"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getEVD()Lorg/ejml/interfaces/decomposition/EigenDecomposition;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/ejml/simple/SimpleEVD;->eig:Lorg/ejml/interfaces/decomposition/EigenDecomposition;

    return-object v0
.end method

.method public getEigenVector(I)Lorg/ejml/simple/SimpleBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/ejml/simple/SimpleEVD;->eig:Lorg/ejml/interfaces/decomposition/EigenDecomposition;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/EigenDecomposition;->getEigenVector(I)Lorg/ejml/data/Matrix;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 124
    :cond_0
    invoke-static {p1}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/Matrix;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object p1

    return-object p1
.end method

.method public getEigenvalue(I)Lorg/ejml/data/Complex_F64;
    .locals 5

    .line 103
    iget-object v0, p0, Lorg/ejml/simple/SimpleEVD;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0}, Lorg/ejml/data/Matrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ejml/data/MatrixType;->getBits()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lorg/ejml/simple/SimpleEVD;->eig:Lorg/ejml/interfaces/decomposition/EigenDecomposition;

    check-cast v0, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;->getEigenvalue(I)Lorg/ejml/data/Complex_F64;

    move-result-object p1

    return-object p1

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/ejml/simple/SimpleEVD;->eig:Lorg/ejml/interfaces/decomposition/EigenDecomposition;

    check-cast v0, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;->getEigenvalue(I)Lorg/ejml/data/Complex_F64;

    move-result-object p1

    .line 107
    new-instance v0, Lorg/ejml/data/Complex_F64;

    iget-wide v1, p1, Lorg/ejml/data/Complex_F64;->real:D

    iget-wide v3, p1, Lorg/ejml/data/Complex_F64;->imaginary:D

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/ejml/data/Complex_F64;-><init>(DD)V

    return-object v0
.end method

.method public getEigenvalues()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ejml/data/Complex_F64;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iget-object v1, p0, Lorg/ejml/simple/SimpleEVD;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v1}, Lorg/ejml/data/Matrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ejml/data/MatrixType;->getBits()I

    move-result v1

    const/16 v2, 0x40

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 63
    iget-object v1, p0, Lorg/ejml/simple/SimpleEVD;->eig:Lorg/ejml/interfaces/decomposition/EigenDecomposition;

    check-cast v1, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;

    .line 64
    :goto_0
    iget-object v2, p0, Lorg/ejml/simple/SimpleEVD;->eig:Lorg/ejml/interfaces/decomposition/EigenDecomposition;

    invoke-interface {v2}, Lorg/ejml/interfaces/decomposition/EigenDecomposition;->getNumberOfEigenvalues()I

    move-result v2

    if-ge v3, v2, :cond_1

    .line 65
    invoke-interface {v1, v3}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;->getEigenvalue(I)Lorg/ejml/data/Complex_F64;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p0, Lorg/ejml/simple/SimpleEVD;->eig:Lorg/ejml/interfaces/decomposition/EigenDecomposition;

    check-cast v1, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;

    .line 69
    :goto_1
    iget-object v2, p0, Lorg/ejml/simple/SimpleEVD;->eig:Lorg/ejml/interfaces/decomposition/EigenDecomposition;

    invoke-interface {v2}, Lorg/ejml/interfaces/decomposition/EigenDecomposition;->getNumberOfEigenvalues()I

    move-result v2

    if-ge v3, v2, :cond_1

    .line 70
    invoke-interface {v1, v3}, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;->getEigenvalue(I)Lorg/ejml/data/Complex_F32;

    move-result-object v2

    .line 71
    new-instance v4, Lorg/ejml/data/Complex_F64;

    iget v5, v2, Lorg/ejml/data/Complex_F32;->real:F

    float-to-double v5, v5

    iget v2, v2, Lorg/ejml/data/Complex_F32;->imaginary:F

    float-to-double v7, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/ejml/data/Complex_F64;-><init>(DD)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public getIndexMax()I
    .locals 8

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, v0}, Lorg/ejml/simple/SimpleEVD;->getEigenvalue(I)Lorg/ejml/data/Complex_F64;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ejml/data/Complex_F64;->getMagnitude2()D

    move-result-wide v1

    .line 166
    invoke-virtual {p0}, Lorg/ejml/simple/SimpleEVD;->getNumberOfEigenvalues()I

    move-result v3

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v3, :cond_1

    .line 168
    invoke-virtual {p0, v4}, Lorg/ejml/simple/SimpleEVD;->getEigenvalue(I)Lorg/ejml/data/Complex_F64;

    move-result-object v5

    invoke-virtual {v5}, Lorg/ejml/data/Complex_F64;->getMagnitude2()D

    move-result-wide v5

    cmpl-double v7, v5, v1

    if-lez v7, :cond_0

    move v0, v4

    move-wide v1, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getIndexMin()I
    .locals 8

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, v0}, Lorg/ejml/simple/SimpleEVD;->getEigenvalue(I)Lorg/ejml/data/Complex_F64;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ejml/data/Complex_F64;->getMagnitude2()D

    move-result-wide v1

    .line 187
    invoke-virtual {p0}, Lorg/ejml/simple/SimpleEVD;->getNumberOfEigenvalues()I

    move-result v3

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v3, :cond_1

    .line 189
    invoke-virtual {p0, v4}, Lorg/ejml/simple/SimpleEVD;->getEigenvalue(I)Lorg/ejml/data/Complex_F64;

    move-result-object v5

    invoke-virtual {v5}, Lorg/ejml/data/Complex_F64;->getMagnitude2()D

    move-result-wide v5

    cmpg-double v7, v5, v1

    if-gez v7, :cond_0

    move v0, v4

    move-wide v1, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getNumberOfEigenvalues()I
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/ejml/simple/SimpleEVD;->eig:Lorg/ejml/interfaces/decomposition/EigenDecomposition;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/EigenDecomposition;->getNumberOfEigenvalues()I

    move-result v0

    return v0
.end method

.method public quality()D
    .locals 2

    .line 141
    iget-object v0, p0, Lorg/ejml/simple/SimpleEVD;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0}, Lorg/ejml/data/Matrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ejml/data/MatrixType;->getBits()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lorg/ejml/simple/SimpleEVD;->mat:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/simple/SimpleEVD;->eig:Lorg/ejml/interfaces/decomposition/EigenDecomposition;

    check-cast v1, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;

    invoke-static {v0, v1}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->quality(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/interfaces/decomposition/EigenDecomposition_F64;)D

    move-result-wide v0

    return-wide v0

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/ejml/simple/SimpleEVD;->mat:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/simple/SimpleEVD;->eig:Lorg/ejml/interfaces/decomposition/EigenDecomposition;

    check-cast v1, Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;

    invoke-static {v0, v1}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->quality(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/interfaces/decomposition/EigenDecomposition_F32;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method
