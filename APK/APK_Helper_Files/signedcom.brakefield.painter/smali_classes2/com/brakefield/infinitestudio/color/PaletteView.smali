.class public Lcom/brakefield/infinitestudio/color/PaletteView;
.super Landroid/view/View;
.source "PaletteView.java"


# instance fields
.field palette:Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 25
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/PaletteView;->palette:Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->colors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/PaletteView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/PaletteView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/PaletteView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/PaletteView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/PaletteView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/PaletteView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 27
    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/PaletteView;->palette:Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;

    invoke-virtual {v1, p1, v0}, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPalette(Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/PaletteView;->palette:Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;

    .line 21
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/PaletteView;->postInvalidate()V

    return-void
.end method
