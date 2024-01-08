.class public final synthetic Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lorg/ejml/data/DMatrix1Row;

.field public final synthetic f$1:Lorg/ejml/data/DMatrix1Row;

.field public final synthetic f$2:Lorg/ejml/data/DMatrix1Row;

.field public final synthetic f$3:D


# direct methods
.method public synthetic constructor <init>(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda21;->f$0:Lorg/ejml/data/DMatrix1Row;

    iput-object p2, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda21;->f$1:Lorg/ejml/data/DMatrix1Row;

    iput-object p3, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda21;->f$2:Lorg/ejml/data/DMatrix1Row;

    iput-wide p4, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda21;->f$3:D

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 6

    iget-object v0, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda21;->f$0:Lorg/ejml/data/DMatrix1Row;

    iget-object v1, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda21;->f$1:Lorg/ejml/data/DMatrix1Row;

    iget-object v2, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda21;->f$2:Lorg/ejml/data/DMatrix1Row;

    iget-wide v3, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda21;->f$3:D

    move v5, p1

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM;->lambda$multAdd_small$19(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;DI)V

    return-void
.end method
