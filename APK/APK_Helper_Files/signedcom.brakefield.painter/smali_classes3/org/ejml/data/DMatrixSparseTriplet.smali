.class public Lorg/ejml/data/DMatrixSparseTriplet;
.super Ljava/lang/Object;
.source "DMatrixSparseTriplet.java"

# interfaces
.implements Lorg/ejml/data/DMatrixSparse;


# instance fields
.field public numCols:I

.field public numRows:I

.field public nz_length:I

.field public nz_rowcol:Lorg/ejml/data/IGrowArray;

.field public nz_value:Lorg/ejml/data/DGrowArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/IGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    .line 42
    new-instance v0, Lorg/ejml/data/DGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/DGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/IGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    .line 42
    new-instance v0, Lorg/ejml/data/DGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/DGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    .line 67
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    mul-int/lit8 v1, p3, 0x2

    invoke-virtual {v0, v1}, Lorg/ejml/data/IGrowArray;->reshape(I)V

    .line 68
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    invoke-virtual {v0, p3}, Lorg/ejml/data/DGrowArray;->reshape(I)Lorg/ejml/data/DGrowArray;

    .line 69
    iput p1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numRows:I

    .line 70
    iput p2, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numCols:I

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/DMatrixSparseTriplet;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/IGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    .line 42
    new-instance v0, Lorg/ejml/data/DGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/DGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    .line 74
    invoke-virtual {p0, p1}, Lorg/ejml/data/DMatrixSparseTriplet;->set(Lorg/ejml/data/Matrix;)V

    return-void
.end method


