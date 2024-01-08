.class public final synthetic Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;

.field public final synthetic f$1:I

.field public final synthetic f$2:[F


# direct methods
.method public synthetic constructor <init>(Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;I[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM$$ExternalSyntheticLambda0;->f$0:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;

    iput p2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM$$ExternalSyntheticLambda0;->f$2:[F

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 3

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM$$ExternalSyntheticLambda0;->f$0:Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;

    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM$$ExternalSyntheticLambda0;->f$2:[F

    invoke-virtual {v0, v1, v2, p1}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderColumn_MT_FDRM;->lambda$updateA$0$org-ejml-dense-row-decomposition-qr-QRDecompositionHouseholderColumn_MT_FDRM(I[FI)V

    return-void
.end method
