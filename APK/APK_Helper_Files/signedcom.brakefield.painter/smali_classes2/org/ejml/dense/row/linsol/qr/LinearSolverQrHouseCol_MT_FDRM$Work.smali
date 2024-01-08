.class Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM$Work;
.super Ljava/lang/Object;
.source "LinearSolverQrHouseCol_MT_FDRM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Work"
.end annotation


# instance fields
.field public final a:Lorg/ejml/data/FMatrixRMaj;

.field public final tmp:Lorg/ejml/data/FGrowArray;

.field public final u:Lorg/ejml/data/FMatrixRMaj;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM$Work;->a:Lorg/ejml/data/FMatrixRMaj;

    .line 101
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM$Work;->u:Lorg/ejml/data/FMatrixRMaj;

    .line 102
    new-instance v0, Lorg/ejml/data/FGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/FGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM$Work;->tmp:Lorg/ejml/data/FGrowArray;

    return-void
.end method

.method synthetic constructor <init>(Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM$1;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_FDRM$Work;-><init>()V

    return-void
.end method
