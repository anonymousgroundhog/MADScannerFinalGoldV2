.class public Lorg/ejml/dense/block/InnerMultiplication_DDRB;
.super Ljava/lang/Object;
.source "InnerMultiplication_DDRB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blockMultMinus([D[D[DIIIIII)V
    .locals 16

    const/4 v0, 0x0

    move/from16 v1, p5

    move/from16 v3, p6

    move v2, v0

    move/from16 v0, p3

    :goto_0
    if-ge v2, v3, :cond_2

    add-int v4, v1, p8

    add-int v5, v0, p7

    move/from16 v6, p4

    :goto_1
    if-eq v0, v5, :cond_1

    add-int/lit8 v7, v0, 0x1

    .line 163
    aget-wide v8, p0, v0

    move v0, v1

    :goto_2
    if-eq v0, v4, :cond_0

    add-int/lit8 v10, v0, 0x1

    .line 168
    aget-wide v11, p2, v0

    add-int/lit8 v13, v6, 0x1

    aget-wide v14, p1, v6

    mul-double/2addr v14, v8

    sub-double/2addr v11, v14

    aput-wide v11, p2, v0

    move v0, v10

    move v6, v13

    goto :goto_2

    :cond_0
    move v0, v7

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blockMultMinusTransA([D[D[DIIIIII)V
    .locals 16

    move/from16 v0, p7

    const/4 v1, 0x0

    move v2, v1

    move/from16 v1, p5

    :goto_0
    if-ge v2, v0, :cond_2

    add-int v3, v2, p3

    mul-int v4, v0, p6

    add-int/2addr v4, v3

    move/from16 v5, p4

    :goto_1
    if-eq v3, v4, :cond_1

    .line 201
    aget-wide v6, p0, v3

    add-int v8, v5, p8

    move v9, v1

    :goto_2
    if-eq v5, v8, :cond_0

    add-int/lit8 v10, v9, 0x1

    .line 208
    aget-wide v11, p2, v9

    add-int/lit8 v13, v5, 0x1

    aget-wide v14, p1, v5

    mul-double/2addr v14, v6

    sub-double/2addr v11, v14

    aput-wide v11, p2, v9

    move v9, v10

    move v5, v13

    goto :goto_2

    :cond_0
    add-int/2addr v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int v1, v1, p8

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blockMultMinusTransB([D[D[DIIIIII)V
    .locals 13

    move/from16 v0, p7

    move/from16 v1, p8

    const/4 v2, 0x0

    move/from16 v3, p6

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_1

    const-wide/16 v6, 0x0

    move v8, v2

    :goto_2
    if-ge v8, v0, :cond_0

    mul-int v9, v4, v0

    add-int/2addr v9, v8

    add-int v9, v9, p3

    .line 230
    aget-wide v9, p0, v9

    mul-int v11, v5, v0

    add-int/2addr v11, v8

    add-int v11, v11, p4

    aget-wide v11, p1, v11

    mul-double/2addr v9, v11

    add-double/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    mul-int v8, v4, v1

    add-int/2addr v8, v5

    add-int v8, v8, p5

    .line 233
    aget-wide v9, p2, v8

    sub-double/2addr v9, v6

    aput-wide v9, p2, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blockMultPlus(D[D[D[DIIIIII)V
    .locals 16

    const/4 v0, 0x0

    move/from16 v1, p7

    move/from16 v3, p8

    move v2, v0

    move/from16 v0, p5

    :goto_0
    if-ge v2, v3, :cond_2

    add-int v4, v1, p10

    add-int v5, v0, p9

    move/from16 v6, p6

    :goto_1
    if-eq v0, v5, :cond_1

    add-int/lit8 v7, v0, 0x1

    .line 377
    aget-wide v8, p2, v0

    mul-double v8, v8, p0

    move v0, v1

    :goto_2
    if-eq v0, v4, :cond_0

    add-int/lit8 v10, v0, 0x1

    .line 382
    aget-wide v11, p4, v0

    add-int/lit8 v13, v6, 0x1

    aget-wide v14, p3, v6

    mul-double/2addr v14, v8

    add-double/2addr v11, v14

    aput-wide v11, p4, v0

    move v0, v10

    move v6, v13

    goto :goto_2

    :cond_0
    move v0, v7

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blockMultPlus([D[D[DIIIIII)V
    .locals 16

    const/4 v0, 0x0

    move/from16 v1, p5

    move/from16 v3, p6

    move v2, v0

    move/from16 v0, p3

    :goto_0
    if-ge v2, v3, :cond_2

    add-int v4, v1, p8

    add-int v5, v0, p7

    move/from16 v6, p4

    :goto_1
    if-eq v0, v5, :cond_1

    add-int/lit8 v7, v0, 0x1

    .line 62
    aget-wide v8, p0, v0

    move v0, v1

    :goto_2
    if-eq v0, v4, :cond_0

    add-int/lit8 v10, v0, 0x1

    .line 67
    aget-wide v11, p2, v0

    add-int/lit8 v13, v6, 0x1

    aget-wide v14, p1, v6

    mul-double/2addr v14, v8

    add-double/2addr v11, v14

    aput-wide v11, p2, v0

    move v0, v10

    move v6, v13

    goto :goto_2

    :cond_0
    move v0, v7

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blockMultPlusTransA(D[D[D[DIIIIII)V
    .locals 16

    move/from16 v0, p9

    const/4 v1, 0x0

    move v2, v1

    move/from16 v1, p7

    :goto_0
    if-ge v2, v0, :cond_2

    add-int v3, v2, p5

    mul-int v4, v0, p8

    add-int/2addr v4, v3

    move/from16 v5, p6

    :goto_1
    if-eq v3, v4, :cond_1

    .line 415
    aget-wide v6, p2, v3

    mul-double v6, v6, p0

    add-int v8, v5, p10

    move v9, v1

    :goto_2
    if-eq v5, v8, :cond_0

    add-int/lit8 v10, v9, 0x1

    .line 422
    aget-wide v11, p4, v9

    add-int/lit8 v13, v5, 0x1

    aget-wide v14, p3, v5

    mul-double/2addr v14, v6

    add-double/2addr v11, v14

    aput-wide v11, p4, v9

    move v9, v10

    move v5, v13

    goto :goto_2

    :cond_0
    add-int/2addr v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int v1, v1, p10

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blockMultPlusTransA([D[D[DIIIIII)V
    .locals 16

    move/from16 v0, p7

    const/4 v1, 0x0

    move v2, v1

    move/from16 v1, p5

    :goto_0
    if-ge v2, v0, :cond_2

    add-int v3, v2, p3

    mul-int v4, v0, p6

    add-int/2addr v4, v3

    move/from16 v5, p4

    :goto_1
    if-eq v3, v4, :cond_1

    .line 100
    aget-wide v6, p0, v3

    add-int v8, v5, p8

    move v9, v1

    :goto_2
    if-eq v5, v8, :cond_0

    add-int/lit8 v10, v9, 0x1

    .line 107
    aget-wide v11, p2, v9

    add-int/lit8 v13, v5, 0x1

    aget-wide v14, p1, v5

    mul-double/2addr v14, v6

    add-double/2addr v11, v14

    aput-wide v11, p2, v9

    move v9, v10

    move v5, v13

    goto :goto_2

    :cond_0
    add-int/2addr v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int v1, v1, p8

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blockMultPlusTransB(D[D[D[DIIIIII)V
    .locals 13

    move/from16 v0, p9

    move/from16 v1, p10

    const/4 v2, 0x0

    move/from16 v3, p8

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_1

    const-wide/16 v6, 0x0

    move v8, v2

    :goto_2
    if-ge v8, v0, :cond_0

    mul-int v9, v4, v0

    add-int/2addr v9, v8

    add-int v9, v9, p5

    .line 444
    aget-wide v9, p2, v9

    mul-int v11, v5, v0

    add-int/2addr v11, v8

    add-int v11, v11, p6

    aget-wide v11, p3, v11

    mul-double/2addr v9, v11

    add-double/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    mul-int v8, v4, v1

    add-int/2addr v8, v5

    add-int v8, v8, p7

    .line 447
    aget-wide v9, p4, v8

    mul-double/2addr v6, p0

    add-double/2addr v9, v6

    aput-wide v9, p4, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blockMultPlusTransB([D[D[DIIIIII)V
    .locals 13

    move/from16 v0, p7

    move/from16 v1, p8

    const/4 v2, 0x0

    move/from16 v3, p6

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_1

    const-wide/16 v6, 0x0

    move v8, v2

    :goto_2
    if-ge v8, v0, :cond_0

    mul-int v9, v4, v0

    add-int/2addr v9, v8

    add-int v9, v9, p3

    .line 129
    aget-wide v9, p0, v9

    mul-int v11, v5, v0

    add-int/2addr v11, v8

    add-int v11, v11, p4

    aget-wide v11, p1, v11

    mul-double/2addr v9, v11

    add-double/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    mul-int v8, v4, v1

    add-int/2addr v8, v5

    add-int v8, v8, p5

    .line 132
    aget-wide v9, p2, v8

    add-double/2addr v9, v6

    aput-wide v9, p2, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blockMultSet(D[D[D[DIIIIII)V
    .locals 17

    const/4 v0, 0x0

    move/from16 v1, p7

    move/from16 v3, p8

    move v2, v0

    move/from16 v0, p5

    :goto_0
    if-ge v2, v3, :cond_3

    add-int v4, v1, p10

    add-int v5, v0, p9

    move/from16 v6, p6

    :goto_1
    if-eq v0, v5, :cond_2

    add-int/lit8 v7, v0, 0x1

    .line 478
    aget-wide v8, p2, v0

    mul-double v8, v8, p0

    move/from16 v10, p6

    move v0, v1

    if-ne v6, v10, :cond_0

    :goto_2
    if-eq v0, v4, :cond_1

    add-int/lit8 v11, v0, 0x1

    add-int/lit8 v12, v6, 0x1

    .line 484
    aget-wide v13, p3, v6

    mul-double/2addr v13, v8

    aput-wide v13, p4, v0

    move v0, v11

    move v6, v12

    goto :goto_2

    :cond_0
    :goto_3
    if-eq v0, v4, :cond_1

    add-int/lit8 v11, v0, 0x1

    .line 488
    aget-wide v12, p4, v0

    add-int/lit8 v14, v6, 0x1

    aget-wide v15, p3, v6

    mul-double/2addr v15, v8

    add-double/2addr v12, v15

    aput-wide v12, p4, v0

    move v0, v11

    move v6, v14

    goto :goto_3

    :cond_1
    move v0, v7

    goto :goto_1

    :cond_2
    move/from16 v10, p6

    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static blockMultSet([D[D[DIIIIII)V
    .locals 17

    const/4 v0, 0x0

    move/from16 v1, p5

    move/from16 v3, p6

    move v2, v0

    move/from16 v0, p3

    :goto_0
    if-ge v2, v3, :cond_3

    add-int v4, v1, p8

    add-int v5, v0, p7

    move/from16 v6, p4

    :goto_1
    if-eq v0, v5, :cond_2

    add-int/lit8 v7, v0, 0x1

    .line 264
    aget-wide v8, p0, v0

    move/from16 v10, p4

    move v0, v1

    if-ne v6, v10, :cond_0

    :goto_2
    if-eq v0, v4, :cond_1

    add-int/lit8 v11, v0, 0x1

    add-int/lit8 v12, v6, 0x1

    .line 270
    aget-wide v13, p1, v6

    mul-double/2addr v13, v8

    aput-wide v13, p2, v0

    move v0, v11

    move v6, v12

    goto :goto_2

    :cond_0
    :goto_3
    if-eq v0, v4, :cond_1

    add-int/lit8 v11, v0, 0x1

    .line 274
    aget-wide v12, p2, v0

    add-int/lit8 v14, v6, 0x1

    aget-wide v15, p1, v6

    mul-double/2addr v15, v8

    add-double/2addr v12, v15

    aput-wide v12, p2, v0

    move v0, v11

    move v6, v14

    goto :goto_3

    :cond_1
    move v0, v7

    goto :goto_1

    :cond_2
    move/from16 v10, p4

    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static blockMultSetTransA(D[D[D[DIIIIII)V
    .locals 17

    move/from16 v0, p9

    const/4 v1, 0x0

    move v2, v1

    move/from16 v1, p7

    :goto_0
    if-ge v2, v0, :cond_3

    add-int v3, v2, p5

    mul-int v4, v0, p8

    add-int/2addr v4, v3

    move/from16 v5, p6

    :goto_1
    if-eq v3, v4, :cond_2

    .line 522
    aget-wide v6, p2, v3

    mul-double v6, v6, p0

    add-int v8, v5, p10

    move/from16 v9, p6

    move v10, v1

    if-ne v5, v9, :cond_0

    :goto_2
    if-eq v5, v8, :cond_1

    add-int/lit8 v11, v10, 0x1

    add-int/lit8 v12, v5, 0x1

    .line 530
    aget-wide v13, p3, v5

    mul-double/2addr v13, v6

    aput-wide v13, p4, v10

    move v10, v11

    move v5, v12

    goto :goto_2

    :cond_0
    :goto_3
    if-eq v5, v8, :cond_1

    add-int/lit8 v11, v10, 0x1

    .line 534
    aget-wide v12, p4, v10

    add-int/lit8 v14, v5, 0x1

    aget-wide v15, p3, v5

    mul-double/2addr v15, v6

    add-double/2addr v12, v15

    aput-wide v12, p4, v10

    move v10, v11

    move v5, v14

    goto :goto_3

    :cond_1
    add-int/2addr v3, v0

    goto :goto_1

    :cond_2
    move/from16 v9, p6

    add-int/lit8 v2, v2, 0x1

    add-int v1, v1, p10

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static blockMultSetTransA([D[D[DIIIIII)V
    .locals 17

    move/from16 v0, p7

    const/4 v1, 0x0

    move v2, v1

    move/from16 v1, p5

    :goto_0
    if-ge v2, v0, :cond_3

    add-int v3, v2, p3

    mul-int v4, v0, p6

    add-int/2addr v4, v3

    move/from16 v5, p4

    :goto_1
    if-eq v3, v4, :cond_2

    .line 308
    aget-wide v6, p0, v3

    add-int v8, v5, p8

    move/from16 v9, p4

    move v10, v1

    if-ne v5, v9, :cond_0

    :goto_2
    if-eq v5, v8, :cond_1

    add-int/lit8 v11, v10, 0x1

    add-int/lit8 v12, v5, 0x1

    .line 316
    aget-wide v13, p1, v5

    mul-double/2addr v13, v6

    aput-wide v13, p2, v10

    move v10, v11

    move v5, v12

    goto :goto_2

    :cond_0
    :goto_3
    if-eq v5, v8, :cond_1

    add-int/lit8 v11, v10, 0x1

    .line 320
    aget-wide v12, p2, v10

    add-int/lit8 v14, v5, 0x1

    aget-wide v15, p1, v5

    mul-double/2addr v15, v6

    add-double/2addr v12, v15

    aput-wide v12, p2, v10

    move v10, v11

    move v5, v14

    goto :goto_3

    :cond_1
    add-int/2addr v3, v0

    goto :goto_1

    :cond_2
    move/from16 v9, p4

    add-int/lit8 v2, v2, 0x1

    add-int v1, v1, p8

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static blockMultSetTransB(D[D[D[DIIIIII)V
    .locals 13

    move/from16 v0, p9

    move/from16 v1, p10

    const/4 v2, 0x0

    move/from16 v3, p8

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_1

    const-wide/16 v6, 0x0

    move v8, v2

    :goto_2
    if-ge v8, v0, :cond_0

    mul-int v9, v4, v0

    add-int/2addr v9, v8

    add-int v9, v9, p5

    .line 557
    aget-wide v9, p2, v9

    mul-int v11, v5, v0

    add-int/2addr v11, v8

    add-int v11, v11, p6

    aget-wide v11, p3, v11

    mul-double/2addr v9, v11

    add-double/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    mul-int v8, v4, v1

    add-int/2addr v8, v5

    add-int v8, v8, p7

    mul-double/2addr v6, p0

    .line 560
    aput-wide v6, p4, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blockMultSetTransB([D[D[DIIIIII)V
    .locals 13

    move/from16 v0, p7

    move/from16 v1, p8

    const/4 v2, 0x0

    move/from16 v3, p6

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_1

    const-wide/16 v6, 0x0

    move v8, v2

    :goto_2
    if-ge v8, v0, :cond_0

    mul-int v9, v4, v0

    add-int/2addr v9, v8

    add-int v9, v9, p3

    .line 343
    aget-wide v9, p0, v9

    mul-int v11, v5, v0

    add-int/2addr v11, v8

    add-int v11, v11, p4

    aget-wide v11, p1, v11

    mul-double/2addr v9, v11

    add-double/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    mul-int v8, v4, v1

    add-int/2addr v8, v5

    add-int v8, v8, p5

    .line 346
    aput-wide v6, p2, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
