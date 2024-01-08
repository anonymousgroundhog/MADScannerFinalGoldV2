.class public Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;
.super Ljava/lang/Object;
.source "QrStructuralCounts_FSCC.java"


# instance fields
.field A:Lorg/ejml/data/FMatrixSparseCSC;

.field columnCounts:Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;

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

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 44
    iput-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->leftmost:[I

    new-array v1, v0, [I

    .line 46
    iput-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->pinv:[I

    new-array v1, v0, [I

    .line 48
    iput-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->parent:[I

    new-array v1, v0, [I

    .line 49
    iput-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->post:[I

    .line 50
    new-instance v1, Lorg/ejml/data/IGrowArray;

    invoke-direct {v1}, Lorg/ejml/data/IGrowArray;-><init>()V

    iput-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->gwork:Lorg/ejml/data/IGrowArray;

    new-array v0, v0, [I

    .line 53
    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->countsR:[I

    .line 61
    new-instance v0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;-><init>(Z)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->columnCounts:Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;

    return-void
.end method


# virtual methods
.method countNonZeroInR([I)V
    .locals 4

    .line 117
    iget v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->n:I

    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->post:[I

    iget-object v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->gwork:Lorg/ejml/data/IGrowArray;

    invoke-static {p1, v0, v1, v2}, Lorg/ejml/sparse/csc/misc/TriangularSolver_FSCC;->postorder([II[ILorg/ejml/data/IGrowArray;)V

    .line 118
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->columnCounts:Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;

    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->A:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->post:[I

    iget-object v3, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->countsR:[I

    invoke-virtual {v0, v1, p1, v2, v3}, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->process(Lorg/ejml/data/FMatrixSparseCSC;[I[I[I)V

    const/4 p1, 0x0

    .line 119
    iput p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->nz_in_R:I

    .line 120
    :goto_0
    iget v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->n:I

    if-ge p1, v0, :cond_0

    .line 121
    iget v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->nz_in_R:I

    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->countsR:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->nz_in_R:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 123
    :cond_0
    iget p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->nz_in_R:I

    if-ltz p1, :cond_1

    return-void

    .line 124
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Too many elements. Numerical overflow in R counts"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method countNonZeroInV([I)V
    .locals 2

    .line 131
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->gwork:Lorg/ejml/data/IGrowArray;

    iget-object v0, v0, Lorg/ejml/data/IGrowArray;->data:[I

    .line 132
    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->leftmost:[I

    invoke-virtual {p0, v1}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->findMinElementIndexInRows([I)V

    .line 133
    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->leftmost:[I

    invoke-virtual {p0, v1, v0}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->createRowElementLinkedLists([I[I)V

    .line 134
    invoke-virtual {p0, p1, v0}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->countNonZeroUsingLinkedList([I[I)V

    return-void
.end method

.method countNonZeroUsingLinkedList([I[I)V
    .locals 10

    .line 146
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->pinv:[I

    iget v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->m:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 147
    iput v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->nz_in_V:I

    .line 148
    iget v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->m:I

    iput v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->m2:I

    move v0, v2

    .line 150
    :goto_0
    iget v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->n:I

    if-ge v0, v1, :cond_4

    .line 151
    iget v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->head:I

    add-int v4, v1, v0

    aget v4, p2, v4

    .line 152
    iget v5, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->nz_in_V:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->nz_in_V:I

    if-gez v4, :cond_0

    .line 154
    iget v4, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->m2:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->m2:I

    .line 155
    :cond_0
    iget-object v6, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->pinv:[I

    aput v0, v6, v4

    .line 156
    iget v6, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->nque:I

    add-int v7, v6, v0

    aget v8, p2, v7

    add-int/lit8 v8, v8, -0x1

    aput v8, p2, v7

    if-gtz v8, :cond_1

    goto :goto_1

    :cond_1
    add-int v7, v6, v0

    .line 158
    aget v7, p2, v7

    add-int/2addr v5, v7

    iput v5, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->nz_in_V:I

    .line 160
    aget v5, p1, v0

    if-eq v5, v3, :cond_3

    add-int v7, v6, v5

    .line 161
    aget v7, p2, v7

    if-nez v7, :cond_2

    .line 162
    iget v7, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->tail:I

    add-int v8, v7, v5

    add-int/2addr v7, v0

    aget v7, p2, v7

    aput v7, p2, v8

    .line 163
    :cond_2
    iget v7, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->next:I

    iget v8, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->tail:I

    add-int/2addr v8, v0

    aget v8, p2, v8

    add-int/2addr v8, v7

    add-int v9, v1, v5

    aget v9, p2, v9

    aput v9, p2, v8

    add-int/2addr v1, v5

    add-int/2addr v7, v4

    .line 164
    aget v4, p2, v7

    aput v4, p2, v1

    add-int/2addr v5, v6

    .line 165
    aget v1, p2, v5

    add-int/2addr v6, v0

    aget v4, p2, v6

    add-int/2addr v1, v4

    aput v1, p2, v5

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_4
    :goto_2
    iget p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->m:I

    if-ge v2, p1, :cond_6

    .line 169
    iget-object p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->pinv:[I

    aget p2, p1, v2

    if-gez p2, :cond_5

    add-int/lit8 p2, v1, 0x1

    .line 170
    aput v1, p1, v2

    move v1, p2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 173
    :cond_6
    iget p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->nz_in_V:I

    if-ltz p1, :cond_7

    return-void

    .line 174
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

    .line 184
    :goto_0
    iget v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->n:I

    const/4 v3, -0x1

    if-ge v1, v2, :cond_0

    .line 185
    iget v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->head:I

    add-int/2addr v2, v1

    aput v3, p2, v2

    .line 186
    iget v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->tail:I

    add-int/2addr v2, v1

    aput v3, p2, v2

    .line 187
    iget v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->nque:I

    add-int/2addr v2, v1

    aput v0, p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_0
    iget v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->m:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 192
    aget v1, p1, v0

    if-ne v1, v3, :cond_1

    goto :goto_2

    .line 195
    :cond_1
    iget v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->nque:I

    add-int/2addr v2, v1

    aget v4, p2, v2

    add-int/lit8 v5, v4, 0x1

    aput v5, p2, v2

    if-nez v4, :cond_2

    .line 196
    iget v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->tail:I

    add-int/2addr v2, v1

    aput v0, p2, v2

    .line 197
    :cond_2
    iget v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->next:I

    add-int/2addr v2, v0

    iget v4, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->head:I

    add-int v5, v4, v1

    aget v5, p2, v5

    aput v5, p2, v2

    add-int/2addr v4, v1

    .line 198
    aput v0, p2, v4

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method findMinElementIndexInRows([I)V
    .locals 4

    .line 232
    iget v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->m:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 235
    iget v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->n:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 236
    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->A:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v0

    .line 237
    iget-object v2, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->A:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v2, v2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    :goto_1
    if-ge v1, v2, :cond_0

    .line 240
    iget-object v3, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->A:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v3, v3, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

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

    .line 250
    iget v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->m2:I

    return v0
.end method

.method public getLeftMost()[I
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->leftmost:[I

    return-object v0
.end method

.method public getM2()I
    .locals 1

    .line 266
    iget v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->m2:I

    return v0
.end method

.method public getParent()[I
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->parent:[I

    return-object v0
.end method

.method public getPinv()[I
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->pinv:[I

    return-object v0
.end method

.method init(Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 2

    .line 94
    iput-object p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->A:Lorg/ejml/data/FMatrixSparseCSC;

    .line 95
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iput v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->m:I

    .line 96
    iget p1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iput p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->n:I

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->next:I

    .line 99
    iget v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->m:I

    iput v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->head:I

    add-int v1, v0, p1

    .line 100
    iput v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->tail:I

    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v1, v0

    .line 101
    iput v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->nque:I

    .line 103
    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->parent:[I

    array-length v1, v1

    if-lt v1, p1, :cond_0

    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->leftmost:[I

    array-length v1, v1

    if-ge v1, v0, :cond_1

    .line 104
    :cond_0
    new-array v1, p1, [I

    iput-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->parent:[I

    .line 105
    new-array v1, p1, [I

    iput-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->post:[I

    add-int v1, v0, p1

    .line 106
    new-array v1, v1, [I

    iput-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->pinv:[I

    .line 107
    new-array v1, p1, [I

    iput-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->countsR:[I

    .line 108
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->leftmost:[I

    .line 110
    :cond_1
    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->gwork:Lorg/ejml/data/IGrowArray;

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Lorg/ejml/data/IGrowArray;->reshape(I)V

    return-void
.end method

.method public process(Lorg/ejml/data/FMatrixSparseCSC;)Z
    .locals 4

    .line 70
    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->init(Lorg/ejml/data/FMatrixSparseCSC;)V

    .line 72
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->parent:[I

    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->gwork:Lorg/ejml/data/IGrowArray;

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lorg/ejml/sparse/csc/misc/TriangularSolver_FSCC;->eliminationTree(Lorg/ejml/data/FMatrixSparseCSC;Z[ILorg/ejml/data/IGrowArray;)V

    .line 74
    iget-object p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->parent:[I

    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->countNonZeroInR([I)V

    .line 75
    iget-object p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->parent:[I

    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->countNonZeroInV([I)V

    .line 80
    iget p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->m:I

    iget v0, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->n:I

    if-ge p1, v0, :cond_1

    const/4 p1, 0x0

    move v0, p1

    .line 81
    :goto_0
    iget v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->m:I

    if-ge v0, v1, :cond_1

    .line 82
    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->gwork:Lorg/ejml/data/IGrowArray;

    iget-object v1, v1, Lorg/ejml/data/IGrowArray;->data:[I

    iget v3, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->head:I

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

    .line 246
    iput-object p1, p0, Lorg/ejml/sparse/csc/decomposition/qr/QrStructuralCounts_FSCC;->gwork:Lorg/ejml/data/IGrowArray;

    return-void
.end method
