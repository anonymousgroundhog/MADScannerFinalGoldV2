.class public final synthetic Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lorg/ejml/data/DMatrixRMaj;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:[D

.field public final synthetic f$4:D


# direct methods
.method public synthetic constructor <init>(Lorg/ejml/data/DMatrixRMaj;II[DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda0;->f$0:Lorg/ejml/data/DMatrixRMaj;

    iput p2, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda0;->f$3:[D

    iput-wide p5, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda0;->f$4:D

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 7

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda0;->f$0:Lorg/ejml/data/DMatrixRMaj;

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda0;->f$3:[D

    iget-wide v4, p0, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM$$ExternalSyntheticLambda0;->f$4:D

    move v6, p1

    invoke-static/range {v0 .. v6}, Lorg/ejml/dense/row/decomposition/qr/QrHelperFunctions_MT_DDRM;->lambda$rank1UpdateMultL$3(Lorg/ejml/data/DMatrixRMaj;II[DDI)V

    return-void
.end method
