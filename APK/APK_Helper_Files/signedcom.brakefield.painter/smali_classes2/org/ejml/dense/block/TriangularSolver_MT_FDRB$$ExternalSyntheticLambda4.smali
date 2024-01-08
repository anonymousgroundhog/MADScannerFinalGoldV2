.class public final synthetic Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lorg/ejml/data/FSubmatrixD1;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:[F

.field public final synthetic f$4:[F

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lorg/ejml/data/FSubmatrixD1;II[F[FII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda4;->f$0:Lorg/ejml/data/FSubmatrixD1;

    iput p2, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda4;->f$1:I

    iput p3, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda4;->f$2:I

    iput-object p4, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda4;->f$3:[F

    iput-object p5, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda4;->f$4:[F

    iput p6, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda4;->f$5:I

    iput p7, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda4;->f$6:I

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 8

    iget-object v0, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda4;->f$0:Lorg/ejml/data/FSubmatrixD1;

    iget v1, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda4;->f$1:I

    iget v2, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda4;->f$2:I

    iget-object v3, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda4;->f$3:[F

    iget-object v4, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda4;->f$4:[F

    iget v5, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda4;->f$5:I

    iget v6, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda4;->f$6:I

    move v7, p1

    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB;->lambda$solveBlock$5(Lorg/ejml/data/FSubmatrixD1;II[F[FIII)V

    return-void
.end method