# virtual methods
.method public addItem(IID)V
    .locals 2

    .line 110
    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    iget-object v1, v1, Lorg/ejml/data/DGrowArray;->data:[D

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 111
    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    add-int/lit8 v0, v0, 0xa

    .line 112
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    invoke-virtual {v1, v0}, Lorg/ejml/data/DGrowArray;->growInternal(I)V

    .line 113
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Lorg/ejml/data/IGrowArray;->growInternal(I)V

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    iget-object v0, v0, Lorg/ejml/data/DGrowArray;->data:[D

    iget v1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    aput-wide p3, v0, v1

    .line 116
    iget-object p3, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object p3, p3, Lorg/ejml/data/IGrowArray;->data:[I

    iget p4, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    mul-int/lit8 p4, p4, 0x2

    aput p1, p3, p4

    .line 117
    iget-object p1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object p1, p1, Lorg/ejml/data/IGrowArray;->data:[I

    iget p3, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    mul-int/lit8 p4, p3, 0x2

    add-int/lit8 p4, p4, 0x1

    aput p2, p1, p4

    add-int/lit8 p3, p3, 0x1

    .line 118
    iput p3, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    return-void
.end method

.method public addItemCheck(IID)V
    .locals 2

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    .line 131
    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numRows:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numCols:I

    if-ge p2, v0, :cond_1

    .line 133
    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    iget-object v1, v1, Lorg/ejml/data/DGrowArray;->data:[D

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 134
    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    add-int/lit8 v0, v0, 0xa

    .line 135
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    invoke-virtual {v1, v0}, Lorg/ejml/data/DGrowArray;->growInternal(I)V

    .line 136
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Lorg/ejml/data/IGrowArray;->growInternal(I)V

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    iget-object v0, v0, Lorg/ejml/data/DGrowArray;->data:[D

    iget v1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    aput-wide p3, v0, v1

    .line 139
    iget-object p3, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object p3, p3, Lorg/ejml/data/IGrowArray;->data:[I

    iget p4, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    mul-int/lit8 p4, p4, 0x2

    aput p1, p3, p4

    .line 140
    iget-object p1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object p1, p1, Lorg/ejml/data/IGrowArray;->data:[I

    iget p3, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    mul-int/lit8 p4, p3, 0x2

    add-int/lit8 p4, p4, 0x1

    aput p2, p1, p4

    add-int/lit8 p3, p3, 0x1

    .line 141
    iput p3, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    return-void

    .line 132
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Out of bounds. ("

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, ","

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numRows:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numCols:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public copy()Lorg/ejml/data/Matrix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/ejml/data/Matrix;",
            ">()TT;"
        }
    .end annotation

    .line 261
    new-instance v0, Lorg/ejml/data/DMatrixSparseTriplet;

    invoke-direct {v0, p0}, Lorg/ejml/data/DMatrixSparseTriplet;-><init>(Lorg/ejml/data/DMatrixSparseTriplet;)V

    return-object v0
.end method

.method public create(II)Lorg/ejml/data/Matrix;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/ejml/data/Matrix;",
            ">(II)TT;"
        }
    .end annotation

    .line 271
    new-instance v0, Lorg/ejml/data/DMatrixSparseTriplet;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lorg/ejml/data/DMatrixSparseTriplet;-><init>(III)V

    return-object v0
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

    .line 372
    new-instance v0, Lorg/ejml/data/DMatrixSparseTriplet$1;

    invoke-direct {v0, p0}, Lorg/ejml/data/DMatrixSparseTriplet$1;-><init>(Lorg/ejml/data/DMatrixSparseTriplet;)V

    return-object v0
.end method

.method public createLike()Lorg/ejml/data/Matrix;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/ejml/data/Matrix;",
            ">()TT;"
        }
    .end annotation

    .line 266
    new-instance v0, Lorg/ejml/data/DMatrixSparseTriplet;

    iget v1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numRows:I

    iget v2, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numCols:I

    iget v3, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    invoke-direct {v0, v1, v2, v3}, Lorg/ejml/data/DMatrixSparseTriplet;-><init>(III)V

    return-object v0
.end method

.method public get(II)D
    .locals 1

    if-ltz p1, :cond_0

    .line 193
    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numRows:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numCols:I

    if-ge p2, v0, :cond_0

    .line 196
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrixSparseTriplet;->unsafe_get(II)D

    move-result-wide p1

    return-wide p1

    .line 194
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Outside of matrix bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(IID)D
    .locals 1

    if-ltz p1, :cond_0

    .line 210
    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numRows:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numCols:I

    if-ge p2, v0, :cond_0

    .line 213
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/data/DMatrixSparseTriplet;->unsafe_get(IID)D

    move-result-wide p1

    return-wide p1

    .line 211
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Outside of matrix bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLength()I
    .locals 1

    .line 246
    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    return v0
.end method

.method public getNonZeroCount()I
    .locals 1

    .line 394
    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    return v0
.end method

.method public getNonZeroLength()I
    .locals 1

    .line 326
    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    return v0
.end method

.method public getNumCols()I
    .locals 1

    .line 256
    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numCols:I

    return v0
.end method

.method public getNumElements()I
    .locals 1

    .line 180
    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    return v0
.end method

.method public getNumRows()I
    .locals 1

    .line 251
    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numRows:I

    return v0
.end method

.method public getType()Lorg/ejml/data/MatrixType;
    .locals 1

    .line 367
    sget-object v0, Lorg/ejml/data/MatrixType;->DTRIPLET:Lorg/ejml/data/MatrixType;

    return-object v0
.end method

.method public isAssigned(II)Z
    .locals 0

    .line 316
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrixSparseTriplet;->nz_index(II)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public nz_index(II)I
    .locals 5

    .line 235
    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 237
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v2, v2, Lorg/ejml/data/IGrowArray;->data:[I

    aget v2, v2, v1

    .line 238
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v3, v3, Lorg/ejml/data/IGrowArray;->data:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    if-ne v2, p1, :cond_0

    if-ne v3, p2, :cond_0

    .line 240
    div-int/lit8 v1, v1, 0x2

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public print()V
    .locals 1

    const-string v0, "%11.4E"

    .line 331
    invoke-virtual {p0, v0}, Lorg/ejml/data/DMatrixSparseTriplet;->print(Ljava/lang/String;)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 7

    .line 336
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , rows = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , cols = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numCols:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , nz_length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 338
    :goto_0
    iget v2, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numRows:I

    if-ge v1, v2, :cond_3

    move v2, v0

    .line 339
    :goto_1
    iget v3, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numCols:I

    if-ge v2, v3, :cond_2

    .line 340
    invoke-virtual {p0, v1, v2}, Lorg/ejml/data/DMatrixSparseTriplet;->nz_index(II)I

    move-result v3

    if-ltz v3, :cond_0

    .line 342
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v5, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    iget-object v5, v5, Lorg/ejml/data/DGrowArray;->data:[D

    aget-wide v5, v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, p1, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_2

    .line 344
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "   *  "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 345
    :goto_2
    iget v3, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numCols:I

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_1

    .line 346
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 348
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public printNonZero()V
    .locals 6

    .line 354
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , rows = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , cols = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numCols:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , nz_length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 357
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    if-ge v0, v1, :cond_0

    .line 358
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v1, v1, Lorg/ejml/data/IGrowArray;->data:[I

    mul-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    .line 359
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v3, v3, Lorg/ejml/data/IGrowArray;->data:[I

    add-int/lit8 v2, v2, 0x1

    aget v2, v3, v2

    .line 360
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    iget-object v3, v3, Lorg/ejml/data/DGrowArray;->data:[D

    aget-wide v3, v3, v0

    .line 361
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d %d %f\n"

    invoke-virtual {v5, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(II)V
    .locals 5

    .line 299
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrixSparseTriplet;->nz_index(II)I

    move-result p1

    if-ltz p1, :cond_1

    .line 302
    iget p2, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    move p2, p1

    .line 303
    :goto_0
    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    if-ge p2, v0, :cond_0

    .line 304
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    iget-object v0, v0, Lorg/ejml/data/DGrowArray;->data:[D

    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    iget-object v1, v1, Lorg/ejml/data/DGrowArray;->data:[D

    add-int/lit8 v2, p2, 0x1

    aget-wide v3, v1, v2

    aput-wide v3, v0, p2

    move p2, v2

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 p1, p1, 0x2

    :goto_1
    if-ge p1, v0, :cond_1

    .line 308
    iget-object p2, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object p2, p2, Lorg/ejml/data/IGrowArray;->data:[I

    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v1, v1, Lorg/ejml/data/IGrowArray;->data:[I

    add-int/lit8 v2, p1, 0x2

    aget v1, v1, v2

    aput v1, p2, p1

    .line 309
    iget-object p2, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object p2, p2, Lorg/ejml/data/IGrowArray;->data:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v3, v3, Lorg/ejml/data/IGrowArray;->data:[I

    add-int/lit8 p1, p1, 0x3

    aget p1, v3, p1

    aput p1, p2, v1

    move p1, v2

    goto :goto_1

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    .line 79
    iput v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numRows:I

    .line 80
    iput v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numCols:I

    return-void
.end method

.method public reshape(II)V
    .locals 0

    .line 85
    iput p1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numRows:I

    .line 86
    iput p2, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numCols:I

    const/4 p1, 0x0

    .line 87
    iput p1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    return-void
.end method

.method public reshape(III)V
    .locals 0

    .line 92
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrixSparseTriplet;->reshape(II)V

    .line 93
    iget-object p1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    mul-int/lit8 p2, p3, 0x2

    invoke-virtual {p1, p2}, Lorg/ejml/data/IGrowArray;->reshape(I)V

    .line 94
    iget-object p1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    invoke-virtual {p1, p3}, Lorg/ejml/data/DGrowArray;->reshape(I)Lorg/ejml/data/DGrowArray;

    return-void
.end method

.method public set(IID)V
    .locals 1

    if-ltz p1, :cond_0

    .line 155
    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numRows:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numCols:I

    if-ge p2, v0, :cond_0

    .line 158
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/data/DMatrixSparseTriplet;->unsafe_set(IID)V

    return-void

    .line 156
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Outside of matrix bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Lorg/ejml/data/Matrix;)V
    .locals 2

    .line 276
    check-cast p1, Lorg/ejml/data/DMatrixSparseTriplet;

    .line 277
    iget v0, p1, Lorg/ejml/data/DMatrixSparseTriplet;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseTriplet;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/data/DMatrixSparseTriplet;->reshape(II)V

    .line 278
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v1, p1, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    invoke-virtual {v0, v1}, Lorg/ejml/data/IGrowArray;->set(Lorg/ejml/data/IGrowArray;)V

    .line 279
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    iget-object v1, p1, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    invoke-virtual {v0, v1}, Lorg/ejml/data/DGrowArray;->set(Lorg/ejml/data/DGrowArray;)V

    .line 280
    iget p1, p1, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    iput p1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    return-void
.end method

.method public shrinkArrays()V
    .locals 6

    .line 285
    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    iget v1, v1, Lorg/ejml/data/DGrowArray;->length:I

    if-ge v0, v1, :cond_0

    .line 286
    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    new-array v1, v0, [D

    mul-int/lit8 v2, v0, 0x2

    .line 287
    new-array v3, v2, [I

    .line 289
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    iget-object v4, v4, Lorg/ejml/data/DGrowArray;->data:[D

    const/4 v5, 0x0

    invoke-static {v4, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v0, v0, Lorg/ejml/data/IGrowArray;->data:[I

    invoke-static {v0, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    iput-object v1, v0, Lorg/ejml/data/DGrowArray;->data:[D

    .line 293
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iput-object v3, v0, Lorg/ejml/data/IGrowArray;->data:[I

    :cond_0
    return-void
.end method

.method public unsafe_get(II)D
    .locals 0

    .line 218
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrixSparseTriplet;->nz_index(II)I

    move-result p1

    if-gez p1, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 222
    :cond_0
    iget-object p2, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    iget-object p2, p2, Lorg/ejml/data/DGrowArray;->data:[D

    aget-wide p1, p2, p1

    return-wide p1
.end method

.method public unsafe_get(IID)D
    .locals 0

    .line 227
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrixSparseTriplet;->nz_index(II)I

    move-result p1

    if-gez p1, :cond_0

    return-wide p3

    .line 231
    :cond_0
    iget-object p2, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    iget-object p2, p2, Lorg/ejml/data/DGrowArray;->data:[D

    aget-wide p1, p2, p1

    return-wide p1
.end method

.method public unsafe_set(IID)V
    .locals 1

    .line 170
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrixSparseTriplet;->nz_index(II)I

    move-result v0

    if-gez v0, :cond_0

    .line 172
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/data/DMatrixSparseTriplet;->addItem(IID)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object p1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    iget-object p1, p1, Lorg/ejml/data/DGrowArray;->data:[D

    aput-wide p3, p1, v0

    :goto_0
    return-void
.end method

.method public zero()V
    .locals 1

    const/4 v0, 0x0

    .line 321
    iput v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    return-void
.end method
