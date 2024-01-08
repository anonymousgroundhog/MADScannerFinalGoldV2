.class public final synthetic Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lorg/ejml/data/DSubmatrixD1;

.field public final synthetic f$2:Lorg/ejml/data/DSubmatrixD1;

.field public final synthetic f$3:[D

.field public final synthetic f$4:D

.field public final synthetic f$5:I

.field public final synthetic f$6:[D


# direct methods
.method public synthetic constructor <init>(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;[DDI[D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda4;->f$0:I

    iput-object p2, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda4;->f$1:Lorg/ejml/data/DSubmatrixD1;

    iput-object p3, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda4;->f$2:Lorg/ejml/data/DSubmatrixD1;

    iput-object p4, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda4;->f$3:[D

    iput-wide p5, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda4;->f$4:D

    iput p7, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda4;->f$5:I

    iput-object p8, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda4;->f$6:[D

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 9

    iget v0, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda4;->f$0:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda4;->f$1:Lorg/ejml/data/DSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda4;->f$2:Lorg/ejml/data/DSubmatrixD1;

    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda4;->f$3:[D

    iget-wide v4, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda4;->f$4:D

    iget v6, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda4;->f$5:I

    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda4;->f$6:[D

    move v8, p1

    invoke-static/range {v0 .. v8}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB;->lambda$initializeW$2(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;[DDI[DI)V

    return-void
.end method
