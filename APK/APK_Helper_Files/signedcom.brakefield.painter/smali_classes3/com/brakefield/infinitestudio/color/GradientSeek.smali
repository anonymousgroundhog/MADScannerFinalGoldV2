.class public Lcom/brakefield/infinitestudio/color/GradientSeek;
.super Lcom/brakefield/infinitestudio/ui/CustomSlider;
.source "GradientSeek.java"


# instance fields
.field public colors:[I

.field private paint:Landroid/graphics/Paint;

.field private thumb:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/CustomSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    const/high16 p2, -0x1000000

    .line 15
    filled-new-array {p1, p2}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/GradientSeek;->colors:[I

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/GradientSeek;->paint:Landroid/graphics/Paint;

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/GradientSeek;->thumb:Landroid/graphics/Paint;

    .line 21
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/GradientSeek;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/GradientSeek;->paint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/brakefield/infinitestudio/color/GradientSeek;->strokeSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 23
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/GradientSeek;->thumb:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private getPositions(I)[F
    .locals 6

    add-int/lit8 v0, p1, -0x1

    int-to-float v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    .line 35
    new-array v3, p1, [F

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_1

    if-ne v4, v0, :cond_0

    .line 37
    aput v2, v3, v4

    goto :goto_1

    :cond_0
    int-to-float v5, v4

    mul-float/2addr v5, v1

    .line 38
    aput v5, v3, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method


# virtual methods
.method public getColor()I
    .locals 8

    .line 61
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 62
    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/GradientSeek;->colors:[I

    array-length v1, v1

    invoke-direct {p0, v1}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getPositions(I)[F

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 64
    :goto_0
    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/GradientSeek;->colors:[I

    array-length v5, v4

    if-ge v3, v5, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 65
    array-length v6, v4

    if-ge v5, v6, :cond_0

    .line 66
    aget v6, v1, v5

    cmpl-float v6, v6, v0

    if-ltz v6, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    move v3, v5

    goto :goto_0

    .line 72
    :cond_1
    :goto_1
    aget v3, v1, v2

    add-int/lit8 v5, v2, 0x1

    .line 73
    aget v1, v1, v5

    sub-float/2addr v1, v3

    sub-float/2addr v0, v3

    div-float/2addr v0, v1

    .line 77
    aget v1, v4, v2

    .line 78
    aget v2, v4, v5

    .line 79
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 80
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 81
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 82
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v5

    .line 83
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 84
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v7, v3

    sub-int/2addr v5, v3

    int-to-float v3, v5

    mul-float/2addr v3, v0

    add-float/2addr v7, v3

    float-to-int v3, v7

    int-to-float v5, v4

    sub-int/2addr v6, v4

    int-to-float v4, v6

    mul-float/2addr v4, v0

    add-float/2addr v5, v4

    float-to-int v4, v5

    int-to-float v5, v1

    sub-int/2addr v2, v1

    int-to-float v1, v2

    mul-float/2addr v1, v0

    add-float/2addr v5, v1

    float-to-int v0, v5

    .line 88
    invoke-static {v3, v4, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public getThumbColor()I
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getColor()I

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2, p3, p4}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->onSizeChanged(IIII)V

    .line 54
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/color/GradientSeek;->w:I

    .line 55
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/color/GradientSeek;->h:I

    .line 56
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/GradientSeek;->colors:[I

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/color/GradientSeek;->update([I)V

    .line 57
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/GradientSeek;->invalidate()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->onWindowFocusChanged(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/color/GradientSeek;->w:I

    .line 47
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/color/GradientSeek;->h:I

    .line 48
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/GradientSeek;->colors:[I

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/color/GradientSeek;->update([I)V

    .line 49
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/GradientSeek;->invalidate()V

    return-void
.end method

.method public update([I)V
    .locals 9

    .line 27
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/GradientSeek;->colors:[I

    .line 28
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getPositions(I)[F

    move-result-object v7

    .line 29
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v1, p0, Lcom/brakefield/infinitestudio/color/GradientSeek;->w:I

    int-to-float v4, v1

    const/4 v5, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setShader(Landroid/graphics/Shader;)V

    .line 30
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/GradientSeek;->invalidate()V

    return-void
.end method
