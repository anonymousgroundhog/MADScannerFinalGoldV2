.class public Lorg/ejml/dense/block/decomposition/chol/InnerCholesky_FDRB;
.super Ljava/lang/Object;
.source "InnerCholesky_FDRB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lower(Lorg/ejml/data/FSubmatrixD1;)Z
    .locals 3

    .line 41
    iget v0, p0, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v1, p0, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v0, v1

    .line 42
    iget v1, p0, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v2, p0, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v2, Lorg/ejml/data/FMatrixD1;

    iget v2, v2, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 44
    iget-object p0, p0, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast p0, Lorg/ejml/data/FMatrixD1;

    iget-object p0, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    invoke-static {p0, v1, v0}, Lorg/ejml/dense/block/decomposition/chol/InnerCholesky_FDRB;->lower([FII)Z

    move-result p0

    return p0
.end method

.method public static lower([FII)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_4

    move v4, v2

    :goto_1
    if-ge v4, p2, :cond_3

    mul-int v5, v4, p2

    add-int/2addr v5, p1

    add-int v6, v5, v2

    .line 101
    aget v7, p0, v6

    move v8, v1

    :goto_2
    if-ge v8, v2, :cond_0

    mul-int v9, v2, p2

    add-int/2addr v9, p1

    add-int/2addr v9, v8

    .line 105
    aget v9, p0, v9

    add-int v10, v5, v8

    aget v10, p0, v10

    mul-float/2addr v9, v10

    sub-float/2addr v7, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    if-ne v2, v4, :cond_2

    cmpg-float v3, v7, v0

    if-gtz v3, :cond_1

    return v1

    :cond_1
    float-to-double v5, v7

    .line 113
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v3, v5

    mul-int v5, v2, p2

    add-int/2addr v5, p1

    add-int/2addr v5, v2

    .line 114
    aput v3, p0, v5

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v3

    move v3, v5

    goto :goto_3

    :cond_2
    mul-float/2addr v7, v3

    .line 117
    aput v7, p0, v6

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static upper(Lorg/ejml/data/FSubmatrixD1;)Z
    .locals 3

    .line 34
    iget v0, p0, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v1, p0, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v0, v1

    .line 35
    iget v1, p0, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iget-object v2, p0, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v2, Lorg/ejml/data/FMatrixD1;

    iget v2, v2, Lorg/ejml/data/FMatrixD1;->numCols:I

    mul-int/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 37
    iget-object p0, p0, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast p0, Lorg/ejml/data/FMatrixD1;

    iget-object p0, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    invoke-static {p0, v1, v0}, Lorg/ejml/dense/block/decomposition/chol/InnerCholesky_FDRB;->upper([FII)Z

    move-result p0

    return p0
.end method

.method public static upper([FII)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_4

    move v4, v2

    :goto_1
    if-ge v4, p2, :cond_3

    mul-int v5, v2, p2

    add-int/2addr v5, p1

    add-int v6, v5, v4

    .line 62
    aget v7, p0, v6

    move v8, v1

    :goto_2
    if-ge v8, v2, :cond_0

    mul-int v9, v8, p2

    add-int/2addr v9, p1

    add-int v10, v9, v2

    .line 66
    aget v10, p0, v10

    add-int/2addr v9, v4

    aget v9, p0, v9

    mul-float/2addr v10, v9

    sub-float/2addr v7, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    if-ne v2, v4, :cond_2

    cmpg-float v3, v7, v0

    if-gtz v3, :cond_1

    return v1

    :cond_1
    float-to-double v6, v7

    .line 74
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v3, v6

    add-int/2addr v5, v2

    .line 75
    aput v3, p0, v5

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v3

    move v3, v5

    goto :goto_3

    :cond_2
    mul-float/2addr v7, v3

    .line 78
    aput v7, p0, v6

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method
