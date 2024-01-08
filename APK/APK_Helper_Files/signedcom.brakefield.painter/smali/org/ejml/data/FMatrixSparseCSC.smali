.class public Lorg/ejml/data/FMatrixSparseCSC;
.super Ljava/lang/Object;
.source "FMatrixSparseCSC.java"

# interfaces
.implements Lorg/ejml/data/FMatrixSparse;


# instance fields
.field public col_idx:[I

.field public indicesSorted:Z

.field public numCols:I

.field public numRows:I

.field public nz_length:I

.field public nz_rows:[I

.field public nz_values:[F


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, v0}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lorg/ejml/UtilEjml;->ZERO_LENGTH_F32:[F

    iput-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    .line 56
    sget-object v0, Lorg/ejml/UtilEjml;->ZERO_LENGTH_I32:[I

    iput-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    .line 97
    iput p1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    .line 98
    iput p2, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    .line 99
    iput v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/lit8 p2, p2, 0x1

    .line 100
    new-array p1, p2, [I

    iput-object p1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    .line 101
    invoke-virtual {p0, p3, v0}, Lorg/ejml/data/FMatrixSparseCSC;->growMaxLength(IZ)V

    return-void

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Rows, columns, and arrayLength must be not be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 3

    .line 105
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v2, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-direct {p0, v0, v1, v2}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    .line 107
    invoke-virtual {p0, p1}, Lorg/ejml/data/FMatrixSparseCSC;->set(Lorg/ejml/data/Matrix;)V

    return-void
.end method


# virtual methods
.method public copy()Lorg/ejml/data/FMatrixSparseCSC;
    .locals 1

    .line 122
    new-instance v0, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-direct {v0, p0}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(Lorg/ejml/data/FMatrixSparseCSC;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/ejml/data/Matrix;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixSparseCSC;->copy()Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object v0

    return-object v0
.end method

.method public copyStructure(Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 4

    .line 440
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v2, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    .line 441
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iput v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    .line 442
    iget-object v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v2, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 443
    iget-object v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget p1, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-static {v0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public create(II)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 1

    .line 306
    new-instance v0, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic create(II)Lorg/ejml/data/Matrix;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrixSparseCSC;->create(II)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p1

    return-object p1
.end method

.method public createCoordinateIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/ejml/data/FMatrixSparse$CoordinateRealValue;",
            ">;"
        }
    .end annotation

    .line 471
    new-instance v0, Lorg/ejml/data/FMatrixSparseCSC$1;

    invoke-direct {v0, p0}, Lorg/ejml/data/FMatrixSparseCSC$1;-><init>(Lorg/ejml/data/FMatrixSparseCSC;)V

    return-object v0
.end method

.method public createLike()Lorg/ejml/data/FMatrixSparseCSC;
    .locals 3

    .line 127
    new-instance v0, Lorg/ejml/data/FMatrixSparseCSC;

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic createLike()Lorg/ejml/data/Matrix;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixSparseCSC;->createLike()Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object v0

    return-object v0
.end method

.method public get(II)F
    .locals 1

    if-ltz p1, :cond_0

    .line 178
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge p2, v0, :cond_0

    .line 181
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrixSparseCSC;->unsafe_get(II)F

    move-result p1

    return p1

    .line 179
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Outside of matrix bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(IIF)F
    .locals 1

    if-ltz p1, :cond_0

    .line 186
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge p2, v0, :cond_0

    .line 189
    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/data/FMatrixSparseCSC;->unsafe_get(IIF)F

    move-result p1

    return p1

    .line 187
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Outside of matrix bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNonZeroCount()I
    .locals 1

    .line 505
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    return v0
.end method

.method public getNonZeroLength()I
    .locals 1

    .line 311
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    return v0
.end method

.method public getNumCols()I
    .locals 1

    .line 117
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    return v0
.end method

.method public getNumElements()I
    .locals 1

    .line 316
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    return v0
.end method

.method public getNumRows()I
    .locals 1

    .line 112
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    return v0
.end method

.method public getType()Lorg/ejml/data/MatrixType;
    .locals 1

    .line 466
    sget-object v0, Lorg/ejml/data/MatrixType;->FSCC:Lorg/ejml/data/MatrixType;

    return-object v0
.end method

.method public growMaxColumns(IZ)V
    .locals 2

    .line 395
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    array-length v1, v0

    add-int/lit8 p1, p1, 0x1

    if-ge v1, p1, :cond_1

    .line 396
    new-array p1, p1, [I

    if-eqz p2, :cond_0

    .line 398
    array-length p2, v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    :cond_0
    iput-object p1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    :cond_1
    return-void
.end method

.method public growMaxLength(IZ)V
    .locals 3

    if-ltz p1, :cond_2

    .line 374
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    array-length v1, v0

    if-le p1, v1, :cond_1

    .line 375
    new-array v1, p1, [F

    .line 376
    new-array p1, p1, [I

    if-eqz p2, :cond_0

    .line 379
    iget p2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    iget-object p2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-static {p2, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    :cond_0
    iput-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    .line 384
    iput-object p1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    :cond_1
    return-void

    .line 364
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x0

    sget-object p2, Lorg/ejml/dense/row/decompose/EB/JlKLR;->ScYxjYUxIj:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public histogramToStructure([I)V
    .locals 5

    .line 410
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v0, 0x1

    move v2, v1

    .line 412
    :goto_0
    iget v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-gt v0, v3, :cond_0

    .line 413
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v4, v0, -0x1

    aget v4, p1, v4

    add-int/2addr v2, v4

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    :cond_0
    iput v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    .line 416
    invoke-virtual {p0, v2, v1}, Lorg/ejml/data/FMatrixSparseCSC;->growMaxLength(IZ)V

    .line 417
    iget-object p1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    aget p1, p1, v0

    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ne p1, v0, :cond_1

    return-void

    .line 418
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Egads"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isAssigned(II)Z
    .locals 0

    .line 173
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrixSparseCSC;->nz_index(II)I

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

    .line 461
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

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

    .line 452
    iget-boolean v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    return v0
.end method

.method public nz_index(II)I
    .locals 2

    .line 217
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    .line 218
    aget p2, v0, p2

    .line 220
    iget-boolean v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    invoke-static {v0, v1, p2, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result p1

    return p1

    :cond_0
    :goto_0
    if-ge v1, p2, :cond_2

    .line 224
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

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

    .line 144
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, 0xb

    invoke-static {v0, p0, v1}, Lorg/ejml/ops/MatrixIO;->printFancy(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;I)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1

    .line 149
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0, p1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/FMatrixSparseCSC;Ljava/lang/String;)V

    return-void
.end method

.method public printNonZero()V
    .locals 8

    .line 155
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/ejml/data/FMatrixSparseCSC;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ejml/data/MatrixType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , rows = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , cols = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , nz_length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 158
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v0, v1, :cond_1

    .line 159
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    .line 160
    aget v1, v1, v3

    :goto_1
    if-ge v2, v1, :cond_0

    .line 163
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v2

    .line 164
    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v5, v5, v2

    .line 166
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v4, v7, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%d %d %11.4E\n"

    invoke-virtual {v6, v5, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(II)V
    .locals 2

    .line 280
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrixSparseCSC;->nz_index(II)I

    move-result p1

    if-gez p1, :cond_0

    return-void

    :cond_0
    :goto_0
    add-int/lit8 p2, p2, 0x1

    .line 286
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-gt p2, v0, :cond_1

    .line 287
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v0, p2

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p2

    goto :goto_0

    .line 290
    :cond_1
    iget p2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    .line 291
    :goto_1
    iget p2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge p1, p2, :cond_2

    .line 292
    iget-object p2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    add-int/lit8 v0, p1, 0x1

    aget v1, p2, v0

    aput v1, p2, p1

    .line 293
    iget-object p2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v1, p2, v0

    aput v1, p2, p1

    move p1, v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method public reshape(II)V
    .locals 1

    const/4 v0, 0x0

    .line 338
    invoke-virtual {p0, p1, p2, v0}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    return-void
.end method

.method public reshape(III)V
    .locals 1

    const/4 v0, 0x0

    .line 323
    iput-boolean v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    .line 324
    iput p1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    .line 325
    iput p2, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    .line 326
    invoke-virtual {p0, p3, v0}, Lorg/ejml/data/FMatrixSparseCSC;->growMaxLength(IZ)V

    .line 327
    iput v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/lit8 p2, p2, 0x1

    .line 329
    iget-object p1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    array-length p3, p1

    if-le p2, p3, :cond_0

    .line 330
    new-array p1, p2, [I

    iput-object p1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    goto :goto_0

    .line 332
    :cond_0
    invoke-static {p1, v0, p2, v0}, Ljava/util/Arrays;->fill([IIII)V

    :goto_0
    return-void
.end method

.method public set(IIF)V
    .locals 1

    if-ltz p1, :cond_0

    .line 234
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge p2, v0, :cond_0

    .line 237
    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/data/FMatrixSparseCSC;->unsafe_set(IIF)V

    return-void

    .line 235
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Outside of matrix bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Lorg/ejml/data/Matrix;)V
    .locals 4

    .line 132
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    .line 133
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v2, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    .line 134
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iput v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    .line 136
    iget-object v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    iget-object v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    iget-object v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    iget-boolean p1, p1, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    iput-boolean p1, p0, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    return-void
.end method

.method public shrinkArrays()V
    .locals 5

    .line 343
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 344
    new-array v2, v0, [F

    .line 345
    new-array v3, v0, [I

    const/4 v4, 0x0

    .line 347
    invoke-static {v1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    iput-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    .line 351
    iput-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    :cond_0
    return-void
.end method

.method public sortIndices(Lorg/ejml/ops/SortCoupledArray_F32;)V
    .locals 5

    if-nez p1, :cond_0

    .line 428
    new-instance p1, Lorg/ejml/ops/SortCoupledArray_F32;

    invoke-direct {p1}, Lorg/ejml/ops/SortCoupledArray_F32;-><init>()V

    .line 430
    :cond_0
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/ejml/ops/SortCoupledArray_F32;->quick([II[I[F)V

    .line 431
    iput-boolean v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    return-void
.end method

.method public unsafe_get(II)F
    .locals 0

    .line 194
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrixSparseCSC;->nz_index(II)I

    move-result p1

    if-ltz p1, :cond_0

    .line 196
    iget-object p2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget p1, p2, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public unsafe_get(IIF)F
    .locals 0

    .line 202
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrixSparseCSC;->nz_index(II)I

    move-result p1

    if-ltz p1, :cond_0

    .line 204
    iget-object p2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget p1, p2, p1

    return p1

    :cond_0
    return p3
.end method

.method public unsafe_set(IIF)V
    .locals 5

    .line 242
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrixSparseCSC;->nz_index(II)I

    move-result v0

    if-ltz v0, :cond_0

    .line 244
    iget-object p1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aput p3, p1, v0

    goto :goto_3

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v0, p2

    const/4 v2, 0x1

    add-int/2addr p2, v2

    .line 248
    aget v0, v0, p2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 253
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v1

    if-ge p1, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :cond_2
    :goto_1
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-gt p2, v0, :cond_3

    .line 260
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v3, v0, p2

    add-int/2addr v3, v2

    aput v3, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 264
    :cond_3
    iget p2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    array-length v0, v0

    if-lt p2, v0, :cond_4

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v2

    .line 265
    invoke-virtual {p0, p2, v2}, Lorg/ejml/data/FMatrixSparseCSC;->growMaxLength(IZ)V

    .line 268
    :cond_4
    iget p2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    :goto_2
    if-le p2, v1, :cond_5

    .line 269
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    add-int/lit8 v3, p2, -0x1

    aget v4, v0, v3

    aput v4, v0, p2

    .line 270
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v3, v0, v3

    aput v3, v0, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 272
    :cond_5
    iget-object p2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aput p1, p2, v1

    .line 273
    iget-object p1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aput p3, p1, v1

    .line 274
    iget p1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    :goto_3
    return-void
.end method

.method public zero()V
    .locals 3

    .line 299
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 300
    iput v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    .line 301
    iput-boolean v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    return-void
.end method
