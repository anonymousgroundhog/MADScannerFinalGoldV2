.class public Lorg/ejml/dense/block/InnerTriangularSolver_FDRB;
.super Ljava/lang/Object;
.source "InnerTriangularSolver_FDRB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invertLower([FII)V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    mul-int v2, v1, p1

    add-int/2addr v2, p2

    add-int v3, v2, v1

    .line 91
    aget v4, p0, v3

    move v5, v0

    :goto_1
    if-ge v5, v1, :cond_1

    const/4 v6, 0x0

    move v7, v5

    :goto_2
    if-ge v7, v1, :cond_0

    add-int v8, v2, v7

    .line 95
    aget v8, p0, v8

    mul-int v9, v7, p1

    add-int/2addr v9, p2

    add-int/2addr v9, v5

    aget v9, p0, v9

    mul-float/2addr v8, v9

    add-float/2addr v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    add-int v7, v2, v5

    neg-float v6, v6

    div-float/2addr v6, v4

    .line 97
    aput v6, p0, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v4

    .line 99
    aput v2, p0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static invertLower([F[FIII)V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    mul-int v2, v1, p2

    add-int v3, p3, v2

    add-int v4, v3, v1

    .line 66
    aget v4, p0, v4

    move v5, v0

    :goto_1
    if-ge v5, v1, :cond_1

    const/4 v6, 0x0

    move v7, v5

    :goto_2
    if-ge v7, v1, :cond_0

    add-int v8, v3, v7

    .line 70
    aget v8, p0, v8

    mul-int v9, v7, p2

    add-int/2addr v9, p4

    add-int/2addr v9, v5

    aget v9, p1, v9

    mul-float/2addr v8, v9

    add-float/2addr v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    add-int v7, p4, v2

    add-int/2addr v7, v5

    neg-float v6, v6

    div-float/2addr v6, v4

    .line 72
    aput v6, p1, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v2, p4

    add-int/2addr v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v4

    .line 74
    aput v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static solveL([F[FIIIII)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_2

    move v2, v0

    :goto_1
    if-ge v2, p2, :cond_1

    mul-int v3, v2, p3

    add-int/2addr v3, p6

    add-int/2addr v3, v1

    .line 125
    aget v4, p1, v3

    move v5, v0

    :goto_2
    if-ge v5, v2, :cond_0

    mul-int v6, v2, p4

    add-int/2addr v6, p5

    add-int/2addr v6, v5

    .line 127
    aget v6, p0, v6

    mul-int v7, v5, p3

    add-int/2addr v7, p6

    add-int/2addr v7, v1

    aget v7, p1, v7

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    mul-int v5, v2, p4

    add-int/2addr v5, p5

    add-int/2addr v5, v2

    .line 129
    aget v5, p0, v5

    div-float/2addr v4, v5

    aput v4, p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static solveLTransB([F[FIIIII)V
    .locals 12

    move v0, p2

    const/4 v1, 0x0

    move v2, p3

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    move v4, v1

    :goto_1
    if-ge v4, v0, :cond_1

    mul-int v5, v3, v0

    add-int v5, p6, v5

    add-int v6, v5, v4

    .line 195
    aget v7, p1, v6

    mul-int v8, v4, p4

    add-int v8, p5, v8

    add-int v9, v8, v4

    :goto_2
    if-eq v8, v9, :cond_0

    add-int/lit8 v10, v8, 0x1

    .line 201
    aget v8, p0, v8

    add-int/lit8 v11, v5, 0x1

    aget v5, p1, v5

    mul-float/2addr v8, v5

    sub-float/2addr v7, v8

    move v8, v10

    move v5, v11

    goto :goto_2

    .line 203
    :cond_0
    aget v5, p0, v9

    div-float/2addr v7, v5

    aput v7, p1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static solveTransL([F[FIIIII)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    add-int/lit8 v1, p2, -0x1

    :goto_1
    if-ltz v1, :cond_1

    mul-int v2, v1, p3

    add-int/2addr v2, p6

    add-int/2addr v2, v0

    .line 156
    aget v3, p1, v2

    add-int/lit8 v4, v1, 0x1

    :goto_2
    if-ge v4, p2, :cond_0

    mul-int v5, v4, p4

    add-int/2addr v5, p5

    add-int/2addr v5, v1

    .line 158
    aget v5, p0, v5

    mul-int v6, v4, p3

    add-int/2addr v6, p6

    add-int/2addr v6, v0

    aget v6, p1, v6

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    mul-int v4, v1, p4

    add-int/2addr v4, p5

    add-int/2addr v4, v1

    .line 160
    aget v4, p0, v4

    div-float/2addr v3, v4

    aput v3, p1, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static solveTransU([F[FIIIII)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_2

    move v2, v0

    :goto_1
    if-ge v2, p2, :cond_1

    mul-int v3, v2, p3

    add-int/2addr v3, p6

    add-int/2addr v3, v1

    .line 259
    aget v4, p1, v3

    move v5, v0

    :goto_2
    if-ge v5, v2, :cond_0

    mul-int v6, v5, p4

    add-int/2addr v6, p5

    add-int/2addr v6, v2

    .line 261
    aget v6, p0, v6

    mul-int v7, v5, p3

    add-int/2addr v7, p6

    add-int/2addr v7, v1

    aget v7, p1, v7

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    mul-int v5, v2, p4

    add-int/2addr v5, p5

    add-int/2addr v5, v2

    .line 263
    aget v5, p0, v5

    div-float/2addr v4, v5

    aput v4, p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static solveU([F[FIIIII)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    add-int/lit8 v1, p2, -0x1

    :goto_1
    if-ltz v1, :cond_1

    mul-int v2, v1, p3

    add-int/2addr v2, p6

    add-int/2addr v2, v0

    .line 229
    aget v3, p1, v2

    add-int/lit8 v4, v1, 0x1

    :goto_2
    if-ge v4, p2, :cond_0

    mul-int v5, v1, p4

    add-int/2addr v5, p5

    add-int/2addr v5, v4

    .line 231
    aget v5, p0, v5

    mul-int v6, v4, p3

    add-int/2addr v6, p6

    add-int/2addr v6, v0

    aget v6, p1, v6

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    mul-int v4, v1, p4

    add-int/2addr v4, p5

    add-int/2addr v4, v1

    .line 233
    aget v4, p0, v4

    div-float/2addr v3, v4

    aput v3, p1, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
