.class public Lorg/ejml/dense/row/decomposition/qr/QRDecomposition_FDRB_to_FDRM;
.super Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;
.source "QRDecomposition_FDRB_to_FDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/QRDecomposition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;",
        "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
        "Lorg/ejml/data/FMatrixRMaj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    new-instance v0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_FDRB;

    invoke-direct {v0}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_FDRB;-><init>()V

    sget v1, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH:I

    invoke-direct {p0, v0, v1}, Lorg/ejml/dense/row/decomposition/BaseDecomposition_FDRB_to_FDRM;-><init>(Lorg/ejml/interfaces/decomposition/DecompositionInterface;I)V

    return-void
.end method


# virtual methods
.method public getQ(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;
    .locals 2

    .line 49
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecomposition_FDRB_to_FDRM;->Ablock:Lorg/ejml/data/FMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecomposition_FDRB_to_FDRM;->Ablock:Lorg/ejml/data/FMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz p2, :cond_0

    .line 51
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecomposition_FDRB_to_FDRM;->Ablock:Lorg/ejml/data/FMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    invoke-static {p1, v1, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->ensureIdentity(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecomposition_FDRB_to_FDRM;->Ablock:Lorg/ejml/data/FMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecomposition_FDRB_to_FDRM;->Ablock:Lorg/ejml/data/FMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    invoke-static {p1, v0, v1}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->ensureIdentity(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    .line 56
    :goto_0
    new-instance v0, Lorg/ejml/data/FMatrixRBlock;

    invoke-direct {v0}, Lorg/ejml/data/FMatrixRBlock;-><init>()V

    .line 57
    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iput v1, v0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    .line 58
    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iput v1, v0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    .line 59
    iget v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecomposition_FDRB_to_FDRM;->blockLength:I

    iput v1, v0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    .line 60
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iput-object v1, v0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    .line 62
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecomposition_FDRB_to_FDRM;->alg:Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    check-cast v1, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_FDRB;

    invoke-virtual {v1, v0, p2}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_FDRB;->getQ(Lorg/ejml/data/FMatrixRBlock;Z)Lorg/ejml/data/FMatrixRBlock;

    .line 64
    iget p2, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    invoke-virtual {p0, p2, v0, v1}, Lorg/ejml/dense/row/decomposition/qr/QRDecomposition_FDRB_to_FDRM;->convertBlockToRow(II[F)V

    return-object p1
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/qr/QRDecomposition_FDRB_to_FDRM;->getQ(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getR(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/qr/QRDecomposition_FDRB_to_FDRM;->alg:Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    check-cast v0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_FDRB;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_FDRB;->getR(Lorg/ejml/data/FMatrixRBlock;Z)Lorg/ejml/data/FMatrixRBlock;

    move-result-object p2

    if-nez p1, :cond_0

    .line 76
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    iget v0, p2, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v1, p2, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 78
    :cond_0
    invoke-static {p2, p1}, Lorg/ejml/dense/block/MatrixOps_FDRB;->convert(Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    return-object p1
.end method

.method public bridge synthetic getR(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/qr/QRDecomposition_FDRB_to_FDRM;->getR(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method
