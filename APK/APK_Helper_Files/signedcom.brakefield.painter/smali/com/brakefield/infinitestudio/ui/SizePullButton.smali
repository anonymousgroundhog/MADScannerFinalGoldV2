.class public Lcom/brakefield/infinitestudio/ui/SizePullButton;
.super Lcom/brakefield/infinitestudio/ui/PullButton;
.source "SizePullButton.java"


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private stroke:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/PullButton;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->setup()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/PullButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->setup()V

    return-void
.end method

.method private setup()V
    .locals 3

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/SizePullButton;->paint:Landroid/graphics/Paint;

    .line 32
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SizePullButton;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/SizePullButton;->stroke:Landroid/graphics/Paint;

    const/16 v1, 0x3c

    .line 35
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 40
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->getWidth()I

    move-result v0

    .line 41
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->getHeight()I

    move-result v1

    .line 43
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 47
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->getPaddingLeft()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    int-to-float v1, v1

    .line 49
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/SizePullButton;->scaleValue:F

    mul-float/2addr v1, v2

    .line 50
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v0, v0

    sub-float v3, v0, v1

    add-float/2addr v0, v1

    invoke-direct {v2, v3, v3, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 53
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->getProgress()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr v4, v3

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v4, v3

    const v3, 0x3e4ccccd    # 0.2f

    add-float/2addr v4, v3

    mul-float/2addr v1, v4

    .line 54
    invoke-virtual {v2, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 56
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/SizePullButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 58
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/SizePullButton;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    .line 59
    invoke-virtual {v2, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 61
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/SizePullButton;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setColorFilter(I)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/ui/PullButton;->setColorFilter(I)V

    .line 66
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SizePullButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SizePullButton;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/SizePullButton;->stroke:Landroid/graphics/Paint;

    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 69
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->invalidate()V

    return-void
.end method
