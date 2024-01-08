.class public Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# static fields
.field private static currentLayer:Landroid/graphics/Bitmap;

.field private static currentStroke:Landroid/graphics/Bitmap;

.field private static currentStrokeCanvas:Landroid/graphics/Canvas;

.field private static sample:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentLayerBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 16
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->currentLayer:Landroid/graphics/Bitmap;

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->w:I

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->h:I

    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->needsRefresh(Landroid/graphics/Bitmap;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->w:I

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->h:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->currentLayer:Landroid/graphics/Bitmap;

    .line 19
    :cond_0
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->currentLayer:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getCurrentStrokeBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 23
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->currentStroke:Landroid/graphics/Bitmap;

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->w:I

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->h:I

    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->needsRefresh(Landroid/graphics/Bitmap;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->w:I

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->h:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->currentStroke:Landroid/graphics/Bitmap;

    .line 25
    new-instance v0, Landroid/graphics/Canvas;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->currentStroke:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->currentStrokeCanvas:Landroid/graphics/Canvas;

    .line 27
    :cond_0
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->currentStroke:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getCurrentStrokeCanvas()Landroid/graphics/Canvas;
    .locals 1

    .line 38
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->getCurrentStrokeBitmap()Landroid/graphics/Bitmap;

    .line 39
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->currentStrokeCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public static getSampleBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 31
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->sample:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->needsRefresh(Landroid/graphics/Bitmap;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->sample:Landroid/graphics/Bitmap;

    .line 34
    :cond_0
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->sample:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private static needsRefresh(Landroid/graphics/Bitmap;II)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 45
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 47
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static setCurrentLayerBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 51
    sput-object p0, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->currentLayer:Landroid/graphics/Bitmap;

    return-void
.end method
