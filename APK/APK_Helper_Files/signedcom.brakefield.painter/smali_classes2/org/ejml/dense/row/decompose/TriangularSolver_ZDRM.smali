.class public Lorg/ejml/dense/row/decompose/TriangularSolver_ZDRM;
.super Ljava/lang/Object;
.source "TriangularSolver_ZDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static solveConjTranL_diagReal([D[DI)V
    .locals 23

    move/from16 v0, p2

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    mul-int/lit8 v2, v1, 0x2

    .line 161
    aget-wide v3, p1, v2

    add-int/lit8 v5, v2, 0x1

    .line 162
    aget-wide v6, p1, v5

    add-int/lit8 v8, v1, 0x1

    mul-int/lit8 v9, v8, 0x2

    :goto_1
    if-ge v8, v0, :cond_0

    mul-int v10, v8, v0

    add-int/2addr v10, v1

    mul-int/lit8 v10, v10, 0x2

    .line 168
    aget-wide v11, p0, v10

    add-int/lit8 v10, v10, 0x1

    .line 169
    aget-wide v13, p0, v10

    add-int/lit8 v10, v9, 0x1

    .line 171
    aget-wide v15, p1, v9

    add-int/lit8 v9, v10, 0x1

    .line 172
    aget-wide v17, p1, v10

    mul-double v19, v11, v15

    mul-double v21, v13, v17

    add-double v19, v19, v21

    sub-double v3, v3, v19

    mul-double v11, v11, v17

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    sub-double/2addr v6, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    mul-int v8, v1, v0

    add-int/2addr v8, v1

    mul-int/lit8 v8, v8, 0x2

    .line 178
    aget-wide v8, p0, v8

    div-double/2addr v3, v8

    .line 180
    aput-wide v3, p1, v2

    div-double/2addr v6, v8

    .line 181
    aput-wide v6, p1, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static solveL_diagReal([D[DI)V
    .locals 26

    move/from16 v0, p2

    mul-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    mul-int/lit8 v4, v3, 0x2

    .line 110
    aget-wide v5, p1, v4

    add-int/lit8 v7, v4, 0x1

    .line 111
    aget-wide v8, p1, v7

    mul-int v10, v3, v1

    move v11, v2

    move v12, v11

    :goto_1
    if-ge v11, v3, :cond_0

    add-int/lit8 v13, v10, 0x1

    .line 116
    aget-wide v14, p0, v10

    add-int/lit8 v10, v13, 0x1

    .line 117
    aget-wide v16, p0, v13

    add-int/lit8 v13, v12, 0x1

    .line 119
    aget-wide v18, p1, v12

    add-int/lit8 v12, v13, 0x1

    .line 120
    aget-wide v20, p1, v13

    mul-double v22, v14, v18

    mul-double v24, v16, v20

    sub-double v22, v22, v24

    sub-double v5, v5, v22

    mul-double v14, v14, v20

    mul-double v16, v16, v18

    add-double v14, v14, v16

    sub-double/2addr v8, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 126
    :cond_0
    aget-wide v10, p0, v10

    div-double/2addr v5, v10

    .line 128
    aput-wide v5, p1, v4

    div-double/2addr v8, v10

    .line 129
    aput-wide v8, p1, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static solveU([D[DI)V
    .locals 25

    move/from16 v0, p2

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    mul-int/lit8 v3, v2, 0x2

    .line 61
    aget-wide v4, p1, v3

    add-int/lit8 v6, v3, 0x1

    .line 62
    aget-wide v7, p1, v6

    mul-int v9, v2, v1

    add-int/2addr v9, v3

    add-int/lit8 v10, v9, 0x2

    add-int/lit8 v11, v2, 0x1

    :goto_1
    if-ge v11, v0, :cond_0

    mul-int/lit8 v12, v11, 0x2

    .line 65
    aget-wide v13, p1, v12

    add-int/lit8 v12, v12, 0x1

    .line 66
    aget-wide v15, p1, v12

    add-int/lit8 v12, v10, 0x1

    .line 68
    aget-wide v17, p0, v10

    add-int/lit8 v10, v12, 0x1

    .line 69
    aget-wide v19, p0, v12

    mul-double v21, v13, v17

    mul-double v23, v15, v19

    sub-double v21, v21, v23

    sub-double v4, v4, v21

    mul-double v13, v13, v19

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    sub-double/2addr v7, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 76
    :cond_0
    aget-wide v10, p0, v9

    add-int/lit8 v9, v9, 0x1

    .line 77
    aget-wide v12, p0, v9

    mul-double v14, v10, v10

    mul-double v16, v12, v12

    add-double v14, v14, v16

    mul-double v16, v4, v10

    mul-double v18, v7, v12

    add-double v16, v16, v18

    div-double v16, v16, v14

    .line 80
    aput-wide v16, p1, v3

    mul-double/2addr v7, v10

    mul-double/2addr v4, v12

    sub-double/2addr v7, v4

    div-double/2addr v7, v14

    .line 81
    aput-wide v7, p1, v6

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
