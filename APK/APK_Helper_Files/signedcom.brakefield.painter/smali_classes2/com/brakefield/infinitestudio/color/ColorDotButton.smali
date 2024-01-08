.class public Lcom/brakefield/infinitestudio/color/ColorDotButton;
.super Landroid/widget/Button;
.source "ColorDotButton.java"


# instance fields
.field public color:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x10000

    .line 14
    iput p1, p0, Lcom/brakefield/infinitestudio/color/ColorDotButton;->color:I

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorDotButton;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 23
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorDotButton;->getWidth()I

    move-result v0

    .line 24
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorDotButton;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    const/high16 v3, 0x40c00000    # 6.0f

    .line 27
    invoke-static {v3}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v3

    sub-float v3, v1, v3

    .line 29
    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/ColorDotButton;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/brakefield/infinitestudio/color/ColorDotButton;->color:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v0

    mul-float/2addr v0, v2

    .line 31
    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/ColorDotButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/brakefield/infinitestudio/color/ColorDotButton;->color:I

    .line 36
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorDotButton;->invalidate()V

    return-void
.end method
