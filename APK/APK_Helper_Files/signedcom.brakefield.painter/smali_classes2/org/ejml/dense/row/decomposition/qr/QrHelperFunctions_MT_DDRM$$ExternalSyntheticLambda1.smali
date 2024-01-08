.class public final synthetic Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:[D

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/ejml/data/DMatrixRMaj;

.field public final synthetic f$3:I

.field public final synthetic f$4:[D


# direct methods
.method public synthetic constructor <init>([DILorg/ejml/data/DMatrixRMaj;I[D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda1;->f$0:[D

    iput p2, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda1;->f$2:Lorg/ejml/data/DMatrixRMaj;

    iput p4, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda1;->f$3:I

    iput-object p5, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda1;->f$4:[D

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 6

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda1;->f$0:[D

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda1;->f$2:Lorg/ejml/data/DMatrixRMaj;

    iget v3, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda1;->f$3:I

    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda1;->f$4:[D

    move v5, p1

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM;->lambda$rank1UpdateMultR$2([DILorg/ejml/data/DMatrixRMaj;I[DI)V

    return-void
.end method
