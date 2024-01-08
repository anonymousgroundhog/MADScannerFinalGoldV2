.class public Lorg/ejml/dense/block/MatrixOps_MT_FDRB;
.super Ljava/lang/Object;
.source "MatrixOps_MT_FDRB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mult(Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRBlock;)V
    .locals 10

    .line 49
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v2, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ne v0, v2, :cond_3

    .line 51
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v2, p2, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ne v0, v2, :cond_2

    .line 53
    iget v0, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v2, p2, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ne v0, v2, :cond_1

    .line 55
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v2, p1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v2, p2, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    if-ne v0, v2, :cond_0

    .line 58
    iget v7, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    .line 60
    new-instance v8, Lorg/ejml/data/FSubmatrixD1;

    const/4 v2, 0x0

    iget v3, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    const/4 v4, 0x0

    iget v5, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;IIII)V

    .line 61
    new-instance v9, Lorg/ejml/data/FSubmatrixD1;

    iget v3, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v5, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;IIII)V

    .line 62
    new-instance v6, Lorg/ejml/data/FSubmatrixD1;

    iget v3, p2, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v5, p2, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;IIII)V

    .line 64
    invoke-static {v7, v8, v9, v6}, Lorg/ejml/dense/block/MatrixMult_MT_FDRB;->mult(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V

    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Block lengths are not all the same."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Columns in B are incompatible with columns in C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rows in A are incompatible with rows in C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Columns in A are incompatible with rows in B"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multTransA(Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRBlock;)V
    .locals 10

    .line 68
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v2, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ne v0, v2, :cond_3

    .line 70
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v2, p2, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ne v0, v2, :cond_2

    .line 72
    iget v0, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v2, p2, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ne v0, v2, :cond_1

    .line 74
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v2, p1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v2, p2, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    if-ne v0, v2, :cond_0

    .line 77
    iget v7, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    .line 79
    new-instance v8, Lorg/ejml/data/FSubmatrixD1;

    const/4 v2, 0x0

    iget v3, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    const/4 v4, 0x0

    iget v5, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;IIII)V

    .line 80
    new-instance v9, Lorg/ejml/data/FSubmatrixD1;

    iget v3, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v5, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;IIII)V

    .line 81
    new-instance v6, Lorg/ejml/data/FSubmatrixD1;

    iget v3, p2, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v5, p2, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;IIII)V

    .line 83
    invoke-static {v7, v8, v9, v6}, Lorg/ejml/dense/block/MatrixMult_MT_FDRB;->multTransA(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V

    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Block lengths are not all the same."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Columns in B are incompatible with columns in C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Columns in A are incompatible with rows in C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rows in A are incompatible with rows in B"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multTransB(Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRBlock;)V
    .locals 10

    .line 87
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v2, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ne v0, v2, :cond_3

    .line 89
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v2, p2, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ne v0, v2, :cond_2

    .line 91
    iget v0, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v2, p2, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ne v0, v2, :cond_1

    .line 93
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v2, p1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v2, p2, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    if-ne v0, v2, :cond_0

    .line 96
    iget v7, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    .line 98
    new-instance v8, Lorg/ejml/data/FSubmatrixD1;

    const/4 v2, 0x0

    iget v3, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    const/4 v4, 0x0

    iget v5, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;IIII)V

    .line 99
    new-instance v9, Lorg/ejml/data/FSubmatrixD1;

    iget v3, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v5, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;IIII)V

    .line 100
    new-instance v6, Lorg/ejml/data/FSubmatrixD1;

    iget v3, p2, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v5, p2, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;IIII)V

    .line 102
    invoke-static {v7, v8, v9, v6}, Lorg/ejml/dense/block/MatrixMult_MT_FDRB;->multTransB(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V

    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Block lengths are not all the same."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rows in B are incompatible with columns in C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rows in A are incompatible with rows in C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Columns in A are incompatible with columns in B"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
