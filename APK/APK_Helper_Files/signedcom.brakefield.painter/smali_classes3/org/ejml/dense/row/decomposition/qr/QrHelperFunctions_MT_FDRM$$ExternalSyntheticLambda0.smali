.class public final synthetic Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:[F

.field public final synthetic f$1:Lorg/ejml/data/FMatrixRMaj;

.field public final synthetic f$2:I

.field public final synthetic f$3:[F


# direct methods
.method public synthetic constructor <init>([FLorg/ejml/data/FMatrixRMaj;I[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda0;->f$0:[F

    iput-object p2, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda0;->f$1:Lorg/ejml/data/FMatrixRMaj;

    iput p3, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda0;->f$3:[F

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 4

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda0;->f$0:[F

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda0;->f$1:Lorg/ejml/data/FMatrixRMaj;

    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda0;->f$3:[F

    invoke-static {v0, v1, v2, v3, p1}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM;->lambda$rank1UpdateMultR$0([FLorg/ejml/data/FMatrixRMaj;I[FI)V

    return-void
.end method
