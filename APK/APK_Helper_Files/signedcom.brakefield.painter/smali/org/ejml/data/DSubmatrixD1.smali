.class public Lorg/ejml/data/DSubmatrixD1;
.super Lorg/ejml/data/Submatrix;
.source "DSubmatrixD1.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ejml/data/Submatrix<",
        "Lorg/ejml/data/DMatrixD1;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/ejml/data/Submatrix;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/DMatrixD1;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/ejml/data/Submatrix;-><init>()V

    .line 38
    invoke-virtual {p0, p1}, Lorg/ejml/data/DSubmatrixD1;->set(Lorg/ejml/data/Matrix;)V

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/DMatrixD1;IIII)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/ejml/data/Submatrix;-><init>()V

    .line 43
    invoke-virtual/range {p0 .. p5}, Lorg/ejml/data/DSubmatrixD1;->set(Lorg/ejml/data/Matrix;IIII)V

    return-void
.end method


# virtual methods
.method public extract()Lorg/ejml/data/DMatrixRMaj;
    .locals 6

    .line 57
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v2, p0, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v3, p0, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    const/4 v1, 0x0

    move v2, v1

    .line 59
    :goto_0
    iget v3, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v2, v3, :cond_1

    move v3, v1

    .line 60
    :goto_1
    iget v4, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v3, v4, :cond_0

    .line 61
    invoke-virtual {p0, v2, v3}, Lorg/ejml/data/DSubmatrixD1;->get(II)D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public get(II)D
    .locals 2

    .line 48
    iget-object v0, p0, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    iget v1, p0, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr p1, v1

    iget v1, p0, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lorg/ejml/data/DMatrixD1;->get(II)D

    move-result-wide p1

    return-wide p1
.end method

.method public print()V
    .locals 8

    .line 70
    iget-object v0, p0, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    if-eqz v0, :cond_0

    .line 72
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v0, p0, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    move-object v2, v0

    check-cast v2, Lorg/ejml/data/DMatrix;

    const-string v3, "%6.3f"

    iget v4, p0, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget v5, p0, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v6, p0, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iget v7, p0, Lorg/ejml/data/DSubmatrixD1;->col1:I

    invoke-static/range {v1 .. v7}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;Ljava/lang/String;IIII)V

    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Uninitialized submatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(IID)V
    .locals 2

    .line 53
    iget-object v0, p0, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    iget v1, p0, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr p1, v1

    iget v1, p0, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/ejml/data/DMatrixD1;->set(IID)V

    return-void
.end method
