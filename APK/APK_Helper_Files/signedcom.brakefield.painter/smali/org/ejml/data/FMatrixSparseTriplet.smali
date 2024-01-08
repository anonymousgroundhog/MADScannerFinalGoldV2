.class public Lorg/ejml/data/FMatrixSparseTriplet;
.super Ljava/lang/Object;
.source "FMatrixSparseTriplet.java"

# interfaces
.implements Lorg/ejml/data/FMatrixSparse;


# instance fields
.field public numCols:I

.field public numRows:I

.field public nz_length:I

.field public nz_rowcol:Lorg/ejml/data/IGrowArray;

.field public nz_value:Lorg/ejml/data/FGrowArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/IGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    .line 44
    new-instance v0, Lorg/ejml/data/FGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/FGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/IGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    .line 44
    new-instance v0, Lorg/ejml/data/FGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/FGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    .line 69
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    mul-int/lit8 v1, p3, 0x2

    invoke-virtual {v0, v1}, Lorg/ejml/data/IGrowArray;->reshape(I)V

    .line 70
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    invoke-virtual {v0, p3}, Lorg/ejml/data/FGrowArray;->reshape(I)Lorg/ejml/data/FGrowArray;

    .line 71
    iput p1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numRows:I

    .line 72
    iput p2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numCols:I

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/FMatrixSparseTriplet;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/IGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    .line 44
    new-instance v0, Lorg/ejml/data/FGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/FGrowArray;-><init>()V

    iput-object v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    .line 76
    invoke-virtual {p0, p1}, Lorg/ejml/data/FMatrixSparseTriplet;->set(Lorg/ejml/data/Matrix;)V

    return-void
.end method


