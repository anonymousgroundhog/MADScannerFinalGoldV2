.class public Lorg/ejml/dense/block/InnerTriangularSolver_DDRB;
.super Ljava/lang/Object;
.source "InnerTriangularSolver_DDRB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invertLower([DII)V
    .locals 15

    move/from16 v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    mul-int v3, v2, v0

    add-int v3, p2, v3

    add-int v4, v3, v2

    .line 89
    aget-wide v5, p0, v4

    move v7, v1

    :goto_1
    if-ge v7, v2, :cond_1

    const-wide/16 v8, 0x0

    move v10, v7

    :goto_2
    if-ge v10, v2, :cond_0

    add-int v11, v3, v10

    .line 93
    aget-wide v11, p0, v11

    mul-int v13, v10, v0

    add-int v13, p2, v13

    add-int/2addr v13, v7

    aget-wide v13, p0, v13

    mul-double/2addr v11, v13

    add-double/2addr v8, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_0
    add-int v10, v3, v7

    neg-double v8, v8

    div-double/2addr v8, v5

    .line 95
    aput-wide v8, p0, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double/2addr v7, v5

    .line 97
    aput-wide v7, p0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static invertLower([D[DIII)V
    .locals 15

    move/from16 v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    mul-int v3, v2, v0

    add-int v4, p3, v3

    add-int v5, v4, v2

    .line 64
    aget-wide v5, p0, v5

    move v7, v1

    :goto_1
    if-ge v7, v2, :cond_1

    const-wide/16 v8, 0x0

    move v10, v7

    :goto_2
    if-ge v10, v2, :cond_0

    add-int v11, v4, v10

    .line 68
    aget-wide v11, p0, v11

    mul-int v13, v10, v0

    add-int v13, p4, v13

    add-int/2addr v13, v7

    aget-wide v13, p1, v13

    mul-double/2addr v11, v13

    add-double/2addr v8, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_0
    add-int v10, p4, v3

    add-int/2addr v10, v7

    neg-double v8, v8

    div-double/2addr v8, v5

    .line 70
    aput-wide v8, p1, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int v3, p4, v3

    add-int/2addr v3, v2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double/2addr v7, v5

    .line 72
    aput-wide v7, p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static solveL([D[DIIIII)V
    .locals 13

    move/from16 v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    move v3, p2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_1

    mul-int v5, v4, v0

    add-int v5, p6, v5

    add-int/2addr v5, v2

    .line 123
    aget-wide v6, p1, v5

    move v8, v1

    :goto_2
    if-ge v8, v4, :cond_0

    mul-int v9, v4, p4

    add-int v9, p5, v9

    add-int/2addr v9, v8

    .line 125
    aget-wide v9, p0, v9

    mul-int v11, v8, v0

    add-int v11, p6, v11

    add-int/2addr v11, v2

    aget-wide v11, p1, v11

    mul-double/2addr v9, v11

    sub-double/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    mul-int v8, v4, p4

    add-int v8, p5, v8

    add-int/2addr v8, v4

    .line 127
    aget-wide v8, p0, v8

    div-double/2addr v6, v8

    aput-wide v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static solveLTransB([D[DIIIII)V
    .locals 16

    move/from16 v0, p2

    const/4 v1, 0x0

    move/from16 v2, p3

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    move v4, v1

    :goto_1
    if-ge v4, v0, :cond_1

    mul-int v5, v3, v0

    add-int v5, p6, v5

    add-int v6, v5, v4

    .line 193
    aget-wide v7, p1, v6

    mul-int v9, v4, p4

    add-int v9, p5, v9

    add-int v10, v9, v4

    :goto_2
    if-eq v9, v10, :cond_0

    add-int/lit8 v11, v9, 0x1

    .line 199
    aget-wide v12, p0, v9

    add-int/lit8 v9, v5, 0x1

    aget-wide v14, p1, v5

    mul-double/2addr v12, v14

    sub-double/2addr v7, v12

    move v5, v9

    move v9, v11

    goto :goto_2

    .line 201
    :cond_0
    aget-wide v9, p0, v10

    div-double/2addr v7, v9

    aput-wide v7, p1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static solveTransL([D[DIIIII)V
    .locals 12

    move v0, p2

    move v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    add-int/lit8 v3, v0, -0x1

    :goto_1
    if-ltz v3, :cond_1

    mul-int v4, v3, v1

    add-int v4, p6, v4

    add-int/2addr v4, v2

    .line 154
    aget-wide v5, p1, v4

    add-int/lit8 v7, v3, 0x1

    :goto_2
    if-ge v7, v0, :cond_0

    mul-int v8, v7, p4

    add-int v8, p5, v8

    add-int/2addr v8, v3

    .line 156
    aget-wide v8, p0, v8

    mul-int v10, v7, v1

    add-int v10, p6, v10

    add-int/2addr v10, v2

    aget-wide v10, p1, v10

    mul-double/2addr v8, v10

    sub-double/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    mul-int v7, v3, p4

    add-int v7, p5, v7

    add-int/2addr v7, v3

    .line 158
    aget-wide v7, p0, v7

    div-double/2addr v5, v7

    aput-wide v5, p1, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static solveTransU([D[DIIIII)V
    .locals 13

    move/from16 v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    move v3, p2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_1

    mul-int v5, v4, v0

    add-int v5, p6, v5

    add-int/2addr v5, v2

    .line 257
    aget-wide v6, p1, v5

    move v8, v1

    :goto_2
    if-ge v8, v4, :cond_0

    mul-int v9, v8, p4

    add-int v9, p5, v9

    add-int/2addr v9, v4

    .line 259
    aget-wide v9, p0, v9

    mul-int v11, v8, v0

    add-int v11, p6, v11

    add-int/2addr v11, v2

    aget-wide v11, p1, v11

    mul-double/2addr v9, v11

    sub-double/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    mul-int v8, v4, p4

    add-int v8, p5, v8

    add-int/2addr v8, v4

    .line 261
    aget-wide v8, p0, v8

    div-double/2addr v6, v8

    aput-wide v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static solveU([D[DIIIII)V
    .locals 12

    move v0, p2

    move v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    add-int/lit8 v3, v0, -0x1

    :goto_1
    if-ltz v3, :cond_1

    mul-int v4, v3, v1

    add-int v4, p6, v4

    add-int/2addr v4, v2

    .line 227
    aget-wide v5, p1, v4

    add-int/lit8 v7, v3, 0x1

    :goto_2
    if-ge v7, v0, :cond_0

    mul-int v8, v3, p4

    add-int v8, p5, v8

    add-int/2addr v8, v7

    .line 229
    aget-wide v8, p0, v8

    mul-int v10, v7, v1

    add-int v10, p6, v10

    add-int/2addr v10, v2

    aget-wide v10, p1, v10

    mul-double/2addr v8, v10

    sub-double/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    mul-int v7, v3, p4

    add-int v7, p5, v7

    add-int/2addr v7, v3

    .line 231
    aget-wide v7, p0, v7

    div-double/2addr v5, v7

    aput-wide v5, p1, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
