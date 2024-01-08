.class public Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;
.super Ljava/lang/Object;
.source "Workspace_MT_FSCC.java"


# instance fields
.field public final gw:Lorg/ejml/data/IGrowArray;

.field public final gx:Lorg/ejml/data/FGrowArray;

.field public final mat:Lorg/ejml/data/FMatrixSparseCSC;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/IGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    .line 34
    new-instance v0, Lorg/ejml/data/FGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/FGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;->gx:Lorg/ejml/data/FGrowArray;

    .line 35
    new-instance v0, Lorg/ejml/data/FMatrixSparseCSC;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;->mat:Lorg/ejml/data/FMatrixSparseCSC;

    return-void
.end method
