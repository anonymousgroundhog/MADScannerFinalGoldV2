.class Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM$CustomizedQR;
.super Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;
.source "SolveNullSpaceQR_FDRM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomizedQR"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lorg/ejml/dense/row/decomposition/qr/QRDecompositionHouseholderTran_FDRM;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM$1;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM$CustomizedQR;-><init>()V

    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 3

    .line 107
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v2, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM$CustomizedQR;->setExpectedMaxSize(II)V

    .line 110
    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM$CustomizedQR;->QR:Lorg/ejml/data/FMatrixRMaj;

    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM$CustomizedQR;->error:Z

    .line 114
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM$CustomizedQR;->minLength:I

    if-ge p1, v0, :cond_0

    .line 115
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM$CustomizedQR;->householder(I)V

    .line 116
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM$CustomizedQR;->updateA(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 119
    :cond_0
    iget-boolean p1, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM$CustomizedQR;->error:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 77
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM$CustomizedQR;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public setExpectedMaxSize(II)V
    .locals 1

    .line 81
    iput p2, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM$CustomizedQR;->numCols:I

    .line 82
    iput p1, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM$CustomizedQR;->numRows:I

    .line 83
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM$CustomizedQR;->minLength:I

    .line 84
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 87
    iget-object p2, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM$CustomizedQR;->v:[F

    if-nez p2, :cond_0

    .line 88
    new-array p2, p1, [F

    iput-object p2, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM$CustomizedQR;->v:[F

    .line 89
    iget p2, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM$CustomizedQR;->minLength:I

    new-array p2, p2, [F

    iput-object p2, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM$CustomizedQR;->gammas:[F

    .line 92
    :cond_0
    iget-object p2, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM$CustomizedQR;->v:[F

    array-length p2, p2

    if-ge p2, p1, :cond_1

    .line 93
    new-array p1, p1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM$CustomizedQR;->v:[F

    .line 95
    :cond_1
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM$CustomizedQR;->gammas:[F

    array-length p1, p1

    iget p2, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM$CustomizedQR;->minLength:I

    if-ge p1, p2, :cond_2

    .line 96
    iget p1, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM$CustomizedQR;->minLength:I

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQR_FDRM$CustomizedQR;->gammas:[F

    :cond_2
    return-void
.end method
