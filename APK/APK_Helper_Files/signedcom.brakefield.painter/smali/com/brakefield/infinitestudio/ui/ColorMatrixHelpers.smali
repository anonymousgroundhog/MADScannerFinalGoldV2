.class public Lcom/brakefield/infinitestudio/ui/ColorMatrixHelpers;
.super Ljava/lang/Object;
.source "ColorMatrixHelpers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDuotoneMatrix(II)Landroid/graphics/ColorMatrix;
    .locals 7

    .line 67
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 68
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    .line 69
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    .line 70
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    .line 71
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    .line 72
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    .line 73
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v1, v3

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v1, v5

    sub-float/2addr v2, v4

    div-float/2addr v2, v5

    sub-float/2addr p1, p0

    div-float/2addr p1, v5

    const/16 v5, 0x14

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v1, v5, v6

    const/4 v1, 0x1

    const/4 v6, 0x0

    aput v6, v5, v1

    const/4 v1, 0x2

    aput v6, v5, v1

    const/4 v1, 0x3

    aput v6, v5, v1

    const/4 v1, 0x4

    aput v3, v5, v1

    const/4 v1, 0x5

    aput v2, v5, v1

    const/4 v1, 0x6

    aput v6, v5, v1

    const/4 v1, 0x7

    aput v6, v5, v1

    const/16 v1, 0x8

    aput v6, v5, v1

    const/16 v1, 0x9

    aput v4, v5, v1

    const/16 v1, 0xa

    aput p1, v5, v1

    const/16 p1, 0xb

    aput v6, v5, p1

    const/16 p1, 0xc

    aput v6, v5, p1

    const/16 p1, 0xd

    aput v6, v5, p1

    const/16 p1, 0xe

    aput p0, v5, p1

    const/16 p0, 0xf

    aput v6, v5, p0

    const/16 p0, 0x10

    aput v6, v5, p0

    const/16 p0, 0x11

    aput v6, v5, p0

    const/16 p0, 0x12

    const/high16 p1, 0x3f800000    # 1.0f

    aput p1, v5, p0

    const/16 p0, 0x13

    aput v6, v5, p0

    .line 82
    invoke-virtual {v0, v5}, Landroid/graphics/ColorMatrix;->set([F)V

    return-object v0
.end method

.method public static getFillMatrix(I)Landroid/graphics/ColorMatrix;
    .locals 6

    .line 25
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    .line 26
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    .line 27
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    .line 29
    new-instance v2, Landroid/graphics/ColorMatrix;

    const/16 v3, 0x14

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v5, v3, v4

    const/4 v4, 0x2

    aput v5, v3, v4

    const/4 v4, 0x3

    aput v5, v3, v4

    const/4 v4, 0x4

    aput v0, v3, v4

    const/4 v0, 0x5

    aput v5, v3, v0

    const/4 v0, 0x6

    aput v5, v3, v0

    const/4 v0, 0x7

    aput v5, v3, v0

    const/16 v0, 0x8

    aput v5, v3, v0

    const/16 v0, 0x9

    aput v1, v3, v0

    const/16 v0, 0xa

    aput v5, v3, v0

    const/16 v0, 0xb

    aput v5, v3, v0

    const/16 v0, 0xc

    aput v5, v3, v0

    const/16 v0, 0xd

    aput v5, v3, v0

    const/16 v0, 0xe

    aput p0, v3, v0

    const/16 p0, 0xf

    aput v5, v3, p0

    const/16 p0, 0x10

    aput v5, v3, p0

    const/16 p0, 0x11

    aput v5, v3, p0

    const/16 p0, 0x12

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v3, p0

    const/16 p0, 0x13

    aput v5, v3, p0

    invoke-direct {v2, v3}, Landroid/graphics/ColorMatrix;-><init>([F)V

    return-object v2
.end method

.method public static getHardMixMatrix(F)Landroid/graphics/ColorMatrix;
    .locals 6

    const/high16 v0, -0x3c810000    # -255.0f

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 43
    new-instance v1, Landroid/graphics/ColorMatrix;

    const/16 v2, 0x14

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p0, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x2

    aput v4, v2, v3

    const/4 v3, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v2, v3

    const/4 v3, 0x4

    aput v0, v2, v3

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    aput p0, v2, v3

    const/4 v3, 0x7

    aput v4, v2, v3

    const/16 v3, 0x8

    aput v5, v2, v3

    const/16 v3, 0x9

    aput v0, v2, v3

    const/16 v3, 0xa

    aput v4, v2, v3

    const/16 v3, 0xb

    aput v4, v2, v3

    const/16 v3, 0xc

    aput p0, v2, v3

    const/16 p0, 0xd

    aput v5, v2, p0

    const/16 p0, 0xe

    aput v0, v2, p0

    const/16 p0, 0xf

    aput v4, v2, p0

    const/16 p0, 0x10

    aput v4, v2, p0

    const/16 p0, 0x11

    aput v4, v2, p0

    const/16 p0, 0x12

    aput v5, v2, p0

    const/16 p0, 0x13

    aput v4, v2, p0

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrix;-><init>([F)V

    return-object v1
.end method

.method public static getThresholdMatrix()Landroid/graphics/ColorMatrix;
    .locals 2

    .line 56
    new-instance v0, Landroid/graphics/ColorMatrix;

    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x42aa0000    # 85.0f
        0x42aa0000    # 85.0f
        0x42aa0000    # 85.0f
        0x0
        -0x39010000    # -32640.0f
        0x42aa0000    # 85.0f
        0x42aa0000    # 85.0f
        0x42aa0000    # 85.0f
        0x0
        -0x39010000    # -32640.0f
        0x42aa0000    # 85.0f
        0x42aa0000    # 85.0f
        0x42aa0000    # 85.0f
        0x0
        -0x39010000    # -32640.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static mix(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;F)Landroid/graphics/ColorMatrix;
    .locals 5

    .line 14
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object p0

    .line 15
    invoke-virtual {p1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object p1

    const/16 v0, 0x14

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 18
    aget v3, p0, v2

    aget v4, p1, v2

    invoke-static {v3, v4, p2}, Lcom/brakefield/infinitestudio/color/ColorUtils;->mix(FFF)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Landroid/graphics/ColorMatrix;

    invoke-direct {p0, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    return-object p0
.end method
