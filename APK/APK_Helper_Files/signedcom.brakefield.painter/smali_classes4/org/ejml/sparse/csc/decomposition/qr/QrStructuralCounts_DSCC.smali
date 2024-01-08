.class public Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;
.super Ljava/lang/Object;
.source "QrStructuralCounts_DSCC.java"


# instance fields
.field A:Lorg/ejml/data/DMatrixSparseCSC;

.field columnCounts:Lorg/ejml/sparse/csc/misc/ColumnCounts_DSCC;

.field countsR:[I

.field gwork:Lorg/ejml/data/IGrowArray;

.field head:I

.field leftmost:[I

.field m:I

.field m2:I

.field n:I

.field next:I

.field nque:I

.field nz_in_R:I

.field nz_in_V:I

.field parent:[I

.field pinv:[I

.field post:[I

.field tail:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 42
    iput-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->leftmost:[I

    new-array v1, v0, [I

    .line 44
    iput-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->pinv:[I

    new-array v1, v0, [I

    .line 46
    iput-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->parent:[I

    new-array v1, v0, [I

    .line 47
    iput-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->post:[I

    .line 48
    new-instance v1, Lorg/ejml/data/IGrowArray;

    invoke-direct {v1}, Lorg/ejml/data/IGrowArray;-><init>()V

    iput-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->gwork:Lorg/ejml/data/IGrowArray;

    new-array v0, v0, [I

    .line 51
    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->countsR:[I

    .line 59
    new-instance v0, Lorg/ejml/sparse/csc/misc/ColumnCounts_DSCC;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/ejml/sparse/csc/misc/ColumnCounts_DSCC;-><init>(Z)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->columnCounts:Lorg/ejml/sparse/csc/misc/ColumnCounts_DSCC;

    return-void
.end method


# virtual methods
.method countNonZeroInR([I)V
    .locals 4

    .line 115
    iget v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->n:I

    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->post:[I

    iget-object v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->gwork:Lorg/ejml/data/IGrowArray;

    invoke-static {p1, v0, v1, v2}, Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;->postorder([II[ILorg/ejml/data/IGrowArray;)V

    .line 116
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->columnCounts:Lorg/ejml/sparse/csc/misc/ColumnCounts_DSCC;

    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->A:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->post:[I

    iget-object v3, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->countsR:[I

    invoke-virtual {v0, v1, p1, v2, v3}, Lorg/ejml/sparse/csc/misc/ColumnCounts_DSCC;->process(Lorg/ejml/data/DMatrixSparseCSC;[I[I[I)V

    const/4 p1, 0x0

    .line 117
    iput p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->nz_in_R:I

    .line 118
    :goto_0
    iget v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->n:I

    if-ge p1, v0, :cond_0

    .line 119
    iget v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->nz_in_R:I

    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->countsR:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->nz_in_R:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 121
    :cond_0
    iget p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->nz_in_R:I

    if-ltz p1, :cond_1

    return-void

    .line 122
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Too many elements. Numerical overflow in R counts"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method countNonZeroInV([I)V
    .locals 2

    .line 129
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->gwork:Lorg/ejml/data/IGrowArray;

    iget-object v0, v0, Lorg/ejml/data/IGrowArray;->data:[I

    .line 130
    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->leftmost:[I

    invoke-virtual {p0, v1}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->findMinElementIndexInRows([I)V

    .line 131
    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->leftmost:[I

    invoke-virtual {p0, v1, v0}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->createRowElementLinkedLists([I[I)V

    .line 132
    invoke-virtual {p0, p1, v0}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->countNonZeroUsingLinkedList([I[I)V

    return-void
.end method

.method countNonZeroUsingLinkedList([I[I)V
    .locals 10

    .line 144
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->pinv:[I

    iget v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->m:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 145
    iput v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->nz_in_V:I

    .line 146
    iget v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->m:I

    iput v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->m2:I

    move v0, v2

    .line 148
    :goto_0
    iget v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->n:I

    if-ge v0, v1, :cond_4

    .line 149
    iget v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->head:I

    add-int v4, v1, v0

    aget v4, p2, v4

    .line 150
    iget v5, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->nz_in_V:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->nz_in_V:I

    if-gez v4, :cond_0

    .line 152
    iget v4, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->m2:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->m2:I

    .line 153
    :cond_0
    iget-object v6, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->pinv:[I

    aput v0, v6, v4

    .line 154
    iget v6, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->nque:I

    add-int v7, v6, v0

    aget v8, p2, v7

    add-int/lit8 v8, v8, -0x1

    aput v8, p2, v7

    if-gtz v8, :cond_1

    goto :goto_1

    :cond_1
    add-int v7, v6, v0

    .line 156
    aget v7, p2, v7

    add-int/2addr v5, v7

    iput v5, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->nz_in_V:I

    .line 158
    aget v5, p1, v0

    if-eq v5, v3, :cond_3

    add-int v7, v6, v5

    .line 159
    aget v7, p2, v7

    if-nez v7, :cond_2

    .line 160
    iget v7, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->tail:I

    add-int v8, v7, v5

    add-int/2addr v7, v0

    aget v7, p2, v7

    aput v7, p2, v8

    .line 161
    :cond_2
    iget v7, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->next:I

    iget v8, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->tail:I

    add-int/2addr v8, v0

    aget v8, p2, v8

    add-int/2addr v8, v7

    add-int v9, v1, v5

    aget v9, p2, v9

    aput v9, p2, v8

    add-int/2addr v1, v5

    add-int/2addr v7, v4

    .line 162
    aget v4, p2, v7

    aput v4, p2, v1

    add-int/2addr v5, v6

    .line 163
    aget v1, p2, v5

    add-int/2addr v6, v0

    aget v4, p2, v6

    add-int/2addr v1, v4

    aput v1, p2, v5

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_4
    :goto_2
    iget p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->m:I

    if-ge v2, p1, :cond_6

    .line 167
    iget-object p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->pinv:[I

    aget p2, p1, v2

    if-gez p2, :cond_5

    add-int/lit8 p2, v1, 0x1

    .line 168
    aput v1, p1, v2

    move v1, p2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 171
    :cond_6
    iget p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->nz_in_V:I

    if-ltz p1, :cond_7

    return-void

    .line 172
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Too many elements. Numerical overflow in V counts"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method createRowElementLinkedLists([I[I)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 182
    :goto_0
    iget v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->n:I

    const/4 v3, -0x1

    if-ge v1, v2, :cond_0

    .line 183
    iget v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->head:I

    add-int/2addr v2, v1

    aput v3, p2, v2

    .line 184
    iget v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->tail:I

    add-int/2addr v2, v1

    aput v3, p2, v2

    .line 185
    iget v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->nque:I

    add-int/2addr v2, v1

    aput v0, p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_0
    iget v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->m:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 190
    aget v1, p1, v0

    if-ne v1, v3, :cond_1

    goto :goto_2

    .line 193
    :cond_1
    iget v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->nque:I

    add-int/2addr v2, v1

    aget v4, p2, v2

    add-int/lit8 v5, v4, 0x1

    aput v5, p2, v2

    if-nez v4, :cond_2

    .line 194
    iget v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->tail:I

    add-int/2addr v2, v1

    aput v0, p2, v2

    .line 195
    :cond_2
    iget v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->next:I

    add-int/2addr v2, v0

    iget v4, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->head:I

    add-int v5, v4, v1

    aget v5, p2, v5

    aput v5, p2, v2

    add-int/2addr v4, v1

    .line 196
    aput v0, p2, v4

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method findMinElementIndexInRows([I)V
    .locals 4

    .line 230
    iget v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->m:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 233
    iget v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->n:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 234
    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->A:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 235
    iget-object v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->A:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v2, v2, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    :goto_1
    if-ge v1, v2, :cond_0

    .line 238
    iget-object v3, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->A:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v3, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v1

    aput v0, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getFicticousRowCount()I
    .locals 1

    .line 248
    iget v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->m2:I

    return v0
.end method

.method public getLeftMost()[I
    .locals 1

    .line 252
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->leftmost:[I

    return-object v0
.end method

.method public getM2()I
    .locals 1

    .line 264
    iget v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->m2:I

    return v0
.end method

.method public getParent()[I
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->parent:[I

    return-object v0
.end method

.method public getPinv()[I
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->pinv:[I

    return-object v0
.end method

.method init(Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 2

    .line 92
    iput-object p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->A:Lorg/ejml/data/DMatrixSparseCSC;

    .line 93
    iget v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iput v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->m:I

    .line 94
    iget p1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iput p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->n:I

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->next:I

    .line 97
    iget v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->m:I

    iput v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->head:I

    add-int v1, v0, p1

    .line 98
    iput v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->tail:I

    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v1, v0

    .line 99
    iput v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->nque:I

    .line 101
    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->parent:[I

    array-length v1, v1

    if-lt v1, p1, :cond_0

    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->leftmost:[I

    array-length v1, v1

    if-ge v1, v0, :cond_1

    .line 102
    :cond_0
    new-array v1, p1, [I

    iput-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->parent:[I

    .line 103
    new-array v1, p1, [I

    iput-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->post:[I

    add-int v1, v0, p1

    .line 104
    new-array v1, v1, [I

    iput-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->pinv:[I

    .line 105
    new-array v1, p1, [I

    iput-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->countsR:[I

    .line 106
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->leftmost:[I

    .line 108
    :cond_1
    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->gwork:Lorg/ejml/data/IGrowArray;

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Lorg/ejml/data/IGrowArray;->reshape(I)V

    return-void
.end method

.method public process(Lorg/ejml/data/DMatrixSparseCSC;)Z
    .locals 4

    .line 68
    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->init(Lorg/ejml/data/DMatrixSparseCSC;)V

    .line 70
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->parent:[I

    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->gwork:Lorg/ejml/data/IGrowArray;

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;->eliminationTree(Lorg/ejml/data/DMatrixSparseCSC;Z[ILorg/ejml/data/IGrowArray;)V

    .line 72
    iget-object p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->parent:[I

    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->countNonZeroInR([I)V

    .line 73
    iget-object p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->parent:[I

    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->countNonZeroInV([I)V

    .line 78
    iget p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->m:I

    iget v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->n:I

    if-ge p1, v0, :cond_1

    const/4 p1, 0x0

    move v0, p1

    .line 79
    :goto_0
    iget v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->m:I

    if-ge v0, v1, :cond_1

    .line 80
    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->gwork:Lorg/ejml/data/IGrowArray;

    iget-object v1, v1, Lorg/ejml/data/IGrowArray;->data:[I

    iget v3, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->head:I

    add-int/2addr v3, v0

    aget v1, v1, v3

    if-gez v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public setGwork(Lorg/ejml/data/IGrowArray;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_DSCC;->gwork:Lorg/ejml/data/IGrowArray;

    return-void
.end method
