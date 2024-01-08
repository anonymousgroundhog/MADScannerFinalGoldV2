.class public final synthetic Lorg/ejml/dense/block/TriangularSolver_MT_DDRB$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lorg/ejml/data/DSubmatrixD1;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:[D

.field public final synthetic f$4:[D

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lorg/ejml/data/DSubmatrixD1;II[D[DI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB$$ExternalSyntheticLambda1;->f$0:Lorg/ejml/data/DSubmatrixD1;

    iput p2, p0, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB$$ExternalSyntheticLambda1;->f$3:[D

    iput-object p5, p0, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB$$ExternalSyntheticLambda1;->f$4:[D

    iput p6, p0, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB$$ExternalSyntheticLambda1;->f$5:I

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 7

    iget-object v0, p0, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB$$ExternalSyntheticLambda1;->f$0:Lorg/ejml/data/DSubmatrixD1;

    iget v1, p0, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB$$ExternalSyntheticLambda1;->f$3:[D

    iget-object v4, p0, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB$$ExternalSyntheticLambda1;->f$4:[D

    iget v5, p0, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB$$ExternalSyntheticLambda1;->f$5:I

    move v6, p1

    invoke-static/range {v0 .. v6}, Lorg/ejml/dense/block/TriangularSolver_MT_DDRB;->lambda$solveBlock$2(Lorg/ejml/data/DSubmatrixD1;II[D[DII)V

    return-void
.end method
