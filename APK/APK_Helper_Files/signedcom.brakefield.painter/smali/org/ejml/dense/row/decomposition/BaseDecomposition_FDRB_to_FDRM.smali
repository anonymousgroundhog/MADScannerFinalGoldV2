.class public Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;
.super Ljava/lang/Object;
.source "BaseDecomposition_FDRB_to_FDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/DecompositionInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/DecompositionInterface<",
        "Lorg/ejml/data/FMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field protected Ablock:Lorg/ejml/data/FMatrixRBlock;

.field protected alg:Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/decomposition/DecompositionInterface<",
            "Lorg/ejml/data/FMatrixRBlock;",
            ">;"
        }
    .end annotation
.end field

.field protected blockLength:I

.field protected workspace:Lorg/ejml/data/FGrowArray;


# direct methods
.method public constructor <init>(Lorg/ejml/interfaces/decomposition/DecompositionInterface;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/decomposition/DecompositionInterface<",
            "Lorg/ejml/data/FMatrixRBlock;",
            ">;I)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/ejml/data/FGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/FGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;->workspace:Lorg/ejml/data/FGrowArray;

    .line 40
    new-instance v0, Lorg/ejml/data/FMatrixRBlock;

    invoke-direct {v0}, Lorg/ejml/data/FMatrixRBlock;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;->Ablock:Lorg/ejml/data/FMatrixRBlock;

    .line 45
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;->alg:Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    .line 46
    iput p2, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;->blockLength:I

    return-void
.end method


# virtual methods
.method public convertBlockToRow(II[F)V
    .locals 2

    .line 71
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;->Ablock:Lorg/ejml/data/FMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;->workspace:Lorg/ejml/data/FGrowArray;

    invoke-static {p1, p2, v0, p3, v1}, Lorg/ejml/dense/block/MatrixOps_FDRB;->convertBlockToRow(III[FLorg/ejml/data/FGrowArray;)V

    return-void
.end method

.method public decompose(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 5

    .line 51
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;->Ablock:Lorg/ejml/data/FMatrixRBlock;

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iput v1, v0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    .line 52
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;->Ablock:Lorg/ejml/data/FMatrixRBlock;

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iput v1, v0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    .line 53
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;->Ablock:Lorg/ejml/data/FMatrixRBlock;

    iget v1, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;->blockLength:I

    iput v1, v0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    .line 54
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;->Ablock:Lorg/ejml/data/FMatrixRBlock;

    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iput-object v1, v0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    .line 58
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;->Ablock:Lorg/ejml/data/FMatrixRBlock;

    iget v2, v2, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget-object v3, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;->workspace:Lorg/ejml/data/FGrowArray;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/ejml/dense/block/MatrixOps_FDRB;->convertRowToBlock(III[FLorg/ejml/data/FGrowArray;)V

    .line 60
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;->alg:Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;->Ablock:Lorg/ejml/data/FMatrixRBlock;

    invoke-interface {v0, v1}, Lorg/ejml/interfaces/decomposition/DecompositionInterface;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result v0

    .line 63
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;->alg:Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    invoke-interface {v1}, Lorg/ejml/interfaces/decomposition/DecompositionInterface;->inputModified()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v2, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;->Ablock:Lorg/ejml/data/FMatrixRBlock;

    iget v3, v3, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget-object p1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;->workspace:Lorg/ejml/data/FGrowArray;

    invoke-static {v1, v2, v3, p1, v4}, Lorg/ejml/dense/block/MatrixOps_FDRB;->convertBlockToRow(III[FLorg/ejml/data/FGrowArray;)V

    :cond_0
    return v0
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 34
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public inputModified()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;->alg:Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/DecompositionInterface;->inputModified()Z

    move-result v0

    return v0
.end method
