.class public Lcom/brakefield/infinitestudio/color/HSLColor;
.super Ljava/lang/Object;
.source "HSLColor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static HueToRGB(FFF)F
    .locals 4

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez v0, :cond_0

    add-float/2addr p2, v1

    :cond_0
    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    sub-float/2addr p2, v1

    :cond_1
    const/high16 v0, 0x40c00000    # 6.0f

    mul-float v2, p2, v0

    cmpg-float v2, v2, v1

    if-gez v2, :cond_2

    sub-float/2addr p1, p0

    mul-float/2addr p1, v0

    mul-float/2addr p1, p2

    :goto_0
    add-float/2addr p0, p1

    return p0

    :cond_2
    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, p2, v2

    cmpg-float v1, v3, v1

    if-gez v1, :cond_3

    return p1

    :cond_3
    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, p2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    sub-float/2addr p1, p0

    mul-float/2addr p1, v0

    const v0, 0x3f2aaaab

    sub-float/2addr v0, p2

    mul-float/2addr p1, v0

    goto :goto_0

    :cond_4
    return p0
.end method

.method public static fromRGB(I[F)[F
    .locals 8

    .line 18
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 19
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 20
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    .line 24
    invoke-static {v2, p0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 25
    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    cmpl-float v4, v3, v1

    const/4 v5, 0x0

    if-nez v4, :cond_1

    :cond_0
    move v2, v5

    goto :goto_0

    :cond_1
    cmpl-float v6, v3, v0

    const/high16 v7, 0x40c00000    # 6.0f

    if-nez v6, :cond_2

    sub-float/2addr v2, p0

    sub-float p0, v3, v1

    div-float/2addr v2, p0

    div-float/2addr v2, v7

    const/high16 p0, 0x3f800000    # 1.0f

    add-float/2addr v2, p0

    rem-float/2addr v2, p0

    goto :goto_0

    :cond_2
    cmpl-float v6, v3, v2

    if-nez v6, :cond_3

    sub-float/2addr p0, v0

    sub-float v0, v3, v1

    div-float/2addr p0, v0

    div-float/2addr p0, v7

    const v0, 0x3eaaaaab

    add-float v2, p0, v0

    goto :goto_0

    :cond_3
    cmpl-float p0, v3, p0

    if-nez p0, :cond_0

    sub-float/2addr v0, v2

    sub-float p0, v3, v1

    div-float/2addr v0, p0

    div-float/2addr v0, v7

    const p0, 0x3f2aaaab

    add-float v2, v0, p0

    :goto_0
    add-float p0, v3, v1

    const/high16 v0, 0x40000000    # 2.0f

    div-float v6, p0, v0

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v4, v6, v4

    if-gtz v4, :cond_5

    sub-float/2addr v3, v1

    div-float v5, v3, p0

    goto :goto_1

    :cond_5
    sub-float p0, v3, v1

    sub-float/2addr v0, v3

    sub-float/2addr v0, v1

    div-float v5, p0, v0

    :goto_1
    if-nez p1, :cond_6

    const/4 p0, 0x3

    new-array p1, p0, [F

    :cond_6
    const/4 p0, 0x0

    .line 57
    aput v2, p1, p0

    const/4 p0, 0x1

    .line 58
    aput v5, p1, p0

    const/4 p0, 0x2

    .line 59
    aput v6, p1, p0

    return-object p1
.end method

.method public static toRGB(FFF)I
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 100
    invoke-static {p0, p1, p2, v0}, Lcom/brakefield/infinitestudio/color/HSLColor;->toRGB(FFFF)I

    move-result p0

    return p0
.end method

.method public static toRGB(FFFF)I
    .locals 6

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const-string v2, ")"

    if-ltz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v1

    if-gtz v3, :cond_3

    cmpg-float v3, p2, v0

    if-ltz v3, :cond_2

    cmpl-float v3, p2, v1

    if-gtz v3, :cond_2

    cmpg-float v3, p3, v0

    if-ltz v3, :cond_1

    cmpl-float v3, p3, v1

    if-gtz v3, :cond_1

    float-to-double v2, p2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    add-float/2addr p1, v1

    mul-float/2addr p1, p2

    goto :goto_0

    :cond_0
    add-float v1, p2, p1

    mul-float/2addr p1, p2

    sub-float p1, v1, p1

    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p2, v1

    sub-float/2addr p2, p1

    const v1, 0x3eaaaaab

    add-float v2, p0, v1

    .line 138
    invoke-static {p2, p1, v2}, Lcom/brakefield/infinitestudio/color/HSLColor;->HueToRGB(FFF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 139
    invoke-static {p2, p1, p0}, Lcom/brakefield/infinitestudio/color/HSLColor;->HueToRGB(FFF)F

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    sub-float/2addr p0, v1

    .line 140
    invoke-static {p2, p1, p0}, Lcom/brakefield/infinitestudio/color/HSLColor;->HueToRGB(FFF)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float/2addr p0, v3

    float-to-int p0, p0

    mul-float/2addr p3, v3

    float-to-int p1, p3

    shl-int/lit8 p1, p1, 0x18

    shl-int/lit8 p2, v2, 0x10

    add-int/2addr p1, p2

    shl-int/lit8 p2, v4, 0x8

    add-int/2addr p1, p2

    add-int/2addr p1, p0

    return p1

    .line 124
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Color parameter outside of expected range - Alpha ("

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 125
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Color parameter outside of expected range - Luminance ("

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 120
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Color parameter outside of expected range - Saturation ("

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 115
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static toRGB([F)I
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 74
    invoke-static {p0, v0}, Lcom/brakefield/infinitestudio/color/HSLColor;->toRGB([FF)I

    move-result p0

    return p0
.end method

.method public static toRGB([FF)I
    .locals 3

    const/4 v0, 0x0

    .line 88
    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget p0, p0, v2

    invoke-static {v0, v1, p0, p1}, Lcom/brakefield/infinitestudio/color/HSLColor;->toRGB(FFFF)I

    move-result p0

    return p0
.end method
