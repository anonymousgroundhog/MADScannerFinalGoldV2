.class public Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;
.super Ljava/lang/Object;
.source "SvdImplicitQrDecompose_DDRM.java"

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
.field private A_mod:Lorg/ejml/data/DMatrixRMaj;

.field private Ut:Lorg/ejml/data/DMatrixRMaj;

.field private Vt:Lorg/ejml/data/DMatrixRMaj;

.field protected bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation
.end field

.field protected canUseTallBidiagonal:Z

.field protected compact:Z

.field protected computeU:Z

.field protected computeV:Z

.field diag:[D

.field protected numCols:I

.field protected numColsT:I

.field protected numRows:I

.field protected numRowsT:I

.field private numSingular:I

.field off:[D

.field protected prefComputeU:Z

.field protected prefComputeV:Z

.field protected qralg:Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;

.field private singularValues:[D

.field protected transposed:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->qralg:Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;

    .line 90
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->A_mod:Lorg/ejml/data/DMatrixRMaj;

    .line 102
    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->compact:Z

    .line 103
    iput-boolean p2, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->prefComputeU:Z

    .line 104
    iput-boolean p3, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->prefComputeV:Z

    .line 105
    iput-boolean p4, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->canUseTallBidiagonal:Z

    return-void
.end method

.method private bidiagonalization(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 4

    .line 206
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->transposed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->A_mod:Lorg/ejml/data/DMatrixRMaj;

    iget v2, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v3, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-virtual {v0, v2, v3, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    .line 208
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->A_mod:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, v0, p1}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->transpose(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->A_mod:Lorg/ejml/data/DMatrixRMaj;

    iget v2, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v3, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {v0, v2, v3, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    .line 211
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->A_mod:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, p1}, Lorg/ejml/data/DMatrixRMaj;->set(Lorg/ejml/data/DMatrixD1;)V

    .line 213
    :goto_0
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->A_mod:Lorg/ejml/data/DMatrixRMaj;

    invoke-interface {p1, v0}, Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private computeUWV()Z
    .locals 5

    .line 231
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->diag:[D

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->off:[D

    invoke-interface {v0, v1, v2}, Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;->getDiagonal([D[D)V

    .line 232
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->qralg:Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;

    iget v1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->numRowsT:I

    iget v2, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->numColsT:I

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->diag:[D

    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->off:[D

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->setMatrix(II[D[D)V

    .line 236
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->computeU:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->Ut:Lorg/ejml/data/DMatrixRMaj;

    iget-boolean v3, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->compact:Z

    invoke-interface {v0, v2, v1, v3}, Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;->getU(Lorg/ejml/data/Matrix;ZZ)Lorg/ejml/data/Matrix;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/DMatrixRMaj;

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->Ut:Lorg/ejml/data/DMatrixRMaj;

    .line 238
    :cond_0
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->computeV:Z

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->Vt:Lorg/ejml/data/DMatrixRMaj;

    iget-boolean v3, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->compact:Z

    invoke-interface {v0, v2, v1, v3}, Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;->getV(Lorg/ejml/data/Matrix;ZZ)Lorg/ejml/data/Matrix;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/DMatrixRMaj;

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->Vt:Lorg/ejml/data/DMatrixRMaj;

    .line 241
    :cond_1
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->qralg:Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->setFastValues(Z)V

    .line 242
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->computeU:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->qralg:Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->Ut:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, v3}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->setUt(Lorg/ejml/data/DMatrixRMaj;)V

    goto :goto_0

    .line 245
    :cond_2
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->qralg:Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;

    invoke-virtual {v0, v2}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->setUt(Lorg/ejml/data/DMatrixRMaj;)V

    .line 246
    :goto_0
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->computeV:Z

    if-eqz v0, :cond_3

    .line 247
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->qralg:Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->Vt:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, v2}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->setVt(Lorg/ejml/data/DMatrixRMaj;)V

    goto :goto_1

    .line 249
    :cond_3
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->qralg:Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;

    invoke-virtual {v0, v2}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->setVt(Lorg/ejml/data/DMatrixRMaj;)V

    .line 253
    :goto_1
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->qralg:Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->process()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method private makeSingularPositive()V
    .locals 8

    .line 309
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->qralg:Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->getNumberOfSingularValues()I

    move-result v0

    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->numSingular:I

    .line 310
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->qralg:Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;

    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->getSingularValues()[D

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->singularValues:[D

    const/4 v0, 0x0

    .line 312
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->numSingular:I

    if-ge v0, v1, :cond_2

    .line 313
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->qralg:Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;

    invoke-virtual {v1, v0}, Lorg/ejml/dense/row/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm_DDRM;->getSingularValue(I)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    .line 316
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->singularValues:[D

    sub-double v1, v3, v1

    aput-wide v1, v5, v0

    .line 318
    iget-boolean v1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->computeU:Z

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->Ut:Lorg/ejml/data/DMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v1, v0

    .line 322
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->Ut:Lorg/ejml/data/DMatrixRMaj;

    iget v2, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    add-int/2addr v2, v1

    :goto_1
    if-ge v1, v2, :cond_1

    .line 325
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->Ut:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v5, v1}, Lorg/ejml/data/DMatrixRMaj;->get(I)D

    move-result-wide v6

    sub-double v6, v3, v6

    invoke-virtual {v5, v1, v6, v7}, Lorg/ejml/data/DMatrixRMaj;->set(ID)D

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 329
    :cond_0
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->singularValues:[D

    aput-wide v1, v3, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setup(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 4

    .line 262
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->transposed:Z

    if-eqz v0, :cond_1

    .line 266
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->prefComputeV:Z

    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->computeU:Z

    .line 267
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->prefComputeU:Z

    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->computeV:Z

    .line 268
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->numRowsT:I

    .line 269
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->numColsT:I

    goto :goto_1

    .line 271
    :cond_1
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->prefComputeU:Z

    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->computeU:Z

    .line 272
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->prefComputeV:Z

    iput-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->computeV:Z

    .line 273
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->numRowsT:I

    .line 274
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->numColsT:I

    .line 277
    :goto_1
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->numRows:I

    .line 278
    iget p1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iput p1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->numCols:I

    .line 280
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->numRows:I

    if-eqz v0, :cond_5

    if-nez p1, :cond_2

    goto :goto_2

    .line 283
    :cond_2
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->diag:[D

    if-eqz p1, :cond_3

    array-length p1, p1

    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->numColsT:I

    if-ge p1, v0, :cond_4

    .line 284
    :cond_3
    iget p1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->numColsT:I

    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->diag:[D

    sub-int/2addr p1, v3

    .line 285
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->off:[D

    .line 289
    :cond_4
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->declareBidiagonalDecomposition()V

    return v3

    :cond_5
    :goto_2
    return v2
.end method

.method private undoTranspose()V
    .locals 2

    .line 220
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->transposed:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->Vt:Lorg/ejml/data/DMatrixRMaj;

    .line 222
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->Ut:Lorg/ejml/data/DMatrixRMaj;

    iput-object v1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->Vt:Lorg/ejml/data/DMatrixRMaj;

    .line 223
    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->Ut:Lorg/ejml/data/DMatrixRMaj;

    :cond_0
    return-void
.end method


# virtual methods
.method protected declareBidiagonalDecomposition()V
    .locals 2

    .line 295
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->canUseTallBidiagonal:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->computeU:Z

    if-nez v0, :cond_1

    .line 296
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;

    if-nez v0, :cond_3

    .line 297
    :cond_0
    new-instance v0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;

    goto :goto_0

    .line 299
    :cond_1
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;

    if-eqz v0, :cond_2

    instance-of v0, v0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;

    if-nez v0, :cond_3

    .line 300
    :cond_2
    new-instance v0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;

    :cond_3
    :goto_0
    return-void
.end method

.method public decompose(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 2

    .line 181
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->setup(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 184
    :cond_0
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->bidiagonalization(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 187
    :cond_1
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->computeUWV()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 191
    :cond_2
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->makeSingularPositive()V

    .line 194
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->undoTranspose()V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 48
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getSingularValues()[D
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->singularValues:[D

    return-object v0
.end method

.method public getU(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 125
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->prefComputeU:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    .line 129
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->Ut:Lorg/ejml/data/DMatrixRMaj;

    return-object p1

    .line 130
    :cond_0
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->Ut:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p1, p2}, Lorg/ejml/data/DMatrixRMaj;->set(Lorg/ejml/data/DMatrixD1;)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->Ut:Lorg/ejml/data/DMatrixRMaj;

    iget p2, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->Ut:Lorg/ejml/data/DMatrixRMaj;

    iget v0, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {p1, p2, v0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    .line 133
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->Ut:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->transpose(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    :goto_0
    return-object p1

    .line 126
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "As requested U was not computed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getU(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 48
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->getU(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getV(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 141
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->prefComputeV:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    .line 145
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->Vt:Lorg/ejml/data/DMatrixRMaj;

    return-object p1

    .line 147
    :cond_0
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->Vt:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p1, p2}, Lorg/ejml/data/DMatrixRMaj;->set(Lorg/ejml/data/DMatrixD1;)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->Vt:Lorg/ejml/data/DMatrixRMaj;

    iget p2, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->Vt:Lorg/ejml/data/DMatrixRMaj;

    iget v0, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {p1, p2, v0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    .line 150
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->Vt:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->transpose(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    :goto_0
    return-object p1

    .line 142
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "As requested V was not computed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getV(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 48
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->getV(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getW(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 3

    .line 162
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->compact:Z

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->numSingular:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->numRows:I

    :goto_0
    if-eqz v0, :cond_1

    .line 163
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->numSingular:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->numCols:I

    :goto_1
    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 166
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p1, v1, v0}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_2

    .line 168
    :cond_2
    invoke-virtual {p1, v1, v0, v2}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    .line 169
    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->zero()V

    .line 172
    :goto_2
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->numSingular:I

    if-ge v2, v0, :cond_3

    .line 173
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->singularValues:[D

    aget-wide v0, v0, v2

    invoke-virtual {p1, v2, v2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->unsafe_set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object p1
.end method

.method public bridge synthetic getW(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 48
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->getW(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

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

    .line 120
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->compact:Z

    return v0
.end method

.method public numCols()I
    .locals 1

    .line 341
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->numCols:I

    return v0
.end method

.method public numRows()I
    .locals 1

    .line 336
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->numRows:I

    return v0
.end method

.method public numberOfSingularValues()I
    .locals 1

    .line 115
    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;->numSingular:I

    return v0
.end method

.method protected transpose(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 157
    invoke-static {p2, p1}, Lorg/ejml/dense/row/CommonOps_DDRM;->transpose(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method
