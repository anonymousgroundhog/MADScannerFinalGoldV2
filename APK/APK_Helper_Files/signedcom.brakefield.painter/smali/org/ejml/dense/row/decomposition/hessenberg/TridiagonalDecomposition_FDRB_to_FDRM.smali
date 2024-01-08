.class public Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_FDRB_to_FDRM;
.super Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;
.source "TridiagonalDecomposition_FDRB_to_FDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;",
        "Lorg/ejml/interfaces/decomposition/TridiagonalSimilarDecomposition_F32<",
        "Lorg/ejml/data/FMatrixRMaj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    sget v0, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH:I

    invoke-direct {p0, v0}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_FDRB_to_FDRM;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 46
    new-instance v0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRB;

    invoke-direct {v0}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRB;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;-><init>(Lorg/ejml/interfaces/decomposition/DecompositionInterface;I)V

    return-void
.end method


# virtual methods
.method public getDiagonal([F[F)V
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_FDRB_to_FDRM;->alg:Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    check-cast v0, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRB;

    invoke-virtual {v0, p1, p2}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRB;->getDiagonal([F[F)V

    return-void
.end method

.method public getQ(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;
    .locals 2

    if-nez p1, :cond_0

    .line 77
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_FDRB_to_FDRM;->Ablock:Lorg/ejml/data/FMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_FDRB_to_FDRM;->Ablock:Lorg/ejml/data/FMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 80
    :cond_0
    new-instance v0, Lorg/ejml/data/FMatrixRBlock;

    invoke-direct {v0}, Lorg/ejml/data/FMatrixRBlock;-><init>()V

    .line 81
    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iput v1, v0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    .line 82
    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iput v1, v0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    .line 83
    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_FDRB_to_FDRM;->blockLength:I

    iput v1, v0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    .line 84
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iput-object v1, v0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    .line 86
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_FDRB_to_FDRM;->alg:Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    check-cast v1, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRB;

    invoke-virtual {v1, v0, p2}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRB;->getQ(Lorg/ejml/data/FMatrixRBlock;Z)Lorg/ejml/data/FMatrixRBlock;

    .line 88
    iget p2, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    invoke-virtual {p0, p2, v0, v1}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_FDRB_to_FDRM;->convertBlockToRow(II[F)V

    return-object p1
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 36
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_FDRB_to_FDRM;->getQ(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getT(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 6

    .line 51
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_FDRB_to_FDRM;->Ablock:Lorg/ejml/data/FMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-nez p1, :cond_0

    .line 54
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p1, v0, v0}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 56
    invoke-static {p1, v1}, Lorg/ejml/dense/row/CommonOps_FDRM;->fill(Lorg/ejml/data/FMatrixD1;F)V

    .line 59
    :goto_0
    new-array v1, v0, [F

    .line 60
    new-array v2, v0, [F

    .line 62
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_FDRB_to_FDRM;->alg:Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    check-cast v3, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRB;

    invoke-virtual {v3, v1, v2}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalDecompositionHouseholder_FDRB;->getDiagonal([F[F)V

    const/4 v3, 0x0

    .line 64
    aget v4, v1, v3

    invoke-virtual {p1, v3, v3, v4}, Lorg/ejml/data/FMatrixRMaj;->unsafe_set(IIF)V

    const/4 v3, 0x1

    :goto_1
    if-ge v3, v0, :cond_1

    .line 66
    aget v4, v1, v3

    invoke-virtual {p1, v3, v3, v4}, Lorg/ejml/data/FMatrixRMaj;->unsafe_set(IIF)V

    add-int/lit8 v4, v3, -0x1

    .line 67
    aget v5, v2, v4

    invoke-virtual {p1, v3, v4, v5}, Lorg/ejml/data/FMatrixRMaj;->unsafe_set(IIF)V

    .line 68
    aget v5, v2, v4

    invoke-virtual {p1, v4, v3, v5}, Lorg/ejml/data/FMatrixRMaj;->unsafe_set(IIF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public bridge synthetic getT(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 36
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecomposition_FDRB_to_FDRM;->getT(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method
