.class public final synthetic Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lpabeles/concurrency/IntObjectConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lorg/ejml/data/FSubmatrixD1;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:[F

.field public final synthetic f$7:[F

.field public final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(ILorg/ejml/data/FSubmatrixD1;IIII[F[FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda6;->f$0:I

    iput-object p2, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda6;->f$1:Lorg/ejml/data/FSubmatrixD1;

    iput p3, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda6;->f$2:I

    iput p4, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda6;->f$3:I

    iput p5, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda6;->f$4:I

    iput p6, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda6;->f$5:I

    iput-object p7, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda6;->f$6:[F

    iput-object p8, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda6;->f$7:[F

    iput p9, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda6;->f$8:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;I)V
    .locals 11

    iget v0, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda6;->f$0:I

    iget-object v1, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda6;->f$1:Lorg/ejml/data/FSubmatrixD1;

    iget v2, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda6;->f$2:I

    iget v3, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda6;->f$3:I

    iget v4, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda6;->f$4:I

    iget v5, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda6;->f$5:I

    iget-object v6, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda6;->f$6:[F

    iget-object v7, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda6;->f$7:[F

    iget v8, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda6;->f$8:I

    move-object v9, p1

    check-cast v9, Lorg/ejml/data/FGrowArray;

    move v10, p2

    invoke-static/range {v0 .. v10}, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB;->lambda$invert$0(ILorg/ejml/data/FSubmatrixD1;IIII[F[FILorg/ejml/data/FGrowArray;I)V

    return-void
.end method
