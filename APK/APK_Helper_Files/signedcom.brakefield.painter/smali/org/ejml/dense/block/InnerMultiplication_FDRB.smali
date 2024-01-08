.class public Lorg/ejml/dense/block/InnerMultiplication_FDRB;
.super Ljava/lang/Object;
.source "InnerMultiplication_FDRB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blockMultMinus([F[F[FIIIIII)V
    .locals 12

    const/4 v0, 0x0

    move/from16 v1, p5

    move/from16 v3, p6

    move v2, v0

    move v0, p3

    :goto_0
    if-ge v2, v3, :cond_2

    add-int v4, v1, p8

    add-int v5, v0, p7

    move/from16 v6, p4

    :goto_1
    if-eq v0, v5, :cond_1

    add-int/lit8 v7, v0, 0x1

    .line 165
    aget v0, p0, v0

    move v8, v1

    :goto_2
    if-eq v8, v4, :cond_0

    add-int/lit8 v9, v8, 0x1

    .line 170
    aget v10, p2, v8

    add-int/lit8 v11, v6, 0x1

    aget v6, p1, v6

    mul-float/2addr v6, v0

    sub-float/2addr v10, v6

    aput v10, p2, v8

    move v8, v9

    move v6, v11

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

.method public static blockMultMinusTransA([F[F[FIIIIII)V
    .locals 12

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

    .line 203
    aget v6, p0, v3

    add-int v7, v5, p8

    move v8, v1

    :goto_2
    if-eq v5, v7, :cond_0

    add-int/lit8 v9, v8, 0x1

    .line 210
    aget v10, p2, v8

    add-int/lit8 v11, v5, 0x1

    aget v5, p1, v5

    mul-float/2addr v5, v6

    sub-float/2addr v10, v5

    aput v10, p2, v8

    move v8, v9

    move v5, v11

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

.method public static blockMultMinusTransB([F[F[FIIIIII)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p6, :cond_2

    move v2, v0

    :goto_1
    if-ge v2, p8, :cond_1

    const/4 v3, 0x0

    move v4, v0

    :goto_2
    if-ge v4, p7, :cond_0

    mul-int v5, v1, p7

    add-int/2addr v5, v4

    add-int/2addr v5, p3

    .line 232
    aget v5, p0, v5

    mul-int v6, v2, p7

    add-int/2addr v6, v4

    add-int/2addr v6, p4

    aget v6, p1, v6

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    mul-int v4, v1, p8

    add-int/2addr v4, v2

    add-int/2addr v4, p5

    .line 235
    aget v5, p2, v4

    sub-float/2addr v5, v3

    aput v5, p2, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blockMultPlus(F[F[F[FIIIIII)V
    .locals 12

    const/4 v0, 0x0

    move/from16 v1, p6

    move/from16 v3, p7

    move v2, v0

    move/from16 v0, p4

    :goto_0
    if-ge v2, v3, :cond_2

    add-int v4, v1, p9

    add-int v5, v0, p8

    move/from16 v6, p5

    :goto_1
    if-eq v0, v5, :cond_1

    add-int/lit8 v7, v0, 0x1

    .line 379
    aget v0, p1, v0

    mul-float/2addr v0, p0

    move v8, v1

    :goto_2
    if-eq v8, v4, :cond_0

    add-int/lit8 v9, v8, 0x1

    .line 384
    aget v10, p3, v8

    add-int/lit8 v11, v6, 0x1

    aget v6, p2, v6

    mul-float/2addr v6, v0

    add-float/2addr v10, v6

    aput v10, p3, v8

    move v8, v9

    move v6, v11

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

.method public static blockMultPlus([F[F[FIIIIII)V
    .locals 12

    const/4 v0, 0x0

    move/from16 v1, p5

    move/from16 v3, p6

    move v2, v0

    move v0, p3

    :goto_0
    if-ge v2, v3, :cond_2

    add-int v4, v1, p8

    add-int v5, v0, p7

    move/from16 v6, p4

    :goto_1
    if-eq v0, v5, :cond_1

    add-int/lit8 v7, v0, 0x1

    .line 64
    aget v0, p0, v0

    move v8, v1

    :goto_2
    if-eq v8, v4, :cond_0

    add-int/lit8 v9, v8, 0x1

    .line 69
    aget v10, p2, v8

    add-int/lit8 v11, v6, 0x1

    aget v6, p1, v6

    mul-float/2addr v6, v0

    add-float/2addr v10, v6

    aput v10, p2, v8

    move v8, v9

    move v6, v11

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

.method public static blockMultPlusTransA(F[F[F[FIIIIII)V
    .locals 12

    move/from16 v0, p8

    const/4 v1, 0x0

    move v2, v1

    move/from16 v1, p6

    :goto_0
    if-ge v2, v0, :cond_2

    add-int v3, v2, p4

    mul-int v4, v0, p7

    add-int/2addr v4, v3

    move/from16 v5, p5

    :goto_1
    if-eq v3, v4, :cond_1

    .line 417
    aget v6, p1, v3

    mul-float/2addr v6, p0

    add-int v7, v5, p9

    move v8, v1

    :goto_2
    if-eq v5, v7, :cond_0

    add-int/lit8 v9, v8, 0x1

    .line 424
    aget v10, p3, v8

    add-int/lit8 v11, v5, 0x1

    aget v5, p2, v5

    mul-float/2addr v5, v6

    add-float/2addr v10, v5

    aput v10, p3, v8

    move v8, v9

    move v5, v11

    goto :goto_2

    :cond_0
    add-int/2addr v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int v1, v1, p9

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blockMultPlusTransA([F[F[FIIIIII)V
    .locals 12

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

    .line 102
    aget v6, p0, v3

    add-int v7, v5, p8

    move v8, v1

    :goto_2
    if-eq v5, v7, :cond_0

    add-int/lit8 v9, v8, 0x1

    .line 109
    aget v10, p2, v8

    add-int/lit8 v11, v5, 0x1

    aget v5, p1, v5

    mul-float/2addr v5, v6

    add-float/2addr v10, v5

    aput v10, p2, v8

    move v8, v9

    move v5, v11

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

.method public static blockMultPlusTransB(F[F[F[FIIIIII)V
    .locals 10

    move/from16 v0, p8

    move/from16 v1, p9

    const/4 v2, 0x0

    move/from16 v3, p7

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_1

    const/4 v6, 0x0

    move v7, v2

    :goto_2
    if-ge v7, v0, :cond_0

    mul-int v8, v4, v0

    add-int/2addr v8, v7

    add-int/2addr v8, p4

    .line 446
    aget v8, p1, v8

    mul-int v9, v5, v0

    add-int/2addr v9, v7

    add-int/2addr v9, p5

    aget v9, p2, v9

    mul-float/2addr v8, v9

    add-float/2addr v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    mul-int v7, v4, v1

    add-int/2addr v7, v5

    add-int v7, v7, p6

    .line 449
    aget v8, p3, v7

    mul-float/2addr v6, p0

    add-float/2addr v8, v6

    aput v8, p3, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blockMultPlusTransB([F[F[FIIIIII)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p6, :cond_2

    move v2, v0

    :goto_1
    if-ge v2, p8, :cond_1

    const/4 v3, 0x0

    move v4, v0

    :goto_2
    if-ge v4, p7, :cond_0

    mul-int v5, v1, p7

    add-int/2addr v5, v4

    add-int/2addr v5, p3

    .line 131
    aget v5, p0, v5

    mul-int v6, v2, p7

    add-int/2addr v6, v4

    add-int/2addr v6, p4

    aget v6, p1, v6

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    mul-int v4, v1, p8

    add-int/2addr v4, v2

    add-int/2addr v4, p5

    .line 134
    aget v5, p2, v4

    add-float/2addr v5, v3

    aput v5, p2, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blockMultSet(F[F[F[FIIIIII)V
    .locals 13

    const/4 v0, 0x0

    move/from16 v1, p6

    move/from16 v3, p7

    move v2, v0

    move/from16 v0, p4

    :goto_0
    if-ge v2, v3, :cond_3

    add-int v4, v1, p9

    add-int v5, v0, p8

    move/from16 v6, p5

    :goto_1
    if-eq v0, v5, :cond_2

    add-int/lit8 v7, v0, 0x1

    .line 480
    aget v0, p1, v0

    mul-float/2addr v0, p0

    move/from16 v8, p5

    move v9, v1

    if-ne v6, v8, :cond_0

    :goto_2
    if-eq v9, v4, :cond_1

    add-int/lit8 v10, v9, 0x1

    add-int/lit8 v11, v6, 0x1

    .line 486
    aget v6, p2, v6

    mul-float/2addr v6, v0

    aput v6, p3, v9

    move v9, v10

    move v6, v11

    goto :goto_2

    :cond_0
    :goto_3
    if-eq v9, v4, :cond_1

    add-int/lit8 v10, v9, 0x1

    .line 490
    aget v11, p3, v9

    add-int/lit8 v12, v6, 0x1

    aget v6, p2, v6

    mul-float/2addr v6, v0

    add-float/2addr v11, v6

    aput v11, p3, v9

    move v9, v10

    move v6, v12

    goto :goto_3

    :cond_1
    move v0, v7

    goto :goto_1

    :cond_2
    move/from16 v8, p5

    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static blockMultSet([F[F[FIIIIII)V
    .locals 13

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

    .line 266
    aget v0, p0, v0

    move/from16 v8, p4

    move v9, v1

    if-ne v6, v8, :cond_0

    :goto_2
    if-eq v9, v4, :cond_1

    add-int/lit8 v10, v9, 0x1

    add-int/lit8 v11, v6, 0x1

    .line 272
    aget v6, p1, v6

    mul-float/2addr v6, v0

    aput v6, p2, v9

    move v9, v10

    move v6, v11

    goto :goto_2

    :cond_0
    :goto_3
    if-eq v9, v4, :cond_1

    add-int/lit8 v10, v9, 0x1

    .line 276
    aget v11, p2, v9

    add-int/lit8 v12, v6, 0x1

    aget v6, p1, v6

    mul-float/2addr v6, v0

    add-float/2addr v11, v6

    aput v11, p2, v9

    move v9, v10

    move v6, v12

    goto :goto_3

    :cond_1
    move v0, v7

    goto :goto_1

    :cond_2
    move/from16 v8, p4

    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static blockMultSetTransA(F[F[F[FIIIIII)V
    .locals 13

    move/from16 v0, p8

    const/4 v1, 0x0

    move v2, v1

    move/from16 v1, p6

    :goto_0
    if-ge v2, v0, :cond_3

    add-int v3, v2, p4

    mul-int v4, v0, p7

    add-int/2addr v4, v3

    move/from16 v5, p5

    :goto_1
    if-eq v3, v4, :cond_2

    .line 524
    aget v6, p1, v3

    mul-float/2addr v6, p0

    add-int v7, v5, p9

    move/from16 v8, p5

    move v9, v1

    if-ne v5, v8, :cond_0

    :goto_2
    if-eq v5, v7, :cond_1

    add-int/lit8 v10, v9, 0x1

    add-int/lit8 v11, v5, 0x1

    .line 532
    aget v5, p2, v5

    mul-float/2addr v5, v6

    aput v5, p3, v9

    move v9, v10

    move v5, v11

    goto :goto_2

    :cond_0
    :goto_3
    if-eq v5, v7, :cond_1

    add-int/lit8 v10, v9, 0x1

    .line 536
    aget v11, p3, v9

    add-int/lit8 v12, v5, 0x1

    aget v5, p2, v5

    mul-float/2addr v5, v6

    add-float/2addr v11, v5

    aput v11, p3, v9

    move v9, v10

    move v5, v12

    goto :goto_3

    :cond_1
    add-int/2addr v3, v0

    goto :goto_1

    :cond_2
    move/from16 v8, p5

    add-int/lit8 v2, v2, 0x1

    add-int v1, v1, p9

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static blockMultSetTransA([F[F[FIIIIII)V
    .locals 13

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

    .line 310
    aget v6, p0, v3

    add-int v7, v5, p8

    move/from16 v8, p4

    move v9, v1

    if-ne v5, v8, :cond_0

    :goto_2
    if-eq v5, v7, :cond_1

    add-int/lit8 v10, v9, 0x1

    add-int/lit8 v11, v5, 0x1

    .line 318
    aget v5, p1, v5

    mul-float/2addr v5, v6

    aput v5, p2, v9

    move v9, v10

    move v5, v11

    goto :goto_2

    :cond_0
    :goto_3
    if-eq v5, v7, :cond_1

    add-int/lit8 v10, v9, 0x1

    .line 322
    aget v11, p2, v9

    add-int/lit8 v12, v5, 0x1

    aget v5, p1, v5

    mul-float/2addr v5, v6

    add-float/2addr v11, v5

    aput v11, p2, v9

    move v9, v10

    move v5, v12

    goto :goto_3

    :cond_1
    add-int/2addr v3, v0

    goto :goto_1

    :cond_2
    move/from16 v8, p4

    add-int/lit8 v2, v2, 0x1

    add-int v1, v1, p8

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static blockMultSetTransB(F[F[F[FIIIIII)V
    .locals 10

    move/from16 v0, p8

    move/from16 v1, p9

    const/4 v2, 0x0

    move/from16 v3, p7

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_1

    const/4 v6, 0x0

    move v7, v2

    :goto_2
    if-ge v7, v0, :cond_0

    mul-int v8, v4, v0

    add-int/2addr v8, v7

    add-int/2addr v8, p4

    .line 559
    aget v8, p1, v8

    mul-int v9, v5, v0

    add-int/2addr v9, v7

    add-int/2addr v9, p5

    aget v9, p2, v9

    mul-float/2addr v8, v9

    add-float/2addr v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    mul-int v7, v4, v1

    add-int/2addr v7, v5

    add-int v7, v7, p6

    mul-float/2addr v6, p0

    .line 562
    aput v6, p3, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blockMultSetTransB([F[F[FIIIIII)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p6, :cond_2

    move v2, v0

    :goto_1
    if-ge v2, p8, :cond_1

    const/4 v3, 0x0

    move v4, v0

    :goto_2
    if-ge v4, p7, :cond_0

    mul-int v5, v1, p7

    add-int/2addr v5, v4

    add-int/2addr v5, p3

    .line 345
    aget v5, p0, v5

    mul-int v6, v2, p7

    add-int/2addr v6, v4

    add-int/2addr v6, p4

    aget v6, p1, v6

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    mul-int v4, v1, p8

    add-int/2addr v4, v2

    add-int/2addr v4, p5

    .line 348
    aput v3, p2, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
