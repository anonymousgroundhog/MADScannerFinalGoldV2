.class public Lcom/brakefield/infinitestudio/ui/TiledImageView;
.super Landroid/widget/ImageView;
.source "TiledImageView.java"


# instance fields
.field paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/TiledImageView;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/TiledImageView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/TiledImageView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/TiledImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/TiledImageView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/TiledImageView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/TiledImageView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 46
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/TiledImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/TiledImageView;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 38
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/TiledImageView;->postInvalidate()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 27
    :cond_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 28
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/TiledImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
