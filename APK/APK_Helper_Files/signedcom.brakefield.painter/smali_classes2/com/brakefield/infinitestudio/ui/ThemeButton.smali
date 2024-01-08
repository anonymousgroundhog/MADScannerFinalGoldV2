.class public Lcom/brakefield/infinitestudio/ui/ThemeButton;
.super Landroid/view/View;
.source "ThemeButton.java"


# instance fields
.field private final STROKE_SIZE:F

.field paint:Landroid/graphics/Paint;

.field theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x40000000    # 2.0f

    .line 18
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/ThemeButton;->STROKE_SIZE:F

    .line 20
    new-instance p1, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/ThemeButton;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    .line 21
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/ThemeButton;->paint:Landroid/graphics/Paint;

    .line 26
    new-instance p1, Lcom/brakefield/infinitestudio/ui/ThemeButton$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/ui/ThemeButton$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/ui/ThemeButton;)V

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 33
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/ThemeButton;->getWidth()I

    move-result v0

    .line 34
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/ThemeButton;->getHeight()I

    move-result v1

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 38
    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/ThemeButton;->getPaddingLeft()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 40
    iget v3, p0, Lcom/brakefield/infinitestudio/ui/ThemeButton;->STROKE_SIZE:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 42
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/ThemeButton;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    invoke-static {v3}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->isTheme(Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;)Z

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v3

    .line 44
    :cond_0
    iget v3, p0, Lcom/brakefield/infinitestudio/ui/ThemeButton;->STROKE_SIZE:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 46
    new-instance v10, Landroid/graphics/RectF;

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v4, v0, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v5, v1, v2

    add-float v6, v0, v2

    add-float/2addr v2, v1

    invoke-direct {v10, v4, v5, v6, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 48
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/ThemeButton;->paint:Landroid/graphics/Paint;

    const/16 v4, 0x28

    const/4 v5, 0x0

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/ThemeButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 51
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ThemeButton;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/ThemeButton;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iget v1, v1, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v6, 0x0

    const/high16 v7, 0x42b40000    # 90.0f

    const/4 v8, 0x1

    .line 52
    iget-object v9, p0, Lcom/brakefield/infinitestudio/ui/ThemeButton;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    move-object v5, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 53
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ThemeButton;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/ThemeButton;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iget v1, v1, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->foregroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v6, 0x42b40000    # 90.0f

    .line 54
    iget-object v9, p0, Lcom/brakefield/infinitestudio/ui/ThemeButton;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 55
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ThemeButton;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/ThemeButton;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iget v1, v1, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->iconColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v6, 0x43340000    # 180.0f

    .line 56
    iget-object v9, p0, Lcom/brakefield/infinitestudio/ui/ThemeButton;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 57
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ThemeButton;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/ThemeButton;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iget v1, v1, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->accentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v6, 0x43870000    # 270.0f

    .line 58
    iget-object v9, p0, Lcom/brakefield/infinitestudio/ui/ThemeButton;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public getTheme()Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ThemeButton;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    return-object v0
.end method

.method synthetic lambda$new$0$com-brakefield-infinitestudio-ui-ThemeButton(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/ThemeButton;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeButton;->setPointerIcon(Landroid/view/PointerIcon;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setTheme(IIII)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ThemeButton;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iput p1, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->foregroundColor:I

    .line 68
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/ThemeButton;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iput p2, p1, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->backgroundColor:I

    .line 69
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/ThemeButton;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iput p3, p1, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->iconColor:I

    .line 70
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/ThemeButton;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iput p4, p1, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->accentColor:I

    .line 71
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/ThemeButton;->postInvalidate()V

    return-void
.end method

.method public setTheme(Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/ThemeButton;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    .line 63
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/ThemeButton;->postInvalidate()V

    return-void
.end method
