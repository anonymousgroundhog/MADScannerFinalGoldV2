.class public final synthetic Lorg/ejml/dense/row/misc/TransposeAlgs_MT_FDRM$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lpabeles/concurrency/IntRangeConsumer;


# instance fields
.field public final synthetic f$0:Lorg/ejml/data/FMatrix1Row;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/ejml/data/FMatrix1Row;


# direct methods
.method public synthetic constructor <init>(Lorg/ejml/data/FMatrix1Row;ILorg/ejml/data/FMatrix1Row;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/dense/row/misc/TransposeAlgs_MT_FDRM$$ExternalSyntheticLambda0;->f$0:Lorg/ejml/data/FMatrix1Row;

    iput p2, p0, Lorg/ejml/dense/row/misc/TransposeAlgs_MT_FDRM$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lorg/ejml/dense/row/misc/TransposeAlgs_MT_FDRM$$ExternalSyntheticLambda0;->f$2:Lorg/ejml/data/FMatrix1Row;

    return-void
.end method


# virtual methods
.method public final accept(II)V
    .locals 3

    iget-object v0, p0, Lorg/ejml/dense/row/misc/TransposeAlgs_MT_FDRM$$ExternalSyntheticLambda0;->f$0:Lorg/ejml/data/FMatrix1Row;

    iget v1, p0, Lorg/ejml/dense/row/misc/TransposeAlgs_MT_FDRM$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lorg/ejml/dense/row/misc/TransposeAlgs_MT_FDRM$$ExternalSyntheticLambda0;->f$2:Lorg/ejml/data/FMatrix1Row;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/ejml/dense/row/misc/TransposeAlgs_MT_FDRM;->lambda$block$1(Lorg/ejml/data/FMatrix1Row;ILorg/ejml/data/FMatrix1Row;II)V

    return-void
.end method
