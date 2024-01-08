.class public Lcom/brakefield/infinitestudio/ui/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLORDRAWABLE_DIMENSION:I = 0x2

.field private static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field private static final DEFAULT_BORDER_OVERLAY:Z

.field private static final DEFAULT_BORDER_WIDTH:I

.field private static final DEFAULT_FILL_COLOR:I

.field private static final SCALE_TYPE:Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mBorderColor:I

.field private mBorderOverlay:Z

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mBorderRadius:F

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDisableCircularTransformation:Z

.field private mDrawableRadius:F

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mFillColor:I

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mReady:Z

.field private mSetupPending:Z

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    .line 51
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 60
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 62
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 63
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 64
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 65
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    const/high16 p1, -0x1000000

    .line 67
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderColor:I

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderWidth:I

    .line 69
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mFillColor:I

    .line 88
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, p2, v0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 62
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    .line 67
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderColor:I

    const/4 v1, 0x0

    .line 68
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderWidth:I

    .line 69
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mFillColor:I

    .line 98
    sget-object v2, Lcom/brakefield/infinitestudio/R$styleable;->CircleImageView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 100
    sget p2, Lcom/brakefield/infinitestudio/R$styleable;->CircleImageView_civ_border_width:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderWidth:I

    .line 101
    sget p2, Lcom/brakefield/infinitestudio/R$styleable;->CircleImageView_civ_border_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderColor:I

    .line 102
    sget p2, Lcom/brakefield/infinitestudio/R$styleable;->CircleImageView_civ_border_overlay:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderOverlay:Z

    .line 103
    sget p2, Lcom/brakefield/infinitestudio/R$styleable;->CircleImageView_civ_fill_color:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mFillColor:I

    .line 105
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->init()V

    return-void
.end method

.method private applyColorFilter()V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 325
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    return-void
.end method

.method private calculateBounds()Landroid/graphics/RectF;
    .locals 5

    .line 413
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 414
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 416
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 418
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    add-float/2addr v3, v0

    .line 419
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    .line 421
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v2

    add-float v4, v3, v2

    add-float/2addr v2, v0

    invoke-direct {v1, v3, v0, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 334
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 335
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 341
    :cond_1
    :try_start_0
    instance-of v1, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    .line 342
    sget-object v1, Lcom/brakefield/infinitestudio/ui/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x2

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 344
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Lcom/brakefield/infinitestudio/ui/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 347
    :goto_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 348
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 349
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 352
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private init()V
    .locals 1

    .line 111
    sget-object v0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mReady:Z

    .line 114
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mSetupPending:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->setup()V

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mSetupPending:Z

    :cond_0
    return-void
.end method

.method private initializeBitmap()V
    .locals 1

    .line 358
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mDisableCircularTransformation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 359
    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 363
    :goto_0
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->setup()V

    return-void
.end method

.method private setup()V
    .locals 5

    .line 367
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 368
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mSetupPending:Z

    return-void

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 377
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->invalidate()V

    return-void

    .line 381
    :cond_2
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 383
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 384
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 386
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 387
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 388
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 391
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 392
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 393
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mFillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 395
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBitmapHeight:I

    .line 396
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBitmapWidth:I

    .line 398
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->calculateBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 399
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderRadius:F

    .line 401
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 402
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderOverlay:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderWidth:I

    if-lez v0, :cond_3

    .line 403
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    int-to-float v0, v0

    sub-float/2addr v0, v4

    invoke-virtual {v2, v3, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 405
    :cond_3
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mDrawableRadius:F

    .line 407
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->applyColorFilter()V

    .line 408
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->updateShaderMatrix()V

    .line 409
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->invalidate()V

    return-void
.end method

.method private updateShaderMatrix()V
    .locals 6

    .line 429
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 431
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBitmapWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBitmapHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBitmapHeight:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 433
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    move v5, v3

    move v3, v2

    move v2, v5

    goto :goto_0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBitmapWidth:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 436
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    .line 439
    :goto_0
    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 440
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float/2addr v2, v1

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v4

    add-float/2addr v3, v1

    float-to-int v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 442
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderColor:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderWidth:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getFillColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mFillColor:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 122
    sget-object v0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public isBorderOverlay()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderOverlay:Z

    return v0
.end method

.method public isDisableCircularTransformation()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mDisableCircularTransformation:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 141
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mDisableCircularTransformation:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return-void

    .line 150
    :cond_1
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mFillColor:I

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mDrawableRadius:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mDrawableRadius:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 154
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderWidth:I

    if-lez v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderRadius:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 162
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->setup()V

    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 135
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "adjustViewBounds not supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 182
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderColor:I

    if-ne p1, v0, :cond_0

    return-void

    .line 186
    :cond_0
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderColor:I

    .line 187
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->invalidate()V

    return-void
.end method

.method public setBorderColorResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->setBorderColor(I)V

    return-void
.end method

.method public setBorderOverlay(Z)V
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderOverlay:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 266
    :cond_0
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderOverlay:Z

    .line 267
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->setup()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 249
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderWidth:I

    if-ne p1, v0, :cond_0

    return-void

    .line 253
    :cond_0
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mBorderWidth:I

    .line 254
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->setup()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_0

    return-void

    .line 313
    :cond_0
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 314
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->applyColorFilter()V

    .line 315
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->invalidate()V

    return-void
.end method

.method public setDisableCircularTransformation(Z)V
    .locals 1

    .line 275
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mDisableCircularTransformation:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 279
    :cond_0
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mDisableCircularTransformation:Z

    .line 280
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mFillColor:I

    if-ne p1, v0, :cond_0

    return-void

    .line 225
    :cond_0
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mFillColor:I

    .line 226
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->invalidate()V

    return-void
.end method

.method public setFillColorResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->setFillColor(I)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 285
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 286
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 291
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 297
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 303
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 304
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 168
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->setup()V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 174
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/CircleImageView;->setup()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    .line 127
    sget-object v0, Lcom/brakefield/infinitestudio/ui/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    return-void

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ScaleType %s not supported."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
