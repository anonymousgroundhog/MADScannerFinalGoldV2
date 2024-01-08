.class public Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_DDRB_to_DDRM;
.super Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;
.source "TridiagonalDecomposition_DDRB_to_DDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;",
        "Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F64<",
        "Lorg/ejml/data/DMatrixRMaj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    sget v0, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH:I

    invoke-direct {p0, v0}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_DDRB_to_DDRM;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 44
    new-instance v0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;

    invoke-direct {v0}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;-><init>(Lorg/ejml/interfaces/decomposition/DecompositionInterface;I)V

    return-void
.end method


# virtual methods
.method public getDiagonal([D[D)V
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_DDRB_to_DDRM;->alg:Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    check-cast v0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;

    invoke-virtual {v0, p1, p2}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->getDiagonal([D[D)V

    return-void
.end method

.method public getQ(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;
    .locals 2

    if-nez p1, :cond_0

    .line 75
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_DDRB_to_DDRM;->Ablock:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_DDRB_to_DDRM;->Ablock:Lorg/ejml/data/DMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 78
    :cond_0
    new-instance v0, Lorg/ejml/data/DMatrixRBlock;

    invoke-direct {v0}, Lorg/ejml/data/DMatrixRBlock;-><init>()V

    .line 79
    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iput v1, v0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    .line 80
    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iput v1, v0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    .line 81
    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_DDRB_to_DDRM;->blockLength:I

    iput v1, v0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    .line 82
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iput-object v1, v0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    .line 84
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_DDRB_to_DDRM;->alg:Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    check-cast v1, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;

    invoke-virtual {v1, v0, p2}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->getQ(Lorg/ejml/data/DMatrixRBlock;Z)Lorg/ejml/data/DMatrixRBlock;

    .line 86
    iget p2, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    invoke-virtual {p0, p2, v0, v1}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_DDRB_to_DDRM;->convertBlockToRow(II[D)V

    return-object p1
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 35
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_DDRB_to_DDRM;->getQ(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getT(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 7

    .line 49
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_DDRB_to_DDRM;->Ablock:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-nez p1, :cond_0

    .line 52
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p1, v0, v0}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 54
    invoke-static {p1, v1, v2}, Lorg/ejml/dense/row/CommonOps_DDRM;->fill(Lorg/ejml/data/DMatrixD1;D)V

    .line 57
    :goto_0
    new-array v1, v0, [D

    .line 58
    new-array v2, v0, [D

    .line 60
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_DDRB_to_DDRM;->alg:Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    check-cast v3, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;

    invoke-virtual {v3, v1, v2}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_DDRB;->getDiagonal([D[D)V

    const/4 v3, 0x0

    .line 62
    aget-wide v4, v1, v3

    invoke-virtual {p1, v3, v3, v4, v5}, Lorg/ejml/data/DMatrixRMaj;->unsafe_set(IID)V

    const/4 v3, 0x1

    :goto_1
    if-ge v3, v0, :cond_1

    .line 64
    aget-wide v4, v1, v3

    invoke-virtual {p1, v3, v3, v4, v5}, Lorg/ejml/data/DMatrixRMaj;->unsafe_set(IID)V

    add-int/lit8 v4, v3, -0x1

    .line 65
    aget-wide v5, v2, v4

    invoke-virtual {p1, v3, v4, v5, v6}, Lorg/ejml/data/DMatrixRMaj;->unsafe_set(IID)V

    .line 66
    aget-wide v5, v2, v4

    invoke-virtual {p1, v4, v3, v5, v6}, Lorg/ejml/data/DMatrixRMaj;->unsafe_set(IID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public bridge synthetic getT(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 35
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_DDRB_to_DDRM;->getT(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method
