.class public Lorg/ejml/data/ZMatrixRMaj;
.super Lorg/ejml/data/ZMatrixD1;
.source "ZMatrixRMaj.java"


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lorg/ejml/data/ZMatrixD1;-><init>()V

    .line 89
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkTooLargeComplex(II)V

    .line 90
    iput p1, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    .line 91
    iput p2, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x2

    .line 92
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    return-void
.end method

.method public varargs constructor <init>(IIZ[D)V
    .locals 2

    .line 61
    invoke-direct {p0}, Lorg/ejml/data/ZMatrixD1;-><init>()V

    .line 62
    array-length v0, p4

    mul-int v1, p1, p2

    mul-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_0

    .line 65
    new-array v0, v1, [D

    iput-object v0, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    .line 67
    iput p1, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    .line 68
    iput p2, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    .line 70
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/data/ZMatrixRMaj;->set(IIZ[D)V

    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected length for data"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 2

    .line 78
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-direct {p0, v0, v1}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    .line 79
    invoke-virtual {p0, p1}, Lorg/ejml/data/ZMatrixRMaj;->set(Lorg/ejml/data/ZMatrixRMaj;)V

    return-void
.end method

.method public constructor <init>([[D)V
    .locals 6

    .line 44
    invoke-direct {p0}, Lorg/ejml/data/ZMatrixD1;-><init>()V

    .line 45
    array-length v0, p1

    iput v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    const/4 v0, 0x0

    .line 46
    aget-object v1, p1, v0

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    .line 48
    iget v1, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v2, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->checkTooLargeComplex(II)V

    .line 50
    iget v1, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v2, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    move v1, v0

    .line 52
    :goto_0
    iget v2, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v1, v2, :cond_1

    .line 53
    aget-object v2, p1, v1

    .line 54
    array-length v3, v2

    iget v4, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    .line 57
    iget-object v3, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget v4, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr v4, v1

    mul-int/lit8 v4, v4, 0x2

    array-length v5, v2

    invoke-static {v2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected row size in input data at row "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/ejml/data/Matrix;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixRMaj;->copy()Lorg/ejml/data/ZMatrixRMaj;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/ejml/data/ZMatrixRMaj;
    .locals 1

    .line 171
    new-instance v0, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {v0, p0}, Lorg/ejml/data/ZMatrixRMaj;-><init>(Lorg/ejml/data/ZMatrixRMaj;)V

    return-object v0
.end method

.method public bridge synthetic create(II)Lorg/ejml/data/Matrix;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/ZMatrixRMaj;->create(II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public create(II)Lorg/ejml/data/ZMatrixRMaj;
    .locals 1

    .line 251
    new-instance v0, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic createLike()Lorg/ejml/data/Matrix;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixRMaj;->createLike()Lorg/ejml/data/ZMatrixRMaj;

    move-result-object v0

    return-object v0
.end method

.method public createLike()Lorg/ejml/data/ZMatrixRMaj;
    .locals 3

    .line 246
    new-instance v0, Lorg/ejml/data/ZMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v2, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    return-object v0
.end method

.method public get(IILorg/ejml/data/Complex_F64;)V
    .locals 2

    .line 115
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x2

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    .line 116
    iget-object p2, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v0, p2, p1

    iput-wide v0, p3, Lorg/ejml/data/Complex_F64;->real:D

    .line 117
    iget-object p2, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 p1, p1, 0x1

    aget-wide p1, p2, p1

    iput-wide p1, p3, Lorg/ejml/data/Complex_F64;->imaginary:D

    return-void
.end method

.method public getDataLength()I
    .locals 2

    .line 157
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getImag(I)D
    .locals 2

    .line 132
    iget-object v0, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getImag(II)D
    .locals 2

    .line 147
    iget-object v0, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget v1, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget-wide p1, v0, p1

    return-wide p1
.end method

.method public getIndex(II)I
    .locals 1

    .line 97
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x2

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    return p1
.end method

.method public getReal(I)D
    .locals 2

    .line 128
    iget-object v0, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    mul-int/lit8 p1, p1, 0x2

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getReal(II)D
    .locals 2

    .line 137
    iget-object v0, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget v1, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x2

    aget-wide p1, v0, p1

    return-wide p1
.end method

.method public getRowStride()I
    .locals 1

    .line 203
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getType()Lorg/ejml/data/MatrixType;
    .locals 1

    .line 256
    sget-object v0, Lorg/ejml/data/MatrixType;->ZDRM:Lorg/ejml/data/MatrixType;

    return-object v0
.end method

.method public print()V
    .locals 2

    .line 191
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, 0xb

    invoke-static {v0, p0, v1}, Lorg/ejml/ops/MatrixIO;->printFancy(Ljava/io/PrintStream;Lorg/ejml/data/ZMatrix;I)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1

    .line 196
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0, p1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/ZMatrix;Ljava/lang/String;)V

    return-void
.end method

.method public reshape(II)V
    .locals 2

    .line 102
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkTooLargeComplex(II)V

    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x2

    .line 105
    iget-object v1, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 106
    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    .line 109
    :cond_0
    iput p1, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    .line 110
    iput p2, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    return-void
.end method

.method public set(IIDD)V
    .locals 1

    .line 122
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x2

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    .line 123
    iget-object p2, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aput-wide p3, p2, p1

    .line 124
    iget-object p2, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 p1, p1, 0x1

    aput-wide p5, p2, p1

    return-void
.end method

.method public varargs set(IIZ[D)V
    .locals 9

    .line 216
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/ZMatrixRMaj;->reshape(II)V

    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x2

    .line 219
    array-length v1, p4

    if-gt v0, v1, :cond_3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 223
    iget-object p1, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    invoke-static {p4, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_0
    mul-int/lit8 p3, p1, 0x2

    move v0, v1

    move v2, v0

    :goto_0
    if-ge v0, p1, :cond_2

    move v3, v1

    :goto_1
    if-ge v3, p2, :cond_1

    .line 229
    iget-object v4, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v5, v2, 0x1

    mul-int v6, v3, p3

    mul-int/lit8 v7, v0, 0x2

    add-int/2addr v6, v7

    aget-wide v7, p4, v6

    aput-wide v7, v4, v2

    .line 230
    iget-object v2, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v4, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, p4, v6

    aput-wide v6, v2, v5

    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void

    .line 220
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Passed in array not long enough"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Lorg/ejml/data/Matrix;)V
    .locals 11

    .line 176
    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/ejml/data/ZMatrixRMaj;->reshape(II)V

    .line 178
    check-cast p1, Lorg/ejml/data/ZMatrix;

    .line 180
    new-instance v0, Lorg/ejml/data/Complex_F64;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F64;-><init>()V

    const/4 v1, 0x0

    move v9, v1

    .line 181
    :goto_0
    iget v2, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v9, v2, :cond_1

    move v10, v1

    .line 182
    :goto_1
    iget v2, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v10, v2, :cond_0

    .line 183
    invoke-interface {p1, v9, v10, v0}, Lorg/ejml/data/ZMatrix;->get(IILorg/ejml/data/Complex_F64;)V

    .line 184
    iget-wide v5, v0, Lorg/ejml/data/Complex_F64;->real:D

    iget-wide v7, v0, Lorg/ejml/data/Complex_F64;->imaginary:D

    move-object v2, p0

    move v3, v9

    move v4, v10

    invoke-virtual/range {v2 .. v8}, Lorg/ejml/data/ZMatrixRMaj;->set(IIDD)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public set(Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 5

    .line 161
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/data/ZMatrixRMaj;->reshape(II)V

    .line 162
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    .line 163
    :goto_0
    iget v2, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge v1, v2, :cond_0

    .line 164
    iget v2, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x2

    .line 165
    iget-object v3, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget-object v4, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    invoke-static {v3, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setImag(IID)V
    .locals 2

    .line 152
    iget-object v0, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget v1, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aput-wide p3, v0, p1

    return-void
.end method

.method public setReal(IID)V
    .locals 2

    .line 142
    iget-object v0, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget v1, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x2

    aput-wide p3, v0, p1

    return-void
.end method

.method public zero()V
    .locals 5

    .line 241
    iget-object v0, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget v1, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v2, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/util/Arrays;->fill([DIID)V

    return-void
.end method
