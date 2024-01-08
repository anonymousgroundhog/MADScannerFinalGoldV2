.class public final synthetic Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lpabeles/concurrency/IntRangeObjectConsumer;


# instance fields
.field public final synthetic f$0:Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;

.field public final synthetic f$1:Lorg/ejml/data/DMatrixRMaj;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/ejml/data/DMatrixRMaj;


# direct methods
.method public synthetic constructor <init>(Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;Lorg/ejml/data/DMatrixRMaj;ILorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$$ExternalSyntheticLambda0;->f$0:Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;

    iput-object p2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$$ExternalSyntheticLambda0;->f$1:Lorg/ejml/data/DMatrixRMaj;

    iput p3, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$$ExternalSyntheticLambda0;->f$3:Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;II)V
    .locals 7

    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$$ExternalSyntheticLambda0;->f$0:Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;

    iget-object v1, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$$ExternalSyntheticLambda0;->f$1:Lorg/ejml/data/DMatrixRMaj;

    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$$ExternalSyntheticLambda0;->f$3:Lorg/ejml/data/DMatrixRMaj;

    move-object v4, p1

    check-cast v4, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$Work;

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;->lambda$solve$1$org-ejml-dense-row-linsol-qr-LinearSolverQrHouseCol_MT_DDRM(Lorg/ejml/data/DMatrixRMaj;ILorg/ejml/data/DMatrixRMaj;Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$Work;II)V

    return-void
.end method
