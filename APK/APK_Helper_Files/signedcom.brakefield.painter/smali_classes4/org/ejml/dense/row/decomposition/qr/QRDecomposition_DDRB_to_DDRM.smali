.class public Lorg/ejml/dense/row/decomposition/qr/QRDecomposition_DDRB_to_DDRM;
.super Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;
.source "QRDecomposition_DDRB_to_DDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/QRDecomposition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;",
        "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
        "Lorg/ejml/data/DMatrixRMaj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    new-instance v0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;

    invoke-direct {v0}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;-><init>()V

    sget v1, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH:I

    invoke-direct {p0, v0, v1}, Lorg/ejml/dense/row/decomposition/BaseDecomposition_DDRB_to_DDRM;-><init>(Lorg/ejml/interfaces/decomposition/DecompositionInterface;I)V

    return-void
.end method


# virtual methods
.method public getQ(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;
    .locals 2

    .line 47
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecomposition_DDRB_to_DDRM;->Ablock:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecomposition_DDRB_to_DDRM;->Ablock:Lorg/ejml/data/DMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz p2, :cond_0

    .line 49
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecomposition_DDRB_to_DDRM;->Ablock:Lorg/ejml/data/DMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    invoke-static {p1, v1, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->ensureIdentity(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecomposition_DDRB_to_DDRM;->Ablock:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecomposition_DDRB_to_DDRM;->Ablock:Lorg/ejml/data/DMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    invoke-static {p1, v0, v1}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->ensureIdentity(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    .line 54
    :goto_0
    new-instance v0, Lorg/ejml/data/DMatrixRBlock;

    invoke-direct {v0}, Lorg/ejml/data/DMatrixRBlock;-><init>()V

    .line 55
    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iput v1, v0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    .line 56
    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iput v1, v0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    .line 57
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecomposition_DDRB_to_DDRM;->blockLength:I

    iput v1, v0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    .line 58
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iput-object v1, v0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    .line 60
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecomposition_DDRB_to_DDRM;->alg:Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    check-cast v1, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;

    invoke-virtual {v1, v0, p2}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->getQ(Lorg/ejml/data/DMatrixRBlock;Z)Lorg/ejml/data/DMatrixRBlock;

    .line 62
    iget p2, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    invoke-virtual {p0, p2, v0, v1}, Lorg/ejml/dense/row/decomposition/qr/QRDecomposition_DDRB_to_DDRM;->convertBlockToRow(II[D)V

    return-object p1
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/qr/QRDecomposition_DDRB_to_DDRM;->getQ(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getR(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;
    .locals 2

    .line 71
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecomposition_DDRB_to_DDRM;->alg:Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    check-cast v0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->getR(Lorg/ejml/data/DMatrixRBlock;Z)Lorg/ejml/data/DMatrixRBlock;

    move-result-object p2

    if-nez p1, :cond_0

    .line 74
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    iget v0, p2, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v1, p2, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 76
    :cond_0
    invoke-static {p2, p1}, Lorg/ejml/dense/block/MatrixOps_DDRB;->convert(Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    return-object p1
.end method

.method public bridge synthetic getR(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/qr/QRDecomposition_DDRB_to_DDRM;->getR(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method
