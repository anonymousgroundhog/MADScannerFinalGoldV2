.class public Lorg/ejml/data/FSubmatrixD1;
.super Lorg/ejml/data/Submatrix;
.source "FSubmatrixD1.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ejml/data/Submatrix<",
        "Lorg/ejml/data/FMatrixD1;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/ejml/data/Submatrix;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/FMatrixD1;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/ejml/data/Submatrix;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Lorg/ejml/data/FSubmatrixD1;->set(Lorg/ejml/data/Matrix;)V

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/FMatrixD1;IIII)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/ejml/data/Submatrix;-><init>()V

    .line 45
    invoke-virtual/range {p0 .. p5}, Lorg/ejml/data/FSubmatrixD1;->set(Lorg/ejml/data/Matrix;IIII)V

    return-void
.end method


# virtual methods
.method public extract()Lorg/ejml/data/FMatrixRMaj;
    .locals 5

    .line 59
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v2, p0, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v3, p0, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    const/4 v1, 0x0

    move v2, v1

    .line 61
    :goto_0
    iget v3, v0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v2, v3, :cond_1

    move v3, v1

    .line 62
    :goto_1
    iget v4, v0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v3, v4, :cond_0

    .line 63
    invoke-virtual {p0, v2, v3}, Lorg/ejml/data/FSubmatrixD1;->get(II)F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public get(II)F
    .locals 2

    .line 50
    iget-object v0, p0, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    iget v1, p0, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr p1, v1

    iget v1, p0, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lorg/ejml/data/FMatrixD1;->get(II)F

    move-result p1

    return p1
.end method

.method public print()V
    .locals 8

    .line 72
    iget-object v0, p0, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    if-eqz v0, :cond_0

    .line 74
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v0, p0, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    move-object v2, v0

    check-cast v2, Lorg/ejml/data/FMatrix;

    const-string v3, "%6.3ff"

    iget v4, p0, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget v5, p0, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v6, p0, Lorg/ejml/data/FSubmatrixD1;->col0:I

    iget v7, p0, Lorg/ejml/data/FSubmatrixD1;->col1:I

    invoke-static/range {v1 .. v7}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;Ljava/lang/String;IIII)V

    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Uninitialized submatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(IIF)V
    .locals 2

    .line 55
    iget-object v0, p0, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    iget v1, p0, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr p1, v1

    iget v1, p0, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lorg/ejml/data/FMatrixD1;->set(IIF)V

    return-void
.end method
