.class public Lcom/brakefield/infinitestudio/ui/RoundButton;
.super Landroid/widget/Button;
.source "RoundButton.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private border:Z

.field private color:I

.field private colorFilter:Landroid/graphics/ColorFilter;

.field private fill:Landroid/graphics/Paint;

.field private paint:Landroid/graphics/Paint;

.field private stroke:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->color:I

    .line 32
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->border:Z

    .line 47
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->fill:Landroid/graphics/Paint;

    .line 48
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->stroke:Landroid/graphics/Paint;

    .line 49
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->stroke:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->color:I

    .line 32
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->border:Z

    .line 37
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->fill:Landroid/graphics/Paint;

    .line 39
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->stroke:Landroid/graphics/Paint;

    .line 40
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->stroke:Landroid/graphics/Paint;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 56
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/RoundButton;->getWidth()I

    move-result v0

    .line 57
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/RoundButton;->getHeight()I

    move-result v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->fill:Landroid/graphics/Paint;

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 67
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/RoundButton;->getPaddingLeft()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    const/high16 v4, 0x40800000    # 4.0f

    div-float v4, v2, v4

    sub-float/2addr v2, v4

    .line 69
    new-instance v4, Landroid/graphics/RectF;

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v5, v0, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v6, v1, v2

    add-float/2addr v0, v2

    add-float/2addr v1, v2

    invoke-direct {v4, v5, v6, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 70
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 72
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->paint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 76
    :cond_1
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->border:Z

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->stroke:Landroid/graphics/Paint;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->stroke:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 80
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    div-float/2addr v0, v3

    .line 81
    invoke-virtual {v4, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 82
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-wide/16 v0, 0x32

    .line 60
    invoke-virtual {p0, v0, v1}, Lcom/brakefield/infinitestudio/ui/RoundButton;->postInvalidateDelayed(J)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->color:I

    .line 89
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/RoundButton;->invalidate()V

    return-void
.end method

.method public setBorder(Z)V
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->border:Z

    .line 135
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/RoundButton;->postInvalidate()V

    return-void
.end method

.method public setColorFilter(I)V
    .locals 2

    .line 122
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/RoundButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 126
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->colorFilter:Landroid/graphics/ColorFilter;

    .line 127
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->paint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/RoundButton;->postInvalidate()V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->bitmap:Landroid/graphics/Bitmap;

    if-ne p1, v0, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->paint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 98
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 99
    iput-object v1, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->paint:Landroid/graphics/Paint;

    :cond_1
    if-eqz p1, :cond_4

    .line 103
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/RoundButton;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/RoundButton;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2

    move v0, v1

    .line 105
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    const/4 v0, 0x1

    .line 110
    invoke-static {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 112
    :cond_3
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->bitmap:Landroid/graphics/Bitmap;

    .line 113
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 114
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/RoundButton;->paint:Landroid/graphics/Paint;

    .line 115
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 118
    :cond_4
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/RoundButton;->postInvalidate()V

    return-void
.end method
