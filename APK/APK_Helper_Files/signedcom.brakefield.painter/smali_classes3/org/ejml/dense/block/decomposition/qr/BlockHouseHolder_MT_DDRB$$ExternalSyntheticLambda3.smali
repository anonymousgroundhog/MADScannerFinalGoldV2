.class public final synthetic Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:[D

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/ejml/data/DSubmatrixD1;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>([DILorg/ejml/data/DSubmatrixD1;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda3;->f$0:[D

    iput p2, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda3;->f$2:Lorg/ejml/data/DSubmatrixD1;

    iput p4, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda3;->f$3:I

    iput p5, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda3;->f$4:I

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 6

    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda3;->f$0:[D

    iget v1, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda3;->f$1:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda3;->f$2:Lorg/ejml/data/DSubmatrixD1;

    iget v3, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda3;->f$3:I

    iget v4, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB$$ExternalSyntheticLambda3;->f$4:I

    move v5, p1

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_DDRB;->lambda$computeY_t_V$4([DILorg/ejml/data/DSubmatrixD1;III)V

    return-void
.end method
