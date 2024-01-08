.class public Lorg/ejml/data/FMatrixRBlock;
.super Lorg/ejml/data/FMatrixD1;
.source "FMatrixRBlock.java"


# instance fields
.field public blockLength:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/ejml/data/FMatrixD1;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 48
    sget v0, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH:I

    invoke-direct {p0, p1, p2, v0}, Lorg/ejml/data/FMatrixRBlock;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lorg/ejml/data/FMatrixD1;-><init>()V

    .line 39
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkTooLarge(II)V

    mul-int v0, p1, p2

    .line 40
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    .line 41
    iput p3, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    .line 42
    iput p1, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    .line 43
    iput p2, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    return-void
.end method

.method public static wrap([FIII)Lorg/ejml/data/FMatrixRBlock;
    .locals 1

    .line 68
    new-instance v0, Lorg/ejml/data/FMatrixRBlock;

    invoke-direct {v0}, Lorg/ejml/data/FMatrixRBlock;-><init>()V

    .line 69
    iput-object p0, v0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    .line 70
    iput p1, v0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    .line 71
    iput p2, v0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    .line 72
    iput p3, v0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    return-object v0
.end method


# virtual methods
.method public copy()Lorg/ejml/data/FMatrixRBlock;
    .locals 4

    .line 192
    new-instance v0, Lorg/ejml/data/FMatrixRBlock;

    iget v1, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v2, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v3, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    invoke-direct {v0, v1, v2, v3}, Lorg/ejml/data/FMatrixRBlock;-><init>(III)V

    .line 193
    invoke-virtual {v0, p0}, Lorg/ejml/data/FMatrixRBlock;->set(Lorg/ejml/data/FMatrixRBlock;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/ejml/data/Matrix;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRBlock;->copy()Lorg/ejml/data/FMatrixRBlock;

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

    .line 167
    new-instance v0, Lorg/ejml/data/FMatrixRBlock;

    iget v1, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    invoke-direct {v0, p1, p2, v1}, Lorg/ejml/data/FMatrixRBlock;-><init>(III)V

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

    .line 162
    new-instance v0, Lorg/ejml/data/FMatrixRBlock;

    iget v1, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v2, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v3, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    invoke-direct {v0, v1, v2, v3}, Lorg/ejml/data/FMatrixRBlock;-><init>(III)V

    return-object v0
.end method

.method public get(II)F
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrixRBlock;->getIndex(II)I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public getData()[F
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    return-object v0
.end method

.method public getIndex(II)I
    .locals 5

    .line 110
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    div-int v1, p1, v0

    .line 111
    div-int v0, p2, v0

    .line 113
    iget v2, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v3, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    mul-int v4, v1, v3

    sub-int/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 115
    iget v3, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    mul-int/2addr v1, v3

    iget v3, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    mul-int/2addr v1, v3

    mul-int/2addr v2, v0

    iget v3, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 117
    iget v2, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v3, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    mul-int/2addr v0, v3

    sub-int/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 119
    iget v2, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    rem-int/2addr p1, v2

    .line 120
    rem-int/2addr p2, v2

    mul-int/2addr v0, p1

    add-int/2addr v1, v0

    add-int/2addr v1, p2

    return v1
.end method

.method public getNumCols()I
    .locals 1

    .line 152
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    return v0
.end method

.method public getNumElements()I
    .locals 2

    .line 187
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getNumRows()I
    .locals 1

    .line 147
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    return v0
.end method

.method public getType()Lorg/ejml/data/MatrixType;
    .locals 1

    .line 199
    sget-object v0, Lorg/ejml/data/MatrixType;->UNSPECIFIED:Lorg/ejml/data/MatrixType;

    return-object v0
.end method

.method public reshape(IIIZ)V
    .locals 0

    .line 103
    iput p3, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    .line 104
    invoke-virtual {p0, p1, p2, p4}, Lorg/ejml/data/FMatrixRBlock;->reshape(IIZ)V

    return-void
.end method

.method public reshape(IIZ)V
    .locals 3

    .line 85
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkTooLarge(II)V

    mul-int v0, p1, p2

    .line 86
    iget-object v1, p0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 87
    iput p1, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    .line 88
    iput p2, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    goto :goto_0

    .line 90
    :cond_0
    new-array v0, v0, [F

    if-eqz p3, :cond_1

    .line 93
    iget-object p3, p0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRBlock;->getNumElements()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    :cond_1
    iput p1, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    .line 97
    iput p2, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    .line 98
    iput-object v0, p0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    :goto_0
    return-void
.end method

.method public set(IIF)V
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrixRBlock;->getIndex(II)I

    move-result p1

    aput p3, v0, p1

    return-void
.end method

.method public set(Lorg/ejml/data/FMatrixRBlock;)V
    .locals 3

    .line 54
    iget v0, p1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iput v0, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    .line 55
    iget v0, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iput v0, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    .line 56
    iget v0, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iput v0, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    .line 58
    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v1, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    mul-int/2addr v0, v1

    .line 60
    iget-object v1, p0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    array-length v1, v1

    if-ge v1, v0, :cond_0

    .line 61
    new-array v1, v0, [F

    iput-object v1, p0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    .line 63
    :cond_0
    iget-object p1, p1, Lorg/ejml/data/FMatrixRBlock;->data:[F

    iget-object v1, p0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public set(Lorg/ejml/data/Matrix;)V
    .locals 4

    .line 172
    instance-of v0, p1, Lorg/ejml/data/FMatrixRBlock;

    if-eqz v0, :cond_0

    .line 173
    check-cast p1, Lorg/ejml/data/FMatrixRBlock;

    invoke-virtual {p0, p1}, Lorg/ejml/data/FMatrixRBlock;->set(Lorg/ejml/data/FMatrixRBlock;)V

    goto :goto_2

    .line 175
    :cond_0
    check-cast p1, Lorg/ejml/data/FMatrix;

    const/4 v0, 0x0

    move v1, v0

    .line 177
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 178
    :goto_1
    iget v3, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ge v2, v3, :cond_1

    .line 179
    invoke-interface {p1, v1, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/ejml/data/FMatrixRBlock;->set(IIF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public unsafe_get(II)F
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrixRBlock;->getIndex(II)I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public unsafe_set(IIF)V
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrixRBlock;->getIndex(II)I

    move-result p1

    aput p3, v0, p1

    return-void
.end method

.method public zero()V
    .locals 4

    .line 157
    iget-object v0, p0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRBlock;->getNumElements()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([FIIF)V

    return-void
.end method
