.class public final synthetic Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:[D

.field public final synthetic f$1:Lorg/ejml/data/DMatrixRMaj;

.field public final synthetic f$2:I

.field public final synthetic f$3:[D


# direct methods
.method public synthetic constructor <init>([DLorg/ejml/data/DMatrixRMaj;I[D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda2;->f$0:[D

    iput-object p2, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda2;->f$1:Lorg/ejml/data/DMatrixRMaj;

    iput p3, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda2;->f$3:[D

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 4

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda2;->f$0:[D

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda2;->f$1:Lorg/ejml/data/DMatrixRMaj;

    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda2;->f$2:I

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda2;->f$3:[D

    invoke-static {v0, v1, v2, v3, p1}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM;->lambda$rank1UpdateMultR$0([DLorg/ejml/data/DMatrixRMaj;I[DI)V

    return-void
.end method
