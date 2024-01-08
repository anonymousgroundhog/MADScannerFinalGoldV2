.class public Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;
.super Ljava/lang/Object;
.source "BaseDecomposition_DDRB_to_DDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/DecompositionInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/DecompositionInterface<",
        "Lorg/ejml/data/DMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field protected Ablock:Lorg/ejml/data/DMatrixRBlock;

.field protected alg:Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/decomposition/DecompositionInterface<",
            "Lorg/ejml/data/DMatrixRBlock;",
            ">;"
        }
    .end annotation
.end field

.field protected blockLength:I

.field protected workspace:Lorg/ejml/data/DGrowArray;


# direct methods
.method public constructor <init>(Lorg/ejml/interfaces/decomposition/DecompositionInterface;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/DecompositionInterface<",
            "Lorg/ejml/data/DMatrixRBlock;",
            ">;I)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lorg/ejml/data/DGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/DGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;->workspace:Lorg/ejml/data/DGrowArray;

    .line 38
    new-instance v0, Lorg/ejml/data/DMatrixRBlock;

    invoke-direct {v0}, Lorg/ejml/data/DMatrixRBlock;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;->Ablock:Lorg/ejml/data/DMatrixRBlock;

    .line 43
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;->alg:Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    .line 44
    iput p2, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;->blockLength:I

    return-void
.end method


# virtual methods
.method public convertBlockToRow(II[D)V
    .locals 2

    .line 69
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;->Ablock:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;->workspace:Lorg/ejml/data/DGrowArray;

    invoke-static {p1, p2, v0, p3, v1}, Lorg/ejml/dense/block/MatrixOps_DDRB;->convertBlockToRow(III[DLorg/ejml/data/DGrowArray;)V

    return-void
.end method

.method public decompose(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 5

    .line 49
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;->Ablock:Lorg/ejml/data/DMatrixRBlock;

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iput v1, v0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    .line 50
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;->Ablock:Lorg/ejml/data/DMatrixRBlock;

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iput v1, v0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    .line 51
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;->Ablock:Lorg/ejml/data/DMatrixRBlock;

    iget v1, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;->blockLength:I

    iput v1, v0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    .line 52
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;->Ablock:Lorg/ejml/data/DMatrixRBlock;

    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iput-object v1, v0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    .line 56
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;->Ablock:Lorg/ejml/data/DMatrixRBlock;

    iget v2, v2, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget-object v3, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;->workspace:Lorg/ejml/data/DGrowArray;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/ejml/dense/block/MatrixOps_DDRB;->convertRowToBlock(III[DLorg/ejml/data/DGrowArray;)V

    .line 58
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;->alg:Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;->Ablock:Lorg/ejml/data/DMatrixRBlock;

    invoke-interface {v0, v1}, Lorg/ejml/interfaces/decomposition/DecompositionInterface;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result v0

    .line 61
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;->alg:Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    invoke-interface {v1}, Lorg/ejml/interfaces/decomposition/DecompositionInterface;->inputModified()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v2, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;->Ablock:Lorg/ejml/data/DMatrixRBlock;

    iget v3, v3, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget-object p1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;->workspace:Lorg/ejml/data/DGrowArray;

    invoke-static {v1, v2, v3, p1, v4}, Lorg/ejml/dense/block/MatrixOps_DDRB;->convertBlockToRow(III[DLorg/ejml/data/DGrowArray;)V

    :cond_0
    return v0
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 33
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public inputModified()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;->alg:Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/DecompositionInterface;->inputModified()Z

    move-result v0

    return v0
.end method
