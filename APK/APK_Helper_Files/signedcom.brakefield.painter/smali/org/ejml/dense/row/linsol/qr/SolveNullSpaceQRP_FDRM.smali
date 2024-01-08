.class public Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM;
.super Ljava/lang/Object;
.source "SolveNullSpaceQRP_FDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/SolveNullSpace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/SolveNullSpace<",
        "Lorg/ejml/data/FMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field Q:Lorg/ejml/data/FMatrixRMaj;

.field decomposition:Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;-><init>(Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$1;)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM;->decomposition:Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;

    .line 40
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method


# virtual methods
.method public getQ()Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    return-object v0
.end method

.method public inputModified()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM;->decomposition:Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;

    invoke-virtual {v0}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;->inputModified()Z

    move-result v0

    return v0
.end method

.method public process(Lorg/ejml/data/FMatrixRMaj;ILorg/ejml/data/FMatrixRMaj;)Z
    .locals 11

    .line 52
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM;->decomposition:Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;

    invoke-virtual {v0, p1}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    .line 54
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v3, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget p1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 56
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM;->decomposition:Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;

    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p1, v0, v2}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;->getQ(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget p1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {v0, v1, p1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 59
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM;->decomposition:Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;

    iget-object v0, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM$CustomizedQRP;->getQ(Lorg/ejml/data/FMatrixRMaj;Z)Lorg/ejml/data/FMatrixRMaj;

    .line 62
    :goto_0
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    iget p1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-virtual {p3, p1, p2}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 63
    iget-object v3, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    const/4 v4, 0x0

    iget v5, v3, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    iget p1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    sub-int v6, p1, p2

    iget-object p1, p0, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM;->Q:Lorg/ejml/data/FMatrixRMaj;

    iget v7, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, p3

    invoke-static/range {v3 .. v10}, Lorg/ejml/dense/row/CommonOps_FDRM;->extract(Lorg/ejml/data/FMatrix;IIIILorg/ejml/data/FMatrix;II)V

    return v2
.end method

.method public bridge synthetic process(Lorg/ejml/data/Matrix;ILorg/ejml/data/Matrix;)Z
    .locals 0

    .line 35
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p3, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/dense/row/linsol/qr/SolveNullSpaceQRP_FDRM;->process(Lorg/ejml/data/FMatrixRMaj;ILorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method
