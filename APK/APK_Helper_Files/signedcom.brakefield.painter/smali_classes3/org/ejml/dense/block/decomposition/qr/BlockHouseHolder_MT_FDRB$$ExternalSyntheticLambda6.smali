.class public final synthetic Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lorg/ejml/data/FSubmatrixD1;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:F

.field public final synthetic f$5:[F


# direct methods
.method public synthetic constructor <init>(ILorg/ejml/data/FSubmatrixD1;IIF[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda6;->f$0:I

    iput-object p2, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda6;->f$1:Lorg/ejml/data/FSubmatrixD1;

    iput p3, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda6;->f$2:I

    iput p4, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda6;->f$3:I

    iput p5, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda6;->f$4:F

    iput-object p6, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda6;->f$5:[F

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 7

    iget v0, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda6;->f$0:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda6;->f$1:Lorg/ejml/data/FSubmatrixD1;

    iget v2, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda6;->f$2:I

    iget v3, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda6;->f$3:I

    iget v4, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda6;->f$4:F

    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda6;->f$5:[F

    move v6, p1

    invoke-static/range {v0 .. v6}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;->lambda$rank1UpdateMultR_Col$0(ILorg/ejml/data/FSubmatrixD1;IIF[FI)V

    return-void
.end method
