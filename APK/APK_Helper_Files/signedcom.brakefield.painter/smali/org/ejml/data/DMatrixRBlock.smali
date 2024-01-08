.class public Lorg/ejml/data/DMatrixRBlock;
.super Lorg/ejml/data/DMatrixD1;
.source "DMatrixRBlock.java"


# instance fields
.field public blockLength:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/ejml/data/DMatrixD1;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 46
    sget v0, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH:I

    invoke-direct {p0, p1, p2, v0}, Lorg/ejml/data/DMatrixRBlock;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 36
    invoke-direct {p0}, Lorg/ejml/data/DMatrixD1;-><init>()V

    .line 37
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkTooLarge(II)V

    mul-int v0, p1, p2

    .line 38
    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    .line 39
    iput p3, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    .line 40
    iput p1, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    .line 41
    iput p2, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    return-void
.end method

.method public static wrap([DIII)Lorg/ejml/data/DMatrixRBlock;
    .locals 1

    .line 66
    new-instance v0, Lorg/ejml/data/DMatrixRBlock;

    invoke-direct {v0}, Lorg/ejml/data/DMatrixRBlock;-><init>()V

    .line 67
    iput-object p0, v0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    .line 68
    iput p1, v0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    .line 69
    iput p2, v0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    .line 70
    iput p3, v0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    return-object v0
.end method


# virtual methods
.method public copy()Lorg/ejml/data/DMatrixRBlock;
    .locals 4

    .line 190
    new-instance v0, Lorg/ejml/data/DMatrixRBlock;

    iget v1, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v2, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget v3, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    invoke-direct {v0, v1, v2, v3}, Lorg/ejml/data/DMatrixRBlock;-><init>(III)V

    .line 191
    invoke-virtual {v0, p0}, Lorg/ejml/data/DMatrixRBlock;->set(Lorg/ejml/data/DMatrixRBlock;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/ejml/data/Matrix;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRBlock;->copy()Lorg/ejml/data/DMatrixRBlock;

    move-result-object v0

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

    .line 165
    new-instance v0, Lorg/ejml/data/DMatrixRBlock;

    iget v1, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    invoke-direct {v0, p1, p2, v1}, Lorg/ejml/data/DMatrixRBlock;-><init>(III)V

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

    .line 160
    new-instance v0, Lorg/ejml/data/DMatrixRBlock;

    iget v1, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v2, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget v3, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    invoke-direct {v0, v1, v2, v3}, Lorg/ejml/data/DMatrixRBlock;-><init>(III)V

    return-object v0
.end method

.method public get(II)D
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrixRBlock;->getIndex(II)I

    move-result p1

    aget-wide p1, v0, p1

    return-wide p1
.end method

.method public getData()[D
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    return-object v0
.end method

.method public getIndex(II)I
    .locals 5

    .line 108
    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    div-int v1, p1, v0

    .line 109
    div-int v0, p2, v0

    .line 111
    iget v2, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v3, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    mul-int v4, v1, v3

    sub-int/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 113
    iget v3, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    mul-int/2addr v1, v3

    iget v3, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    mul-int/2addr v1, v3

    mul-int/2addr v2, v0

    iget v3, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 115
    iget v2, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget v3, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    mul-int/2addr v0, v3

    sub-int/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 117
    iget v2, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    rem-int/2addr p1, v2

    .line 118
    rem-int/2addr p2, v2

    mul-int/2addr v0, p1

    add-int/2addr v1, v0

    add-int/2addr v1, p2

    return v1
.end method

.method public getNumCols()I
    .locals 1

    .line 150
    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    return v0
.end method

.method public getNumElements()I
    .locals 2

    .line 185
    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getNumRows()I
    .locals 1

    .line 145
    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    return v0
.end method

.method public getType()Lorg/ejml/data/MatrixType;
    .locals 1

    .line 197
    sget-object v0, Lorg/ejml/data/MatrixType;->UNSPECIFIED:Lorg/ejml/data/MatrixType;

    return-object v0
.end method

.method public reshape(IIIZ)V
    .locals 0

    .line 101
    iput p3, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    .line 102
    invoke-virtual {p0, p1, p2, p4}, Lorg/ejml/data/DMatrixRBlock;->reshape(IIZ)V

    return-void
.end method

.method public reshape(IIZ)V
    .locals 3

    .line 83
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkTooLarge(II)V

    mul-int v0, p1, p2

    .line 84
    iget-object v1, p0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 85
    iput p1, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    .line 86
    iput p2, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    goto :goto_0

    .line 88
    :cond_0
    new-array v0, v0, [D

    if-eqz p3, :cond_1

    .line 91
    iget-object p3, p0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRBlock;->getNumElements()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    :cond_1
    iput p1, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    .line 95
    iput p2, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    .line 96
    iput-object v0, p0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    :goto_0
    return-void
.end method

.method public set(IID)V
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrixRBlock;->getIndex(II)I

    move-result p1

    aput-wide p3, v0, p1

    return-void
.end method

.method public set(Lorg/ejml/data/DMatrixRBlock;)V
    .locals 3

    .line 52
    iget v0, p1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iput v0, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    .line 53
    iget v0, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iput v0, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    .line 54
    iget v0, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iput v0, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    .line 56
    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget v1, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    mul-int/2addr v0, v1

    .line 58
    iget-object v1, p0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    array-length v1, v1

    if-ge v1, v0, :cond_0

    .line 59
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    .line 61
    :cond_0
    iget-object p1, p1, Lorg/ejml/data/DMatrixRBlock;->data:[D

    iget-object v1, p0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public set(Lorg/ejml/data/Matrix;)V
    .locals 5

    .line 170
    instance-of v0, p1, Lorg/ejml/data/DMatrixRBlock;

    if-eqz v0, :cond_0

    .line 171
    check-cast p1, Lorg/ejml/data/DMatrixRBlock;

    invoke-virtual {p0, p1}, Lorg/ejml/data/DMatrixRBlock;->set(Lorg/ejml/data/DMatrixRBlock;)V

    goto :goto_2

    .line 173
    :cond_0
    check-cast p1, Lorg/ejml/data/DMatrix;

    const/4 v0, 0x0

    move v1, v0

    .line 175
    :goto_0
    iget v2, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 176
    :goto_1
    iget v3, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-ge v2, v3, :cond_1

    .line 177
    invoke-interface {p1, v1, v2}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/ejml/data/DMatrixRBlock;->set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public unsafe_get(II)D
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrixRBlock;->getIndex(II)I

    move-result p1

    aget-wide p1, v0, p1

    return-wide p1
.end method

.method public unsafe_set(IID)V
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrixRBlock;->getIndex(II)I

    move-result p1

    aput-wide p3, v0, p1

    return-void
.end method

.method public zero()V
    .locals 5

    .line 155
    iget-object v0, p0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRBlock;->getNumElements()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/util/Arrays;->fill([DIID)V

    return-void
.end method
