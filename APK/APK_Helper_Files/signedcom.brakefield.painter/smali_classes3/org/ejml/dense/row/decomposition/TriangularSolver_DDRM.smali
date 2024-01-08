.class public Lorg/ejml/dense/row/decomposition/TriangularSolver_DDRM;
.super Ljava/lang/Object;
.source "TriangularSolver_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invertLower([DI)V
    .locals 14

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    mul-int v2, v1, p1

    add-int v3, v2, v1

    .line 46
    aget-wide v4, p0, v3

    move v6, v0

    :goto_1
    if-ge v6, v1, :cond_1

    const-wide/16 v7, 0x0

    move v9, v6

    :goto_2
    if-ge v9, v1, :cond_0

    add-int v10, v2, v9

    .line 50
    aget-wide v10, p0, v10

    mul-int v12, v9, p1

    add-int/2addr v12, v6

    aget-wide v12, p0, v12

    mul-double/2addr v10, v12

    add-double/2addr v7, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_0
    add-int v9, v2, v6

    neg-double v7, v7

    div-double/2addr v7, v4

    .line 52
    aput-wide v7, p0, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double/2addr v6, v4

    .line 54
    aput-wide v6, p0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static invertLower([D[DI)V
    .locals 15

    move/from16 v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    mul-int v3, v2, v0

    add-int v4, v3, v2

    .line 60
    aget-wide v5, p0, v4

    move v7, v1

    :goto_1
    if-ge v7, v2, :cond_1

    const-wide/16 v8, 0x0

    move v10, v7

    :goto_2
    if-ge v10, v2, :cond_0

    add-int v11, v3, v10

    .line 64
    aget-wide v11, p0, v11

    mul-int v13, v10, v0

    add-int/2addr v13, v7

    aget-wide v13, p1, v13

    mul-double/2addr v11, v13

    sub-double/2addr v8, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_0
    add-int v10, v3, v7

    div-double/2addr v8, v5

    .line 66
    aput-wide v8, p1, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double/2addr v7, v5

    .line 68
    aput-wide v7, p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static solveL([D[DI)V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 94
    aget-wide v2, p1, v1

    mul-int v4, v1, p2

    move v5, v0

    :goto_1
    if-ge v5, v1, :cond_0

    add-int/lit8 v6, v4, 0x1

    .line 97
    aget-wide v7, p0, v4

    aget-wide v9, p1, v5

    mul-double/2addr v7, v9

    sub-double/2addr v2, v7

    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_1

    .line 99
    :cond_0
    aget-wide v4, p0, v4

    div-double/2addr v2, v4

    aput-wide v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static solveL([D[DII)V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_2

    move v2, v0

    :goto_1
    if-ge v2, p2, :cond_1

    mul-int v3, v2, p3

    add-int/2addr v3, v1

    .line 110
    aget-wide v4, p1, v3

    move v6, v0

    :goto_2
    if-ge v6, v2, :cond_0

    mul-int v7, v2, p2

    add-int/2addr v7, v6

    .line 112
    aget-wide v7, p0, v7

    mul-int v9, v6, p3

    add-int/2addr v9, v1

    aget-wide v9, p1, v9

    mul-double/2addr v7, v9

    sub-double/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    mul-int v6, v2, p2

    add-int/2addr v6, v2

    .line 114
    aget-wide v6, p0, v6

    div-double/2addr v4, v6

    aput-wide v4, p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static solveTranL([D[DI)V
    .locals 8

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 138
    aget-wide v1, p1, v0

    add-int/lit8 v3, v0, 0x1

    :goto_1
    if-ge v3, p2, :cond_0

    mul-int v4, v3, p2

    add-int/2addr v4, v0

    .line 140
    aget-wide v4, p0, v4

    aget-wide v6, p1, v3

    mul-double/2addr v4, v6

    sub-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    mul-int v3, v0, p2

    add-int/2addr v3, v0

    .line 142
    aget-wide v3, p0, v3

    div-double/2addr v1, v3

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static solveU([DIII[DIII)V
    .locals 12

    move v0, p3

    const/4 v1, 0x0

    move/from16 v2, p7

    :goto_0
    if-ge v1, v2, :cond_2

    add-int/lit8 v3, v0, -0x1

    :goto_1
    if-ltz v3, :cond_1

    mul-int v4, v3, p6

    add-int v4, p5, v4

    add-int/2addr v4, v1

    .line 218
    aget-wide v5, p4, v4

    add-int/lit8 v7, v3, 0x1

    :goto_2
    if-ge v7, v0, :cond_0

    mul-int v8, v3, p2

    add-int/2addr v8, p1

    add-int/2addr v8, v7

    .line 220
    aget-wide v8, p0, v8

    mul-int v10, v7, p6

    add-int v10, p5, v10

    add-int/2addr v10, v1

    aget-wide v10, p4, v10

    mul-double/2addr v8, v10

    sub-double/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    mul-int v7, v3, p2

    add-int/2addr v7, p1

    add-int/2addr v7, v3

    .line 222
    aget-wide v7, p0, v7

    div-double/2addr v5, v7

    aput-wide v5, p4, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static solveU([D[DI)V
    .locals 11

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 168
    aget-wide v1, p1, v0

    mul-int v3, v0, p2

    add-int/2addr v3, v0

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v0, 0x1

    :goto_1
    if-ge v5, p2, :cond_0

    add-int/lit8 v6, v4, 0x1

    .line 171
    aget-wide v7, p0, v4

    aget-wide v9, p1, v5

    mul-double/2addr v7, v9

    sub-double/2addr v1, v7

    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_1

    .line 173
    :cond_0
    aget-wide v3, p0, v3

    div-double/2addr v1, v3

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static solveU([D[DIII)V
    .locals 11

    add-int/lit8 v0, p4, -0x1

    :goto_0
    if-lt v0, p3, :cond_1

    .line 186
    aget-wide v1, p1, v0

    mul-int v3, v0, p2

    add-int/2addr v3, v0

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v0, 0x1

    :goto_1
    if-ge v5, p4, :cond_0

    add-int/lit8 v6, v4, 0x1

    .line 189
    aget-wide v7, p0, v4

    aget-wide v9, p1, v5

    mul-double/2addr v7, v9

    sub-double/2addr v1, v7

    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_1

    .line 191
    :cond_0
    aget-wide v3, p0, v3

    div-double/2addr v1, v3

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
