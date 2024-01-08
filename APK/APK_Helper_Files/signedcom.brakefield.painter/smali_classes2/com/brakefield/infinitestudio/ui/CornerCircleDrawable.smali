.class public Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CornerCircleDrawable.java"


# instance fields
.field private corner:F

.field private paint:Landroid/graphics/Paint;

.field private shadow:Landroid/graphics/Paint;

.field private shadowSize:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->shadow:Landroid/graphics/Paint;

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v0, 0x40800000    # 4.0f

    .line 21
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->shadowSize:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 22
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->corner:F

    .line 25
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->init(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 28
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->shadow:Landroid/graphics/Paint;

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v0, 0x40800000    # 4.0f

    .line 21
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->shadowSize:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 22
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->corner:F

    .line 29
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->init(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 39
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 46
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->shadowSize:F

    mul-float/2addr v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v3, v2

    const/4 v2, 0x0

    :goto_0
    int-to-float v4, v2

    .line 48
    iget v5, p0, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->shadowSize:F

    cmpg-float v6, v4, v5

    if-gez v6, :cond_1

    .line 49
    iget-object v5, p0, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->shadow:Landroid/graphics/Paint;

    mul-float/2addr v4, v3

    add-float/2addr v4, v3

    float-to-int v4, v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 50
    invoke-virtual {v0, v4, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 51
    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->shadow:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v1, v5, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 56
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v2, 0xff

    if-ge v0, v2, :cond_2

    .line 57
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->paint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 58
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 59
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 3

    .line 77
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->shadowSize:F

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->corner:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p1, v1, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return v1
.end method

.method public init(I)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->shadow:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
