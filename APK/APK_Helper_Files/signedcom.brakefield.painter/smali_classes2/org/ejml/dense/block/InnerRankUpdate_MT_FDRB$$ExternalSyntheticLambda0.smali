.class public final synthetic Lorg/ejml/dense/block/InnerRankUpdate_MT_FDRB$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lorg/ejml/data/FSubmatrixD1;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/ejml/data/FSubmatrixD1;


# direct methods
.method public synthetic constructor <init>(Lorg/ejml/data/FSubmatrixD1;IILorg/ejml/data/FSubmatrixD1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/dense/block/InnerRankUpdate_MT_FDRB$$ExternalSyntheticLambda0;->f$0:Lorg/ejml/data/FSubmatrixD1;

    iput p2, p0, Lorg/ejml/dense/block/InnerRankUpdate_MT_FDRB$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lorg/ejml/dense/block/InnerRankUpdate_MT_FDRB$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lorg/ejml/dense/block/InnerRankUpdate_MT_FDRB$$ExternalSyntheticLambda0;->f$3:Lorg/ejml/data/FSubmatrixD1;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 4

    iget-object v0, p0, Lorg/ejml/dense/block/InnerRankUpdate_MT_FDRB$$ExternalSyntheticLambda0;->f$0:Lorg/ejml/data/FSubmatrixD1;

    iget v1, p0, Lorg/ejml/dense/block/InnerRankUpdate_MT_FDRB$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lorg/ejml/dense/block/InnerRankUpdate_MT_FDRB$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lorg/ejml/dense/block/InnerRankUpdate_MT_FDRB$$ExternalSyntheticLambda0;->f$3:Lorg/ejml/data/FSubmatrixD1;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/ejml/dense/block/InnerRankUpdate_MT_FDRB;->lambda$symmRankNMinus_U$1(Lorg/ejml/data/FSubmatrixD1;IILorg/ejml/data/FSubmatrixD1;I)V

    return-void
.end method
