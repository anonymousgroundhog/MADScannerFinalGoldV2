.class public final synthetic Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lorg/ejml/data/FSubmatrixD1;

.field public final synthetic f$10:[F

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/ejml/data/FSubmatrixD1;

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:[F

.field public final synthetic f$7:[F

.field public final synthetic f$8:F

.field public final synthetic f$9:F


# direct methods
.method public synthetic constructor <init>(ILorg/ejml/data/FSubmatrixD1;ILorg/ejml/data/FSubmatrixD1;II[F[FFF[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda2;->f$0:I

    iput-object p2, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda2;->f$1:Lorg/ejml/data/FSubmatrixD1;

    iput p3, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda2;->f$3:Lorg/ejml/data/FSubmatrixD1;

    iput p5, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda2;->f$4:I

    iput p6, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda2;->f$5:I

    iput-object p7, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda2;->f$6:[F

    iput-object p8, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda2;->f$7:[F

    iput p9, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda2;->f$8:F

    iput p10, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda2;->f$9:F

    iput-object p11, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda2;->f$10:[F

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 12

    iget v0, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda2;->f$0:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda2;->f$1:Lorg/ejml/data/FSubmatrixD1;

    iget v2, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda2;->f$2:I

    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda2;->f$3:Lorg/ejml/data/FSubmatrixD1;

    iget v4, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda2;->f$4:I

    iget v5, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda2;->f$5:I

    iget-object v6, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda2;->f$6:[F

    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda2;->f$7:[F

    iget v8, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda2;->f$8:F

    iget v9, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda2;->f$9:F

    iget-object v10, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda2;->f$10:[F

    move v11, p1

    invoke-static/range {v0 .. v11}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;->lambda$computeZ$3(ILorg/ejml/data/FSubmatrixD1;ILorg/ejml/data/FSubmatrixD1;II[F[FFF[FI)V

    return-void
.end method
