.class public Lorg/ejml/data/CMatrixRMaj;
.super Lorg/ejml/data/CMatrixD1;
.source "CMatrixRMaj.java"


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/ejml/data/CMatrixD1;-><init>()V

    .line 91
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkTooLargeComplex(II)V

    .line 92
    iput p1, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    .line 93
    iput p2, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x2

    .line 94
    new-array p1, p1, [F

    iput-object p1, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    return-void
.end method

.method public varargs constructor <init>(IIZ[F)V
    .locals 2

    .line 63
    invoke-direct {p0}, Lorg/ejml/data/CMatrixD1;-><init>()V

    .line 64
    array-length v0, p4

    mul-int v1, p1, p2

    mul-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_0

    .line 67
    new-array v0, v1, [F

    iput-object v0, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    .line 69
    iput p1, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    .line 70
    iput p2, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    .line 72
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/data/CMatrixRMaj;->set(IIZ[F)V

    return-void

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected length for data"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/ejml/data/CMatrixRMaj;)V
    .locals 2

    .line 80
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-direct {p0, v0, v1}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    .line 81
    invoke-virtual {p0, p1}, Lorg/ejml/data/CMatrixRMaj;->set(Lorg/ejml/data/CMatrixRMaj;)V

    return-void
.end method

.method public constructor <init>([[F)V
    .locals 6

    .line 46
    invoke-direct {p0}, Lorg/ejml/data/CMatrixD1;-><init>()V

    .line 47
    array-length v0, p1

    iput v0, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    const/4 v0, 0x0

    .line 48
    aget-object v1, p1, v0

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    .line 50
    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v2, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->checkTooLargeComplex(II)V

    .line 52
    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v2, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    move v1, v0

    .line 54
    :goto_0
    iget v2, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    if-ge v1, v2, :cond_1

    .line 55
    aget-object v2, p1, v1

    .line 56
    array-length v3, v2

    iget v4, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    .line 59
    iget-object v3, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget v4, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int/2addr v4, v1

    mul-int/lit8 v4, v4, 0x2

    array-length v5, v2

    invoke-static {v2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
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
.method public copy()Lorg/ejml/data/CMatrixRMaj;
    .locals 1

    .line 173
    new-instance v0, Lorg/ejml/data/CMatrixRMaj;

    invoke-direct {v0, p0}, Lorg/ejml/data/CMatrixRMaj;-><init>(Lorg/ejml/data/CMatrixRMaj;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/ejml/data/Matrix;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixRMaj;->copy()Lorg/ejml/data/CMatrixRMaj;

    move-result-object v0

    return-object v0
.end method

.method public create(II)Lorg/ejml/data/CMatrixRMaj;
    .locals 1

    .line 253
    new-instance v0, Lorg/ejml/data/CMatrixRMaj;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic create(II)Lorg/ejml/data/Matrix;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/CMatrixRMaj;->create(II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public createLike()Lorg/ejml/data/CMatrixRMaj;
    .locals 3

    .line 248
    new-instance v0, Lorg/ejml/data/CMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v2, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic createLike()Lorg/ejml/data/Matrix;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixRMaj;->createLike()Lorg/ejml/data/CMatrixRMaj;

    move-result-object v0

    return-object v0
.end method

.method public get(IILorg/ejml/data/Complex_F32;)V
    .locals 1

    .line 117
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x2

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    .line 118
    iget-object p2, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget p2, p2, p1

    iput p2, p3, Lorg/ejml/data/Complex_F32;->real:F

    .line 119
    iget-object p2, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 p1, p1, 0x1

    aget p1, p2, p1

    iput p1, p3, Lorg/ejml/data/Complex_F32;->imaginary:F

    return-void
.end method

.method public getDataLength()I
    .locals 2

    .line 159
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getImag(I)F
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method public getImag(II)F
    .locals 2

    .line 149
    iget-object v0, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method public getIndex(II)I
    .locals 1

    .line 99
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x2

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    return p1
.end method

.method public getReal(I)F
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    mul-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method public getReal(II)F
    .locals 2

    .line 139
    iget-object v0, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method public getRowStride()I
    .locals 1

    .line 205
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getType()Lorg/ejml/data/MatrixType;
    .locals 1

    .line 258
    sget-object v0, Lorg/ejml/data/MatrixType;->CDRM:Lorg/ejml/data/MatrixType;

    return-object v0
.end method

.method public print()V
    .locals 2

    .line 193
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, 0xb

    invoke-static {v0, p0, v1}, Lorg/ejml/ops/MatrixIO;->printFancy(Ljava/io/PrintStream;Lorg/ejml/data/CMatrix;I)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1

    .line 198
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0, p1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/CMatrix;Ljava/lang/String;)V

    return-void
.end method

.method public reshape(II)V
    .locals 2

    .line 104
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkTooLargeComplex(II)V

    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x2

    .line 107
    iget-object v1, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 108
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    .line 111
    :cond_0
    iput p1, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    .line 112
    iput p2, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    return-void
.end method

.method public set(IIFF)V
    .locals 1

    .line 124
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x2

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    .line 125
    iget-object p2, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aput p3, p2, p1

    .line 126
    iget-object p2, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 p1, p1, 0x1

    aput p4, p2, p1

    return-void
.end method

.method public varargs set(IIZ[F)V
    .locals 8

    .line 218
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/CMatrixRMaj;->reshape(II)V

    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x2

    .line 221
    array-length v1, p4

    if-gt v0, v1, :cond_3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 225
    iget-object p1, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

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

    .line 231
    iget-object v4, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v5, v2, 0x1

    mul-int v6, v3, p3

    mul-int/lit8 v7, v0, 0x2

    add-int/2addr v6, v7

    aget v7, p4, v6

    aput v7, v4, v2

    .line 232
    iget-object v2, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v4, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    aget v6, p4, v6

    aput v6, v2, v5

    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void

    .line 222
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Passed in array not long enough"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Lorg/ejml/data/CMatrixRMaj;)V
    .locals 5

    .line 163
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/data/CMatrixRMaj;->reshape(II)V

    .line 164
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    .line 165
    :goto_0
    iget v2, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    if-ge v1, v2, :cond_0

    .line 166
    iget v2, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x2

    .line 167
    iget-object v3, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget-object v4, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    invoke-static {v3, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public set(Lorg/ejml/data/Matrix;)V
    .locals 6

    .line 178
    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/ejml/data/CMatrixRMaj;->reshape(II)V

    .line 180
    check-cast p1, Lorg/ejml/data/CMatrix;

    .line 182
    new-instance v0, Lorg/ejml/data/Complex_F32;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F32;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 183
    :goto_0
    iget v3, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    if-ge v2, v3, :cond_1

    move v3, v1

    .line 184
    :goto_1
    iget v4, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    if-ge v3, v4, :cond_0

    .line 185
    invoke-interface {p1, v2, v3, v0}, Lorg/ejml/data/CMatrix;->get(IILorg/ejml/data/Complex_F32;)V

    .line 186
    iget v4, v0, Lorg/ejml/data/Complex_F32;->real:F

    iget v5, v0, Lorg/ejml/data/Complex_F32;->imaginary:F

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/ejml/data/CMatrixRMaj;->set(IIFF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setImag(IIF)V
    .locals 2

    .line 154
    iget-object v0, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aput p3, v0, p1

    return-void
.end method

.method public setReal(IIF)V
    .locals 2

    .line 144
    iget-object v0, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x2

    aput p3, v0, p1

    return-void
.end method

.method public zero()V
    .locals 4

    .line 243
    iget-object v0, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget v1, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    iget v2, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([FIIF)V

    return-void
.end method
