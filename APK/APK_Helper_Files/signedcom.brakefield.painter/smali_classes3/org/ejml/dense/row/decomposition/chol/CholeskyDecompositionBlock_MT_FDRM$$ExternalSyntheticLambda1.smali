.class public final synthetic Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_FDRM$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:[F

.field public final synthetic f$3:I

.field public final synthetic f$4:Lorg/ejml/data/FMatrixRMaj;

.field public final synthetic f$5:[F

.field public final synthetic f$6:[F

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(II[FILorg/ejml/data/FMatrixRMaj;[F[FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_FDRM$$ExternalSyntheticLambda1;->f$0:I

    iput p2, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_FDRM$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_FDRM$$ExternalSyntheticLambda1;->f$2:[F

    iput p4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_FDRM$$ExternalSyntheticLambda1;->f$3:I

    iput-object p5, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_FDRM$$ExternalSyntheticLambda1;->f$4:Lorg/ejml/data/FMatrixRMaj;

    iput-object p6, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_FDRM$$ExternalSyntheticLambda1;->f$5:[F

    iput-object p7, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_FDRM$$ExternalSyntheticLambda1;->f$6:[F

    iput p8, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_FDRM$$ExternalSyntheticLambda1;->f$7:I

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 9

    iget v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_FDRM$$ExternalSyntheticLambda1;->f$0:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_FDRM$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_FDRM$$ExternalSyntheticLambda1;->f$2:[F

    iget v3, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_FDRM$$ExternalSyntheticLambda1;->f$3:I

    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_FDRM$$ExternalSyntheticLambda1;->f$4:Lorg/ejml/data/FMatrixRMaj;

    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_FDRM$$ExternalSyntheticLambda1;->f$5:[F

    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_FDRM$$ExternalSyntheticLambda1;->f$6:[F

    iget v7, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_FDRM$$ExternalSyntheticLambda1;->f$7:I

    move v8, p1

    invoke-static/range {v0 .. v8}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionBlock_MT_FDRM;->lambda$solveL_special$0(II[FILorg/ejml/data/FMatrixRMaj;[F[FII)V

    return-void
.end method
