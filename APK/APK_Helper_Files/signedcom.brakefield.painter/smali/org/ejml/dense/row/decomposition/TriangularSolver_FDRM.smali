.class public Lorg/ejml/dense/row/decomposition/TriangularSolver_FDRM;
.super Ljava/lang/Object;
.source "TriangularSolver_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invertLower([FI)V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    mul-int v2, v1, p1

    add-int v3, v2, v1

    .line 48
    aget v4, p0, v3

    move v5, v0

    :goto_1
    if-ge v5, v1, :cond_1

    const/4 v6, 0x0

    move v7, v5

    :goto_2
    if-ge v7, v1, :cond_0

    add-int v8, v2, v7

    .line 52
    aget v8, p0, v8

    mul-int v9, v7, p1

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

    .line 54
    aput v6, p0, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v4

    .line 56
    aput v2, p0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static invertLower([F[FI)V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    mul-int v2, v1, p2

    add-int v3, v2, v1

    .line 62
    aget v4, p0, v3

    move v5, v0

    :goto_1
    if-ge v5, v1, :cond_1

    const/4 v6, 0x0

    move v7, v5

    :goto_2
    if-ge v7, v1, :cond_0

    add-int v8, v2, v7

    .line 66
    aget v8, p0, v8

    mul-int v9, v7, p2

    add-int/2addr v9, v5

    aget v9, p1, v9

    mul-float/2addr v8, v9

    sub-float/2addr v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    add-int v7, v2, v5

    div-float/2addr v6, v4

    .line 68
    aput v6, p1, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v4

    .line 70
    aput v2, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static solveL([F[FI)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 96
    aget v2, p1, v1

    mul-int v3, v1, p2

    move v4, v0

    :goto_1
    if-ge v4, v1, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 99
    aget v3, p0, v3

    aget v6, p1, v4

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_1

    .line 101
    :cond_0
    aget v3, p0, v3

    div-float/2addr v2, v3

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static solveL([F[FII)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_2

    move v2, v0

    :goto_1
    if-ge v2, p2, :cond_1

    mul-int v3, v2, p3

    add-int/2addr v3, v1

    .line 112
    aget v4, p1, v3

    move v5, v0

    :goto_2
    if-ge v5, v2, :cond_0

    mul-int v6, v2, p2

    add-int/2addr v6, v5

    .line 114
    aget v6, p0, v6

    mul-int v7, v5, p3

    add-int/2addr v7, v1

    aget v7, p1, v7

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    mul-int v5, v2, p2

    add-int/2addr v5, v2

    .line 116
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

.method public static solveTranL([F[FI)V
    .locals 5

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 140
    aget v1, p1, v0

    add-int/lit8 v2, v0, 0x1

    :goto_1
    if-ge v2, p2, :cond_0

    mul-int v3, v2, p2

    add-int/2addr v3, v0

    .line 142
    aget v3, p0, v3

    aget v4, p1, v2

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    mul-int v2, v0, p2

    add-int/2addr v2, v0

    .line 144
    aget v2, p0, v2

    div-float/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static solveU([FIII[FIII)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p7, :cond_2

    add-int/lit8 v1, p3, -0x1

    :goto_1
    if-ltz v1, :cond_1

    mul-int v2, v1, p6

    add-int/2addr v2, p5

    add-int/2addr v2, v0

    .line 220
    aget v3, p4, v2

    add-int/lit8 v4, v1, 0x1

    :goto_2
    if-ge v4, p3, :cond_0

    mul-int v5, v1, p2

    add-int/2addr v5, p1

    add-int/2addr v5, v4

    .line 222
    aget v5, p0, v5

    mul-int v6, v4, p6

    add-int/2addr v6, p5

    add-int/2addr v6, v0

    aget v6, p4, v6

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    mul-int v4, v1, p2

    add-int/2addr v4, p1

    add-int/2addr v4, v1

    .line 224
    aget v4, p0, v4

    div-float/2addr v3, v4

    aput v3, p4, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static solveU([F[FI)V
    .locals 7

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 170
    aget v1, p1, v0

    mul-int v2, v0, p2

    add-int/2addr v2, v0

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v0, 0x1

    :goto_1
    if-ge v4, p2, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 173
    aget v3, p0, v3

    aget v6, p1, v4

    mul-float/2addr v3, v6

    sub-float/2addr v1, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_1

    .line 175
    :cond_0
    aget v2, p0, v2

    div-float/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static solveU([F[FIII)V
    .locals 7

    add-int/lit8 v0, p4, -0x1

    :goto_0
    if-lt v0, p3, :cond_1

    .line 188
    aget v1, p1, v0

    mul-int v2, v0, p2

    add-int/2addr v2, v0

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v0, 0x1

    :goto_1
    if-ge v4, p4, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 191
    aget v3, p0, v3

    aget v6, p1, v4

    mul-float/2addr v3, v6

    sub-float/2addr v1, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_1

    .line 193
    :cond_0
    aget v2, p0, v2

    div-float/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
