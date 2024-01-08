.class public final synthetic Lorg/ejml/dense/block/MatrixMult_MT_DDRB$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lorg/ejml/data/DSubmatrixD1;

.field public final synthetic f$2:Lorg/ejml/data/DSubmatrixD1;

.field public final synthetic f$3:Lorg/ejml/data/DSubmatrixD1;


# direct methods
.method public synthetic constructor <init>(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/ejml/dense/block/MatrixMult_MT_DDRB$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lorg/ejml/dense/block/MatrixMult_MT_DDRB$$ExternalSyntheticLambda1;->f$1:Lorg/ejml/data/DSubmatrixD1;

    iput-object p3, p0, Lorg/ejml/dense/block/MatrixMult_MT_DDRB$$ExternalSyntheticLambda1;->f$2:Lorg/ejml/data/DSubmatrixD1;

    iput-object p4, p0, Lorg/ejml/dense/block/MatrixMult_MT_DDRB$$ExternalSyntheticLambda1;->f$3:Lorg/ejml/data/DSubmatrixD1;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 4

    iget v0, p0, Lorg/ejml/dense/block/MatrixMult_MT_DDRB$$ExternalSyntheticLambda1;->f$0:I

    iget-object v1, p0, Lorg/ejml/dense/block/MatrixMult_MT_DDRB$$ExternalSyntheticLambda1;->f$1:Lorg/ejml/data/DSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/MatrixMult_MT_DDRB$$ExternalSyntheticLambda1;->f$2:Lorg/ejml/data/DSubmatrixD1;

    iget-object v3, p0, Lorg/ejml/dense/block/MatrixMult_MT_DDRB$$ExternalSyntheticLambda1;->f$3:Lorg/ejml/data/DSubmatrixD1;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/ejml/dense/block/MatrixMult_MT_DDRB;->lambda$multMinus$2(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;I)V

    return-void
.end method
