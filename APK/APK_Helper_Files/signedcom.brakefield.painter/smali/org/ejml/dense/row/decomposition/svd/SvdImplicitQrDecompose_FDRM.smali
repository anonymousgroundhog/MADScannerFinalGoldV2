.class public Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;
.super Ljava/lang/Object;
.source "SvdImplicitQrDecompose_FDRM.java"

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
.field private A_mod:Lorg/ejml/data/FMatrixRMaj;

.field private Ut:Lorg/ejml/data/FMatrixRMaj;

.field private Vt:Lorg/ejml/data/FMatrixRMaj;

.field protected bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation
.end field

.field protected canUseTallBidiagonal:Z

.field protected compact:Z

.field protected computeU:Z

.field protected computeV:Z

.field diag:[F

.field protected numCols:I

.field protected numColsT:I

.field protected numRows:I

.field protected numRowsT:I

.field private numSingular:I

.field off:[F

.field protected prefComputeU:Z

.field protected prefComputeV:Z

.field protected qralg:Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;

.field private singularValues:[F

.field protected transposed:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->qralg:Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;

    .line 92
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->A_mod:Lorg/ejml/data/FMatrixRMaj;

    .line 104
    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->compact:Z

    .line 105
    iput-boolean p2, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->prefComputeU:Z

    .line 106
    iput-boolean p3, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->prefComputeV:Z

    .line 107
    iput-boolean p4, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->canUseTallBidiagonal:Z

    return-void
.end method

.method private bidiagonalization(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 4

    .line 208
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->transposed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->A_mod:Lorg/ejml/data/FMatrixRMaj;

    iget v2, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v3, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-virtual {v0, v2, v3, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    .line 210
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->A_mod:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, v0, p1}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->transpose(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->A_mod:Lorg/ejml/data/FMatrixRMaj;

    iget v2, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v3, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {v0, v2, v3, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    .line 213
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->A_mod:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, p1}, Lorg/ejml/data/FMatrixRMaj;->set(Lorg/ejml/data/FMatrixD1;)V

    .line 215
    :goto_0
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->A_mod:Lorg/ejml/data/FMatrixRMaj;

    invoke-interface {p1, v0}, Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private computeUWV()Z
    .locals 5

    .line 233
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->diag:[F

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->off:[F

    invoke-interface {v0, v1, v2}, Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;->getDiagonal([F[F)V

    .line 234
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->qralg:Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;

    iget v1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->numRowsT:I

    iget v2, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->numColsT:I

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->diag:[F

    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->off:[F

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->setMatrix(II[F[F)V

    .line 238
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->computeU:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->Ut:Lorg/ejml/data/FMatrixRMaj;

    iget-boolean v3, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->compact:Z

    invoke-interface {v0, v2, v1, v3}, Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;->getU(Lorg/ejml/data/Matrix;ZZ)Lorg/ejml/data/Matrix;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/FMatrixRMaj;

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->Ut:Lorg/ejml/data/FMatrixRMaj;

    .line 240
    :cond_0
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->computeV:Z

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->Vt:Lorg/ejml/data/FMatrixRMaj;

    iget-boolean v3, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->compact:Z

    invoke-interface {v0, v2, v1, v3}, Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;->getV(Lorg/ejml/data/Matrix;ZZ)Lorg/ejml/data/Matrix;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/FMatrixRMaj;

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->Vt:Lorg/ejml/data/FMatrixRMaj;

    .line 243
    :cond_1
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->qralg:Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->setFastValues(Z)V

    .line 244
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->computeU:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->qralg:Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->Ut:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, v3}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->setUt(Lorg/ejml/data/FMatrixRMaj;)V

    goto :goto_0

    .line 247
    :cond_2
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->qralg:Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;

    invoke-virtual {v0, v2}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->setUt(Lorg/ejml/data/FMatrixRMaj;)V

    .line 248
    :goto_0
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->computeV:Z

    if-eqz v0, :cond_3

    .line 249
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->qralg:Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->Vt:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, v2}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->setVt(Lorg/ejml/data/FMatrixRMaj;)V

    goto :goto_1

    .line 251
    :cond_3
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->qralg:Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;

    invoke-virtual {v0, v2}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->setVt(Lorg/ejml/data/FMatrixRMaj;)V

    .line 255
    :goto_1
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->qralg:Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->process()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method private makeSingularPositive()V
    .locals 6

    .line 311
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->qralg:Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->getNumberOfSingularValues()I

    move-result v0

    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->numSingular:I

    .line 312
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->qralg:Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->getSingularValues()[F

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->singularValues:[F

    const/4 v0, 0x0

    .line 314
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->numSingular:I

    if-ge v0, v1, :cond_2

    .line 315
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->qralg:Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;

    invoke-virtual {v1, v0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_FDRM;->getSingularValue(I)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    .line 318
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->singularValues:[F

    sub-float v1, v2, v1

    aput v1, v3, v0

    .line 320
    iget-boolean v1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->computeU:Z

    if-eqz v1, :cond_1

    .line 323
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->Ut:Lorg/ejml/data/FMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v1, v0

    .line 324
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->Ut:Lorg/ejml/data/FMatrixRMaj;

    iget v3, v3, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    add-int/2addr v3, v1

    :goto_1
    if-ge v1, v3, :cond_1

    .line 327
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->Ut:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v4, v1}, Lorg/ejml/data/FMatrixRMaj;->get(I)F

    move-result v5

    sub-float v5, v2, v5

    invoke-virtual {v4, v1, v5}, Lorg/ejml/data/FMatrixRMaj;->set(IF)F

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 331
    :cond_0
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->singularValues:[F

    aput v1, v2, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setup(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 4

    .line 264
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->transposed:Z

    if-eqz v0, :cond_1

    .line 268
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->prefComputeV:Z

    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->computeU:Z

    .line 269
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->prefComputeU:Z

    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->computeV:Z

    .line 270
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->numRowsT:I

    .line 271
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->numColsT:I

    goto :goto_1

    .line 273
    :cond_1
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->prefComputeU:Z

    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->computeU:Z

    .line 274
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->prefComputeV:Z

    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->computeV:Z

    .line 275
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->numRowsT:I

    .line 276
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->numColsT:I

    .line 279
    :goto_1
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->numRows:I

    .line 280
    iget p1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iput p1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->numCols:I

    .line 282
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->numRows:I

    if-eqz v0, :cond_5

    if-nez p1, :cond_2

    goto :goto_2

    .line 285
    :cond_2
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->diag:[F

    if-eqz p1, :cond_3

    array-length p1, p1

    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->numColsT:I

    if-ge p1, v0, :cond_4

    .line 286
    :cond_3
    iget p1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->numColsT:I

    new-array v0, p1, [F

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->diag:[F

    sub-int/2addr p1, v3

    .line 287
    new-array p1, p1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->off:[F

    .line 291
    :cond_4
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->declareBidiagonalDecomposition()V

    return v3

    :cond_5
    :goto_2
    return v2
.end method

.method private undoTranspose()V
    .locals 2

    .line 222
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->transposed:Z

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->Vt:Lorg/ejml/data/FMatrixRMaj;

    .line 224
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->Ut:Lorg/ejml/data/FMatrixRMaj;

    iput-object v1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->Vt:Lorg/ejml/data/FMatrixRMaj;

    .line 225
    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->Ut:Lorg/ejml/data/FMatrixRMaj;

    :cond_0
    return-void
.end method


# virtual methods
.method protected declareBidiagonalDecomposition()V
    .locals 2

    .line 297
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->canUseTallBidiagonal:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->computeU:Z

    if-nez v0, :cond_1

    .line 298
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;

    if-nez v0, :cond_3

    .line 299
    :cond_0
    new-instance v0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;

    goto :goto_0

    .line 301
    :cond_1
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;

    if-eqz v0, :cond_2

    instance-of v0, v0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;

    if-nez v0, :cond_3

    .line 302
    :cond_2
    new-instance v0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;

    :cond_3
    :goto_0
    return-void
.end method

.method public decompose(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 2

    .line 183
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->setup(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 186
    :cond_0
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->bidiagonalization(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 189
    :cond_1
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->computeUWV()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 193
    :cond_2
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->makeSingularPositive()V

    .line 196
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->undoTranspose()V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 49
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getSingularValues()[F
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->singularValues:[F

    return-object v0
.end method

.method public getU(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 127
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->prefComputeU:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    .line 131
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->Ut:Lorg/ejml/data/FMatrixRMaj;

    return-object p1

    .line 132
    :cond_0
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->Ut:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p1, p2}, Lorg/ejml/data/FMatrixRMaj;->set(Lorg/ejml/data/FMatrixD1;)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->Ut:Lorg/ejml/data/FMatrixRMaj;

    iget p2, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->Ut:Lorg/ejml/data/FMatrixRMaj;

    iget v0, v0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {p1, p2, v0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    .line 135
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->Ut:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->transpose(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    :goto_0
    return-object p1

    .line 128
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "As requested U was not computed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getU(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 49
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->getU(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getV(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 143
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->prefComputeV:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    .line 147
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->Vt:Lorg/ejml/data/FMatrixRMaj;

    return-object p1

    .line 149
    :cond_0
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->Vt:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p1, p2}, Lorg/ejml/data/FMatrixRMaj;->set(Lorg/ejml/data/FMatrixD1;)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->Vt:Lorg/ejml/data/FMatrixRMaj;

    iget p2, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->Vt:Lorg/ejml/data/FMatrixRMaj;

    iget v0, v0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {p1, p2, v0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    .line 152
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->Vt:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->transpose(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    :goto_0
    return-object p1

    .line 144
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "As requested V was not computed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getV(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 49
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->getV(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getW(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 3

    .line 164
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->compact:Z

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->numSingular:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->numRows:I

    :goto_0
    if-eqz v0, :cond_1

    .line 165
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->numSingular:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->numCols:I

    :goto_1
    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 168
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p1, v1, v0}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_2

    .line 170
    :cond_2
    invoke-virtual {p1, v1, v0, v2}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    .line 171
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->zero()V

    .line 174
    :goto_2
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->numSingular:I

    if-ge v2, v0, :cond_3

    .line 175
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->singularValues:[F

    aget v0, v0, v2

    invoke-virtual {p1, v2, v2, v0}, Lorg/ejml/data/FMatrixRMaj;->unsafe_set(IIF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object p1
.end method

.method public bridge synthetic getW(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 49
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->getW(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

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

    .line 122
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->compact:Z

    return v0
.end method

.method public numCols()I
    .locals 1

    .line 343
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->numCols:I

    return v0
.end method

.method public numRows()I
    .locals 1

    .line 338
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->numRows:I

    return v0
.end method

.method public numberOfSingularValues()I
    .locals 1

    .line 117
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;->numSingular:I

    return v0
.end method

.method protected transpose(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 159
    invoke-static {p2, p1}, Lorg/ejml/dense/row/CommonOps_FDRM;->transpose(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method
