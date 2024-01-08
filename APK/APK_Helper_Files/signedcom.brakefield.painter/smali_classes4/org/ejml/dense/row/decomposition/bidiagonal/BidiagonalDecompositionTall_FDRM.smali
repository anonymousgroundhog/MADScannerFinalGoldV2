.class public Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;
.super Ljava/lang/Object;
.source "BidiagonalDecompositionTall_FDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32<",
        "Lorg/ejml/data/FMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field B:Lorg/ejml/data/FMatrixRMaj;

.field decompBi:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation
.end field

.field decompQRP:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
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

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    const/16 v1, 0x64

    .line 64
    invoke-static {v0, v1}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->qrp(II)Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->decompQRP:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;

    .line 66
    new-instance v0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->decompBi:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;

    .line 68
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->B:Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 3

    .line 136
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->decompQRP:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 140
    :cond_0
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->m:I

    .line 141
    iget p1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iput p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->n:I

    .line 142
    iget v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->m:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->min:I

    .line 143
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->B:Lorg/ejml/data/FMatrixRMaj;

    iget v2, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->n:I

    invoke-virtual {v0, p1, v2, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    .line 145
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->decompQRP:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->B:Lorg/ejml/data/FMatrixRMaj;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;->getR(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    .line 149
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    iget v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->min:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->n:I

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 150
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->decompQRP:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;->getColPivotMatrix(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/FMatrixRMaj;

    .line 152
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->B:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v1, v0, p1}, Lorg/ejml/dense/row/CommonOps_FDRM;->multTransB(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;

    .line 153
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->B:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, p1}, Lorg/ejml/data/FMatrixRMaj;->set(Lorg/ejml/data/FMatrixD1;)V

    .line 155
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->decompBi:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->B:Lorg/ejml/data/FMatrixRMaj;

    invoke-interface {p1, v0}, Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 61
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public getB(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;
    .locals 3

    .line 88
    iget v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->m:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->n:I

    iget v2, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->min:I

    invoke-static {p1, p2, v0, v1, v2}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->handleB(Lorg/ejml/data/FMatrixRMaj;ZIII)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    .line 90
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->B:Lorg/ejml/data/FMatrixRMaj;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result p2

    invoke-virtual {p1, v0, v0, p2}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    const/4 p2, 0x1

    .line 91
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->min:I

    if-ge p2, v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->B:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, p2, p2}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v0

    invoke-virtual {p1, p2, p2, v0}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v0, p2, -0x1

    .line 93
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->B:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v1, v0, p2}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v1

    invoke-virtual {p1, v0, p2, v1}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 95
    :cond_0
    iget p2, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->n:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->m:I

    if-le p2, v1, :cond_1

    add-int/lit8 p2, v0, -0x1

    .line 96
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->B:Lorg/ejml/data/FMatrixRMaj;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    :cond_1
    return-object p1
.end method

.method public bridge synthetic getB(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 61
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->getB(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getDiagonal([F[F)V
    .locals 3

    .line 79
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->B:Lorg/ejml/data/FMatrixRMaj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ejml/data/FMatrixRMaj;->get(I)F

    move-result v0

    aput v0, p1, v1

    const/4 v0, 0x1

    .line 80
    :goto_0
    iget v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->n:I

    if-ge v0, v1, :cond_0

    .line 81
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->B:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v1, v0, v0}, Lorg/ejml/data/FMatrixRMaj;->unsafe_get(II)F

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v1, v0, -0x1

    .line 82
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->B:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v2, v1, v0}, Lorg/ejml/data/FMatrixRMaj;->unsafe_get(II)F

    move-result v2

    aput v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getU(Lorg/ejml/data/FMatrixRMaj;ZZ)Lorg/ejml/data/FMatrixRMaj;
    .locals 6

    const/4 v1, 0x0

    .line 103
    iget v3, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->m:I

    iget v4, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->n:I

    iget v5, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->min:I

    move-object v0, p1

    move v2, p3

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionRow_FDRM;->handleU(Lorg/ejml/data/FMatrixRMaj;ZZIII)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 107
    iget-object p3, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->decompQRP:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;

    invoke-interface {p3, v1, v0}, Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;->getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    move-result-object p3

    check-cast p3, Lorg/ejml/data/FMatrixRMaj;

    .line 108
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->decompBi:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;

    invoke-interface {v3, v1, v2, v0}, Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;->getU(Lorg/ejml/data/Matrix;ZZ)Lorg/ejml/data/Matrix;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/FMatrixRMaj;

    .line 110
    invoke-static {p3, v0, p1}, Lorg/ejml/dense/row/CommonOps_FDRM;->mult(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;

    goto :goto_0

    .line 113
    :cond_0
    iget-object p3, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->decompQRP:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;

    invoke-interface {p3, p1, v2}, Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;->getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    move-result-object p3

    check-cast p3, Lorg/ejml/data/FMatrixRMaj;

    .line 114
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->decompBi:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;

    invoke-interface {v3, v1, v2, v0}, Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;->getU(Lorg/ejml/data/Matrix;ZZ)Lorg/ejml/data/Matrix;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/FMatrixRMaj;

    .line 115
    iget v1, p3, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v3, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->min:I

    invoke-static {p3, v2, v1, v2, v3}, Lorg/ejml/dense/row/CommonOps_FDRM;->extract(Lorg/ejml/data/FMatrixRMaj;IIII)Lorg/ejml/data/FMatrixRMaj;

    move-result-object v1

    .line 116
    new-instance v3, Lorg/ejml/data/FMatrixRMaj;

    iget v4, v1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v5, v0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-direct {v3, v4, v5}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 118
    invoke-static {v1, v0, v3}, Lorg/ejml/dense/row/CommonOps_FDRM;->mult(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;

    .line 119
    invoke-static {v3, p3, v2, v2}, Lorg/ejml/dense/row/CommonOps_FDRM;->insert(Lorg/ejml/data/FMatrix;Lorg/ejml/data/FMatrix;II)V

    :goto_0
    if-eqz p2, :cond_1

    .line 123
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_FDRM;->transpose(Lorg/ejml/data/FMatrixRMaj;)V

    :cond_1
    return-object p1
.end method

.method public bridge synthetic getU(Lorg/ejml/data/Matrix;ZZ)Lorg/ejml/data/Matrix;
    .locals 0

    .line 61
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->getU(Lorg/ejml/data/FMatrixRMaj;ZZ)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getV(Lorg/ejml/data/FMatrixRMaj;ZZ)Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->decompBi:Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;

    invoke-interface {v0, p1, p2, p3}, Lorg/ejml/interfaces/decomposition/BidiagonalDecomposition_F32;->getV(Lorg/ejml/data/Matrix;ZZ)Lorg/ejml/data/Matrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    return-object p1
.end method

.method public bridge synthetic getV(Lorg/ejml/data/Matrix;ZZ)Lorg/ejml/data/Matrix;
    .locals 0

    .line 61
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->getV(Lorg/ejml/data/FMatrixRMaj;ZZ)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public inputModified()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/bidiagonal/BidiagonalDecompositionTall_FDRM;->decompQRP:Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/QRPDecomposition_F32;->inputModified()Z

    move-result v0

    return v0
.end method
