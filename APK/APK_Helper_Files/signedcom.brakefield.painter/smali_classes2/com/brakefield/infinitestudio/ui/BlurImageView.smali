.class public Lcom/brakefield/infinitestudio/ui/BlurImageView;
.super Lcom/google/android/material/imageview/ShapeableImageView;
.source "BlurImageView.java"


# instance fields
.field private blurredDrawable:Landroid/graphics/drawable/Drawable;

.field private originalDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/imageview/ShapeableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/imageview/ShapeableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 3

    if-eqz p1, :cond_2

    .line 54
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 56
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 57
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 59
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 61
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public blurImage()V
    .locals 3

    .line 29
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/BlurImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/BlurImageView;->originalDrawable:Landroid/graphics/drawable/Drawable;

    .line 32
    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/BlurImageView;->blurredDrawable:Landroid/graphics/drawable/Drawable;

    return-void

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/BlurImageView;->blurredDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    .line 36
    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/BlurImageView;->originalDrawable:Landroid/graphics/drawable/Drawable;

    .line 37
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/ui/BlurImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/BlurImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v1, v0, v2}, Lcom/brakefield/infinitestudio/ui/RenderScriptHelper;->extremeBlur(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 41
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/BlurImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/ui/BlurImageView;->blurredDrawable:Landroid/graphics/drawable/Drawable;

    .line 42
    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/ui/BlurImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    new-instance p1, Lcom/brakefield/infinitestudio/ui/BlurImageView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/ui/BlurImageView$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/ui/BlurImageView;)V

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/BlurImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
