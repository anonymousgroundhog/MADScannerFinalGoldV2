.class public Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM;
.super Ljava/lang/Object;
.source "SolveNullSpaceQRP_DDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/SolveNullSpace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM$CustomizedQRP;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/SolveNullSpace<",
        "Lorg/ejml/data/DMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field Q:Lorg/ejml/data/DMatrixRMaj;

.field decomposition:Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM$CustomizedQRP;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM$CustomizedQRP;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM$CustomizedQRP;-><init>(Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM$1;)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM;->decomposition:Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM$CustomizedQRP;

    .line 38
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method


# virtual methods
.method public getQ()Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    return-object v0
.end method

.method public inputModified()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM;->decomposition:Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM$CustomizedQRP;

    invoke-virtual {v0}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM$CustomizedQRP;->inputModified()Z

    move-result v0

    return v0
.end method

.method public process(Lorg/ejml/data/DMatrixRMaj;ILorg/ejml/data/DMatrixRMaj;)Z
    .locals 11

    .line 50
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM;->decomposition:Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM$CustomizedQRP;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM$CustomizedQRP;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    .line 52
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v3, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget p1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 54
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM;->decomposition:Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM$CustomizedQRP;

    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p1, v0, v2}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM$CustomizedQRP;->getQ(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget p1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {v0, v1, p1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 57
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM;->decomposition:Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM$CustomizedQRP;

    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM$CustomizedQRP;->getQ(Lorg/ejml/data/DMatrixRMaj;Z)Lorg/ejml/data/DMatrixRMaj;

    .line 60
    :goto_0
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    iget p1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-virtual {p3, p1, p2}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 61
    iget-object v3, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    const/4 v4, 0x0

    iget v5, v3, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    iget p1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    sub-int v6, p1, p2

    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM;->Q:Lorg/ejml/data/DMatrixRMaj;

    iget v7, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, p3

    invoke-static/range {v3 .. v10}, Lorg/ejml/dense/row/CommonOps_DDRM;->extract(Lorg/ejml/data/DMatrix;IIIILorg/ejml/data/DMatrix;II)V

    return v2
.end method

.method public bridge synthetic process(Lorg/ejml/data/Matrix;ILorg/ejml/data/Matrix;)Z
    .locals 0

    .line 34
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p3, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_DDRM;->process(Lorg/ejml/data/DMatrixRMaj;ILorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method
