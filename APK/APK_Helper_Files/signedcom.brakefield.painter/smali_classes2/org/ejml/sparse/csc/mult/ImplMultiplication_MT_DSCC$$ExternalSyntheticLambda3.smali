.class public final synthetic Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lpabeles/concurrency/IntRangeObjectConsumer;


# instance fields
.field public final synthetic f$0:Lorg/ejml/data/DMatrixSparseCSC;

.field public final synthetic f$1:Lorg/ejml/data/DMatrixSparseCSC;


# direct methods
.method public synthetic constructor <init>(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda3;->f$0:Lorg/ejml/data/DMatrixSparseCSC;

    iput-object p2, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda3;->f$1:Lorg/ejml/data/DMatrixSparseCSC;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;II)V
    .locals 2

    iget-object v0, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda3;->f$0:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v1, p0, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC$$ExternalSyntheticLambda3;->f$1:Lorg/ejml/data/DMatrixSparseCSC;

    check-cast p1, Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;

    invoke-static {v0, v1, p1, p2, p3}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC;->lambda$mult$0(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;II)V

    return-void
.end method
