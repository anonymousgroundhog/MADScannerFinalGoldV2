.class public final synthetic Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lorg/ejml/data/DMatrix1Row;

.field public final synthetic f$1:D

.field public final synthetic f$2:Lorg/ejml/data/DMatrix1Row;

.field public final synthetic f$3:Lorg/ejml/data/DMatrix1Row;


# direct methods
.method public synthetic constructor <init>(Lorg/ejml/data/DMatrix1Row;DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda8;->f$0:Lorg/ejml/data/DMatrix1Row;

    iput-wide p2, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda8;->f$1:D

    iput-object p4, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda8;->f$2:Lorg/ejml/data/DMatrix1Row;

    iput-object p5, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda8;->f$3:Lorg/ejml/data/DMatrix1Row;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 6

    iget-object v0, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda8;->f$0:Lorg/ejml/data/DMatrix1Row;

    iget-wide v1, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda8;->f$1:D

    iget-object v3, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda8;->f$2:Lorg/ejml/data/DMatrix1Row;

    iget-object v4, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda8;->f$3:Lorg/ejml/data/DMatrix1Row;

    move v5, p1

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM;->lambda$multTransA_reorder$14(Lorg/ejml/data/DMatrix1Row;DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;I)V

    return-void
.end method
