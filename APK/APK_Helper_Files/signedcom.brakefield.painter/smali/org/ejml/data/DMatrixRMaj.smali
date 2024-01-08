.class public Lorg/ejml/data/DMatrixRMaj;
.super Lorg/ejml/data/DMatrix1Row;
.source "DMatrixRMaj.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Lorg/ejml/data/DMatrix1Row;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lorg/ejml/data/DMatrix1Row;-><init>()V

    .line 145
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 119
    invoke-direct {p0}, Lorg/ejml/data/DMatrix1Row;-><init>()V

    .line 120
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkTooLarge(II)V

    mul-int v0, p1, p2

    .line 121
    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    .line 123
    iput p1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    .line 124
    iput p2, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    return-void
.end method

.method public varargs constructor <init>(IIZ[D)V
    .locals 1

    .line 77
    invoke-direct {p0}, Lorg/ejml/data/DMatrix1Row;-><init>()V

    .line 78
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkTooLarge(II)V

    mul-int v0, p1, p2

    .line 80
    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    .line 82
    iput p1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    .line 83
    iput p2, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    .line 85
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/data/DMatrixRMaj;->set(IIZ[D)V

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/DMatrix;)V
    .locals 5

    .line 160
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    const/4 v0, 0x0

    move v1, v0

    .line 161
    :goto_0
    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 162
    :goto_1
    iget v3, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v2, v3, :cond_0

    .line 163
    invoke-interface {p1, v1, v2}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 3

    .line 134
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-direct {p0, v0, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 135
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v1, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result p1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([D)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lorg/ejml/data/DMatrix1Row;-><init>()V

    .line 107
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    .line 108
    iget-object p1, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    array-length p1, p1

    iput p1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 p1, 0x1

    .line 109
    iput p1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    return-void
.end method

.method public constructor <init>([[D)V
    .locals 1

    const/4 v0, 0x1

    .line 98
    invoke-direct {p0, v0, v0}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 99
    invoke-virtual {p0, p1}, Lorg/ejml/data/DMatrixRMaj;->set([[D)V

    return-void
.end method

.method public static wrap(II[D)Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 179
    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->checkTooLarge(II)V

    .line 180
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0}, Lorg/ejml/data/DMatrixRMaj;-><init>()V

    .line 181
    iput-object p2, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    .line 182
    iput p0, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    .line 183
    iput p1, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    return-object v0
.end method


# virtual methods
.method public add(IID)V
    .locals 3

    if-ltz p2, :cond_0

    .line 244
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge p2, v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge p1, v0, :cond_0

    .line 248
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    aget-wide v1, v0, p1

    add-double/2addr v1, p3

    aput-wide v1, v0, p1

    return-void

    .line 245
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x0

    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/guides/DR/isVGwxqXMxDjgS;->gNUFwM:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copy()Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 351
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, p0}, Lorg/ejml/data/DMatrixRMaj;-><init>(Lorg/ejml/data/DMatrixRMaj;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/ejml/data/Matrix;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->copy()Lorg/ejml/data/DMatrixRMaj;

    move-result-object v0

    return-object v0
.end method

.method public create(II)Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 396
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic create(II)Lorg/ejml/data/Matrix;
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrixRMaj;->create(II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public createLike()Lorg/ejml/data/DMatrixRMaj;
    .locals 3

    .line 391
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic createLike()Lorg/ejml/data/Matrix;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->createLike()Lorg/ejml/data/DMatrixRMaj;

    move-result-object v0

    return-object v0
.end method

.method public fill(D)V
    .locals 3

    .line 340
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v2

    invoke-static {v0, v1, v2, p1, p2}, Ljava/util/Arrays;->fill([DIID)V

    return-void
.end method

.method public get(II)D
    .locals 3

    if-ltz p2, :cond_0

    .line 261
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge p2, v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge p1, v0, :cond_0

    .line 265
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    aget-wide p1, v0, p1

    return-wide p1

    .line 262
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

    .line 275
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    return p1
.end method

.method public getNumElements()I
    .locals 2

    .line 297
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getType()Lorg/ejml/data/MatrixType;
    .locals 1

    .line 401
    sget-object v0, Lorg/ejml/data/MatrixType;->DDRM:Lorg/ejml/data/MatrixType;

    return-object v0
.end method

.method public isInBounds(II)Z
    .locals 1

    if-ltz p2, :cond_0

    .line 286
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge p2, v0, :cond_0

    if-ltz p1, :cond_0

    iget p2, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

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

    .line 190
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkTooLarge(II)V

    .line 191
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    array-length v0, v0

    mul-int v1, p1, p2

    if-ge v0, v1, :cond_1

    .line 192
    new-array v0, v1, [D

    if-eqz p3, :cond_0

    .line 195
    iget-object p3, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    :cond_0
    iput-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    .line 201
    :cond_1
    iput p1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    .line 202
    iput p2, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    return-void
.end method

.method public set(IID)V
    .locals 2

    if-ltz p2, :cond_0

    .line 219
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge p2, v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge p1, v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    aput-wide p3, v0, p1

    return-void

    .line 220
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Specified element is out of bounds: ("

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " , "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public varargs set(IIZ[D)V
    .locals 7

    .line 310
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    mul-int v0, p1, p2

    .line 313
    iget-object v1, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    array-length v1, v1

    if-gt v0, v1, :cond_3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 317
    iget-object p1, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

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

    .line 322
    iget-object v3, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v4, v0, 0x1

    mul-int v5, v2, p1

    add-int/2addr v5, p3

    aget-wide v5, p4, v5

    aput-wide v5, v3, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void

    .line 314
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The length of this matrix\'s data array is too small."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Lorg/ejml/data/Matrix;)V
    .locals 8

    .line 356
    move-object v0, p1

    check-cast v0, Lorg/ejml/data/DMatrix;

    .line 358
    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v1

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 360
    instance-of p1, p1, Lorg/ejml/data/DMatrixRMaj;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 362
    check-cast v0, Lorg/ejml/data/DMatrixRMaj;

    iget-object p1, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v3, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v2, v3

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_0
    move p1, v1

    move v2, p1

    .line 365
    :goto_0
    iget v3, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge p1, v3, :cond_2

    move v3, v1

    .line 366
    :goto_1
    iget v4, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v3, v4, :cond_1

    .line 367
    iget-object v4, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v0, p1, v3}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    aput-wide v6, v4, v2

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

.method public set([[D)V
    .locals 0

    .line 409
    invoke-static {p1, p0}, Lorg/ejml/ops/DConvertArrays;->convert([[DLorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 383
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 384
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v1, p0}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;)V

    .line 386
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsafe_get(II)D
    .locals 2

    .line 270
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    aget-wide p1, v0, p1

    return-wide p1
.end method

.method public unsafe_set(IID)V
    .locals 2

    .line 228
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    aput-wide p3, v0, p1

    return-void
.end method

.method public zero()V
    .locals 5

    .line 333
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/util/Arrays;->fill([DIID)V

    return-void
.end method
