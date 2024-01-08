.class public Lcom/brakefield/infinitestudio/image/ImageScaler;
.super Ljava/lang/Object;
.source "ImageScaler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static edgeAwareScale(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 11

    .line 13
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 14
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    .line 16
    new-array v10, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 17
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    int-to-float p0, v8

    mul-float/2addr p0, p1

    float-to-int v3, p0

    int-to-float p0, v9

    mul-float/2addr p0, p1

    float-to-int v4, p0

    .line 22
    invoke-static {v10, v8, v9, v3, v4}, Lcom/brakefield/infinitestudio/image/ImageScaler;->resizeBilinear2([IIIII)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 24
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move v2, v3

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getEdgeValue(II)F
    .locals 4

    .line 40
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 42
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    new-array v2, v1, [F

    new-array v1, v1, [F

    .line 47
    invoke-static {p0, v2}, Lcom/brakefield/infinitestudio/color/HSLColor;->fromRGB(I[F)[F

    .line 48
    invoke-static {p1, v1}, Lcom/brakefield/infinitestudio/color/HSLColor;->fromRGB(I[F)[F

    const/4 p0, 0x0

    aget p1, v2, p0

    aget p0, v1, p0

    sub-float/2addr p1, p0

    const/4 p0, 0x1

    aget v3, v2, p0

    aget p0, v1, p0

    sub-float/2addr v3, p0

    const/4 p0, 0x2

    aget v2, v2, p0

    aget p0, v1, p0

    sub-float/2addr v2, p0

    .line 54
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    .line 55
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 56
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 57
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    .line 43
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public static resizeBilinear0([IIIII)[I
    .locals 19

    move/from16 v0, p3

    move/from16 v1, p4

    mul-int v2, v0, v1

    .line 72
    new-array v2, v2, [I

    add-int/lit8 v3, p1, -0x1

    int-to-float v3, v3

    int-to-float v4, v0

    div-float/2addr v3, v4

    add-int/lit8 v4, p2, -0x1

    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v4, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v1, :cond_1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v0, :cond_0

    int-to-float v9, v8

    mul-float/2addr v9, v3

    float-to-int v10, v9

    int-to-float v11, v6

    mul-float/2addr v11, v4

    float-to-int v12, v11

    int-to-float v13, v10

    sub-float/2addr v9, v13

    int-to-float v13, v12

    sub-float/2addr v11, v13

    mul-int v12, v12, p1

    add-int/2addr v12, v10

    .line 85
    aget v10, p0, v12

    add-int/lit8 v13, v12, 0x1

    .line 86
    aget v13, p0, v13

    add-int v12, v12, p1

    .line 87
    aget v14, p0, v12

    add-int/lit8 v12, v12, 0x1

    .line 88
    aget v12, p0, v12

    .line 91
    invoke-static {v10, v13}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v15

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v15, v16, v15

    .line 92
    invoke-static {v10, v14}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v17

    sub-float v5, v16, v17

    .line 93
    invoke-static {v10, v12}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v17

    sub-float v0, v16, v17

    .line 95
    invoke-static {v10, v13, v15}, Lcom/brakefield/infinitestudio/image/ImageScaler;->walkToColor(IIF)I

    move-result v13

    .line 96
    invoke-static {v10, v14, v5}, Lcom/brakefield/infinitestudio/image/ImageScaler;->walkToColor(IIF)I

    move-result v5

    .line 97
    invoke-static {v10, v12, v0}, Lcom/brakefield/infinitestudio/image/ImageScaler;->walkToColor(IIF)I

    move-result v0

    and-int/lit16 v12, v10, 0xff

    int-to-float v12, v12

    sub-float v14, v16, v9

    mul-float/2addr v12, v14

    sub-float v16, v16, v11

    mul-float v12, v12, v16

    and-int/lit16 v15, v13, 0xff

    int-to-float v15, v15

    mul-float/2addr v15, v9

    mul-float v15, v15, v16

    add-float/2addr v12, v15

    and-int/lit16 v15, v5, 0xff

    int-to-float v15, v15

    mul-float/2addr v15, v11

    mul-float/2addr v15, v14

    add-float/2addr v12, v15

    and-int/lit16 v15, v0, 0xff

    int-to-float v15, v15

    mul-float v17, v9, v11

    mul-float v15, v15, v17

    add-float/2addr v12, v15

    shr-int/lit8 v15, v10, 0x8

    and-int/lit16 v15, v15, 0xff

    int-to-float v15, v15

    mul-float/2addr v15, v14

    mul-float v15, v15, v16

    shr-int/lit8 v1, v13, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v9

    mul-float v1, v1, v16

    add-float/2addr v15, v1

    shr-int/lit8 v1, v5, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v11

    mul-float/2addr v1, v14

    add-float/2addr v15, v1

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float v1, v1, v17

    add-float/2addr v15, v1

    shr-int/lit8 v1, v10, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v14

    mul-float v1, v1, v16

    move/from16 v18, v3

    shr-int/lit8 v3, v13, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v9

    mul-float v3, v3, v16

    add-float/2addr v1, v3

    shr-int/lit8 v3, v5, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v11

    mul-float/2addr v3, v14

    add-float/2addr v1, v3

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float v3, v3, v17

    add-float/2addr v1, v3

    shr-int/lit8 v3, v10, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v14

    mul-float v3, v3, v16

    shr-int/lit8 v10, v13, 0x18

    and-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    mul-float/2addr v10, v9

    mul-float v10, v10, v16

    add-float/2addr v3, v10

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    mul-float/2addr v5, v11

    mul-float/2addr v5, v14

    add-float/2addr v3, v5

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    mul-float v0, v0, v17

    add-float/2addr v3, v0

    add-int/lit8 v0, v7, 0x1

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x18

    const/high16 v5, -0x1000000

    and-int/2addr v3, v5

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v1, v5

    or-int/2addr v1, v3

    float-to-int v3, v15

    shl-int/lit8 v3, v3, 0x8

    const v5, 0xff00

    and-int/2addr v3, v5

    or-int/2addr v1, v3

    float-to-int v3, v12

    or-int/2addr v1, v3

    .line 122
    aput v1, v2, v7

    add-int/lit8 v8, v8, 0x1

    move/from16 v1, p4

    move v7, v0

    move/from16 v3, v18

    move/from16 v0, p3

    goto/16 :goto_1

    :cond_0
    move/from16 v18, v3

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, p3

    move/from16 v1, p4

    goto/16 :goto_0

    :cond_1
    return-object v2
.end method

.method public static resizeBilinear1([IIIII)[I
    .locals 19

    move/from16 v0, p3

    move/from16 v1, p4

    mul-int v2, v0, v1

    .line 132
    new-array v2, v2, [I

    add-int/lit8 v3, p1, -0x1

    int-to-float v3, v3

    int-to-float v4, v0

    div-float/2addr v3, v4

    add-int/lit8 v4, p2, -0x1

    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v4, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v1, :cond_4

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v0, :cond_3

    int-to-float v9, v8

    mul-float/2addr v9, v3

    float-to-int v10, v9

    int-to-float v11, v6

    mul-float/2addr v11, v4

    float-to-int v12, v11

    int-to-float v13, v10

    sub-float/2addr v9, v13

    int-to-float v13, v12

    sub-float/2addr v11, v13

    mul-int v12, v12, p1

    add-int/2addr v12, v10

    .line 145
    aget v10, p0, v12

    add-int/lit8 v13, v12, 0x1

    .line 146
    aget v13, p0, v13

    add-int v12, v12, p1

    .line 147
    aget v14, p0, v12

    add-int/lit8 v12, v12, 0x1

    .line 148
    aget v12, p0, v12

    const/high16 v15, 0x3f000000    # 0.5f

    cmpg-float v16, v9, v15

    const/high16 v5, 0x3f800000    # 1.0f

    if-gez v16, :cond_0

    cmpg-float v17, v11, v15

    if-gez v17, :cond_0

    .line 153
    invoke-static {v10, v13}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v15

    sub-float v15, v5, v15

    .line 154
    invoke-static {v10, v14}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v16

    sub-float v0, v5, v16

    .line 155
    invoke-static {v10, v12}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v16

    sub-float v1, v5, v16

    .line 157
    invoke-static {v10, v13, v15}, Lcom/brakefield/infinitestudio/image/ImageScaler;->walkToColor(IIF)I

    move-result v13

    .line 158
    invoke-static {v10, v14, v0}, Lcom/brakefield/infinitestudio/image/ImageScaler;->walkToColor(IIF)I

    move-result v14

    .line 159
    invoke-static {v10, v12, v1}, Lcom/brakefield/infinitestudio/image/ImageScaler;->walkToColor(IIF)I

    move-result v12

    goto :goto_2

    :cond_0
    if-gez v16, :cond_1

    cmpl-float v0, v11, v15

    if-ltz v0, :cond_1

    .line 164
    invoke-static {v14, v10}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v0

    sub-float v0, v5, v0

    .line 165
    invoke-static {v14, v13}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v1

    sub-float v1, v5, v1

    .line 166
    invoke-static {v14, v12}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v15

    sub-float v15, v5, v15

    .line 168
    invoke-static {v14, v10, v0}, Lcom/brakefield/infinitestudio/image/ImageScaler;->walkToColor(IIF)I

    move-result v10

    .line 169
    invoke-static {v14, v13, v1}, Lcom/brakefield/infinitestudio/image/ImageScaler;->walkToColor(IIF)I

    move-result v13

    .line 170
    invoke-static {v14, v12, v15}, Lcom/brakefield/infinitestudio/image/ImageScaler;->walkToColor(IIF)I

    move-result v12

    goto :goto_2

    :cond_1
    cmpl-float v0, v9, v15

    if-ltz v0, :cond_2

    cmpg-float v0, v11, v15

    if-gez v0, :cond_2

    .line 175
    invoke-static {v13, v10}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v0

    sub-float v0, v5, v0

    .line 176
    invoke-static {v13, v14}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v1

    sub-float v1, v5, v1

    .line 177
    invoke-static {v13, v12}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v15

    sub-float v15, v5, v15

    .line 179
    invoke-static {v13, v10, v0}, Lcom/brakefield/infinitestudio/image/ImageScaler;->walkToColor(IIF)I

    move-result v10

    .line 180
    invoke-static {v13, v14, v1}, Lcom/brakefield/infinitestudio/image/ImageScaler;->walkToColor(IIF)I

    move-result v14

    .line 181
    invoke-static {v13, v12, v15}, Lcom/brakefield/infinitestudio/image/ImageScaler;->walkToColor(IIF)I

    move-result v12

    goto :goto_2

    .line 186
    :cond_2
    invoke-static {v12, v10}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v0

    sub-float v0, v5, v0

    .line 187
    invoke-static {v12, v13}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v1

    sub-float v1, v5, v1

    .line 188
    invoke-static {v12, v14}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    .line 190
    invoke-static {v12, v10, v0}, Lcom/brakefield/infinitestudio/image/ImageScaler;->walkToColor(IIF)I

    move-result v10

    .line 191
    invoke-static {v12, v13, v1}, Lcom/brakefield/infinitestudio/image/ImageScaler;->walkToColor(IIF)I

    move-result v13

    .line 192
    invoke-static {v12, v14, v5}, Lcom/brakefield/infinitestudio/image/ImageScaler;->walkToColor(IIF)I

    move-result v14

    :goto_2
    and-int/lit16 v0, v10, 0xff

    int-to-float v0, v0

    sub-float v1, v5, v9

    mul-float/2addr v0, v1

    sub-float/2addr v5, v11

    mul-float/2addr v0, v5

    and-int/lit16 v15, v13, 0xff

    int-to-float v15, v15

    mul-float/2addr v15, v9

    mul-float/2addr v15, v5

    add-float/2addr v0, v15

    and-int/lit16 v15, v14, 0xff

    int-to-float v15, v15

    mul-float/2addr v15, v11

    mul-float/2addr v15, v1

    add-float/2addr v0, v15

    and-int/lit16 v15, v12, 0xff

    int-to-float v15, v15

    mul-float v16, v9, v11

    mul-float v15, v15, v16

    add-float/2addr v0, v15

    shr-int/lit8 v15, v10, 0x8

    and-int/lit16 v15, v15, 0xff

    int-to-float v15, v15

    mul-float/2addr v15, v1

    mul-float/2addr v15, v5

    move/from16 v17, v3

    shr-int/lit8 v3, v13, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v9

    mul-float/2addr v3, v5

    add-float/2addr v15, v3

    shr-int/lit8 v3, v14, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v11

    mul-float/2addr v3, v1

    add-float/2addr v15, v3

    shr-int/lit8 v3, v12, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float v3, v3, v16

    add-float/2addr v15, v3

    shr-int/lit8 v3, v10, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v1

    mul-float/2addr v3, v5

    move/from16 v18, v4

    shr-int/lit8 v4, v13, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v9

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    shr-int/lit8 v4, v14, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v11

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    shr-int/lit8 v4, v12, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    mul-float v4, v4, v16

    add-float/2addr v3, v4

    shr-int/lit8 v4, v10, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v1

    mul-float/2addr v4, v5

    shr-int/lit8 v10, v13, 0x18

    and-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    mul-float/2addr v10, v9

    mul-float/2addr v10, v5

    add-float/2addr v4, v10

    shr-int/lit8 v5, v14, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    mul-float/2addr v5, v11

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    shr-int/lit8 v1, v12, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float v1, v1, v16

    add-float/2addr v4, v1

    add-int/lit8 v1, v7, 0x1

    float-to-int v4, v4

    shl-int/lit8 v4, v4, 0x18

    const/high16 v5, -0x1000000

    and-int/2addr v4, v5

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v3, v5

    or-int/2addr v3, v4

    float-to-int v4, v15

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    float-to-int v0, v0

    or-int/2addr v0, v3

    .line 219
    aput v0, v2, v7

    add-int/lit8 v8, v8, 0x1

    move/from16 v0, p3

    move v7, v1

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v1, p4

    goto/16 :goto_1

    :cond_3
    move/from16 v17, v3

    move/from16 v18, v4

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, p3

    move/from16 v1, p4

    goto/16 :goto_0

    :cond_4
    return-object v2
.end method

.method public static resizeBilinear2([IIIII)[I
    .locals 19

    move/from16 v0, p3

    move/from16 v1, p4

    mul-int v2, v0, v1

    .line 229
    new-array v2, v2, [I

    add-int/lit8 v3, p1, -0x1

    int-to-float v3, v3

    int-to-float v4, v0

    div-float/2addr v3, v4

    add-int/lit8 v4, p2, -0x1

    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v4, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v1, :cond_d

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v0, :cond_c

    int-to-float v9, v8

    mul-float/2addr v9, v3

    float-to-int v10, v9

    int-to-float v11, v6

    mul-float/2addr v11, v4

    float-to-int v12, v11

    int-to-float v13, v10

    sub-float/2addr v9, v13

    int-to-float v13, v12

    sub-float/2addr v11, v13

    mul-int v12, v12, p1

    add-int/2addr v12, v10

    .line 242
    aget v10, p0, v12

    add-int/lit8 v13, v12, 0x1

    .line 243
    aget v13, p0, v13

    add-int v12, v12, p1

    .line 244
    aget v14, p0, v12

    add-int/lit8 v12, v12, 0x1

    .line 245
    aget v12, p0, v12

    const/high16 v15, 0x3f000000    # 0.5f

    cmpg-float v16, v9, v15

    const/high16 v17, 0x3e800000    # 0.25f

    const/high16 v5, 0x3f800000    # 1.0f

    if-gez v16, :cond_2

    cmpg-float v18, v11, v15

    if-gez v18, :cond_2

    .line 250
    invoke-static {v10, v13}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v15

    sub-float v15, v5, v15

    .line 251
    invoke-static {v10, v14}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v16

    sub-float v0, v5, v16

    .line 252
    invoke-static {v10, v12}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v16

    sub-float v1, v5, v16

    cmpg-float v16, v15, v17

    if-gez v16, :cond_0

    .line 255
    invoke-static {v10, v13, v15}, Lcom/brakefield/infinitestudio/image/ImageScaler;->walkToColor(IIF)I

    move-result v13

    :cond_0
    cmpg-float v15, v0, v17

    if-gez v15, :cond_1

    .line 257
    invoke-static {v10, v14, v0}, Lcom/brakefield/infinitestudio/image/ImageScaler;->walkToColor(IIF)I

    move-result v14

    :cond_1
    cmpg-float v0, v1, v17

    if-gez v0, :cond_b

    .line 259
    invoke-static {v10, v12, v1}, Lcom/brakefield/infinitestudio/image/ImageScaler;->walkToColor(IIF)I

    move-result v12

    goto/16 :goto_2

    :cond_2
    if-gez v16, :cond_5

    cmpl-float v0, v11, v15

    if-ltz v0, :cond_5

    .line 264
    invoke-static {v14, v10}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v0

    sub-float v0, v5, v0

    .line 265
    invoke-static {v14, v13}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v1

    sub-float v1, v5, v1

    .line 266
    invoke-static {v14, v12}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v15

    sub-float v15, v5, v15

    cmpg-float v16, v0, v17

    if-gez v16, :cond_3

    .line 269
    invoke-static {v14, v10, v0}, Lcom/brakefield/infinitestudio/image/ImageScaler;->walkToColor(IIF)I

    move-result v10

    :cond_3
    cmpg-float v0, v1, v17

    if-gez v0, :cond_4

    .line 271
    invoke-static {v14, v13, v1}, Lcom/brakefield/infinitestudio/image/ImageScaler;->walkToColor(IIF)I

    move-result v13

    :cond_4
    cmpg-float v0, v15, v17

    if-gez v0, :cond_b

    .line 273
    invoke-static {v14, v12, v15}, Lcom/brakefield/infinitestudio/image/ImageScaler;->walkToColor(IIF)I

    move-result v12

    goto :goto_2

    :cond_5
    cmpl-float v0, v9, v15

    if-ltz v0, :cond_8

    cmpg-float v0, v11, v15

    if-gez v0, :cond_8

    .line 278
    invoke-static {v13, v10}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v0

    sub-float v0, v5, v0

    .line 279
    invoke-static {v13, v14}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v1

    sub-float v1, v5, v1

    .line 280
    invoke-static {v13, v12}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v15

    sub-float v15, v5, v15

    cmpg-float v16, v0, v17

    if-gez v16, :cond_6

    .line 283
    invoke-static {v13, v10, v0}, Lcom/brakefield/infinitestudio/image/ImageScaler;->walkToColor(IIF)I

    move-result v0

    move v10, v0

    :cond_6
    cmpg-float v0, v1, v17

    if-gez v0, :cond_7

    .line 285
    invoke-static {v13, v14, v1}, Lcom/brakefield/infinitestudio/image/ImageScaler;->walkToColor(IIF)I

    move-result v0

    move v14, v0

    :cond_7
    cmpg-float v0, v15, v17

    if-gez v0, :cond_b

    .line 287
    invoke-static {v13, v12, v15}, Lcom/brakefield/infinitestudio/image/ImageScaler;->walkToColor(IIF)I

    move-result v0

    move v12, v0

    goto :goto_2

    .line 292
    :cond_8
    invoke-static {v12, v10}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v0

    sub-float v0, v5, v0

    .line 293
    invoke-static {v12, v13}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v1

    sub-float v1, v5, v1

    .line 294
    invoke-static {v12, v14}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v15

    sub-float v15, v5, v15

    cmpg-float v16, v0, v17

    if-gez v16, :cond_9

    .line 297
    invoke-static {v12, v10, v0}, Lcom/brakefield/infinitestudio/image/ImageScaler;->walkToColor(IIF)I

    move-result v10

    :cond_9
    cmpg-float v0, v1, v17

    if-gez v0, :cond_a

    .line 299
    invoke-static {v12, v13, v1}, Lcom/brakefield/infinitestudio/image/ImageScaler;->walkToColor(IIF)I

    move-result v13

    :cond_a
    cmpg-float v0, v15, v17

    if-gez v0, :cond_b

    .line 301
    invoke-static {v12, v14, v5}, Lcom/brakefield/infinitestudio/image/ImageScaler;->walkToColor(IIF)I

    move-result v14

    :cond_b
    :goto_2
    and-int/lit16 v0, v10, 0xff

    int-to-float v0, v0

    sub-float v1, v5, v9

    mul-float/2addr v0, v1

    sub-float/2addr v5, v11

    mul-float/2addr v0, v5

    and-int/lit16 v15, v13, 0xff

    int-to-float v15, v15

    mul-float/2addr v15, v9

    mul-float/2addr v15, v5

    add-float/2addr v0, v15

    and-int/lit16 v15, v14, 0xff

    int-to-float v15, v15

    mul-float/2addr v15, v11

    mul-float/2addr v15, v1

    add-float/2addr v0, v15

    and-int/lit16 v15, v12, 0xff

    int-to-float v15, v15

    mul-float v16, v9, v11

    mul-float v15, v15, v16

    add-float/2addr v0, v15

    shr-int/lit8 v15, v10, 0x8

    and-int/lit16 v15, v15, 0xff

    int-to-float v15, v15

    mul-float/2addr v15, v1

    mul-float/2addr v15, v5

    move/from16 v17, v3

    shr-int/lit8 v3, v13, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v9

    mul-float/2addr v3, v5

    add-float/2addr v15, v3

    shr-int/lit8 v3, v14, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v11

    mul-float/2addr v3, v1

    add-float/2addr v15, v3

    shr-int/lit8 v3, v12, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float v3, v3, v16

    add-float/2addr v15, v3

    shr-int/lit8 v3, v10, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v1

    mul-float/2addr v3, v5

    move/from16 v18, v4

    shr-int/lit8 v4, v13, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v9

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    shr-int/lit8 v4, v14, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v11

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    shr-int/lit8 v4, v12, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    mul-float v4, v4, v16

    add-float/2addr v3, v4

    shr-int/lit8 v4, v10, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v1

    mul-float/2addr v4, v5

    shr-int/lit8 v10, v13, 0x18

    and-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    mul-float/2addr v10, v9

    mul-float/2addr v10, v5

    add-float/2addr v4, v10

    shr-int/lit8 v5, v14, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    mul-float/2addr v5, v11

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    shr-int/lit8 v1, v12, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float v1, v1, v16

    add-float/2addr v4, v1

    add-int/lit8 v1, v7, 0x1

    float-to-int v4, v4

    shl-int/lit8 v4, v4, 0x18

    const/high16 v5, -0x1000000

    and-int/2addr v4, v5

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v3, v5

    or-int/2addr v3, v4

    float-to-int v4, v15

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    float-to-int v0, v0

    or-int/2addr v0, v3

    .line 328
    aput v0, v2, v7

    add-int/lit8 v8, v8, 0x1

    move/from16 v0, p3

    move v7, v1

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v1, p4

    goto/16 :goto_1

    :cond_c
    move/from16 v17, v3

    move/from16 v18, v4

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, p3

    move/from16 v1, p4

    goto/16 :goto_0

    :cond_d
    return-object v2
.end method

.method public static resizeBilinear3([IIIII)[I
    .locals 20

    move/from16 v0, p3

    move/from16 v1, p4

    mul-int v2, v0, v1

    .line 338
    new-array v2, v2, [I

    add-int/lit8 v3, p1, -0x1

    int-to-float v3, v3

    int-to-float v4, v0

    div-float/2addr v3, v4

    add-int/lit8 v4, p2, -0x1

    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v4, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v1, :cond_d

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v0, :cond_c

    int-to-float v9, v8

    mul-float/2addr v9, v3

    float-to-int v10, v9

    int-to-float v11, v6

    mul-float/2addr v11, v4

    float-to-int v12, v11

    int-to-float v13, v10

    sub-float/2addr v9, v13

    int-to-float v13, v12

    sub-float/2addr v11, v13

    mul-int v12, v12, p1

    add-int/2addr v12, v10

    .line 351
    aget v10, p0, v12

    add-int/lit8 v13, v12, 0x1

    .line 352
    aget v13, p0, v13

    add-int v12, v12, p1

    .line 353
    aget v14, p0, v12

    add-int/lit8 v12, v12, 0x1

    .line 354
    aget v12, p0, v12

    const/high16 v15, 0x3f000000    # 0.5f

    cmpg-float v16, v9, v15

    const/high16 v17, 0x3f800000    # 1.0f

    if-gez v16, :cond_2

    cmpg-float v18, v11, v15

    if-gez v18, :cond_2

    .line 359
    invoke-static {v10, v13}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v16

    sub-float v16, v17, v16

    .line 360
    invoke-static {v10, v14}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v18

    sub-float v18, v17, v18

    .line 361
    invoke-static {v10, v12}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v19

    sub-float v19, v17, v19

    cmpg-float v16, v16, v15

    if-gez v16, :cond_0

    move v13, v10

    :cond_0
    cmpg-float v16, v18, v15

    if-gez v16, :cond_1

    move v14, v10

    :cond_1
    cmpg-float v15, v19, v15

    if-gez v15, :cond_b

    move v12, v10

    goto/16 :goto_2

    :cond_2
    if-gez v16, :cond_5

    cmpl-float v16, v11, v15

    if-ltz v16, :cond_5

    .line 373
    invoke-static {v14, v10}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v16

    sub-float v16, v17, v16

    .line 374
    invoke-static {v14, v13}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v18

    sub-float v18, v17, v18

    .line 375
    invoke-static {v14, v12}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v19

    sub-float v19, v17, v19

    cmpg-float v16, v16, v15

    if-gez v16, :cond_3

    move v10, v14

    :cond_3
    cmpg-float v16, v18, v15

    if-gez v16, :cond_4

    move v13, v14

    :cond_4
    cmpg-float v15, v19, v15

    if-gez v15, :cond_b

    move v12, v14

    goto :goto_2

    :cond_5
    cmpl-float v16, v9, v15

    if-ltz v16, :cond_8

    cmpg-float v16, v11, v15

    if-gez v16, :cond_8

    .line 387
    invoke-static {v13, v10}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v16

    sub-float v16, v17, v16

    .line 388
    invoke-static {v13, v14}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v18

    sub-float v18, v17, v18

    .line 389
    invoke-static {v13, v12}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v19

    sub-float v19, v17, v19

    cmpg-float v16, v16, v15

    if-gez v16, :cond_6

    move v10, v13

    :cond_6
    cmpg-float v16, v18, v15

    if-gez v16, :cond_7

    move v14, v13

    :cond_7
    cmpg-float v15, v19, v15

    if-gez v15, :cond_b

    move v12, v13

    goto :goto_2

    .line 401
    :cond_8
    invoke-static {v12, v10}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v16

    sub-float v16, v17, v16

    .line 402
    invoke-static {v12, v13}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v18

    sub-float v18, v17, v18

    .line 403
    invoke-static {v12, v14}, Lcom/brakefield/infinitestudio/image/ImageScaler;->getEdgeValue(II)F

    move-result v19

    sub-float v19, v17, v19

    cmpg-float v16, v16, v15

    if-gez v16, :cond_9

    move v10, v12

    :cond_9
    cmpg-float v16, v18, v15

    if-gez v16, :cond_a

    move v13, v12

    :cond_a
    cmpg-float v15, v19, v15

    if-gez v15, :cond_b

    move v14, v12

    :cond_b
    :goto_2
    and-int/lit16 v15, v10, 0xff

    int-to-float v15, v15

    sub-float v16, v17, v9

    mul-float v15, v15, v16

    sub-float v17, v17, v11

    mul-float v15, v15, v17

    and-int/lit16 v5, v13, 0xff

    int-to-float v5, v5

    mul-float/2addr v5, v9

    mul-float v5, v5, v17

    add-float/2addr v15, v5

    and-int/lit16 v5, v14, 0xff

    int-to-float v5, v5

    mul-float/2addr v5, v11

    mul-float v5, v5, v16

    add-float/2addr v15, v5

    and-int/lit16 v5, v12, 0xff

    int-to-float v5, v5

    mul-float v18, v9, v11

    mul-float v5, v5, v18

    add-float/2addr v15, v5

    shr-int/lit8 v5, v10, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    mul-float v5, v5, v16

    mul-float v5, v5, v17

    shr-int/lit8 v0, v13, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    mul-float/2addr v0, v9

    mul-float v0, v0, v17

    add-float/2addr v5, v0

    shr-int/lit8 v0, v14, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    mul-float/2addr v0, v11

    mul-float v0, v0, v16

    add-float/2addr v5, v0

    shr-int/lit8 v0, v12, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    mul-float v0, v0, v18

    add-float/2addr v5, v0

    shr-int/lit8 v0, v10, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    mul-float v0, v0, v16

    mul-float v0, v0, v17

    shr-int/lit8 v1, v13, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v9

    mul-float v1, v1, v17

    add-float/2addr v0, v1

    shr-int/lit8 v1, v14, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v11

    mul-float v1, v1, v16

    add-float/2addr v0, v1

    shr-int/lit8 v1, v12, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float v1, v1, v18

    add-float/2addr v0, v1

    shr-int/lit8 v1, v10, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float v1, v1, v16

    mul-float v1, v1, v17

    shr-int/lit8 v10, v13, 0x18

    and-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    mul-float/2addr v10, v9

    mul-float v10, v10, v17

    add-float/2addr v1, v10

    shr-int/lit8 v9, v14, 0x18

    and-int/lit16 v9, v9, 0xff

    int-to-float v9, v9

    mul-float/2addr v9, v11

    mul-float v9, v9, v16

    add-float/2addr v1, v9

    shr-int/lit8 v9, v12, 0x18

    and-int/lit16 v9, v9, 0xff

    int-to-float v9, v9

    mul-float v9, v9, v18

    add-float/2addr v1, v9

    add-int/lit8 v9, v7, 0x1

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    const/high16 v10, -0x1000000

    and-int/2addr v1, v10

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x10

    const/high16 v10, 0xff0000

    and-int/2addr v0, v10

    or-int/2addr v0, v1

    float-to-int v1, v5

    shl-int/lit8 v1, v1, 0x8

    const v5, 0xff00

    and-int/2addr v1, v5

    or-int/2addr v0, v1

    float-to-int v1, v15

    or-int/2addr v0, v1

    .line 437
    aput v0, v2, v7

    add-int/lit8 v8, v8, 0x1

    move/from16 v0, p3

    move/from16 v1, p4

    move v7, v9

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, p3

    move/from16 v1, p4

    goto/16 :goto_0

    :cond_d
    return-object v2
.end method

.method private static walkToColor(IIF)I
    .locals 5

    .line 30
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 31
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 32
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 33
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p0, p2

    add-float/2addr v3, p0

    float-to-int p0, v3

    .line 29
    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method
