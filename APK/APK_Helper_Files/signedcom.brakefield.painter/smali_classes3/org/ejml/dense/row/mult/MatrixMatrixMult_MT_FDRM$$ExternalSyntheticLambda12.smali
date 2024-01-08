.class public final synthetic Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lorg/ejml/data/FMatrix1Row;

.field public final synthetic f$1:Lorg/ejml/data/FMatrix1Row;

.field public final synthetic f$2:Lorg/ejml/data/FMatrix1Row;

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda12;->f$0:Lorg/ejml/data/FMatrix1Row;

    iput-object p2, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda12;->f$1:Lorg/ejml/data/FMatrix1Row;

    iput-object p3, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda12;->f$2:Lorg/ejml/data/FMatrix1Row;

    iput p4, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda12;->f$3:F

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 4

    iget-object v0, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda12;->f$0:Lorg/ejml/data/FMatrix1Row;

    iget-object v1, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda12;->f$1:Lorg/ejml/data/FMatrix1Row;

    iget-object v2, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda12;->f$2:Lorg/ejml/data/FMatrix1Row;

    iget v3, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM$$ExternalSyntheticLambda12;->f$3:F

    invoke-static {v0, v1, v2, v3, p1}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_FDRM;->lambda$mult_small$13(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;FI)V

    return-void
.end method
