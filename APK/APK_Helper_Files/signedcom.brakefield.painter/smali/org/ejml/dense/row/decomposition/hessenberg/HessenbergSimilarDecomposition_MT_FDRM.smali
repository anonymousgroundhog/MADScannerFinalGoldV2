.class public Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_MT_FDRM;
.super Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;
.source "HessenbergSimilarDecomposition_MT_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_FDRM;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected rank1UpdateMultL(Lorg/ejml/data/FMatrixRMaj;FIII)V
    .locals 6

    .line 41
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_MT_FDRM;->u:[F

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

    .line 46
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_MT_FDRM;->u:[F

    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/hessenberg/HessenbergSimilarDecomposition_MT_FDRM;->b:[F

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;[FFIII[F)V

    return-void
.end method
