.class public final synthetic Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lorg/ejml/data/DMatrixSparseCSC;

.field public final synthetic f$1:Lorg/ejml/data/DMatrixRMaj;

.field public final synthetic f$2:Lorg/ejml/data/DMatrixRMaj;


# direct methods
.method public synthetic constructor <init>(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda1;->f$0:Lorg/ejml/data/DMatrixSparseCSC;

    iput-object p2, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda1;->f$1:Lorg/ejml/data/DMatrixRMaj;

    iput-object p3, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda1;->f$2:Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 3

    iget-object v0, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda1;->f$0:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v1, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda1;->f$1:Lorg/ejml/data/DMatrixRMaj;

    iget-object v2, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda1;->f$2:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v0, v1, v2, p1}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC;->lambda$multTransAB$5(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;I)V

    return-void
.end method
