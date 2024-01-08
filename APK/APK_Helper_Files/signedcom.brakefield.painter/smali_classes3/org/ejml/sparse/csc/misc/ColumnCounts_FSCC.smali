.class public Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;
.super Ljava/lang/Object;
.source "ColumnCounts_FSCC.java"


# instance fields
.field private final At:Lorg/ejml/data/FMatrixSparseCSC;

.field ancestor:I

.field private final ata:Z

.field first:I

.field gw:Lorg/ejml/data/IGrowArray;

.field head:I

.field jleaf:I

.field m:I

.field maxfirst:I

.field n:I

.field next:I

.field prevleaf:I

.field w:[I


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/ejml/data/FMatrixSparseCSC;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1, v1}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->At:Lorg/ejml/data/FMatrixSparseCSC;

    .line 47
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/IGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    .line 71
    iput-boolean p1, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->ata:Z

    return-void
.end method

.method private HEAD(II)I
    .locals 1

    .line 164
    iget-boolean v0, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->ata:Z

    if-eqz v0, :cond_0

    iget-object p2, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->w:[I

    iget v0, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->head:I

    add-int/2addr v0, p1

    aget p2, p2, v0

    :cond_0
    return p2
.end method

.method private NEXT(I)I
    .locals 2

    .line 168
    iget-boolean v0, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->ata:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->w:[I

    iget v1, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->next:I

    add-int/2addr v1, p1

    aget p1, v0, v1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private init_ata([I)V
    .locals 8

    .line 172
    iget-object v0, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->At:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v0, v0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    .line 173
    iget-object v1, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->At:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    .line 175
    iget v2, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->n:I

    mul-int/lit8 v3, v2, 0x4

    iput v3, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->head:I

    mul-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x1

    .line 176
    iput v2, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->next:I

    const/4 v2, 0x0

    move v3, v2

    .line 179
    :goto_0
    iget v4, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->n:I

    if-ge v3, v4, :cond_0

    .line 180
    iget-object v4, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->w:[I

    aget v5, p1, v3

    aput v3, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 182
    :cond_0
    :goto_1
    iget p1, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->m:I

    if-ge v2, p1, :cond_2

    .line 184
    iget p1, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->n:I

    aget v3, v0, v2

    :goto_2
    add-int/lit8 v4, v2, 0x1

    aget v5, v0, v4

    if-ge v3, v5, :cond_1

    .line 185
    iget-object v4, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->w:[I

    aget v5, v1, v3

    aget v4, v4, v5

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 187
    :cond_1
    iget-object v3, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->w:[I

    iget v5, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->next:I

    add-int/2addr v5, v2

    iget v6, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->head:I

    add-int v7, v6, p1

    aget v7, v3, v7

    aput v7, v3, v5

    add-int/2addr v6, p1

    .line 188
    aput v2, v3, v6

    move v2, v4

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method findFirstDescendant([I[I[I)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 150
    :goto_0
    iget v2, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->n:I

    if-ge v1, v2, :cond_2

    .line 151
    aget v2, p2, v1

    .line 154
    iget-object v3, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->w:[I

    iget v4, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->first:I

    add-int/2addr v4, v2

    aget v3, v3, v4

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    aput v3, p3, v2

    :goto_2
    if-eq v2, v4, :cond_1

    .line 157
    iget-object v3, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->w:[I

    iget v5, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->first:I

    add-int v6, v5, v2

    aget v6, v3, v6

    if-ne v6, v4, :cond_1

    add-int/2addr v5, v2

    .line 158
    aput v1, v3, v5

    .line 157
    aget v2, p1, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method getW()[I
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->w:[I

    return-object v0
.end method

.method initialize(Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 6

    .line 78
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iput v0, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->m:I

    .line 79
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iput v0, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->n:I

    mul-int/lit8 v1, v0, 0x4

    .line 80
    iget-boolean v2, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->ata:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->m:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    add-int/2addr v1, v0

    .line 82
    iget-object v0, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    invoke-virtual {v0, v1}, Lorg/ejml/data/IGrowArray;->reshape(I)V

    .line 83
    iget-object v0, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    iget-object v0, v0, Lorg/ejml/data/IGrowArray;->data:[I

    iput-object v0, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->w:[I

    .line 86
    iget-object v0, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->At:Lorg/ejml/data/FMatrixSparseCSC;

    iget v2, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v4, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v5, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-virtual {v0, v2, v4, v5}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    .line 87
    iget-object v0, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->At:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v2, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    invoke-static {p1, v0, v2}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->transpose(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)Lorg/ejml/data/FMatrixSparseCSC;

    .line 90
    iget-object p1, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->w:[I

    const/4 v0, -0x1

    invoke-static {p1, v3, v1, v0}, Ljava/util/Arrays;->fill([IIII)V

    .line 92
    iput v3, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->ancestor:I

    .line 93
    iget p1, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->n:I

    iput p1, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->maxfirst:I

    mul-int/lit8 v0, p1, 0x2

    .line 94
    iput v0, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->prevleaf:I

    mul-int/lit8 p1, p1, 0x3

    .line 95
    iput p1, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->first:I

    return-void
.end method

.method isLeaf(II)I
    .locals 6

    const/4 v0, 0x0

    .line 209
    iput v0, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->jleaf:I

    const/4 v0, -0x1

    if-le p1, p2, :cond_4

    .line 212
    iget-object v1, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->w:[I

    iget v2, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->first:I

    add-int v3, v2, p2

    aget v3, v1, v3

    iget v4, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->maxfirst:I

    add-int v5, v4, p1

    aget v5, v1, v5

    if-gt v3, v5, :cond_0

    goto :goto_2

    :cond_0
    add-int/2addr v4, p1

    add-int/2addr v2, p2

    .line 215
    aget v2, v1, v2

    aput v2, v1, v4

    .line 216
    iget v2, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->prevleaf:I

    add-int v3, v2, p1

    aget v3, v1, v3

    add-int/2addr v2, p1

    .line 217
    aput p2, v1, v2

    if-ne v3, v0, :cond_1

    const/4 p2, 0x1

    .line 220
    iput p2, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->jleaf:I

    return p1

    :cond_1
    const/4 p1, 0x2

    .line 223
    iput p1, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->jleaf:I

    move p1, v3

    .line 228
    :goto_0
    iget-object p2, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->w:[I

    iget v0, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->ancestor:I

    add-int v1, v0, p1

    aget v1, p2, v1

    if-eq p1, v1, :cond_2

    add-int/2addr v0, p1

    aget p1, p2, v0

    goto :goto_0

    :cond_2
    :goto_1
    if-eq v3, p1, :cond_3

    .line 232
    iget-object p2, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->w:[I

    iget v0, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->ancestor:I

    add-int v1, v0, v3

    aget v1, p2, v1

    add-int/2addr v0, v3

    .line 233
    aput p1, p2, v0

    move v3, v1

    goto :goto_1

    :cond_3
    return p1

    :cond_4
    :goto_2
    return v0
.end method

.method public process(Lorg/ejml/data/FMatrixSparseCSC;[I[I[I)V
    .locals 11

    .line 107
    array-length v0, p4

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-lt v0, v1, :cond_b

    .line 110
    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->initialize(Lorg/ejml/data/FMatrixSparseCSC;)V

    .line 113
    invoke-virtual {p0, p2, p3, p4}, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->findFirstDescendant([I[I[I)V

    .line 115
    iget-boolean p1, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->ata:Z

    if-eqz p1, :cond_0

    .line 116
    invoke-direct {p0, p3}, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->init_ata([I)V

    :cond_0
    const/4 p1, 0x0

    move v0, p1

    .line 118
    :goto_0
    iget v1, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->n:I

    if-ge v0, v1, :cond_1

    .line 119
    iget-object v1, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->w:[I

    iget v2, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->ancestor:I

    add-int/2addr v2, v0

    aput v0, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->At:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v0, v0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    .line 122
    iget-object v1, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->At:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    move v2, p1

    .line 124
    :goto_1
    iget v3, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->n:I

    const/4 v4, -0x1

    if-ge v2, v3, :cond_8

    .line 125
    aget v3, p3, v2

    .line 126
    aget v5, p2, v3

    const/4 v6, 0x1

    if-eq v5, v4, :cond_2

    .line 127
    aget v7, p4, v5

    sub-int/2addr v7, v6

    aput v7, p4, v5

    .line 128
    :cond_2
    invoke-direct {p0, v2, v3}, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->HEAD(II)I

    move-result v5

    :goto_2
    if-eq v5, v4, :cond_6

    .line 129
    aget v7, v0, v5

    :goto_3
    add-int/lit8 v8, v5, 0x1

    aget v8, v0, v8

    if-ge v7, v8, :cond_5

    .line 130
    aget v8, v1, v7

    .line 131
    invoke-virtual {p0, v8, v3}, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->isLeaf(II)I

    move-result v8

    .line 132
    iget v9, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->jleaf:I

    if-lt v9, v6, :cond_3

    .line 133
    aget v10, p4, v3

    add-int/2addr v10, v6

    aput v10, p4, v3

    :cond_3
    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 135
    aget v9, p4, v8

    sub-int/2addr v9, v6

    aput v9, p4, v8

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 128
    :cond_5
    invoke-direct {p0, v5}, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->NEXT(I)I

    move-result v5

    goto :goto_2

    .line 138
    :cond_6
    aget v5, p2, v3

    if-eq v5, v4, :cond_7

    .line 139
    iget-object v4, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->w:[I

    iget v6, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->ancestor:I

    add-int/2addr v6, v3

    aput v5, v4, v6

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 143
    :cond_8
    :goto_4
    iget p3, p0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->n:I

    if-ge p1, p3, :cond_a

    .line 144
    aget p3, p2, p1

    if-eq p3, v4, :cond_9

    .line 145
    aget v0, p4, p3

    aget v1, p4, p1

    add-int/2addr v0, v1

    aput v0, p4, p3

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_a
    return-void

    .line 108
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "counts must be at least of length A.numCols"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
