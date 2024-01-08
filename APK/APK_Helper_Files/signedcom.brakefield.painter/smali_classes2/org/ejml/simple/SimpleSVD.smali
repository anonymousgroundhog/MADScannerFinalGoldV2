.class public Lorg/ejml/simple/SimpleSVD;
.super Ljava/lang/Object;
.source "SimpleSVD.java"


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
.field private U:Lorg/ejml/simple/SimpleBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private V:Lorg/ejml/simple/SimpleBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private W:Lorg/ejml/simple/SimpleBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final is64:Z

.field private mat:Lorg/ejml/data/Matrix;

.field private svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;

.field tol:D


# direct methods
.method public constructor <init>(Lorg/ejml/data/Matrix;Z)V
    .locals 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/ejml/simple/SimpleSVD;->mat:Lorg/ejml/data/Matrix;

    .line 65
    instance-of v0, p1, Lorg/ejml/data/DMatrixRMaj;

    iput-boolean v0, p0, Lorg/ejml/simple/SimpleSVD;->is64:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 67
    move-object v2, p1

    check-cast v2, Lorg/ejml/data/DMatrixRMaj;

    .line 68
    iget v3, v2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v2, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {v3, v2, v1, v1, p2}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    move-result-object p2

    iput-object p2, p0, Lorg/ejml/simple/SimpleSVD;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;

    goto :goto_0

    .line 70
    :cond_0
    move-object v2, p1

    check-cast v2, Lorg/ejml/data/FMatrixRMaj;

    .line 71
    iget v3, v2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v2, v2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {v3, v2, v1, v1, p2}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    move-result-object p2

    iput-object p2, p0, Lorg/ejml/simple/SimpleSVD;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;

    .line 74
    :goto_0
    iget-object p2, p0, Lorg/ejml/simple/SimpleSVD;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;

    invoke-interface {p2, p1}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 76
    iget-object p1, p0, Lorg/ejml/simple/SimpleSVD;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;->getU(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    move-result-object p1

    invoke-static {p1}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/Matrix;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/simple/SimpleSVD;->U:Lorg/ejml/simple/SimpleBase;

    .line 77
    iget-object p1, p0, Lorg/ejml/simple/SimpleSVD;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;

    invoke-interface {p1, p2}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;->getW(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;

    move-result-object p1

    invoke-static {p1}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/Matrix;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/simple/SimpleSVD;->W:Lorg/ejml/simple/SimpleBase;

    .line 78
    iget-object p1, p0, Lorg/ejml/simple/SimpleSVD;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;

    invoke-interface {p1, p2, v1}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;->getV(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    move-result-object p1

    invoke-static {p1}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/Matrix;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/simple/SimpleSVD;->V:Lorg/ejml/simple/SimpleBase;

    if-eqz v0, :cond_1

    .line 82
    iget-object p1, p0, Lorg/ejml/simple/SimpleSVD;->U:Lorg/ejml/simple/SimpleBase;

    .line 83
    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/Matrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    iget-object p2, p0, Lorg/ejml/simple/SimpleSVD;->W:Lorg/ejml/simple/SimpleBase;

    invoke-virtual {p2}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/Matrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->V:Lorg/ejml/simple/SimpleBase;

    .line 84
    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/Matrix;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/DMatrixRMaj;

    .line 82
    invoke-static {p1, v1, p2, v0, v1}, Lorg/ejml/dense/row/SingularOps_DDRM;->descendingOrder(Lorg/ejml/data/DMatrixRMaj;ZLorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Z)V

    .line 85
    iget-object p1, p0, Lorg/ejml/simple/SimpleSVD;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;

    check-cast p1, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    invoke-static {p1}, Lorg/ejml/dense/row/SingularOps_DDRM;->singularThreshold(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/ejml/simple/SimpleSVD;->tol:D

    goto :goto_1

    .line 87
    :cond_1
    iget-object p1, p0, Lorg/ejml/simple/SimpleSVD;->U:Lorg/ejml/simple/SimpleBase;

    .line 88
    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/Matrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    iget-object p2, p0, Lorg/ejml/simple/SimpleSVD;->W:Lorg/ejml/simple/SimpleBase;

    invoke-virtual {p2}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/Matrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->V:Lorg/ejml/simple/SimpleBase;

    .line 89
    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/Matrix;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/FMatrixRMaj;

    .line 87
    invoke-static {p1, v1, p2, v0, v1}, Lorg/ejml/dense/row/SingularOps_FDRM;->descendingOrder(Lorg/ejml/data/FMatrixRMaj;ZLorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Z)V

    .line 90
    iget-object p1, p0, Lorg/ejml/simple/SimpleSVD;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;

    check-cast p1, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    invoke-static {p1}, Lorg/ejml/dense/row/SingularOps_FDRM;->singularThreshold(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;)F

    move-result p1

    float-to-double p1, p1

    iput-wide p1, p0, Lorg/ejml/simple/SimpleSVD;->tol:D

    :goto_1
    return-void

    .line 75
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Decomposition failed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getSVD()Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;
    .locals 1

    .line 219
    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;

    return-object v0
.end method

.method public getSingleValue(I)D
    .locals 2

    .line 170
    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->W:Lorg/ejml/simple/SimpleBase;

    invoke-virtual {v0, p1, p1}, Lorg/ejml/simple/SimpleBase;->get(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSingularValues()[D
    .locals 5

    .line 177
    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->W:Lorg/ejml/simple/SimpleBase;

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->numCols()I

    move-result v0

    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 180
    invoke-virtual {p0, v2}, Lorg/ejml/simple/SimpleSVD;->getSingleValue(I)D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getU()Lorg/ejml/simple/SimpleBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->U:Lorg/ejml/simple/SimpleBase;

    return-object v0
.end method

.method public getV()Lorg/ejml/simple/SimpleBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->V:Lorg/ejml/simple/SimpleBase;

    return-object v0
.end method

.method public getW()Lorg/ejml/simple/SimpleBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->W:Lorg/ejml/simple/SimpleBase;

    return-object v0
.end method

.method public nullSpace()Lorg/ejml/simple/SimpleMatrix;
    .locals 4

    .line 156
    iget-boolean v0, p0, Lorg/ejml/simple/SimpleSVD;->is64:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;

    check-cast v0, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    iget-wide v2, p0, Lorg/ejml/simple/SimpleSVD;->tol:D

    invoke-static {v0, v1, v2, v3}, Lorg/ejml/dense/row/SingularOps_DDRM;->nullSpace(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;Lorg/ejml/data/DMatrixRMaj;D)Lorg/ejml/data/DMatrixRMaj;

    move-result-object v0

    invoke-static {v0}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/Matrix;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;

    check-cast v0, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    iget-wide v2, p0, Lorg/ejml/simple/SimpleSVD;->tol:D

    double-to-float v2, v2

    invoke-static {v0, v1, v2}, Lorg/ejml/dense/row/SingularOps_FDRM;->nullSpace(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;Lorg/ejml/data/FMatrixRMaj;F)Lorg/ejml/data/FMatrixRMaj;

    move-result-object v0

    invoke-static {v0}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/Matrix;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v0

    return-object v0
.end method

.method public nullity()I
    .locals 5

    .line 206
    iget-boolean v0, p0, Lorg/ejml/simple/SimpleSVD;->is64:Z

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;

    check-cast v0, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    sget-wide v3, Lorg/ejml/UtilEjml;->EPS:D

    mul-double/2addr v3, v1

    invoke-static {v0, v3, v4}, Lorg/ejml/dense/row/SingularOps_DDRM;->nullity(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;D)I

    move-result v0

    return v0

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;

    check-cast v0, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    const/high16 v1, 0x40a00000    # 5.0f

    sget v2, Lorg/ejml/UtilEjml;->F_EPS:F

    mul-float/2addr v2, v1

    invoke-static {v0, v2}, Lorg/ejml/dense/row/SingularOps_FDRM;->nullity(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;F)I

    move-result v0

    return v0
.end method

.method public quality()D
    .locals 4

    .line 140
    iget-boolean v0, p0, Lorg/ejml/simple/SimpleSVD;->is64:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->mat:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/simple/SimpleSVD;->U:Lorg/ejml/simple/SimpleBase;

    invoke-virtual {v1}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/Matrix;

    move-result-object v1

    check-cast v1, Lorg/ejml/data/DMatrixRMaj;

    iget-object v2, p0, Lorg/ejml/simple/SimpleSVD;->W:Lorg/ejml/simple/SimpleBase;

    .line 142
    invoke-virtual {v2}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/Matrix;

    move-result-object v2

    check-cast v2, Lorg/ejml/data/DMatrixRMaj;

    iget-object v3, p0, Lorg/ejml/simple/SimpleSVD;->V:Lorg/ejml/simple/SimpleBase;

    invoke-virtual {v3}, Lorg/ejml/simple/SimpleBase;->transpose()Lorg/ejml/simple/SimpleBase;

    move-result-object v3

    invoke-virtual {v3}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/Matrix;

    move-result-object v3

    check-cast v3, Lorg/ejml/data/DMatrixRMaj;

    .line 141
    invoke-static {v0, v1, v2, v3}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->quality(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)D

    move-result-wide v0

    return-wide v0

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->mat:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/simple/SimpleSVD;->U:Lorg/ejml/simple/SimpleBase;

    invoke-virtual {v1}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/Matrix;

    move-result-object v1

    check-cast v1, Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, p0, Lorg/ejml/simple/SimpleSVD;->W:Lorg/ejml/simple/SimpleBase;

    .line 145
    invoke-virtual {v2}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/Matrix;

    move-result-object v2

    check-cast v2, Lorg/ejml/data/FMatrixRMaj;

    iget-object v3, p0, Lorg/ejml/simple/SimpleSVD;->V:Lorg/ejml/simple/SimpleBase;

    invoke-virtual {v3}, Lorg/ejml/simple/SimpleBase;->transpose()Lorg/ejml/simple/SimpleBase;

    move-result-object v3

    invoke-virtual {v3}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/Matrix;

    move-result-object v3

    check-cast v3, Lorg/ejml/data/FMatrixRMaj;

    .line 144
    invoke-static {v0, v1, v2, v3}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->quality(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public rank()I
    .locals 3

    .line 192
    iget-boolean v0, p0, Lorg/ejml/simple/SimpleSVD;->is64:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;

    check-cast v0, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    iget-wide v1, p0, Lorg/ejml/simple/SimpleSVD;->tol:D

    invoke-static {v0, v1, v2}, Lorg/ejml/dense/row/SingularOps_DDRM;->rank(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;D)I

    move-result v0

    return v0

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition;

    check-cast v0, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    iget-wide v1, p0, Lorg/ejml/simple/SimpleSVD;->tol:D

    double-to-float v1, v1

    invoke-static {v0, v1}, Lorg/ejml/dense/row/SingularOps_FDRM;->rank(Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;F)I

    move-result v0

    return v0
.end method
