.class Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM$CustomizedQR;
.super Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;
.source "SolveNullSpaceQR_DDRM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomizedQR"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_DDRM;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM$1;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM$CustomizedQR;-><init>()V

    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 3

    .line 105
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v2, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM$CustomizedQR;->setExpectedMaxSize(II)V

    .line 108
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM$CustomizedQR;->QR:Lorg/ejml/data/DMatrixRMaj;

    const/4 p1, 0x0

    .line 110
    iput-boolean p1, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM$CustomizedQR;->error:Z

    .line 112
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM$CustomizedQR;->minLength:I

    if-ge p1, v0, :cond_0

    .line 113
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM$CustomizedQR;->householder(I)V

    .line 114
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM$CustomizedQR;->updateA(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 117
    :cond_0
    iget-boolean p1, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM$CustomizedQR;->error:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 75
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM$CustomizedQR;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public setExpectedMaxSize(II)V
    .locals 1

    .line 79
    iput p2, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM$CustomizedQR;->numCols:I

    .line 80
    iput p1, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM$CustomizedQR;->numRows:I

    .line 81
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM$CustomizedQR;->minLength:I

    .line 82
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 85
    iget-object p2, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM$CustomizedQR;->v:[D

    if-nez p2, :cond_0

    .line 86
    new-array p2, p1, [D

    iput-object p2, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM$CustomizedQR;->v:[D

    .line 87
    iget p2, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM$CustomizedQR;->minLength:I

    new-array p2, p2, [D

    iput-object p2, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM$CustomizedQR;->gammas:[D

    .line 90
    :cond_0
    iget-object p2, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM$CustomizedQR;->v:[D

    array-length p2, p2

    if-ge p2, p1, :cond_1

    .line 91
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM$CustomizedQR;->v:[D

    .line 93
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM$CustomizedQR;->gammas:[D

    array-length p1, p1

    iget p2, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM$CustomizedQR;->minLength:I

    if-ge p1, p2, :cond_2

    .line 94
    iget p1, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM$CustomizedQR;->minLength:I

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_DDRM$CustomizedQR;->gammas:[D

    :cond_2
    return-void
.end method
