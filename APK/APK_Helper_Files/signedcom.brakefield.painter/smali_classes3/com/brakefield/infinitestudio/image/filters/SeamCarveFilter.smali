.class public Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter;
.super Lcom/brakefield/infinitestudio/image/filters/PhotoFilter;
.source "SeamCarveFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter$Seam;
    }
.end annotation


# instance fields
.field private newHeight:I

.field private newWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/filters/PhotoFilter;-><init>()V

    return-void
.end method

.method private getEnergy(II)I
    .locals 4

    .line 152
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 153
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 154
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 155
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 156
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;)V
    .locals 19

    move-object/from16 v0, p0

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v1, v9, v10

    .line 29
    new-array v11, v1, [I

    .line 30
    new-array v12, v1, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v2, v11

    move v4, v9

    move v7, v9

    move v8, v10

    .line 33
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v10, :cond_5

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v9, :cond_4

    const/16 v4, 0xff

    if-lez v3, :cond_0

    mul-int v5, v2, v9

    add-int v6, v5, v3

    .line 43
    aget v6, v11, v6

    add-int/lit8 v7, v3, -0x1

    add-int/2addr v5, v7

    aget v5, v11, v5

    invoke-direct {v0, v6, v5}, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter;->getEnergy(II)I

    move-result v5

    goto :goto_2

    :cond_0
    move v5, v4

    :goto_2
    add-int/lit8 v6, v9, -0x1

    if-ge v3, v6, :cond_1

    mul-int v6, v2, v9

    add-int v7, v6, v3

    .line 45
    aget v7, v11, v7

    add-int/lit8 v8, v3, 0x1

    add-int/2addr v6, v8

    aget v6, v11, v6

    invoke-direct {v0, v7, v6}, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter;->getEnergy(II)I

    move-result v6

    goto :goto_3

    :cond_1
    move v6, v4

    :goto_3
    if-lez v2, :cond_2

    mul-int v7, v2, v9

    add-int/2addr v7, v3

    .line 47
    aget v7, v11, v7

    add-int/lit8 v8, v2, -0x1

    mul-int/2addr v8, v9

    add-int/2addr v8, v3

    aget v8, v11, v8

    invoke-direct {v0, v7, v8}, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter;->getEnergy(II)I

    move-result v7

    goto :goto_4

    :cond_2
    move v7, v4

    :goto_4
    add-int/lit8 v8, v10, -0x1

    if-ge v2, v8, :cond_3

    mul-int v4, v2, v9

    add-int/2addr v4, v3

    .line 49
    aget v4, v11, v4

    add-int/lit8 v8, v2, 0x1

    mul-int/2addr v8, v9

    add-int/2addr v8, v3

    aget v8, v11, v8

    invoke-direct {v0, v4, v8}, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter;->getEnergy(II)I

    move-result v4

    :cond_3
    mul-int v8, v2, v9

    add-int/2addr v8, v3

    .line 50
    invoke-static {v5, v7, v6, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    aput v4, v12, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_5
    iget v2, v0, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter;->newHeight:I

    sub-int v2, v10, v2

    move v4, v10

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_11

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v4, :cond_b

    .line 62
    new-instance v13, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter$Seam;

    invoke-direct {v13, v0, v9, v8}, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter$Seam;-><init>(Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter;II)V

    move v15, v8

    const/4 v14, 0x1

    :goto_7
    if-ge v14, v9, :cond_8

    mul-int v16, v15, v9

    add-int v16, v16, v14

    .line 64
    aget v17, v12, v16

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 65
    aget v16, v12, v16

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    if-lez v15, :cond_6

    if-ge v1, v7, :cond_6

    add-int/lit8 v15, v15, -0x1

    goto :goto_8

    :cond_6
    add-int/lit8 v5, v4, -0x1

    if-ge v15, v5, :cond_7

    if-ge v7, v1, :cond_7

    add-int/lit8 v15, v15, 0x1

    move v1, v7

    .line 73
    :cond_7
    :goto_8
    invoke-virtual {v13, v15, v1}, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter$Seam;->add(II)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_8
    if-eqz v6, :cond_9

    .line 75
    iget v1, v13, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter$Seam;->energy:I

    iget v5, v6, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter$Seam;->energy:I

    if-ge v1, v5, :cond_a

    :cond_9
    move-object v6, v13

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 81
    :cond_b
    iget-object v1, v6, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter$Seam;->values:[I

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v9, :cond_10

    .line 83
    aget v6, v1, v5

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v10, :cond_f

    if-ne v7, v6, :cond_c

    goto :goto_b

    :cond_c
    if-lt v7, v4, :cond_d

    add-int/lit8 v8, v7, -0x1

    mul-int/2addr v8, v9

    add-int/2addr v8, v5

    const/high16 v13, -0x10000

    .line 88
    aput v13, v11, v8

    :cond_d
    if-le v7, v6, :cond_e

    add-int/lit8 v8, v7, -0x1

    mul-int/2addr v8, v9

    add-int/2addr v8, v5

    mul-int v13, v7, v9

    add-int/2addr v13, v5

    .line 91
    aget v14, v11, v13

    aput v14, v11, v8

    .line 92
    aget v13, v12, v13

    aput v13, v12, v8

    :cond_e
    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_10
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 99
    :cond_11
    iget v1, v0, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter;->newWidth:I

    sub-int v1, v9, v1

    move v3, v9

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1d

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_d
    if-ge v5, v3, :cond_17

    .line 106
    new-instance v8, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter$Seam;

    invoke-direct {v8, v0, v4, v5}, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter$Seam;-><init>(Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter;II)V

    move v14, v5

    const/4 v13, 0x1

    :goto_e
    if-ge v13, v4, :cond_14

    mul-int v15, v13, v3

    add-int/2addr v15, v14

    .line 108
    aget v18, v12, v15

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    .line 109
    aget v15, v12, v15

    invoke-static {v15}, Landroid/graphics/Color;->green(I)I

    move-result v15

    if-lez v14, :cond_12

    if-ge v6, v15, :cond_12

    add-int/lit8 v14, v14, -0x1

    goto :goto_f

    :cond_12
    add-int/lit8 v0, v3, -0x1

    if-ge v14, v0, :cond_13

    if-ge v15, v6, :cond_13

    add-int/lit8 v14, v14, 0x1

    move v6, v15

    .line 117
    :cond_13
    :goto_f
    invoke-virtual {v8, v14, v6}, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter$Seam;->add(II)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    goto :goto_e

    :cond_14
    if-eqz v7, :cond_15

    .line 119
    iget v0, v8, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter$Seam;->energy:I

    iget v6, v7, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter$Seam;->energy:I

    if-ge v0, v6, :cond_16

    :cond_15
    move-object v7, v8

    :cond_16
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_d

    .line 125
    :cond_17
    iget-object v0, v7, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter$Seam;->values:[I

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v4, :cond_1c

    .line 127
    aget v6, v0, v5

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v9, :cond_1b

    if-ne v7, v6, :cond_18

    const/high16 v13, -0x10000

    goto :goto_13

    :cond_18
    if-lt v7, v3, :cond_19

    mul-int v8, v5, v3

    add-int/lit8 v13, v7, -0x1

    add-int/2addr v8, v13

    const/high16 v13, -0x10000

    .line 132
    aput v13, v11, v8

    goto :goto_12

    :cond_19
    const/high16 v13, -0x10000

    :goto_12
    if-le v7, v6, :cond_1a

    mul-int v8, v5, v3

    add-int/lit8 v14, v7, -0x1

    add-int/2addr v14, v8

    add-int/2addr v8, v7

    .line 135
    aget v15, v11, v8

    aput v15, v11, v14

    .line 136
    aget v8, v12, v8

    aput v8, v12, v14

    :cond_1a
    :goto_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_1b
    const/high16 v13, -0x10000

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_1c
    const/high16 v13, -0x10000

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_c

    :cond_1d
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v2, v11

    move v4, v9

    move v7, v9

    move v8, v10

    .line 148
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method

.method public chain(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isLinear()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setDimensions(II)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter;->newWidth:I

    .line 17
    iput p2, p0, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter;->newHeight:I

    return-void
.end method
