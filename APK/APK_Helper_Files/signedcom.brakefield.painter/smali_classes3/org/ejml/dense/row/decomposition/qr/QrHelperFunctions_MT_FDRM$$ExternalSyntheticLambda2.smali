.class public final synthetic Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lorg/ejml/data/FMatrixRMaj;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:[F

.field public final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Lorg/ejml/data/FMatrixRMaj;II[FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda2;->f$0:Lorg/ejml/data/FMatrixRMaj;

    iput p2, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda2;->f$3:[F

    iput p5, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda2;->f$4:F

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 6

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda2;->f$0:Lorg/ejml/data/FMatrixRMaj;

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda2;->f$1:I

    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda2;->f$2:I

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda2;->f$3:[F

    iget v4, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM$$ExternalSyntheticLambda2;->f$4:F

    move v5, p1

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_FDRM;->lambda$rank1UpdateMultL$3(Lorg/ejml/data/FMatrixRMaj;II[FFI)V

    return-void
.end method
