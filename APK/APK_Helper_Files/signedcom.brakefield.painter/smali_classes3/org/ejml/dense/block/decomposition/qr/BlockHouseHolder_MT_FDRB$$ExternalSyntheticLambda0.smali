.class public final synthetic Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:[F

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/ejml/data/FSubmatrixD1;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>([FILorg/ejml/data/FSubmatrixD1;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda0;->f$0:[F

    iput p2, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda0;->f$2:Lorg/ejml/data/FSubmatrixD1;

    iput p4, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 6

    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda0;->f$0:[F

    iget v1, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda0;->f$2:Lorg/ejml/data/FSubmatrixD1;

    iget v3, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda0;->f$3:I

    iget v4, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda0;->f$4:I

    move v5, p1

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;->lambda$computeY_t_V$4([FILorg/ejml/data/FSubmatrixD1;III)V

    return-void
.end method
