.class public final synthetic Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_DSCC$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lpabeles/concurrency/IntRangeObjectConsumer;


# instance fields
.field public final synthetic f$0:Lorg/ejml/data/DMatrixSparseCSC;

.field public final synthetic f$1:D

.field public final synthetic f$2:Lorg/ejml/data/DMatrixSparseCSC;

.field public final synthetic f$3:D


# direct methods
.method public synthetic constructor <init>(Lorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_DSCC$$ExternalSyntheticLambda0;->f$0:Lorg/ejml/data/DMatrixSparseCSC;

    iput-wide p2, p0, Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_DSCC$$ExternalSyntheticLambda0;->f$1:D

    iput-object p4, p0, Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_DSCC$$ExternalSyntheticLambda0;->f$2:Lorg/ejml/data/DMatrixSparseCSC;

    iput-wide p5, p0, Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_DSCC$$ExternalSyntheticLambda0;->f$3:D

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;II)V
    .locals 9

    iget-object v0, p0, Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_DSCC$$ExternalSyntheticLambda0;->f$0:Lorg/ejml/data/DMatrixSparseCSC;

    iget-wide v1, p0, Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_DSCC$$ExternalSyntheticLambda0;->f$1:D

    iget-object v3, p0, Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_DSCC$$ExternalSyntheticLambda0;->f$2:Lorg/ejml/data/DMatrixSparseCSC;

    iget-wide v4, p0, Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_DSCC$$ExternalSyntheticLambda0;->f$3:D

    move-object v6, p1

    check-cast v6, Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;

    move v7, p2

    move v8, p3

    invoke-static/range {v0 .. v8}, Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_DSCC;->lambda$add$0(Lorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;II)V

    return-void
.end method
