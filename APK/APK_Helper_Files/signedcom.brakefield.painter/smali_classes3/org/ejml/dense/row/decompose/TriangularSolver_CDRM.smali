.class public Lorg/ejml/dense/row/decompose/TriangularSolver_CDRM;
.super Ljava/lang/Object;
.source "TriangularSolver_CDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static solveConjTranL_diagReal([F[FI)V
    .locals 13

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    mul-int/lit8 v1, v0, 0x2

    .line 163
    aget v2, p1, v1

    add-int/lit8 v3, v1, 0x1

    .line 164
    aget v4, p1, v3

    add-int/lit8 v5, v0, 0x1

    mul-int/lit8 v6, v5, 0x2

    :goto_1
    if-ge v5, p2, :cond_0

    mul-int v7, v5, p2

    add-int/2addr v7, v0

    mul-int/lit8 v7, v7, 0x2

    .line 170
    aget v8, p0, v7

    add-int/lit8 v7, v7, 0x1

    .line 171
    aget v7, p0, v7

    add-int/lit8 v9, v6, 0x1

    .line 173
    aget v6, p1, v6

    add-int/lit8 v10, v9, 0x1

    .line 174
    aget v9, p1, v9

    mul-float v11, v8, v6

    mul-float v12, v7, v9

    add-float/2addr v11, v12

    sub-float/2addr v2, v11

    mul-float/2addr v8, v9

    mul-float/2addr v7, v6

    sub-float/2addr v8, v7

    sub-float/2addr v4, v8

    add-int/lit8 v5, v5, 0x1

    move v6, v10

    goto :goto_1

    :cond_0
    mul-int v5, v0, p2

    add-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x2

    .line 180
    aget v5, p0, v5

    div-float/2addr v2, v5

    .line 182
    aput v2, p1, v1

    div-float/2addr v4, v5

    .line 183
    aput v4, p1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static solveL_diagReal([F[FI)V
    .locals 17

    move/from16 v0, p2

    mul-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    mul-int/lit8 v4, v3, 0x2

    .line 112
    aget v5, p1, v4

    add-int/lit8 v6, v4, 0x1

    .line 113
    aget v7, p1, v6

    mul-int v8, v3, v1

    move v9, v2

    move v10, v9

    :goto_1
    if-ge v9, v3, :cond_0

    add-int/lit8 v11, v8, 0x1

    .line 118
    aget v8, p0, v8

    add-int/lit8 v12, v11, 0x1

    .line 119
    aget v11, p0, v11

    add-int/lit8 v13, v10, 0x1

    .line 121
    aget v10, p1, v10

    add-int/lit8 v14, v13, 0x1

    .line 122
    aget v13, p1, v13

    mul-float v15, v8, v10

    mul-float v16, v11, v13

    sub-float v15, v15, v16

    sub-float/2addr v5, v15

    mul-float/2addr v8, v13

    mul-float/2addr v11, v10

    add-float/2addr v8, v11

    sub-float/2addr v7, v8

    add-int/lit8 v9, v9, 0x1

    move v8, v12

    move v10, v14

    goto :goto_1

    .line 128
    :cond_0
    aget v8, p0, v8

    div-float/2addr v5, v8

    .line 130
    aput v5, p1, v4

    div-float/2addr v7, v8

    .line 131
    aput v7, p1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static solveU([F[FI)V
    .locals 16

    move/from16 v0, p2

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    mul-int/lit8 v3, v2, 0x2

    .line 63
    aget v4, p1, v3

    add-int/lit8 v5, v3, 0x1

    .line 64
    aget v6, p1, v5

    mul-int v7, v2, v1

    add-int/2addr v7, v3

    add-int/lit8 v8, v7, 0x2

    add-int/lit8 v9, v2, 0x1

    :goto_1
    if-ge v9, v0, :cond_0

    mul-int/lit8 v10, v9, 0x2

    .line 67
    aget v11, p1, v10

    add-int/lit8 v10, v10, 0x1

    .line 68
    aget v10, p1, v10

    add-int/lit8 v12, v8, 0x1

    .line 70
    aget v8, p0, v8

    add-int/lit8 v13, v12, 0x1

    .line 71
    aget v12, p0, v12

    mul-float v14, v11, v8

    mul-float v15, v10, v12

    sub-float/2addr v14, v15

    sub-float/2addr v4, v14

    mul-float/2addr v11, v12

    mul-float/2addr v10, v8

    add-float/2addr v11, v10

    sub-float/2addr v6, v11

    add-int/lit8 v9, v9, 0x1

    move v8, v13

    goto :goto_1

    .line 78
    :cond_0
    aget v8, p0, v7

    add-int/lit8 v7, v7, 0x1

    .line 79
    aget v7, p0, v7

    mul-float v9, v8, v8

    mul-float v10, v7, v7

    add-float/2addr v9, v10

    mul-float v10, v4, v8

    mul-float v11, v6, v7

    add-float/2addr v10, v11

    div-float/2addr v10, v9

    .line 82
    aput v10, p1, v3

    mul-float/2addr v6, v8

    mul-float/2addr v4, v7

    sub-float/2addr v6, v4

    div-float/2addr v6, v9

    .line 83
    aput v6, p1, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
