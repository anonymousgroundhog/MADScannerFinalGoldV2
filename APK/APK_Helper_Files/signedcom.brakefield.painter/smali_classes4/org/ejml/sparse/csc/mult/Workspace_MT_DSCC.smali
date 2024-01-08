.class public Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;
.super Ljava/lang/Object;
.source "Workspace_MT_DSCC.java"


# instance fields
.field public final gw:Lorg/ejml/data/IGrowArray;

.field public final gx:Lorg/ejml/data/DGrowArray;

.field public final mat:Lorg/ejml/data/DMatrixSparseCSC;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/IGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    .line 32
    new-instance v0, Lorg/ejml/data/DGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/DGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;->gx:Lorg/ejml/data/DGrowArray;

    .line 33
    new-instance v0, Lorg/ejml/data/DMatrixSparseCSC;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;->mat:Lorg/ejml/data/DMatrixSparseCSC;

    return-void
.end method
