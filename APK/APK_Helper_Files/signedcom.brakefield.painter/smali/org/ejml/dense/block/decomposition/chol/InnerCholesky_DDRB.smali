.class public Lorg/ejml/dense/block/decomposition/chol/InnerCholesky_DDRB;
.super Ljava/lang/Object;
.source "InnerCholesky_DDRB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lower(Lorg/ejml/data/DSubmatrixD1;)Z
    .locals 3

    .line 39
    iget v0, p0, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v1, p0, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v0, v1

    .line 40
    iget v1, p0, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v2, p0, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v2, Lorg/ejml/data/DMatrixD1;

    iget v2, v2, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/DSubmatrixD1;->col0:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 42
    iget-object p0, p0, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast p0, Lorg/ejml/data/DMatrixD1;

    iget-object p0, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    invoke-static {p0, v1, v0}, Lorg/ejml/dense/block/decomposition/chol/InnerCholesky_DDRB;->lower([DII)Z

    move-result p0

    return p0
.end method

.method public static lower([DII)Z
    .locals 17

    move/from16 v0, p2

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_4

    move v7, v4

    :goto_1
    if-ge v7, v0, :cond_3

    mul-int v8, v7, v0

    add-int v8, p1, v8

    add-int v9, v8, v4

    .line 99
    aget-wide v10, p0, v9

    move v12, v3

    :goto_2
    if-ge v12, v4, :cond_0

    mul-int v13, v4, v0

    add-int v13, p1, v13

    add-int/2addr v13, v12

    .line 103
    aget-wide v13, p0, v13

    add-int v15, v8, v12

    aget-wide v15, p0, v15

    mul-double/2addr v13, v15

    sub-double/2addr v10, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_0
    if-ne v4, v7, :cond_2

    cmpg-double v5, v10, v1

    if-gtz v5, :cond_1

    return v3

    .line 111
    :cond_1
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-int v8, v4, v0

    add-int v8, p1, v8

    add-int/2addr v8, v4

    .line 112
    aput-wide v5, p0, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double/2addr v8, v5

    move-wide v5, v8

    goto :goto_3

    :cond_2
    mul-double/2addr v10, v5

    .line 115
    aput-wide v10, p0, v9

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public static upper(Lorg/ejml/data/DSubmatrixD1;)Z
    .locals 3

    .line 32
    iget v0, p0, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v1, p0, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v0, v1

    .line 33
    iget v1, p0, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iget-object v2, p0, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v2, Lorg/ejml/data/DMatrixD1;

    iget v2, v2, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/DSubmatrixD1;->col0:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 35
    iget-object p0, p0, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast p0, Lorg/ejml/data/DMatrixD1;

    iget-object p0, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    invoke-static {p0, v1, v0}, Lorg/ejml/dense/block/decomposition/chol/InnerCholesky_DDRB;->upper([DII)Z

    move-result p0

    return p0
.end method

.method public static upper([DII)Z
    .locals 18

    move/from16 v0, p2

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_4

    move v7, v4

    :goto_1
    if-ge v7, v0, :cond_3

    mul-int v8, v4, v0

    add-int v8, p1, v8

    add-int v9, v8, v7

    .line 60
    aget-wide v10, p0, v9

    move v12, v3

    :goto_2
    if-ge v12, v4, :cond_0

    mul-int v13, v12, v0

    add-int v13, p1, v13

    add-int v14, v13, v4

    .line 64
    aget-wide v14, p0, v14

    add-int/2addr v13, v7

    aget-wide v16, p0, v13

    mul-double v14, v14, v16

    sub-double/2addr v10, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_0
    if-ne v4, v7, :cond_2

    cmpg-double v5, v10, v1

    if-gtz v5, :cond_1

    return v3

    .line 72
    :cond_1
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    add-int/2addr v8, v4

    .line 73
    aput-wide v5, p0, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double/2addr v8, v5

    move-wide v5, v8

    goto :goto_3

    :cond_2
    mul-double/2addr v10, v5

    .line 76
    aput-wide v10, p0, v9

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    return v0
.end method
