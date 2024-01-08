.class public final synthetic Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lorg/ejml/data/DSubmatrixD1;

.field public final synthetic f$10:[D

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/ejml/data/DSubmatrixD1;

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:[D

.field public final synthetic f$7:[D

.field public final synthetic f$8:D

.field public final synthetic f$9:D


# direct methods
.method public synthetic constructor <init>(ILorg/ejml/data/DSubmatrixD1;ILorg/ejml/data/DSubmatrixD1;II[D[DDD[D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda1;->f$1:Lorg/ejml/data/DSubmatrixD1;

    iput p3, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda1;->f$3:Lorg/ejml/data/DSubmatrixD1;

    iput p5, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda1;->f$4:I

    iput p6, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda1;->f$5:I

    iput-object p7, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda1;->f$6:[D

    iput-object p8, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda1;->f$7:[D

    iput-wide p9, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda1;->f$8:D

    iput-wide p11, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda1;->f$9:D

    iput-object p13, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda1;->f$10:[D

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 14

    iget v0, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda1;->f$0:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda1;->f$1:Lorg/ejml/data/DSubmatrixD1;

    iget v2, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda1;->f$3:Lorg/ejml/data/DSubmatrixD1;

    iget v4, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda1;->f$4:I

    iget v5, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda1;->f$5:I

    iget-object v6, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda1;->f$6:[D

    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda1;->f$7:[D

    iget-wide v8, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda1;->f$8:D

    iget-wide v10, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda1;->f$9:D

    iget-object v12, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda1;->f$10:[D

    move v13, p1

    invoke-static/range {v0 .. v13}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB;->lambda$computeZ$3(ILorg/ejml/data/DSubmatrixD1;ILorg/ejml/data/DSubmatrixD1;II[D[DDD[DI)V

    return-void
.end method
