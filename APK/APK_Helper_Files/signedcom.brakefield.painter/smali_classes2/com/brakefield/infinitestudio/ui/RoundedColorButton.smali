.class public Lcom/brakefield/infinitestudio/ui/RoundedColorButton;
.super Landroid/widget/Button;
.source "RoundedColorButton.java"


# instance fields
.field public color:I

.field private padding:F

.field private paint:Landroid/graphics/Paint;

.field private stroke:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x10000

    .line 16
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->color:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 20
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->padding:F

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->paint:Landroid/graphics/Paint;

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->stroke:Landroid/graphics/Paint;

    const/16 v1, 0x64

    .line 28
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 29
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 31
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->stroke:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x10000

    .line 16
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->color:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 20
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p2

    iput p2, p0, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->padding:F

    .line 37
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->paint:Landroid/graphics/Paint;

    .line 39
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->stroke:Landroid/graphics/Paint;

    const/16 v0, 0x64

    .line 40
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 41
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->stroke:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->stroke:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 43
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->stroke:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 49
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->getWidth()I

    move-result v0

    .line 50
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->getHeight()I

    move-result v1

    .line 52
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->padding:F

    int-to-float v0, v0

    sub-float/2addr v0, v3

    int-to-float v1, v1

    sub-float/2addr v1, v3

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 54
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->padding:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    .line 58
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 60
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->stroke:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->stroke:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    .line 64
    iget v4, p0, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->padding:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    div-float/2addr v3, v1

    invoke-virtual {v2, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 66
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->color:I

    .line 72
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/RoundedColorButton;->invalidate()V

    return-void
.end method
