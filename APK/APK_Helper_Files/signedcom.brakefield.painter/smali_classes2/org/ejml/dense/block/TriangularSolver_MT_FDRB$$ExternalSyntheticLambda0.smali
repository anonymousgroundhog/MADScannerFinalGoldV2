.class public final synthetic Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lorg/ejml/data/FSubmatrixD1;

.field public final synthetic f$1:I

.field public final synthetic f$2:[F

.field public final synthetic f$3:[F

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lorg/ejml/data/FSubmatrixD1;I[F[FII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda0;->f$0:Lorg/ejml/data/FSubmatrixD1;

    iput p2, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda0;->f$2:[F

    iput-object p4, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda0;->f$3:[F

    iput p5, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda0;->f$4:I

    iput p6, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda0;->f$5:I

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 7

    iget-object v0, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda0;->f$0:Lorg/ejml/data/FSubmatrixD1;

    iget v1, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda0;->f$2:[F

    iget-object v3, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda0;->f$3:[F

    iget v4, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda0;->f$4:I

    iget v5, p0, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB$$ExternalSyntheticLambda0;->f$5:I

    move v6, p1

    invoke-static/range {v0 .. v6}, Lorg/ejml/dense/block/TriangularSolver_MT_FDRB;->lambda$solveBlock$1(Lorg/ejml/data/FSubmatrixD1;I[F[FIII)V

    return-void
.end method
