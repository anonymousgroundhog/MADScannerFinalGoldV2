.class public Lorg/ejml/data/DMatrixSparseCSC;
.super Ljava/lang/Object;
.source "DMatrixSparseCSC.java"

# interfaces
.implements Lorg/ejml/data/DMatrixSparse;


# instance fields
.field public col_idx:[I

.field public indicesSorted:Z

.field public numCols:I

.field public numRows:I

.field public nz_length:I

.field public nz_rows:[I

.field public nz_values:[D


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, v0}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Lorg/ejml/UtilEjml;->ZERO_LENGTH_F64:[D

    iput-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    .line 54
    sget-object v0, Lorg/ejml/UtilEjml;->ZERO_LENGTH_I32:[I

    iput-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    .line 95
    iput p1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    .line 96
    iput p2, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    .line 97
    iput v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/lit8 p2, p2, 0x1

    .line 98
    new-array p1, p2, [I

    iput-object p1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    .line 99
    invoke-virtual {p0, p3, v0}, Lorg/ejml/data/DMatrixSparseCSC;->growMaxLength(IZ)V

    return-void

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Rows, columns, and arrayLength must be not be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 3

    .line 103
    iget v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v2, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-direct {p0, v0, v1, v2}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    .line 105
    invoke-virtual {p0, p1}, Lorg/ejml/data/DMatrixSparseCSC;->set(Lorg/ejml/data/Matrix;)V

    return-void
.end method


# virtual methods
.method public copy()Lorg/ejml/data/DMatrixSparseCSC;
    .locals 1

    .line 120
    new-instance v0, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-direct {v0, p0}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(Lorg/ejml/data/DMatrixSparseCSC;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/ejml/data/Matrix;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixSparseCSC;->copy()Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object v0

    return-object v0
.end method

.method public copyStructure(Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 4

    .line 438
    iget v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v2, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    .line 439
    iget v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iput v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    .line 440
    iget-object v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v2, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 441
    iget-object v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget p1, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-static {v0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public create(II)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 1

    .line 304
    new-instance v0, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic create(II)Lorg/ejml/data/Matrix;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrixSparseCSC;->create(II)Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p1

    return-object p1
.end method

.method public createCoordinateIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;",
            ">;"
        }
    .end annotation

    .line 469
    new-instance v0, Lorg/ejml/data/DMatrixSparseCSC$1;

    invoke-direct {v0, p0}, Lorg/ejml/data/DMatrixSparseCSC$1;-><init>(Lorg/ejml/data/DMatrixSparseCSC;)V

    return-object v0
.end method

.method public createLike()Lorg/ejml/data/DMatrixSparseCSC;
    .locals 3

    .line 125
    new-instance v0, Lorg/ejml/data/DMatrixSparseCSC;

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic createLike()Lorg/ejml/data/Matrix;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixSparseCSC;->createLike()Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object v0

    return-object v0
.end method

.method public get(II)D
    .locals 1

    if-ltz p1, :cond_0

    .line 176
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge p2, v0, :cond_0

    .line 179
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrixSparseCSC;->unsafe_get(II)D

    move-result-wide p1

    return-wide p1

    .line 177
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Outside of matrix bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(IID)D
    .locals 1

    if-ltz p1, :cond_0

    .line 184
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge p2, v0, :cond_0

    .line 187
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/data/DMatrixSparseCSC;->unsafe_get(IID)D

    move-result-wide p1

    return-wide p1

    .line 185
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Outside of matrix bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNonZeroCount()I
    .locals 1

    .line 503
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    return v0
.end method

.method public getNonZeroLength()I
    .locals 1

    .line 309
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    return v0
.end method

.method public getNumCols()I
    .locals 1

    .line 115
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    return v0
.end method

.method public getNumElements()I
    .locals 1

    .line 314
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    return v0
.end method

.method public getNumRows()I
    .locals 1

    .line 110
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    return v0
.end method

.method public getType()Lorg/ejml/data/MatrixType;
    .locals 1

    .line 464
    sget-object v0, Lorg/ejml/data/MatrixType;->DSCC:Lorg/ejml/data/MatrixType;

    return-object v0
.end method

.method public growMaxColumns(IZ)V
    .locals 2

    .line 393
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    array-length v1, v0

    add-int/lit8 p1, p1, 0x1

    if-ge v1, p1, :cond_1

    .line 394
    new-array p1, p1, [I

    if-eqz p2, :cond_0

    .line 396
    array-length p2, v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    :cond_0
    iput-object p1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    :cond_1
    return-void
.end method

.method public growMaxLength(IZ)V
    .locals 3

    if-ltz p1, :cond_2

    .line 372
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    array-length v1, v0

    if-le p1, v1, :cond_1

    .line 373
    new-array v1, p1, [D

    .line 374
    new-array p1, p1, [I

    if-eqz p2, :cond_0

    .line 377
    iget p2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    iget-object p2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-static {p2, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    :cond_0
    iput-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    .line 382
    iput-object p1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    :cond_1
    return-void

    .line 362
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Negative array length. Overflow?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public histogramToStructure([I)V
    .locals 5

    .line 408
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v0, 0x1

    move v2, v1

    .line 410
    :goto_0
    iget v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-gt v0, v3, :cond_0

    .line 411
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v4, v0, -0x1

    aget v4, p1, v4

    add-int/2addr v2, v4

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 413
    :cond_0
    iput v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    .line 414
    invoke-virtual {p0, v2, v1}, Lorg/ejml/data/DMatrixSparseCSC;->growMaxLength(IZ)V

    .line 415
    iget-object p1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    aget p1, p1, v0

    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ne p1, v0, :cond_1

    return-void

    .line 416
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Egads"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isAssigned(II)Z
    .locals 0

    .line 171
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrixSparseCSC;->nz_index(II)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isFull()Z
    .locals 3

    .line 459
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    mul-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIndicesSorted()Z
    .locals 1

    .line 450
    iget-boolean v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    return v0
.end method

.method public nz_index(II)I
    .locals 2

    .line 215
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    .line 216
    aget p2, v0, p2

    .line 218
    iget-boolean v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    invoke-static {v0, v1, p2, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result p1

    return p1

    :cond_0
    :goto_0
    if-ge v1, p2, :cond_2

    .line 222
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v0, v0, v1

    if-ne v0, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public print()V
    .locals 2

    .line 142
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, 0xb

    invoke-static {v0, p0, v1}, Lorg/ejml/ops/MatrixIO;->printFancy(Ljava/io/PrintStream;Lorg/ejml/data/DMatrixSparseCSC;I)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1

    .line 147
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0, p1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/DMatrixSparseCSC;Ljava/lang/String;)V

    return-void
.end method

.method public printNonZero()V
    .locals 9

    .line 153
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/ejml/data/DMatrixSparseCSC;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ejml/data/MatrixType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , rows = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , cols = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , nz_length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 156
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_1

    .line 157
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    .line 158
    aget v1, v1, v3

    :goto_1
    if-ge v2, v1, :cond_0

    .line 161
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v2

    .line 162
    iget-object v5, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v5, v5, v2

    .line 164
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v4, v8, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%d %d %11.4E\n"

    invoke-virtual {v7, v5, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(II)V
    .locals 3

    .line 278
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrixSparseCSC;->nz_index(II)I

    move-result p1

    if-gez p1, :cond_0

    return-void

    :cond_0
    :goto_0
    add-int/lit8 p2, p2, 0x1

    .line 284
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-gt p2, v0, :cond_1

    .line 285
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v0, p2

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p2

    goto :goto_0

    .line 288
    :cond_1
    iget p2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    .line 289
    :goto_1
    iget p2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge p1, p2, :cond_2

    .line 290
    iget-object p2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    add-int/lit8 v0, p1, 0x1

    aget v1, p2, v0

    aput v1, p2, p1

    .line 291
    iget-object p2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v1, p2, v0

    aput-wide v1, p2, p1

    move p1, v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method public reshape(II)V
    .locals 1

    const/4 v0, 0x0

    .line 336
    invoke-virtual {p0, p1, p2, v0}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    return-void
.end method

.method public reshape(III)V
    .locals 1

    const/4 v0, 0x0

    .line 321
    iput-boolean v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    .line 322
    iput p1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    .line 323
    iput p2, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    .line 324
    invoke-virtual {p0, p3, v0}, Lorg/ejml/data/DMatrixSparseCSC;->growMaxLength(IZ)V

    .line 325
    iput v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/lit8 p2, p2, 0x1

    .line 327
    iget-object p1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    array-length p3, p1

    if-le p2, p3, :cond_0

    .line 328
    new-array p1, p2, [I

    iput-object p1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    goto :goto_0

    .line 330
    :cond_0
    invoke-static {p1, v0, p2, v0}, Ljava/util/Arrays;->fill([IIII)V

    :goto_0
    return-void
.end method

.method public set(IID)V
    .locals 1

    if-ltz p1, :cond_0

    .line 232
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge p2, v0, :cond_0

    .line 235
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/data/DMatrixSparseCSC;->unsafe_set(IID)V

    return-void

    .line 233
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Outside of matrix bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Lorg/ejml/data/Matrix;)V
    .locals 4

    .line 130
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    .line 131
    iget v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v2, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    .line 132
    iget v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iput v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    .line 134
    iget-object v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    iget-object v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iget-object v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    iget-boolean p1, p1, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    iput-boolean p1, p0, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    return-void
.end method

.method public shrinkArrays()V
    .locals 5

    .line 341
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 342
    new-array v2, v0, [D

    .line 343
    new-array v3, v0, [I

    const/4 v4, 0x0

    .line 345
    invoke-static {v1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    iput-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    .line 349
    iput-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    :cond_0
    return-void
.end method

.method public sortIndices(Lorg/ejml/ops/SortCoupledArray_F64;)V
    .locals 5

    if-nez p1, :cond_0

    .line 426
    new-instance p1, Lorg/ejml/ops/SortCoupledArray_F64;

    invoke-direct {p1}, Lorg/ejml/ops/SortCoupledArray_F64;-><init>()V

    .line 428
    :cond_0
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/ejml/ops/SortCoupledArray_F64;->quick([II[I[D)V

    .line 429
    iput-boolean v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    return-void
.end method

.method public unsafe_get(II)D
    .locals 0

    .line 192
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrixSparseCSC;->nz_index(II)I

    move-result p1

    if-ltz p1, :cond_0

    .line 194
    iget-object p2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide p1, p2, p1

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public unsafe_get(IID)D
    .locals 0

    .line 200
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrixSparseCSC;->nz_index(II)I

    move-result p1

    if-ltz p1, :cond_0

    .line 202
    iget-object p2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide p1, p2, p1

    return-wide p1

    :cond_0
    return-wide p3
.end method

.method public unsafe_set(IID)V
    .locals 5

    .line 240
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrixSparseCSC;->nz_index(II)I

    move-result v0

    if-ltz v0, :cond_0

    .line 242
    iget-object p1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aput-wide p3, p1, v0

    goto :goto_3

    .line 245
    :cond_0
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v0, p2

    const/4 v2, 0x1

    add-int/2addr p2, v2

    .line 246
    aget v0, v0, p2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 251
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v1

    if-ge p1, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_2
    :goto_1
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-gt p2, v0, :cond_3

    .line 258
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v3, v0, p2

    add-int/2addr v3, v2

    aput v3, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 262
    :cond_3
    iget p2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    array-length v0, v0

    if-lt p2, v0, :cond_4

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v2

    .line 263
    invoke-virtual {p0, p2, v2}, Lorg/ejml/data/DMatrixSparseCSC;->growMaxLength(IZ)V

    .line 266
    :cond_4
    iget p2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    :goto_2
    if-le p2, v1, :cond_5

    .line 267
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    add-int/lit8 v3, p2, -0x1

    aget v4, v0, v3

    aput v4, v0, p2

    .line 268
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v3, v0, v3

    aput-wide v3, v0, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 270
    :cond_5
    iget-object p2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aput p1, p2, v1

    .line 271
    iget-object p1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aput-wide p3, p1, v1

    .line 272
    iget p1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    :goto_3
    return-void
.end method

.method public zero()V
    .locals 3

    .line 297
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 298
    iput v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    .line 299
    iput-boolean v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    return-void
.end method