# virtual methods
.method public addItem(IIF)V
    .locals 2

    .line 112
    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    iget-object v1, v1, Lorg/ejml/data/FGrowArray;->data:[F

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 113
    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    add-int/lit8 v0, v0, 0xa

    .line 114
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    invoke-virtual {v1, v0}, Lorg/ejml/data/FGrowArray;->growInternal(I)V

    .line 115
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Lorg/ejml/data/IGrowArray;->growInternal(I)V

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    iget-object v0, v0, Lorg/ejml/data/FGrowArray;->data:[F

    iget v1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    aput p3, v0, v1

    .line 118
    iget-object p3, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object p3, p3, Lorg/ejml/data/IGrowArray;->data:[I

    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    mul-int/lit8 v0, v0, 0x2

    aput p1, p3, v0

    .line 119
    iget-object p1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object p1, p1, Lorg/ejml/data/IGrowArray;->data:[I

    iget p3, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    mul-int/lit8 v0, p3, 0x2

    add-int/lit8 v0, v0, 0x1

    aput p2, p1, v0

    add-int/lit8 p3, p3, 0x1

    .line 120
    iput p3, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    return-void
.end method

.method public addItemCheck(IIF)V
    .locals 2

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    .line 133
    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numRows:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numCols:I

    if-ge p2, v0, :cond_1

    .line 135
    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    iget-object v1, v1, Lorg/ejml/data/FGrowArray;->data:[F

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 136
    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    add-int/lit8 v0, v0, 0xa

    .line 137
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    invoke-virtual {v1, v0}, Lorg/ejml/data/FGrowArray;->growInternal(I)V

    .line 138
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Lorg/ejml/data/IGrowArray;->growInternal(I)V

    .line 140
    :cond_0
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    iget-object v0, v0, Lorg/ejml/data/FGrowArray;->data:[F

    iget v1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    aput p3, v0, v1

    .line 141
    iget-object p3, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object p3, p3, Lorg/ejml/data/IGrowArray;->data:[I

    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    mul-int/lit8 v0, v0, 0x2

    aput p1, p3, v0

    .line 142
    iget-object p1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object p1, p1, Lorg/ejml/data/IGrowArray;->data:[I

    iget p3, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    mul-int/lit8 v0, p3, 0x2

    add-int/lit8 v0, v0, 0x1

    aput p2, p1, v0

    add-int/lit8 p3, p3, 0x1

    .line 143
    iput p3, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    return-void

    .line 134
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Out of bounds. ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numRows:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numCols:I

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

    .line 263
    new-instance v0, Lorg/ejml/data/FMatrixSparseTriplet;

    invoke-direct {v0, p0}, Lorg/ejml/data/FMatrixSparseTriplet;-><init>(Lorg/ejml/data/FMatrixSparseTriplet;)V

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

    .line 273
    new-instance v0, Lorg/ejml/data/FMatrixSparseTriplet;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lorg/ejml/data/FMatrixSparseTriplet;-><init>(III)V

    return-object v0
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

    .line 374
    new-instance v0, Lorg/ejml/data/FMatrixSparseTriplet$1;

    invoke-direct {v0, p0}, Lorg/ejml/data/FMatrixSparseTriplet$1;-><init>(Lorg/ejml/data/FMatrixSparseTriplet;)V

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

    .line 268
    new-instance v0, Lorg/ejml/data/FMatrixSparseTriplet;

    iget v1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numRows:I

    iget v2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numCols:I

    iget v3, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    invoke-direct {v0, v1, v2, v3}, Lorg/ejml/data/FMatrixSparseTriplet;-><init>(III)V

    return-object v0
.end method

.method public get(II)F
    .locals 1

    if-ltz p1, :cond_0

    .line 195
    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numRows:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numCols:I

    if-ge p2, v0, :cond_0

    .line 198
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrixSparseTriplet;->unsafe_get(II)F

    move-result p1

    return p1

    .line 196
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Outside of matrix bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(IIF)F
    .locals 1

    if-ltz p1, :cond_0

    .line 212
    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numRows:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numCols:I

    if-ge p2, v0, :cond_0

    .line 215
    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/data/FMatrixSparseTriplet;->unsafe_get(IIF)F

    move-result p1

    return p1

    .line 213
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x0

    sget-object p2, Lorg/ejml/dense/block/decomposition/hessenberg/Ia/xeDaWsHfrd;->dVuphBmRCQ:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLength()I
    .locals 1

    .line 248
    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    return v0
.end method

.method public getNonZeroCount()I
    .locals 1

    .line 396
    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    return v0
.end method

.method public getNonZeroLength()I
    .locals 1

    .line 328
    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    return v0
.end method

.method public getNumCols()I
    .locals 1

    .line 258
    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numCols:I

    return v0
.end method

.method public getNumElements()I
    .locals 1

    .line 182
    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    return v0
.end method

.method public getNumRows()I
    .locals 1

    .line 253
    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numRows:I

    return v0
.end method

.method public getType()Lorg/ejml/data/MatrixType;
    .locals 1

    .line 369
    sget-object v0, Lorg/ejml/data/MatrixType;->FTRIPLET:Lorg/ejml/data/MatrixType;

    return-object v0
.end method

.method public isAssigned(II)Z
    .locals 0

    .line 318
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrixSparseTriplet;->nz_index(II)I

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

    .line 237
    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 239
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v2, v2, Lorg/ejml/data/IGrowArray;->data:[I

    aget v2, v2, v1

    .line 240
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v3, v3, Lorg/ejml/data/IGrowArray;->data:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    if-ne v2, p1, :cond_0

    if-ne v3, p2, :cond_0

    .line 242
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

    .line 333
    invoke-virtual {p0, v0}, Lorg/ejml/data/FMatrixSparseTriplet;->print(Ljava/lang/String;)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 6

    .line 338
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

    iget v2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , cols = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numCols:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , nz_length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 340
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numRows:I

    if-ge v1, v2, :cond_3

    move v2, v0

    .line 341
    :goto_1
    iget v3, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numCols:I

    if-ge v2, v3, :cond_2

    .line 342
    invoke-virtual {p0, v1, v2}, Lorg/ejml/data/FMatrixSparseTriplet;->nz_index(II)I

    move-result v3

    if-ltz v3, :cond_0

    .line 344
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    iget-object v5, v5, Lorg/ejml/data/FGrowArray;->data:[F

    aget v3, v5, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, p1, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_2

    .line 346
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "   *  "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 347
    :goto_2
    iget v3, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numCols:I

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_1

    .line 348
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 350
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public printNonZero()V
    .locals 5

    .line 356
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

    iget v2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , cols = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numCols:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , nz_length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 359
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    if-ge v0, v1, :cond_0

    .line 360
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v1, v1, Lorg/ejml/data/IGrowArray;->data:[I

    mul-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    .line 361
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v3, v3, Lorg/ejml/data/IGrowArray;->data:[I

    add-int/lit8 v2, v2, 0x1

    aget v2, v3, v2

    .line 362
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    iget-object v3, v3, Lorg/ejml/data/FGrowArray;->data:[F

    aget v3, v3, v0

    .line 363
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d %d %f\n"

    invoke-virtual {v4, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(II)V
    .locals 4

    .line 301
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrixSparseTriplet;->nz_index(II)I

    move-result p1

    if-ltz p1, :cond_1

    .line 304
    iget p2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    move p2, p1

    .line 305
    :goto_0
    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    if-ge p2, v0, :cond_0

    .line 306
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    iget-object v0, v0, Lorg/ejml/data/FGrowArray;->data:[F

    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    iget-object v1, v1, Lorg/ejml/data/FGrowArray;->data:[F

    add-int/lit8 v2, p2, 0x1

    aget v1, v1, v2

    aput v1, v0, p2

    move p2, v2

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 p1, p1, 0x2

    :goto_1
    if-ge p1, v0, :cond_1

    .line 310
    iget-object p2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object p2, p2, Lorg/ejml/data/IGrowArray;->data:[I

    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v1, v1, Lorg/ejml/data/IGrowArray;->data:[I

    add-int/lit8 v2, p1, 0x2

    aget v1, v1, v2

    aput v1, p2, p1

    .line 311
    iget-object p2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object p2, p2, Lorg/ejml/data/IGrowArray;->data:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

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

    .line 80
    iput v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    .line 81
    iput v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numRows:I

    .line 82
    iput v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numCols:I

    return-void
.end method

.method public reshape(II)V
    .locals 0

    .line 87
    iput p1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numRows:I

    .line 88
    iput p2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numCols:I

    const/4 p1, 0x0

    .line 89
    iput p1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    return-void
.end method

.method public reshape(III)V
    .locals 0

    .line 94
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrixSparseTriplet;->reshape(II)V

    .line 95
    iget-object p1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    mul-int/lit8 p2, p3, 0x2

    invoke-virtual {p1, p2}, Lorg/ejml/data/IGrowArray;->reshape(I)V

    .line 96
    iget-object p1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    invoke-virtual {p1, p3}, Lorg/ejml/data/FGrowArray;->reshape(I)Lorg/ejml/data/FGrowArray;

    return-void
.end method

.method public set(IIF)V
    .locals 1

    if-ltz p1, :cond_0

    .line 157
    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numRows:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numCols:I

    if-ge p2, v0, :cond_0

    .line 160
    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/data/FMatrixSparseTriplet;->unsafe_set(IIF)V

    return-void

    .line 158
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Outside of matrix bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Lorg/ejml/data/Matrix;)V
    .locals 2

    .line 278
    check-cast p1, Lorg/ejml/data/FMatrixSparseTriplet;

    .line 279
    iget v0, p1, Lorg/ejml/data/FMatrixSparseTriplet;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseTriplet;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/data/FMatrixSparseTriplet;->reshape(II)V

    .line 280
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v1, p1, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    invoke-virtual {v0, v1}, Lorg/ejml/data/IGrowArray;->set(Lorg/ejml/data/IGrowArray;)V

    .line 281
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    iget-object v1, p1, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    invoke-virtual {v0, v1}, Lorg/ejml/data/FGrowArray;->set(Lorg/ejml/data/FGrowArray;)V

    .line 282
    iget p1, p1, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    iput p1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    return-void
.end method

.method public shrinkArrays()V
    .locals 6

    .line 287
    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    iget v1, v1, Lorg/ejml/data/FGrowArray;->length:I

    if-ge v0, v1, :cond_0

    .line 288
    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    new-array v1, v0, [F

    mul-int/lit8 v2, v0, 0x2

    .line 289
    new-array v3, v2, [I

    .line 291
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    iget-object v4, v4, Lorg/ejml/data/FGrowArray;->data:[F

    const/4 v5, 0x0

    invoke-static {v4, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v0, v0, Lorg/ejml/data/IGrowArray;->data:[I

    invoke-static {v0, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    iput-object v1, v0, Lorg/ejml/data/FGrowArray;->data:[F

    .line 295
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iput-object v3, v0, Lorg/ejml/data/IGrowArray;->data:[I

    :cond_0
    return-void
.end method

.method public unsafe_get(II)F
    .locals 0

    .line 220
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrixSparseTriplet;->nz_index(II)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 224
    :cond_0
    iget-object p2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    iget-object p2, p2, Lorg/ejml/data/FGrowArray;->data:[F

    aget p1, p2, p1

    return p1
.end method

.method public unsafe_get(IIF)F
    .locals 0

    .line 229
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrixSparseTriplet;->nz_index(II)I

    move-result p1

    if-gez p1, :cond_0

    return p3

    .line 233
    :cond_0
    iget-object p2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    iget-object p2, p2, Lorg/ejml/data/FGrowArray;->data:[F

    aget p1, p2, p1

    return p1
.end method

.method public unsafe_set(IIF)V
    .locals 1

    .line 172
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrixSparseTriplet;->nz_index(II)I

    move-result v0

    if-gez v0, :cond_0

    .line 174
    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/data/FMatrixSparseTriplet;->addItem(IIF)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    iget-object p1, p1, Lorg/ejml/data/FGrowArray;->data:[F

    aput p3, p1, v0

    :goto_0
    return-void
.end method

.method public zero()V
    .locals 1

    const/4 v0, 0x0

    .line 323
    iput v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    return-void
.end method
