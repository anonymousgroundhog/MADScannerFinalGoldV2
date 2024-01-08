.class public Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_MT_DDRM;
.super Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;
.source "WatchedDoubleStepQREigen_MT_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_DDRM;-><init>()V

    return-void
.end method


# virtual methods
.method protected rank1UpdateMultL(Lorg/ejml/data/DMatrixRMaj;DIII)V
    .locals 8

    .line 30
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_MT_DDRM;->u:Lorg/ejml/data/DMatrixRMaj;

    iget-object v2, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    move-object v1, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v1 .. v7}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM;->rank1UpdateMultL(Lorg/ejml/data/DMatrixRMaj;[DDIII)V

    return-void
.end method

.method protected rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;DIII)V
    .locals 9

    .line 35
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_MT_DDRM;->u:Lorg/ejml/data/DMatrixRMaj;

    iget-object v2, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/watched/WatchedDoubleStepQREigen_MT_DDRM;->_temp:Lorg/ejml/data/DMatrixRMaj;

    iget-object v8, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    move-object v1, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v1 .. v8}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM;->rank1UpdateMultR(Lorg/ejml/data/DMatrixRMaj;[DDIII[D)V

    return-void
.end method
