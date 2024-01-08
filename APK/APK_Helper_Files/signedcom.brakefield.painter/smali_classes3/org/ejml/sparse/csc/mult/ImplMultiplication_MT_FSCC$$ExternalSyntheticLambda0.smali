.class public final synthetic Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lpabeles/concurrency/IntRangeObjectConsumer;


# instance fields
.field public final synthetic f$0:Lorg/ejml/data/FMatrixRMaj;

.field public final synthetic f$1:Lorg/ejml/data/FMatrixSparseCSC;

.field public final synthetic f$2:Lorg/ejml/data/FMatrixRMaj;


# direct methods
.method public synthetic constructor <init>(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda0;->f$0:Lorg/ejml/data/FMatrixRMaj;

    iput-object p2, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda0;->f$1:Lorg/ejml/data/FMatrixSparseCSC;

    iput-object p3, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda0;->f$2:Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;II)V
    .locals 6

    iget-object v0, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda0;->f$0:Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda0;->f$1:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v2, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC$$ExternalSyntheticLambda0;->f$2:Lorg/ejml/data/FMatrixRMaj;

    move-object v3, p1

    check-cast v3, Lorg/ejml/data/FGrowArray;

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC;->lambda$multAddTransA$3(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FGrowArray;II)V

    return-void
.end method
