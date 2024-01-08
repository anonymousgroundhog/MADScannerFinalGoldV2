.class Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$Work;
.super Ljava/lang/Object;
.source "LinearSolverQrHouseCol_MT_DDRM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Work"
.end annotation


# instance fields
.field public final a:Lorg/ejml/data/DMatrixRMaj;

.field public final tmp:Lorg/ejml/data/DGrowArray;

.field public final u:Lorg/ejml/data/DMatrixRMaj;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$Work;->a:Lorg/ejml/data/DMatrixRMaj;

    .line 99
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$Work;->u:Lorg/ejml/data/DMatrixRMaj;

    .line 100
    new-instance v0, Lorg/ejml/data/DGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/DGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$Work;->tmp:Lorg/ejml/data/DGrowArray;

    return-void
.end method

.method synthetic constructor <init>(Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$1;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/qr/LinearSolverQrHouseCol_MT_DDRM$Work;-><init>()V

    return-void
.end method
