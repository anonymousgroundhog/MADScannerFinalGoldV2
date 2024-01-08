.class public Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;
.super Ljava/lang/Object;
.source "BidiagonalDecompositionTall_DDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64<",
        "Lorg/ejml/data/DMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field B:Lorg/ejml/data/DMatrixRMaj;

.field decompBi:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation
.end field

.field decompQRP:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation
.end field

.field m:I

.field min:I

.field n:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    const/16 v1, 0x64

    .line 62
    invoke-static {v0, v1}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->qrp(II)Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->decompQRP:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;

    .line 64
    new-instance v0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->decompBi:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;

    .line 66
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->B:Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 3

    .line 134
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->decompQRP:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 138
    :cond_0
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->m:I

    .line 139
    iget p1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iput p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->n:I

    .line 140
    iget v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->m:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->min:I

    .line 141
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->B:Lorg/ejml/data/DMatrixRMaj;

    iget v2, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->n:I

    invoke-virtual {v0, p1, v2, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    .line 143
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->decompQRP:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->B:Lorg/ejml/data/DMatrixRMaj;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;->getR(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    .line 147
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    iget v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->min:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->n:I

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 148
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->decompQRP:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;->getColPivotMatrix(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/DMatrixRMaj;

    .line 150
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->B:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v1, v0, p1}, Lorg/ejml/dense/row/CommonOps_DDRM;->multTransB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;

    .line 151
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->B:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, p1}, Lorg/ejml/data/DMatrixRMaj;->set(Lorg/ejml/data/DMatrixD1;)V

    .line 153
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->decompBi:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->B:Lorg/ejml/data/DMatrixRMaj;

    invoke-interface {p1, v0}, Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 60
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getB(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;
    .locals 3

    .line 86
    iget v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->m:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->n:I

    iget v2, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->min:I

    invoke-static {p1, p2, v0, v1, v2}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->handleB(Lorg/ejml/data/DMatrixRMaj;ZIII)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    .line 88
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->B:Lorg/ejml/data/DMatrixRMaj;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v1

    invoke-virtual {p1, v0, v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    const/4 p2, 0x1

    .line 89
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->min:I

    if-ge p2, v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->B:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, p2, p2}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v0

    invoke-virtual {p1, p2, p2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v0, p2, -0x1

    .line 91
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->B:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v1, v0, p2}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v1

    invoke-virtual {p1, v0, p2, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 93
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->n:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->m:I

    if-le p2, v1, :cond_1

    add-int/lit8 p2, v0, -0x1

    .line 94
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->B:Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v1

    invoke-virtual {p1, p2, v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    :cond_1
    return-object p1
.end method

.method public bridge synthetic getB(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 60
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->getB(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getDiagonal([D[D)V
    .locals 4

    .line 77
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->B:Lorg/ejml/data/DMatrixRMaj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ejml/data/DMatrixRMaj;->get(I)D

    move-result-wide v2

    aput-wide v2, p1, v1

    const/4 v0, 0x1

    .line 78
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->n:I

    if-ge v0, v1, :cond_0

    .line 79
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->B:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v1, v0, v0}, Lorg/ejml/data/DMatrixRMaj;->unsafe_get(II)D

    move-result-wide v1

    aput-wide v1, p1, v0

    add-int/lit8 v1, v0, -0x1

    .line 80
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->B:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v2, v1, v0}, Lorg/ejml/data/DMatrixRMaj;->unsafe_get(II)D

    move-result-wide v2

    aput-wide v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getU(Lorg/ejml/data/DMatrixRMaj;ZZ)Lorg/ejml/data/DMatrixRMaj;
    .locals 6

    const/4 v1, 0x0

    .line 101
    iget v3, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->m:I

    iget v4, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->n:I

    iget v5, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->min:I

    move-object v0, p1

    move v2, p3

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_DDRM;->handleU(Lorg/ejml/data/DMatrixRMaj;ZZIII)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 105
    iget-object p3, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->decompQRP:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;

    invoke-interface {p3, v1, v0}, Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;->getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    move-result-object p3

    check-cast p3, Lorg/ejml/data/DMatrixRMaj;

    .line 106
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->decompBi:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;

    invoke-interface {v3, v1, v2, v0}, Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;->getU(Lorg/ejml/data/Matrix;ZZ)Lorg/ejml/data/Matrix;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/DMatrixRMaj;

    .line 108
    invoke-static {p3, v0, p1}, Lorg/ejml/dense/row/CommonOps_DDRM;->mult(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;

    goto :goto_0

    .line 111
    :cond_0
    iget-object p3, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->decompQRP:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;

    invoke-interface {p3, p1, v2}, Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;->getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    move-result-object p3

    check-cast p3, Lorg/ejml/data/DMatrixRMaj;

    .line 112
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->decompBi:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;

    invoke-interface {v3, v1, v2, v0}, Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;->getU(Lorg/ejml/data/Matrix;ZZ)Lorg/ejml/data/Matrix;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/DMatrixRMaj;

    .line 113
    iget v1, p3, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v3, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->min:I

    invoke-static {p3, v2, v1, v2, v3}, Lorg/ejml/dense/row/CommonOps_DDRM;->extract(Lorg/ejml/data/DMatrixRMaj;IIII)Lorg/ejml/data/DMatrixRMaj;

    move-result-object v1

    .line 114
    new-instance v3, Lorg/ejml/data/DMatrixRMaj;

    iget v4, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v5, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-direct {v3, v4, v5}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 116
    invoke-static {v1, v0, v3}, Lorg/ejml/dense/row/CommonOps_DDRM;->mult(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;

    .line 117
    invoke-static {v3, p3, v2, v2}, Lorg/ejml/dense/row/CommonOps_DDRM;->insert(Lorg/ejml/data/DMatrix;Lorg/ejml/data/DMatrix;II)V

    :goto_0
    if-eqz p2, :cond_1

    .line 121
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_DDRM;->transpose(Lorg/ejml/data/DMatrixRMaj;)V

    :cond_1
    return-object p1
.end method

.method public bridge synthetic getU(Lorg/ejml/data/Matrix;ZZ)Lorg/ejml/data/Matrix;
    .locals 0

    .line 60
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->getU(Lorg/ejml/data/DMatrixRMaj;ZZ)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getV(Lorg/ejml/data/DMatrixRMaj;ZZ)Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->decompBi:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;

    invoke-interface {v0, p1, p2, p3}, Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F64;->getV(Lorg/ejml/data/Matrix;ZZ)Lorg/ejml/data/Matrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    return-object p1
.end method

.method public bridge synthetic getV(Lorg/ejml/data/Matrix;ZZ)Lorg/ejml/data/Matrix;
    .locals 0

    .line 60
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->getV(Lorg/ejml/data/DMatrixRMaj;ZZ)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public inputModified()Z
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_DDRM;->decompQRP:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/QRPDecomposition_F64;->inputModified()Z

    move-result v0

    return v0
.end method
