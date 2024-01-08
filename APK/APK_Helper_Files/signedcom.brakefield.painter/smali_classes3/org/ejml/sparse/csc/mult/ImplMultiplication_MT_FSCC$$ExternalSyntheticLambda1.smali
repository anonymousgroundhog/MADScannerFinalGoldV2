.class public final synthetic Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lpabeles/concurrency/IntRangeObjectConsumer;


# instance fields
.field public final synthetic f$0:Lorg/ejml/data/FMatrixSparseCSC;

.field public final synthetic f$1:Lorg/ejml/data/FMatrixSparseCSC;


# direct methods
.method public synthetic constructor <init>(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda1;->f$0:Lorg/ejml/data/FMatrixSparseCSC;

    iput-object p2, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda1;->f$1:Lorg/ejml/data/FMatrixSparseCSC;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;II)V
    .locals 2

    iget-object v0, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda1;->f$0:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v1, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda1;->f$1:Lorg/ejml/data/FMatrixSparseCSC;

    check-cast p1, Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;

    invoke-static {v0, v1, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC;->lambda$mult$0(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;II)V

    return-void
.end method
