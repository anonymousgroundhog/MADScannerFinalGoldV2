.class public final synthetic Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lorg/ejml/data/DSubmatrixD1;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:[D

.field public final synthetic f$5:D


# direct methods
.method public synthetic constructor <init>(ILorg/ejml/data/DSubmatrixD1;II[DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda2;->f$0:I

    iput-object p2, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda2;->f$1:Lorg/ejml/data/DSubmatrixD1;

    iput p3, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda2;->f$2:I

    iput p4, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda2;->f$3:I

    iput-object p5, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda2;->f$4:[D

    iput-wide p6, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda2;->f$5:D

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 8

    iget v0, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda2;->f$0:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda2;->f$1:Lorg/ejml/data/DSubmatrixD1;

    iget v2, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda2;->f$2:I

    iget v3, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda2;->f$3:I

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda2;->f$4:[D

    iget-wide v5, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda2;->f$5:D

    move v7, p1

    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB;->lambda$divideElementsCol$1(ILorg/ejml/data/DSubmatrixD1;II[DDI)V

    return-void
.end method
