.class public Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_MT_DDRM;
.super Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;
.source "BidiagonalDecompositionRow_MT_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;-><init>()V

    return-void
.end method


# virtual methods
.method protected rank1UpdateMultL(Lorg/ejml/data/DMatrixRMaj;DIII)V
    .locals 7

    .line 37
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_MT_DDRM;->u:[D

    move-object v0, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM;->rank1UpdateMultL(Lorg/ejml/data/DMatrixRMaj;[DDIII)V

    return-void
.end method

.method protected rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;DIII)V
    .locals 8

    .line 42
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_MT_DDRM;->u:[D

    iget-object v7, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_MT_DDRM;->b:[D

    move-object v0, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM;->rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;[DDIII[D)V

    return-void
.end method
