.class public final synthetic Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lpabeles/concurrency/IntRangeObjectConsumer;


# instance fields
.field public final synthetic f$0:Lorg/ejml/data/DMatrixRMaj;

.field public final synthetic f$1:Lorg/ejml/data/DMatrixSparseCSC;

.field public final synthetic f$2:Lorg/ejml/data/DMatrixRMaj;


# direct methods
.method public synthetic constructor <init>(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda4;->f$0:Lorg/ejml/data/DMatrixRMaj;

    iput-object p2, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda4;->f$1:Lorg/ejml/data/DMatrixSparseCSC;

    iput-object p3, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda4;->f$2:Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;II)V
    .locals 6

    iget-object v0, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda4;->f$0:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda4;->f$1:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v2, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda4;->f$2:Lorg/ejml/data/DMatrixRMaj;

    move-object v3, p1

    check-cast v3, Lorg/ejml/data/DGrowArray;

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC;->lambda$multAddTransA$3(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DGrowArray;II)V

    return-void
.end method
