.class public Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_MT_DDRM;
.super Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;
.source "SvdImplicitQrDecompose_MT_DDRM.java"


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_DDRM;-><init>(ZZZZ)V

    return-void
.end method


# virtual methods
.method protected declareBidiagonalDecomposition()V
    .locals 2

    .line 47
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_MT_DDRM;->canUseTallBidiagonal:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_MT_DDRM;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_MT_DDRM;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_MT_DDRM;->computeU:Z

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_MT_DDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_MT_DDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;

    instance-of v0, v0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_MT_DDRM;

    if-nez v0, :cond_3

    .line 49
    :cond_0
    new-instance v0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_MT_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_MT_DDRM;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_MT_DDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;

    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_MT_DDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_MT_DDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;

    instance-of v0, v0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_MT_DDRM;

    if-nez v0, :cond_3

    .line 52
    :cond_2
    new-instance v0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_MT_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_MT_DDRM;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_MT_DDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;

    :cond_3
    :goto_0
    return-void
.end method

.method protected transpose(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 42
    invoke-static {p2, p1}, Lorg/ejml/dense/row/CommonOps_MT_DDRM;->transpose(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method
