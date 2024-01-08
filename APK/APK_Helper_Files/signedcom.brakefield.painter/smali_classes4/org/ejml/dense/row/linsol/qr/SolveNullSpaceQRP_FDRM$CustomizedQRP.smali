.class Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;
.super Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;
.source "SolveNullSpaceQRP_FDRM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomizedQRP"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/qr/QRColPivDecompositionHouseholderColumn_FDRM;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$1;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;-><init>()V

    return-void
.end method


# virtual methods
.method protected convertToColumnMajor(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 80
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;->numCols:I

    if-ge v1, v2, :cond_0

    .line 81
    iget-object v2, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v3, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v3, v1

    iget-object v4, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;->dataQR:[[F

    aget-object v4, v4, v1

    iget v5, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;->numRows:I

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public decompose(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 2

    .line 94
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;->setExpectedMaxSize(II)V

    .line 96
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;->convertToColumnMajor(Lorg/ejml/data/FMatrixRMaj;)V

    .line 99
    invoke-virtual {p0}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;->setupPivotInfo()V

    const/4 p1, 0x0

    .line 102
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;->minLength:I

    if-ge p1, v0, :cond_2

    if-lez p1, :cond_0

    .line 104
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;->updateNorms(I)V

    .line 105
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;->swapColumns(I)V

    .line 107
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;->householderPivot(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 109
    :cond_1
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;->updateA(I)V

    add-int/lit8 p1, p1, 0x1

    .line 110
    iput p1, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;->rank:I

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 76
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method
