.class public Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_MT_FDRM;
.super Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;
.source "BidiagonalDecompositionRow_MT_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;-><init>()V

    return-void
.end method


# virtual methods
.method protected rank1UpdateMultL(Lorg/ejml/data/FMatrixRMaj;FIII)V
    .locals 6

    .line 39
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_MT_FDRM;->u:[F

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM;->rank1UpdateMultL(Lorg/ejml/data/FMatrixRMaj;[FFIII)V

    return-void
.end method

.method protected rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;FIII)V
    .locals 7

    .line 44
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_MT_FDRM;->u:[F

    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_MT_FDRM;->b:[F

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;[FFIII[F)V

    return-void
.end method
