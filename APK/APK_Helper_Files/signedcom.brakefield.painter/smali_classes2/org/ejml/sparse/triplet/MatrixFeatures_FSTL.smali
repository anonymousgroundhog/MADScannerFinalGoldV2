.class public Lorg/ejml/sparse/triplet/MatrixFeatures_FSTL;
.super Ljava/lang/Object;
.source "MatrixFeatures_FSTL.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEquals(Lorg/ejml/data/FMatrixSparseTriplet;Lorg/ejml/data/FMatrixSparseTriplet;)Z
    .locals 6

    .line 31
    invoke-static {p0, p1}, Lorg/ejml/sparse/triplet/MatrixFeatures_FSTL;->isSameShape(Lorg/ejml/data/FMatrixSparseTriplet;Lorg/ejml/data/FMatrixSparseTriplet;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 34
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    const/4 v3, 0x1

    if-ge v0, v2, :cond_3

    .line 35
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v2, v2, Lorg/ejml/data/IGrowArray;->data:[I

    mul-int/lit8 v4, v0, 0x2

    aget v2, v2, v4

    .line 36
    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v5, v5, Lorg/ejml/data/IGrowArray;->data:[I

    add-int/2addr v4, v3

    aget v3, v5, v4

    .line 37
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    iget-object v4, v4, Lorg/ejml/data/FGrowArray;->data:[F

    aget v4, v4, v0

    .line 39
    invoke-virtual {p1, v2, v3}, Lorg/ejml/data/FMatrixSparseTriplet;->nz_index(II)I

    move-result v2

    if-gez v2, :cond_1

    return v1

    .line 43
    :cond_1
    iget-object v3, p1, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    iget-object v3, v3, Lorg/ejml/data/FGrowArray;->data:[F

    aget v2, v3, v2

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public static isEquals(Lorg/ejml/data/FMatrixSparseTriplet;Lorg/ejml/data/FMatrixSparseTriplet;F)Z
    .locals 6

    .line 52
    invoke-static {p0, p1}, Lorg/ejml/sparse/triplet/MatrixFeatures_FSTL;->isSameShape(Lorg/ejml/data/FMatrixSparseTriplet;Lorg/ejml/data/FMatrixSparseTriplet;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 55
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    const/4 v3, 0x1

    if-ge v0, v2, :cond_3

    .line 56
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v2, v2, Lorg/ejml/data/IGrowArray;->data:[I

    mul-int/lit8 v4, v0, 0x2

    aget v2, v2, v4

    .line 57
    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v5, v5, Lorg/ejml/data/IGrowArray;->data:[I

    add-int/2addr v4, v3

    aget v3, v5, v4

    .line 58
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    iget-object v4, v4, Lorg/ejml/data/FGrowArray;->data:[F

    aget v4, v4, v0

    .line 60
    invoke-virtual {p1, v2, v3}, Lorg/ejml/data/FMatrixSparseTriplet;->nz_index(II)I

    move-result v2

    if-gez v2, :cond_1

    return v1

    .line 64
    :cond_1
    iget-object v3, p1, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    iget-object v3, v3, Lorg/ejml/data/FGrowArray;->data:[F

    aget v2, v3, v2

    sub-float/2addr v4, v2

    .line 66
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public static isSameShape(Lorg/ejml/data/FMatrixSparseTriplet;Lorg/ejml/data/FMatrixSparseTriplet;)Z
    .locals 2

    .line 73
    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseTriplet;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseTriplet;->numCols:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    iget p1, p1, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
