.class public final synthetic Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_FSCC$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lpabeles/concurrency/IntRangeObjectConsumer;


# instance fields
.field public final synthetic f$0:Lorg/ejml/data/FMatrixSparseCSC;

.field public final synthetic f$1:F

.field public final synthetic f$2:Lorg/ejml/data/FMatrixSparseCSC;

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Lorg/ejml/data/FMatrixSparseCSC;FLorg/ejml/data/FMatrixSparseCSC;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_FSCC$$ExternalSyntheticLambda0;->f$0:Lorg/ejml/data/FMatrixSparseCSC;

    iput p2, p0, Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_FSCC$$ExternalSyntheticLambda0;->f$1:F

    iput-object p3, p0, Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_FSCC$$ExternalSyntheticLambda0;->f$2:Lorg/ejml/data/FMatrixSparseCSC;

    iput p4, p0, Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_FSCC$$ExternalSyntheticLambda0;->f$3:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;II)V
    .locals 7

    iget-object v0, p0, Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_FSCC$$ExternalSyntheticLambda0;->f$0:Lorg/ejml/data/FMatrixSparseCSC;

    iget v1, p0, Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_FSCC$$ExternalSyntheticLambda0;->f$1:F

    iget-object v2, p0, Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_FSCC$$ExternalSyntheticLambda0;->f$2:Lorg/ejml/data/FMatrixSparseCSC;

    iget v3, p0, Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_FSCC$$ExternalSyntheticLambda0;->f$3:F

    move-object v4, p1

    check-cast v4, Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_FSCC;->lambda$add$0(Lorg/ejml/data/FMatrixSparseCSC;FLorg/ejml/data/FMatrixSparseCSC;FLorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;II)V

    return-void
.end method
