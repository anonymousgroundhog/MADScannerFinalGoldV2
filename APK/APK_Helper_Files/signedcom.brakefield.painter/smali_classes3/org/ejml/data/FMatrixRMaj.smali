.class public Lorg/ejml/data/FMatrixRMaj;
.super Lorg/ejml/data/FMatrix1Row;
.source "FMatrixRMaj.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Lorg/ejml/data/FMatrix1Row;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lorg/ejml/data/FMatrix1Row;-><init>()V

    .line 147
    new-array p1, p1, [F

    iput-object p1, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 121
    invoke-direct {p0}, Lorg/ejml/data/FMatrix1Row;-><init>()V

    .line 122
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkTooLarge(II)V

    mul-int v0, p1, p2

    .line 123
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    .line 125
    iput p1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    .line 126
    iput p2, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    return-void
.end method

.method public varargs constructor <init>(IIZ[F)V
    .locals 1

    .line 79
    invoke-direct {p0}, Lorg/ejml/data/FMatrix1Row;-><init>()V

    .line 80
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkTooLarge(II)V

    mul-int v0, p1, p2

    .line 82
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    .line 84
    iput p1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    .line 85
    iput p2, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    .line 87
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/data/FMatrixRMaj;->set(IIZ[F)V

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/FMatrix;)V
    .locals 4

    .line 162
    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    const/4 v0, 0x0

    move v1, v0

    .line 163
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 164
    :goto_1
    iget v3, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v2, v3, :cond_0

    .line 165
    invoke-interface {p1, v1, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 3

    .line 136
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-direct {p0, v0, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 137
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v1, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->getNumElements()I

    move-result p1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lorg/ejml/data/FMatrix1Row;-><init>()V

    .line 109
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    .line 110
    iget-object p1, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    array-length p1, p1

    iput p1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const/4 p1, 0x1

    .line 111
    iput p1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    return-void
.end method

.method public constructor <init>([[F)V
    .locals 1

    const/4 v0, 0x1

    .line 100
    invoke-direct {p0, v0, v0}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 101
    invoke-virtual {p0, p1}, Lorg/ejml/data/FMatrixRMaj;->set([[F)V

    return-void
.end method

.method public static wrap(II[F)Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 181
    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->checkTooLarge(II)V

    .line 182
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0}, Lorg/ejml/data/FMatrixRMaj;-><init>()V

    .line 183
    iput-object p2, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    .line 184
    iput p0, v0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    .line 185
    iput p1, v0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    return-object v0
.end method


# virtual methods
.method public add(IIF)V
    .locals 2

    if-ltz p2, :cond_0

    .line 246
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge p2, v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge p1, v0, :cond_0

    .line 250
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    aget p2, v0, p1

    add-float/2addr p2, p3

    aput p2, v0, p1

    return-void

    .line 247
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Specified element is out of bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copy()Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 353
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p0}, Lorg/ejml/data/FMatrixRMaj;-><init>(Lorg/ejml/data/FMatrixRMaj;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/ejml/data/Matrix;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->copy()Lorg/ejml/data/FMatrixRMaj;

    move-result-object v0

    return-object v0
.end method

.method public create(II)Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 398
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic create(II)Lorg/ejml/data/Matrix;
    .locals 0

    .line 55
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrixRMaj;->create(II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public createLike()Lorg/ejml/data/FMatrixRMaj;
    .locals 3

    .line 393
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic createLike()Lorg/ejml/data/Matrix;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->createLike()Lorg/ejml/data/FMatrixRMaj;

    move-result-object v0

    return-object v0
.end method

.method public fill(F)V
    .locals 3

    .line 342
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumElements()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Ljava/util/Arrays;->fill([FIIF)V

    return-void
.end method

.method public get(II)F
    .locals 3

    if-ltz p2, :cond_0

    .line 263
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge p2, v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge p1, v0, :cond_0

    .line 267
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    aget p1, v0, p1

    return p1

    .line 264
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Specified element is out of bounds: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIndex(II)I
    .locals 1

    .line 277
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    return p1
.end method

.method public getNumElements()I
    .locals 2

    .line 299
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getType()Lorg/ejml/data/MatrixType;
    .locals 1

    .line 403
    sget-object v0, Lorg/ejml/data/MatrixType;->FDRM:Lorg/ejml/data/MatrixType;

    return-object v0
.end method

.method public isInBounds(II)Z
    .locals 1

    if-ltz p2, :cond_0

    .line 288
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge p2, v0, :cond_0

    if-ltz p1, :cond_0

    iget p2, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public reshape(IIZ)V
    .locals 3

    .line 192
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkTooLarge(II)V

    .line 193
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    array-length v0, v0

    mul-int v1, p1, p2

    if-ge v0, v1, :cond_1

    .line 194
    new-array v0, v1, [F

    if-eqz p3, :cond_0

    .line 197
    iget-object p3, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumElements()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    :cond_0
    iput-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    .line 203
    :cond_1
    iput p1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    .line 204
    iput p2, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    return-void
.end method

.method public set(IIF)V
    .locals 2

    if-ltz p2, :cond_0

    .line 221
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge p2, v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge p1, v0, :cond_0

    .line 225
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    aput p3, v0, p1

    return-void

    .line 222
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v1, Lcom/google/android/exoplayer2/metadata/icy/OZ/XlYsLoHtRjl;->NbbpPrNzT:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " , "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public varargs set(IIZ[F)V
    .locals 6

    .line 312
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    mul-int v0, p1, p2

    .line 315
    iget-object v1, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    array-length v1, v1

    if-gt v0, v1, :cond_3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 319
    iget-object p1, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    invoke-static {p4, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_0
    move p3, v1

    move v0, p3

    :goto_0
    if-ge p3, p1, :cond_2

    move v2, v1

    :goto_1
    if-ge v2, p2, :cond_1

    .line 324
    iget-object v3, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v4, v0, 0x1

    mul-int v5, v2, p1

    add-int/2addr v5, p3

    aget v5, p4, v5

    aput v5, v3, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void

    .line 316
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The length of this matrix\'s data array is too small."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Lorg/ejml/data/Matrix;)V
    .locals 7

    .line 358
    move-object v0, p1

    check-cast v0, Lorg/ejml/data/FMatrix;

    .line 360
    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v1

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 362
    instance-of p1, p1, Lorg/ejml/data/FMatrixRMaj;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 364
    check-cast v0, Lorg/ejml/data/FMatrixRMaj;

    iget-object p1, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v3, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v2, v3

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_0
    move p1, v1

    move v2, p1

    .line 367
    :goto_0
    iget v3, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge p1, v3, :cond_2

    move v3, v1

    .line 368
    :goto_1
    iget v4, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v3, v4, :cond_1

    .line 369
    iget-object v4, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v0, p1, v3}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v6

    aput v6, v4, v2

    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public set([[F)V
    .locals 0

    .line 411
    invoke-static {p1, p0}, Lorg/ejml/ops/FConvertArrays;->convert([[FLorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 385
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 386
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v1, p0}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;)V

    .line 388
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsafe_get(II)F
    .locals 2

    .line 272
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    aget p1, v0, p1

    return p1
.end method

.method public unsafe_set(IIF)V
    .locals 2

    .line 230
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    aput p3, v0, p1

    return-void
.end method

.method public zero()V
    .locals 4

    .line 335
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumElements()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([FIIF)V

    return-void
.end method
