.class public Lorg/ejml/data/BMatrixRMaj;
.super Ljava/lang/Object;
.source "BMatrixRMaj.java"

# interfaces
.implements Lorg/ejml/data/ReshapeMatrix;


# instance fields
.field public data:[Z

.field public numCols:I

.field public numRows:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int v0, p1, p2

    .line 43
    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    .line 44
    iput p1, p0, Lorg/ejml/data/BMatrixRMaj;->numRows:I

    .line 45
    iput p2, p0, Lorg/ejml/data/BMatrixRMaj;->numCols:I

    return-void
.end method


# virtual methods
.method public copy()Lorg/ejml/data/Matrix;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/ejml/data/Matrix;",
            ">()TT;"
        }
    .end annotation

    .line 140
    new-instance v0, Lorg/ejml/data/BMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/BMatrixRMaj;->numRows:I

    iget v2, p0, Lorg/ejml/data/BMatrixRMaj;->numCols:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/BMatrixRMaj;-><init>(II)V

    .line 141
    invoke-virtual {v0, p0}, Lorg/ejml/data/BMatrixRMaj;->set(Lorg/ejml/data/Matrix;)V

    return-object v0
.end method

.method public create(II)Lorg/ejml/data/BMatrixRMaj;
    .locals 1

    .line 180
    new-instance v0, Lorg/ejml/data/BMatrixRMaj;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/BMatrixRMaj;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic create(II)Lorg/ejml/data/Matrix;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/BMatrixRMaj;->create(II)Lorg/ejml/data/BMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public createLike()Lorg/ejml/data/BMatrixRMaj;
    .locals 3

    .line 175
    new-instance v0, Lorg/ejml/data/BMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/BMatrixRMaj;->numRows:I

    iget v2, p0, Lorg/ejml/data/BMatrixRMaj;->numCols:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/BMatrixRMaj;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic createLike()Lorg/ejml/data/Matrix;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lorg/ejml/data/BMatrixRMaj;->createLike()Lorg/ejml/data/BMatrixRMaj;

    move-result-object v0

    return-object v0
.end method

.method public fill(Z)V
    .locals 3

    .line 61
    iget-object v0, p0, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/ejml/data/BMatrixRMaj;->getNumElements()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void
.end method

.method public get(I)Z
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public get(II)Z
    .locals 3

    .line 69
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/BMatrixRMaj;->isInBounds(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    iget v1, p0, Lorg/ejml/data/BMatrixRMaj;->numCols:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    aget-boolean p1, v0, p1

    return p1

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Out of matrix bounds. "

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

    .line 53
    iget v0, p0, Lorg/ejml/data/BMatrixRMaj;->numCols:I

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    return p1
.end method

.method public getNumCols()I
    .locals 1

    .line 130
    iget v0, p0, Lorg/ejml/data/BMatrixRMaj;->numCols:I

    return v0
.end method

.method public getNumElements()I
    .locals 2

    .line 49
    iget v0, p0, Lorg/ejml/data/BMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/BMatrixRMaj;->numCols:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getNumRows()I
    .locals 1

    .line 125
    iget v0, p0, Lorg/ejml/data/BMatrixRMaj;->numRows:I

    return v0
.end method

.method public getType()Lorg/ejml/data/MatrixType;
    .locals 1

    .line 185
    sget-object v0, Lorg/ejml/data/MatrixType;->UNSPECIFIED:Lorg/ejml/data/MatrixType;

    return-object v0
.end method

.method public isInBounds(II)Z
    .locals 1

    if-ltz p2, :cond_0

    .line 96
    iget v0, p0, Lorg/ejml/data/BMatrixRMaj;->numCols:I

    if-ge p2, v0, :cond_0

    if-ltz p1, :cond_0

    iget p2, p0, Lorg/ejml/data/BMatrixRMaj;->numRows:I

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public print()V
    .locals 5

    .line 155
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type = binary , numRows = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/ejml/data/BMatrixRMaj;->numRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , numCols = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ejml/data/BMatrixRMaj;->numCols:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 156
    :goto_0
    iget v2, p0, Lorg/ejml/data/BMatrixRMaj;->numRows:I

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 157
    :goto_1
    iget v3, p0, Lorg/ejml/data/BMatrixRMaj;->numCols:I

    if-ge v2, v3, :cond_1

    .line 158
    invoke-virtual {p0, v1, v2}, Lorg/ejml/data/BMatrixRMaj;->get(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 161
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 164
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 0

    .line 170
    invoke-virtual {p0}, Lorg/ejml/data/BMatrixRMaj;->print()V

    return-void
.end method

.method public reshape(II)V
    .locals 2

    mul-int v0, p1, p2

    .line 116
    iget-object v1, p0, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    array-length v1, v1

    if-ge v1, v0, :cond_0

    .line 117
    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    .line 119
    :cond_0
    iput p1, p0, Lorg/ejml/data/BMatrixRMaj;->numRows:I

    .line 120
    iput p2, p0, Lorg/ejml/data/BMatrixRMaj;->numCols:I

    return-void
.end method

.method public set(IIZ)V
    .locals 2

    .line 75
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/BMatrixRMaj;->isInBounds(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    iget v1, p0, Lorg/ejml/data/BMatrixRMaj;->numCols:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    aput-boolean p3, v0, p1

    return-void

    .line 76
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Out of matrix bounds. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public set(Lorg/ejml/data/Matrix;)V
    .locals 3

    .line 147
    move-object v0, p1

    check-cast v0, Lorg/ejml/data/BMatrixRMaj;

    .line 149
    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v1

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lorg/ejml/data/BMatrixRMaj;->reshape(II)V

    .line 150
    iget-object p1, v0, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    iget-object v1, p0, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    invoke-virtual {v0}, Lorg/ejml/data/BMatrixRMaj;->getNumElements()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public sum()I
    .locals 4

    .line 105
    invoke-virtual {p0}, Lorg/ejml/data/BMatrixRMaj;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 107
    iget-object v3, p0, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public unsafe_get(II)Z
    .locals 2

    .line 81
    iget-object v0, p0, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    iget v1, p0, Lorg/ejml/data/BMatrixRMaj;->numCols:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    aget-boolean p1, v0, p1

    return p1
.end method

.method public unsafe_set(IIZ)V
    .locals 2

    .line 85
    iget-object v0, p0, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    iget v1, p0, Lorg/ejml/data/BMatrixRMaj;->numCols:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    aput-boolean p3, v0, p1

    return-void
.end method

.method public zero()V
    .locals 3

    .line 135
    iget-object v0, p0, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/ejml/data/BMatrixRMaj;->getNumElements()I

    move-result v2

    invoke-static {v0, v1, v2, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void
.end method
