.class public Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_MT_FDRM;
.super Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;
.source "WatchedDoubleStepQREigen_MT_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_FDRM;-><init>()V

    return-void
.end method


# virtual methods
.method protected rank1UpdateMultL(Lorg/ejml/data/FMatrixRMaj;FIII)V
    .locals 7

    .line 32
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_MT_FDRM;->u:Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM;->rank1UpdateMultL(Lorg/ejml/data/FMatrixRMaj;[FFIII)V

    return-void
.end method

.method protected rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;FIII)V
    .locals 8

    .line 37
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_MT_FDRM;->u:Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_MT_FDRM;->_temp:Lorg/ejml/data/FMatrixRMaj;

    iget-object v7, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v7}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM;->rank1UpdateMultR(Lorg/ejml/data/FMatrixRMaj;[FFIII[F)V

    return-void
.end method
