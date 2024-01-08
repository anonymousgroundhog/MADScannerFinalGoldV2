.class public final synthetic Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRB$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lorg/ejml/data/DSubmatrixD1;

.field public final synthetic f$2:Lorg/ejml/data/DSubmatrixD1;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lorg/ejml/data/DSubmatrixD1;


# direct methods
.method public synthetic constructor <init>(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;ILorg/ejml/data/DSubmatrixD1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRB$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRB$$ExternalSyntheticLambda0;->f$1:Lorg/ejml/data/DSubmatrixD1;

    iput-object p3, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRB$$ExternalSyntheticLambda0;->f$2:Lorg/ejml/data/DSubmatrixD1;

    iput p4, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRB$$ExternalSyntheticLambda0;->f$3:I

    iput-object p5, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRB$$ExternalSyntheticLambda0;->f$4:Lorg/ejml/data/DSubmatrixD1;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 6

    iget v0, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRB$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRB$$ExternalSyntheticLambda0;->f$1:Lorg/ejml/data/DSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRB$$ExternalSyntheticLambda0;->f$2:Lorg/ejml/data/DSubmatrixD1;

    iget v3, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRB$$ExternalSyntheticLambda0;->f$3:I

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRB$$ExternalSyntheticLambda0;->f$4:Lorg/ejml/data/DSubmatrixD1;

    move v5, p1

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRB;->lambda$multPlusTransA$0(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;ILorg/ejml/data/DSubmatrixD1;I)V

    return-void
.end method
