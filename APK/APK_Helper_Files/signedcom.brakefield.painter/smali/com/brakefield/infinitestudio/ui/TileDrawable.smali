.class public Lcom/brakefield/infinitestudio/ui/TileDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TileDrawable.java"


# instance fields
.field private corner:F

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/TileDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v0, 0x40400000    # 3.0f

    .line 17
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/TileDrawable;->corner:F

    .line 20
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTileColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/ui/TileDrawable;->setup(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 23
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/TileDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v0, 0x40400000    # 3.0f

    .line 17
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/TileDrawable;->corner:F

    .line 24
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/TileDrawable;->setup(I)V

    return-void
.end method

.method private setup(I)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/TileDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 34
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/TileDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 39
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

    .line 42
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/TileDrawable;->corner:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/TileDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
