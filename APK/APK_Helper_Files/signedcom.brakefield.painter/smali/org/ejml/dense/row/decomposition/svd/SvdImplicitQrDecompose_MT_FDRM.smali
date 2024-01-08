.class public Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_MT_FDRM;
.super Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;
.source "SvdImplicitQrDecompose_MT_FDRM.java"


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_FDRM;-><init>(ZZZZ)V

    return-void
.end method


# virtual methods
.method protected declareBidiagonalDecomposition()V
    .locals 2

    .line 49
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_MT_FDRM;->canUseTallBidiagonal:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_MT_FDRM;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_MT_FDRM;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_MT_FDRM;->computeU:Z

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_MT_FDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_MT_FDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;

    instance-of v0, v0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_MT_FDRM;

    if-nez v0, :cond_3

    .line 51
    :cond_0
    new-instance v0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_MT_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_MT_FDRM;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_MT_FDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_MT_FDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_MT_FDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;

    instance-of v0, v0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_MT_FDRM;

    if-nez v0, :cond_3

    .line 54
    :cond_2
    new-instance v0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_MT_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_MT_FDRM;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/svd/SvdImplicitQrDecompose_MT_FDRM;->bidiag:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;

    :cond_3
    :goto_0
    return-void
.end method

.method protected transpose(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 44
    invoke-static {p2, p1}, Lorg/ejml/dense/row/CommonOps_MT_FDRM;->transpose(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method
