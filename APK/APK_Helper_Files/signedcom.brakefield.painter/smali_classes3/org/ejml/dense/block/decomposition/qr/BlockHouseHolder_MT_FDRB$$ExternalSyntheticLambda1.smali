.class public final synthetic Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lorg/ejml/data/FSubmatrixD1;

.field public final synthetic f$2:Lorg/ejml/data/FSubmatrixD1;

.field public final synthetic f$3:[F

.field public final synthetic f$4:F

.field public final synthetic f$5:I

.field public final synthetic f$6:[F


# direct methods
.method public synthetic constructor <init>(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;[FFI[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda1;->f$1:Lorg/ejml/data/FSubmatrixD1;

    iput-object p3, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda1;->f$2:Lorg/ejml/data/FSubmatrixD1;

    iput-object p4, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda1;->f$3:[F

    iput p5, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda1;->f$4:F

    iput p6, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda1;->f$5:I

    iput-object p7, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda1;->f$6:[F

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 8

    iget v0, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda1;->f$0:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda1;->f$1:Lorg/ejml/data/FSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda1;->f$2:Lorg/ejml/data/FSubmatrixD1;

    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda1;->f$3:[F

    iget v4, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda1;->f$4:F

    iget v5, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda1;->f$5:I

    iget-object v6, p0, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB$$ExternalSyntheticLambda1;->f$6:[F

    move v7, p1

    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;->lambda$initializeW$2(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;[FFI[FI)V

    return-void
.end method
