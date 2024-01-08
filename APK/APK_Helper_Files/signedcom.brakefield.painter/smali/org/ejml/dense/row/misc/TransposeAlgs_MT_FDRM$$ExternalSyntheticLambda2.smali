.class public final synthetic Lorg/ejml/dense/row/misc/TransposeAlgs_MT_FDRM$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lorg/ejml/data/FMatrix1Row;


# direct methods
.method public synthetic constructor <init>(Lorg/ejml/data/FMatrix1Row;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/dense/row/misc/TransposeAlgs_MT_FDRM$$ExternalSyntheticLambda2;->f$0:Lorg/ejml/data/FMatrix1Row;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object v0, p0, Lorg/ejml/dense/row/misc/TransposeAlgs_MT_FDRM$$ExternalSyntheticLambda2;->f$0:Lorg/ejml/data/FMatrix1Row;

    invoke-static {v0, p1}, Lorg/ejml/dense/row/misc/TransposeAlgs_MT_FDRM;->lambda$square$0(Lorg/ejml/data/FMatrix1Row;I)V

    return-void
.end method
