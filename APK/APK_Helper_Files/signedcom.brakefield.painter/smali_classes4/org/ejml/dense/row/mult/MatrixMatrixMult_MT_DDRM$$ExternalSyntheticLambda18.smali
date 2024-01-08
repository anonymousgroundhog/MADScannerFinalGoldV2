.class public final synthetic Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lorg/ejml/data/DMatrix1Row;

.field public final synthetic f$1:Lorg/ejml/data/DMatrix1Row;

.field public final synthetic f$2:Lorg/ejml/data/DMatrix1Row;

.field public final synthetic f$3:D

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;DI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda18;->f$0:Lorg/ejml/data/DMatrix1Row;

    iput-object p2, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda18;->f$1:Lorg/ejml/data/DMatrix1Row;

    iput-object p3, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda18;->f$2:Lorg/ejml/data/DMatrix1Row;

    iput-wide p4, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda18;->f$3:D

    iput p6, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda18;->f$4:I

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 7

    iget-object v0, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda18;->f$0:Lorg/ejml/data/DMatrix1Row;

    iget-object v1, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda18;->f$1:Lorg/ejml/data/DMatrix1Row;

    iget-object v2, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda18;->f$2:Lorg/ejml/data/DMatrix1Row;

    iget-wide v3, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda18;->f$3:D

    iget v5, p0, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM$$ExternalSyntheticLambda18;->f$4:I

    move v6, p1

    invoke-static/range {v0 .. v6}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_MT_DDRM;->lambda$mult_reorder$12(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;DII)V

    return-void
.end method
