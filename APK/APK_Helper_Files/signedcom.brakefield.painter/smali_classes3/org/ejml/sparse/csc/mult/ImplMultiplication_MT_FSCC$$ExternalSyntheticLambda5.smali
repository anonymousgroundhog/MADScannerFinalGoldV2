.class public final synthetic Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lorg/ejml/data/FMatrixSparseCSC;

.field public final synthetic f$1:Lorg/ejml/data/FMatrixRMaj;

.field public final synthetic f$2:Lorg/ejml/data/FMatrixRMaj;


# direct methods
.method public synthetic constructor <init>(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda5;->f$0:Lorg/ejml/data/FMatrixSparseCSC;

    iput-object p2, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda5;->f$1:Lorg/ejml/data/FMatrixRMaj;

    iput-object p3, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda5;->f$2:Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 3

    iget-object v0, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda5;->f$0:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v1, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda5;->f$1:Lorg/ejml/data/FMatrixRMaj;

    iget-object v2, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda5;->f$2:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v0, v1, v2, p1}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC;->lambda$multTransAB$5(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;I)V

    return-void
.end method
