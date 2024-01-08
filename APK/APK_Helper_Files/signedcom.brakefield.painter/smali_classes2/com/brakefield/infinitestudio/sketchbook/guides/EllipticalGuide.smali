.class public Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;
.super Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;
.source "EllipticalGuide.java"


# static fields
.field private static final ROTATE:I = 0x4

.field private static final SCALE_X:I = 0x2

.field private static final SCALE_Y:I = 0x3

.field static angle:F

.field static scale:Lcom/brakefield/infinitestudio/geometry/Point;

.field static scaleX:Lcom/brakefield/infinitestudio/geometry/Point;

.field static scaleY:Lcom/brakefield/infinitestudio/geometry/Point;


# instance fields
.field private focal:Z

.field private rotateDrawable:Landroid/graphics/drawable/Drawable;

.field private scaleAngle:F

.field private scaleR:F

.field private scaleXDrawable:Landroid/graphics/drawable/Drawable;

.field private scaleYDrawable:Landroid/graphics/drawable/Drawable;

.field private slideLine:Lcom/brakefield/infinitestudio/geometry/Line;

.field textPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 46
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->textPaint:Landroid/graphics/Paint;

    .line 48
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v0, v0

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v1

    div-float/2addr v0, v1

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float v1, v1

    .line 49
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v2

    div-float/2addr v1, v2

    .line 48
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    .line 50
    sput v1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->angle:F

    .line 52
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    sput-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 53
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v0, v0, 0x3

    add-int/2addr v3, v0

    int-to-float v3, v3

    sget v4, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v0

    int-to-float v0, v4

    invoke-direct {v2, v3, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    sput-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 55
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v1, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scaleX:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 56
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v1, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scaleY:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 58
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 61
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 63
    sget-object v0, Lcom/brakefield/infinitestudio/Main;->res:Landroid/content/res/Resources;

    sget v1, Lcom/brakefield/infinitestudio/R$drawable;->guide_rotate:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->rotateDrawable:Landroid/graphics/drawable/Drawable;

    .line 64
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->knobSize:I

    neg-int v1, v1

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->knobSize:I

    neg-int v2, v2

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->knobSize:I

    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->knobSize:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 66
    sget-object v0, Lcom/brakefield/infinitestudio/Main;->res:Landroid/content/res/Resources;

    sget v1, Lcom/brakefield/infinitestudio/R$drawable;->scale_in:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scaleXDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->knobSize:I

    neg-int v1, v1

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->knobSize:I

    neg-int v2, v2

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->knobSize:I

    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->knobSize:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    sget-object v0, Lcom/brakefield/infinitestudio/Main;->res:Landroid/content/res/Resources;

    sget v1, Lcom/brakefield/infinitestudio/R$drawable;->scale:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scaleYDrawable:Landroid/graphics/drawable/Drawable;

    .line 70
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->knobSize:I

    neg-int v1, v1

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->knobSize:I

    neg-int v2, v2

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->knobSize:I

    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->knobSize:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 72
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->rotateDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 73
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scaleXDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 74
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scaleYDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private getA()F
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 563
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v3, 0x1

    aput v1, v0, v3

    aget v0, v0, v2

    .line 564
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method private getB()F
    .locals 2

    .line 558
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 559
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 27

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 319
    iget-boolean v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->set:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->setting:Z

    if-nez v0, :cond_0

    return-void

    .line 322
    :cond_0
    iget-boolean v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->snapping:Z

    if-eqz v0, :cond_1

    .line 323
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->snapX:F

    iget v2, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->snapY:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 324
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 326
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v7, v8, v1, v0}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->drawHint(Landroid/graphics/Canvas;FF)V

    return-void

    .line 330
    :cond_1
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 334
    :cond_2
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getRotationInDegrees()F

    move-result v6

    .line 335
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v0

    .line 337
    new-instance v9, Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v9, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 338
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 340
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v4, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 341
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    const/high16 v3, 0x42200000    # 40.0f

    .line 343
    invoke-static {v3}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v3

    div-float/2addr v3, v0

    .line 345
    iget v4, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v5, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 346
    iget v5, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v10, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v10, v5, v4

    if-lez v10, :cond_3

    .line 349
    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v10, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v10, v4

    iput v10, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    move v5, v4

    :cond_3
    const/4 v10, 0x0

    cmpl-float v11, v4, v10

    if-lez v11, :cond_4

    div-float v11, v5, v4

    mul-float/2addr v11, v3

    sub-float/2addr v5, v11

    :cond_4
    sub-float/2addr v4, v3

    cmpg-float v3, v5, v10

    if-gez v3, :cond_5

    move v5, v10

    :cond_5
    cmpg-float v3, v4, v10

    if-gez v3, :cond_6

    goto :goto_0

    :cond_6
    move v10, v4

    .line 359
    :goto_0
    iget v3, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    mul-float/2addr v5, v0

    sub-float/2addr v3, v5

    .line 360
    iget v4, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    mul-float/2addr v10, v0

    add-float/2addr v4, v10

    .line 361
    iget v0, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v0, v5

    .line 362
    iget v5, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v5, v10

    .line 364
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 365
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    cmpg-float v1, v0, v3

    if-gez v1, :cond_7

    move v10, v0

    move v11, v3

    goto :goto_1

    :cond_7
    move v11, v0

    move v10, v3

    :goto_1
    cmpg-float v0, v5, v4

    if-gez v0, :cond_8

    move v13, v4

    move v12, v5

    goto :goto_2

    :cond_8
    move v12, v4

    move v13, v5

    .line 392
    :goto_2
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->angle:F

    .line 393
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isFlipped()Z

    move-result v1

    if-eqz v1, :cond_9

    neg-float v0, v0

    :cond_9
    move v14, v0

    .line 396
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    .line 397
    iget v0, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v15, v14, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->getScaleMinorPoint()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    const/4 v5, 0x2

    new-array v1, v5, [F

    .line 400
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/16 v16, 0x0

    aput v3, v1, v16

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/16 v17, 0x1

    aput v0, v1, v17

    .line 401
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 402
    invoke-virtual {v15, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v0, v1, v16

    float-to-int v0, v0

    aget v1, v1, v17

    float-to-int v1, v1

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->getRotatePoint()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v3

    new-array v4, v5, [F

    .line 407
    iget v5, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v5, v4, v16

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v3, v4, v17

    .line 408
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 409
    invoke-virtual {v15, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v3, v4, v16

    float-to-int v5, v3

    aget v3, v4, v17

    float-to-int v4, v3

    .line 413
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Line;

    move/from16 v18, v4

    int-to-float v4, v0

    move/from16 v19, v5

    int-to-float v5, v1

    move-object/from16 v20, v15

    iget v15, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    move/from16 v21, v10

    iget v10, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v3, v4, v5, v15, v10}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 414
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v3

    .line 416
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Point;

    move v15, v11

    int-to-double v10, v0

    sget v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    move/from16 v22, v12

    move/from16 v23, v13

    int-to-double v12, v0

    move-object/from16 v24, v9

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    mul-double v12, v12, v25

    sub-double/2addr v10, v12

    double-to-float v0, v10

    int-to-double v10, v1

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-double v12, v1

    .line 417
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    mul-double v12, v12, v25

    sub-double/2addr v10, v12

    double-to-float v1, v10

    invoke-direct {v4, v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 418
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v10, v1

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-double v12, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    mul-double v12, v12, v25

    add-double/2addr v10, v12

    double-to-float v1, v10

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v2, v2

    sget v5, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-double v10, v5

    .line 419
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v10, v8

    add-double/2addr v2, v10

    double-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 421
    iget v1, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v5, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->guideStroke:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v8, v18

    move/from16 v9, v19

    const/4 v10, 0x2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 423
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-float v11, v6, v14

    move-object/from16 v0, v24

    .line 425
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    move-object/from16 v12, p1

    invoke-virtual {v12, v11, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 427
    new-instance v1, Landroid/graphics/RectF;

    move v2, v15

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v5, v23

    invoke-direct {v1, v3, v4, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v6, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1, v6}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 428
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v3, v4, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 429
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 431
    iget-object v2, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->moveDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v5, 0x0

    iget-object v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v0, v1, :cond_a

    move/from16 v6, v17

    goto :goto_3

    :cond_a
    move/from16 v6, v16

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->getScaleMinorPoint()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 434
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    new-array v1, v10, [F

    .line 436
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v2, v1, v16

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v0, v1, v17

    move-object/from16 v13, v20

    .line 437
    invoke-virtual {v13, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v3, v1, v16

    aget v4, v1, v17

    .line 441
    iget-object v2, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scaleXDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scaleX:Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v0, v1, :cond_b

    move/from16 v6, v17

    goto :goto_4

    :cond_b
    move/from16 v6, v16

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v5, v11

    invoke-virtual/range {v0 .. v6}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->getScalePoint()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 444
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    new-array v1, v10, [F

    .line 446
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v2, v1, v16

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v0, v1, v17

    .line 447
    invoke-virtual {v13, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v3, v1, v16

    aget v4, v1, v17

    .line 451
    iget-object v2, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scaleYDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scaleY:Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v0, v1, :cond_c

    move/from16 v6, v17

    goto :goto_5

    :cond_c
    move/from16 v6, v16

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v5, v11

    invoke-virtual/range {v0 .. v6}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    .line 453
    iget-object v2, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->rotateDrawable:Landroid/graphics/drawable/Drawable;

    int-to-float v3, v9

    int-to-float v4, v8

    const/4 v5, 0x0

    iget-object v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_d

    iget v0, v7, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    move/from16 v6, v17

    goto :goto_6

    :cond_d
    move/from16 v6, v16

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    return-void
.end method

.method public drawHint(Landroid/graphics/Canvas;FF)V
    .locals 10

    .line 657
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->set:Z

    if-eqz v0, :cond_0

    return-void

    .line 660
    :cond_0
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->snapping:Z

    if-eqz v0, :cond_2

    .line 662
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->downX:F

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->downY:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 663
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 665
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->snapping:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->focal:Z

    if-nez v1, :cond_1

    .line 666
    invoke-super {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->drawHint(Landroid/graphics/Canvas;FF)V

    .line 668
    iget p2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 669
    iget p3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto :goto_0

    .line 672
    :cond_1
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-super {p0, p1, v1, v0}, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->drawHint(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    .line 676
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->drawHint(Landroid/graphics/Canvas;FF)V

    .line 679
    :goto_0
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p2, p3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 680
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 682
    sget p2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->angle:F

    .line 683
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isFlipped()Z

    move-result p3

    if-eqz p3, :cond_3

    neg-float p2, p2

    .line 686
    :cond_3
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    neg-float v1, p2

    .line 687
    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {p3, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 688
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 689
    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 690
    new-instance p3, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v2, v1, v3

    aget v1, v1, v4

    invoke-direct {p3, v2, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 691
    invoke-virtual {p0, p3}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->getCentroidIntersect(Lcom/brakefield/infinitestudio/geometry/Point;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object p3

    .line 692
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, v2, p3}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 693
    new-instance p3, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {p3, v2, v0}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 694
    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result p3

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v1

    div-float/2addr p3, v1

    .line 696
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 697
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v4, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 699
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v4, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v3, v4, v5}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 700
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 702
    iget v4, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v6, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v6

    mul-float/2addr v5, v6

    mul-float/2addr v5, p3

    sub-float/2addr v4, v5

    .line 703
    iget v5, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v6, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v7, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v7

    mul-float/2addr v6, v7

    mul-float/2addr v6, p3

    add-float/2addr v5, v6

    .line 704
    iget v6, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v7, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v8, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v8

    mul-float/2addr v7, v8

    mul-float/2addr v7, p3

    add-float/2addr v6, v7

    .line 705
    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v7, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v8, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v8

    mul-float/2addr v7, v8

    mul-float/2addr v7, p3

    sub-float/2addr v3, v7

    .line 707
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 708
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    cmpg-float p3, v6, v4

    if-gez p3, :cond_4

    move v9, v6

    move v6, v4

    move v4, v9

    :cond_4
    cmpg-float p3, v3, v5

    if-gez p3, :cond_5

    move v9, v5

    move v5, v3

    move v3, v9

    .line 722
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 723
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getRotationInDegrees()F

    move-result p3

    add-float/2addr p3, p2

    iget p2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {p1, p3, p2, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 724
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, v4, v5, v6, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->cursorStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 725
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 727
    new-instance p1, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object p3, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p3, p3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {p1, p2, p3, v1, v0}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    return-void
.end method

.method public getCentroidIntersect(Lcom/brakefield/infinitestudio/geometry/Point;)Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 11

    .line 569
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v0, v1

    .line 570
    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v1, v2

    float-to-double v2, v0

    const/high16 v4, -0x80000000

    float-to-double v4, v4

    .line 571
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    float-to-double v6, v1

    .line 572
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    add-double/2addr v2, v8

    double-to-float v1, v2

    neg-float v0, v0

    float-to-double v2, v0

    .line 573
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    .line 574
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v6, v4

    add-double/2addr v2, v6

    double-to-float v0, v2

    .line 575
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->getA()F

    move-result v2

    .line 576
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->getB()F

    move-result v3

    mul-float v4, v2, v2

    mul-float/2addr v4, v0

    mul-float/2addr v4, v0

    mul-float v5, v3, v3

    mul-float/2addr v5, v1

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    float-to-double v4, v4

    .line 577
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v2, v3

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    mul-float/2addr v2, v0

    div-float/2addr v2, v4

    float-to-double v3, v1

    const/4 v0, 0x0

    float-to-double v5, v0

    .line 581
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v3, v7

    float-to-double v7, v2

    .line 582
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    add-double/2addr v3, v9

    double-to-float v0, v3

    neg-float v1, v1

    float-to-double v1, v1

    .line 583
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    .line 584
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v7, v3

    add-double/2addr v1, v7

    double-to-float v1, v1

    .line 585
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    neg-float v3, v0

    sget-object v4, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v3, v4

    neg-float v4, v1

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 586
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v4, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v0, v4

    sget-object v4, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v1, v4

    invoke-direct {v3, v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 587
    iget v0, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v0, v1, v2, v4}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    .line 588
    iget v0, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v2, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v0, v1, v2, p1}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    return-object v3
.end method

.method public getEllipticalPoint(D)Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 6

    .line 536
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v0, v0

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->getA()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr p1, v4

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 537
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v1, v1

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->getB()F

    move-result v3

    float-to-double v3, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double/2addr v3, p1

    add-double/2addr v1, v3

    double-to-float p1, v1

    .line 538
    new-instance p2, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {p2, v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object p2
.end method

.method public getJSON()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 746
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 747
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v1, v1

    const-string/jumbo v3, "x1"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 748
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v1, v1

    const-string/jumbo v3, "y1"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 749
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v1, v1

    const-string/jumbo v3, "x2"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 750
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v1, v1

    const-string/jumbo v3, "y2"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 751
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->angle:F

    float-to-double v1, v1

    const-string v3, "angle"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRotatePoint()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 2

    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    .line 543
    invoke-virtual {p0, v0, v1}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->getEllipticalPoint(D)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public getScaleMinorPoint()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 2

    const-wide/16 v0, 0x0

    .line 553
    invoke-virtual {p0, v0, v1}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->getEllipticalPoint(D)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public getScalePoint()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 2

    const-wide/high16 v0, -0x4030000000000000L    # -0.25

    .line 548
    invoke-virtual {p0, v0, v1}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->getEllipticalPoint(D)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public load(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 757
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "x1"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 758
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "y1"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 759
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "x2"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 760
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "y2"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const-string v0, "angle"

    .line 761
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float p1, v0

    sput p1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->angle:F

    return-void
.end method

.method public onDown(FF)Z
    .locals 11

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->type:I

    .line 82
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->snapping:Z

    .line 84
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->set:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 85
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 86
    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 87
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->setting:Z

    return v2

    .line 91
    :cond_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 92
    sget v3, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->angle:F

    sget-object v4, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v1, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v3, 0x2

    new-array v4, v3, [F

    .line 93
    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v5, v4, v0

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v5, v4, v2

    .line 94
    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v5, v4, v0

    aget v4, v4, v2

    const/4 v4, 0x0

    .line 97
    iput-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 98
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->getScaleMinorPoint()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v4

    new-array v5, v3, [F

    .line 99
    iget v6, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v6, v5, v0

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v4, v5, v2

    .line 100
    invoke-virtual {v1, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v4, v5, v0

    float-to-int v4, v4

    aget v5, v5, v2

    float-to-int v5, v5

    .line 103
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->getScalePoint()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v6

    new-array v7, v3, [F

    .line 104
    iget v8, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v8, v7, v0

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v6, v7, v2

    .line 105
    invoke-virtual {v1, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v6, v7, v0

    float-to-int v6, v6

    aget v7, v7, v2

    float-to-int v7, v7

    .line 108
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->getRotatePoint()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v8

    new-array v9, v3, [F

    .line 109
    iget v10, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v10, v9, v0

    iget v10, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v10, v9, v2

    .line 110
    invoke-virtual {v1, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v1, v9, v0

    float-to-int v1, v1

    aget v9, v9, v2

    float-to-int v9, v9

    int-to-float v6, v6

    int-to-float v7, v7

    .line 114
    invoke-static {p1, p2, v6, v7}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v6

    sget v7, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    .line 115
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v10

    div-float/2addr v7, v10

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 117
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scaleY:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v1, 0x3

    .line 118
    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->type:I

    goto :goto_0

    :cond_1
    int-to-float v4, v4

    int-to-float v5, v5

    .line 120
    invoke-static {p1, p2, v4, v5}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v4

    sget v5, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    .line 121
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v6

    div-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 123
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scaleX:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 124
    iput v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->type:I

    goto :goto_0

    .line 126
    :cond_2
    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v4, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v3, v4}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v3

    sget v4, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    .line 127
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v5

    div-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 129
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    goto :goto_0

    :cond_3
    int-to-float v1, v1

    int-to-float v3, v9

    .line 131
    invoke-static {p1, p2, v1, v3}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v1

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    .line 132
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v4

    div-float/2addr v3, v4

    cmpg-float v1, v1, v3

    if-gez v1, :cond_4

    .line 134
    iput-object v8, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v1, 0x4

    .line 135
    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->type:I

    .line 141
    :cond_4
    :goto_0
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->setStartDistance(Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 143
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->downX:F

    .line 144
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->downY:F

    .line 146
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->snapX:F

    .line 147
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->snapY:F

    .line 149
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz p1, :cond_5

    move v0, v2

    :cond_5
    return v0
.end method

.method public onMove(FF)Z
    .locals 11

    .line 155
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->snapX:F

    .line 156
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->snapY:F

    .line 158
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->set:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v3, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-direct {v0, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 162
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result p1

    .line 164
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result p2

    float-to-double v2, p2

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float p2, v2

    sput p2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->angle:F

    .line 166
    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    iput v0, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 167
    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v0, p1

    iput v0, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    return v1

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_e

    .line 173
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v0, v5, :cond_6

    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->type:I

    if-eq v0, v1, :cond_6

    .line 175
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->downX:F

    iget v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->downY:F

    invoke-static {p1, p2, v0, v5}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    sget v5, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    div-float/2addr v5, v2

    .line 176
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v2

    div-float/2addr v5, v2

    cmpl-float v0, v0, v5

    if-lez v0, :cond_5

    .line 179
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v6, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget v7, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->angle:F

    float-to-double v7, v7

    .line 180
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    const v8, 0x461c4000    # 10000.0f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    sget-object v7, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v7, v7, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget v9, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->angle:F

    float-to-double v9, v9

    .line 181
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v8

    add-float/2addr v7, v9

    invoke-direct {v5, v6, v7}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-direct {v0, v2, v5}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 183
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->downX:F

    iget v6, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->downY:F

    invoke-direct {v2, v5, v6, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 185
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 186
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v2

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v2, v6

    sub-float/2addr v5, v2

    .line 188
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v5, 0x43b40000    # 360.0f

    rem-float/2addr v2, v5

    const/high16 v6, 0x43340000    # 180.0f

    cmpl-float v6, v2, v6

    if-lez v6, :cond_1

    sub-float v2, v5, v2

    :cond_1
    const/high16 v5, 0x41f00000    # 30.0f

    cmpg-float v5, v2, v5

    if-ltz v5, :cond_3

    const/high16 v5, 0x43160000    # 150.0f

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_4

    .line 194
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->slideLine:Lcom/brakefield/infinitestudio/geometry/Line;

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->slideLine:Lcom/brakefield/infinitestudio/geometry/Line;

    .line 198
    :goto_2
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v2, v5}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 199
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v2

    iput v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scaleR:F

    .line 200
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scaleAngle:F

    .line 201
    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->type:I

    goto :goto_3

    :cond_5
    return v1

    .line 205
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v0, v2, :cond_7

    .line 206
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 207
    sget v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->angle:F

    neg-float v2, v2

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v6, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v0, v2, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    new-array v2, v3, [F

    aput p1, v2, v4

    aput p2, v2, v1

    .line 209
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p1, v2, v4

    float-to-int p1, p1

    aget p2, v2, v1

    float-to-int p2, p2

    .line 212
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    int-to-float p1, p1

    iput p1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 213
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    int-to-float p2, p2

    iput p2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto/16 :goto_4

    .line 214
    :cond_7
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scaleX:Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v0, v2, :cond_9

    .line 216
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 217
    sget v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->angle:F

    neg-float v2, v2

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v6, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v0, v2, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    new-array v2, v3, [F

    aput p1, v2, v4

    aput p2, v2, v1

    .line 219
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p1, v2, v4

    float-to-int p1, p1

    .line 221
    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    int-to-float p1, p1

    iput p1, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 223
    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr p1, p2

    .line 225
    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr p2, v0

    cmpg-float p2, p2, p1

    if-gez p2, :cond_8

    .line 226
    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v0, p1

    iput v0, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    goto/16 :goto_4

    .line 227
    :cond_8
    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr p2, v0

    neg-float v0, p1

    cmpl-float p2, p2, v0

    if-lez p2, :cond_d

    .line 228
    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v0, p1

    iput v0, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    goto/16 :goto_4

    .line 230
    :cond_9
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scaleY:Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v0, v2, :cond_a

    .line 232
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v0, v2

    .line 233
    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v2, v5

    .line 235
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 236
    sget v6, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->angle:F

    neg-float v6, v6

    sget-object v7, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v7, v7, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v8, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v8, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    new-array v3, v3, [F

    aput p1, v3, v4

    aput p2, v3, v1

    .line 238
    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p1, v3, v1

    float-to-int p1, p1

    .line 240
    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    int-to-float p1, p1

    iput p1, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 242
    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr p1, p2

    .line 243
    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 244
    invoke-static {v0, p1, v2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->getAdjustedValue(FFF)F

    move-result p1

    add-float/2addr p2, p1

    .line 245
    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    goto/16 :goto_4

    .line 248
    :cond_a
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->type:I

    if-ne v0, v1, :cond_c

    .line 249
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->slideLine:Lcom/brakefield/infinitestudio/geometry/Line;

    if-eqz v0, :cond_b

    .line 250
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 251
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->slideLine:Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/geometry/Line;->snap(Lcom/brakefield/infinitestudio/geometry/Line;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 252
    iget p1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 253
    iget p2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 255
    :cond_b
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 256
    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 257
    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v2, p2

    iget p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scaleR:F

    float-to-double v4, p2

    iget p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scaleAngle:F

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float p2, v2

    iput p2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 258
    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v2, p2

    iget p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scaleR:F

    float-to-double v4, p2

    iget p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scaleAngle:F

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float p2, v2

    iput p2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto :goto_4

    .line 259
    :cond_c
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->type:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_d

    .line 261
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->getRotatePoint()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 262
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 263
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v4, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-direct {v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 264
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-float p1, p1

    sub-float/2addr p1, v0

    sput p1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->angle:F

    :cond_d
    :goto_4
    return v1

    .line 269
    :cond_e
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->snapping:Z

    if-nez v0, :cond_10

    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->downX:F

    iget v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->downY:F

    .line 270
    invoke-static {v0, v5, p1, p2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    sget v5, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    .line 271
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v6

    div-float/2addr v5, v6

    cmpl-float v0, v0, v5

    if-lez v0, :cond_10

    .line 273
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->snapping:Z

    .line 275
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 276
    sget v5, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->angle:F

    neg-float v5, v5

    sget-object v6, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v7, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v7, v7, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v0, v5, v6, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    new-array v3, v3, [F

    aput p1, v3, v4

    aput p2, v3, v1

    .line 278
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 279
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v5, v3, v4

    aget v3, v3, v1

    invoke-direct {v0, v5, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 280
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->getCentroidIntersect(Lcom/brakefield/infinitestudio/geometry/Point;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v3

    .line 281
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v5, v3, v0}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 282
    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    .line 283
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v5, v3}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 284
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    new-instance v6, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v6, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-direct {v3, v5, v6}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 285
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v3

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v0

    div-float/2addr v3, v0

    .line 287
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->startDistance:F

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 290
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v6, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v7, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->downX:F

    iget v8, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->downY:F

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v5, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-static {v3, v5}, Lcom/brakefield/infinitestudio/geometry/Line;->distanceFromLine(Lcom/brakefield/infinitestudio/geometry/Line;Lcom/brakefield/infinitestudio/geometry/Point;)F

    move-result p1

    .line 293
    sget p2, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    mul-float/2addr v0, p2

    mul-float/2addr v0, v2

    cmpg-float p1, p1, v0

    if-gez p1, :cond_f

    goto :goto_5

    :cond_f
    move v1, v4

    :goto_5
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->focal:Z

    if-eqz v1, :cond_10

    .line 296
    new-instance p1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->downX:F

    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->downY:F

    invoke-direct {p1, p2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->setStartDistance(Lcom/brakefield/infinitestudio/geometry/Point;)V

    :cond_10
    return v4
.end method

.method public onUp()Z
    .locals 2

    const/4 v0, 0x0

    .line 304
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->snapping:Z

    .line 305
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->set:Z

    .line 306
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->setting:Z

    .line 308
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 309
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setStartDistance(Lcom/brakefield/infinitestudio/geometry/Point;)V
    .locals 5

    .line 598
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 599
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->angle:F

    neg-float v1, v1

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 600
    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 601
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 602
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v2, v1, v3

    aget v1, v1, v4

    invoke-direct {v0, v2, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 603
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->getCentroidIntersect(Lcom/brakefield/infinitestudio/geometry/Point;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    .line 604
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v2, v1, v0}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 605
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v2, v1}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 606
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, v2, p1}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 607
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result p1

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->startDistance:F

    return-void
.end method

.method public snap(Lcom/brakefield/infinitestudio/geometry/Point;)Z
    .locals 14

    .line 488
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->snap:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->snapping:Z

    if-nez v0, :cond_0

    .line 489
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->downX:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 490
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->downY:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    return v1

    .line 494
    :cond_0
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->snapping:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 496
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->focal:Z

    if-eqz v0, :cond_1

    .line 497
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->snap(Lcom/brakefield/infinitestudio/geometry/Point;)Z

    move-result p1

    return p1

    .line 500
    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 501
    sget v3, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->angle:F

    neg-float v3, v3

    sget-object v4, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v3, 0x2

    new-array v4, v3, [F

    .line 502
    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v5, v4, v2

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v5, v4, v1

    .line 503
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 504
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v5, v4, v2

    aget v4, v4, v1

    invoke-direct {v0, v5, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 505
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->getCentroidIntersect(Lcom/brakefield/infinitestudio/geometry/Point;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 507
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v4, v5, v0}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 509
    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v0

    iget v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->startDistance:F

    mul-float/2addr v0, v5

    .line 510
    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v4

    .line 512
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v6, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v6, v6

    float-to-double v8, v0

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v8

    add-double/2addr v6, v12

    double-to-float v0, v6

    sget-object v4, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v6, v4

    .line 513
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v4, v6

    invoke-direct {v5, v0, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 522
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 523
    sget v4, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->angle:F

    sget-object v6, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v7, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v7, v7, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v0, v4, v6, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    new-array v3, v3, [F

    .line 524
    iget v4, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v4, v3, v2

    iget v4, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v4, v3, v1

    .line 525
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v0, v3, v2

    .line 526
    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aget v0, v3, v1

    .line 527
    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    return v1

    :cond_2
    return v2
.end method

.method public snapIn(Lcom/brakefield/infinitestudio/geometry/Point;)V
    .locals 10

    .line 633
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 634
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->angle:F

    neg-float v1, v1

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 635
    iget v3, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v5, 0x1

    aput v3, v2, v5

    .line 636
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 637
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v3, v2, v4

    aget v2, v2, v5

    invoke-direct {v0, v3, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 638
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->getCentroidIntersect(Lcom/brakefield/infinitestudio/geometry/Point;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v2

    .line 639
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v3, v2, v0}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 640
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v0

    .line 641
    new-instance v6, Lcom/brakefield/infinitestudio/geometry/Line;

    new-instance v7, Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v8, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v8, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v9, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v9, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v7, v8, v9}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-direct {v6, v7, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 642
    invoke-virtual {v6}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v6

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v3

    sub-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v6, 0x3c23d70a    # 0.01f

    cmpg-float v3, v3, v6

    if-gez v3, :cond_0

    .line 643
    sget v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->SNAP_DISTANCE:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 644
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 645
    sget v3, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->angle:F

    sget-object v6, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v7, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v7, v7, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v0, v3, v6, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    new-array v1, v1, [F

    .line 646
    iget v3, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v3, v1, v4

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v2, v1, v5

    .line 647
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v0, v1, v4

    .line 648
    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aget v0, v1, v5

    .line 649
    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    :cond_0
    return-void
.end method

.method public snapOut(Lcom/brakefield/infinitestudio/geometry/Point;)V
    .locals 10

    .line 611
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 612
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->angle:F

    neg-float v1, v1

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 613
    iget v3, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v5, 0x1

    aput v3, v2, v5

    .line 614
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 615
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v3, v2, v4

    aget v2, v2, v5

    invoke-direct {v0, v3, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 616
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->getCentroidIntersect(Lcom/brakefield/infinitestudio/geometry/Point;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v2

    .line 617
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v3, v2, v0}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 618
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v0

    .line 619
    new-instance v6, Lcom/brakefield/infinitestudio/geometry/Line;

    new-instance v7, Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v8, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v8, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v9, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v9, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v7, v8, v9}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-direct {v6, v7, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 620
    invoke-virtual {v6}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v6

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v3

    sub-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v6, 0x3c23d70a    # 0.01f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_0

    .line 621
    sget v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->SNAP_DISTANCE:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 622
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 623
    sget v3, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->angle:F

    sget-object v6, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v7, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v7, v7, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v0, v3, v6, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    new-array v1, v1, [F

    .line 624
    iget v3, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v3, v1, v4

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v2, v1, v5

    .line 625
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v0, v1, v4

    .line 626
    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aget v0, v1, v5

    .line 627
    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    :cond_0
    return-void
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 11

    .line 457
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 458
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->angle:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 459
    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v4, 0x0

    aput v3, v2, v4

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v5, 0x1

    aput v3, v2, v5

    .line 460
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v3, v2, v4

    float-to-int v3, v3

    aget v2, v2, v5

    float-to-int v2, v2

    const-wide/16 v6, 0x0

    .line 463
    invoke-virtual {p0, v6, v7}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->getEllipticalPoint(D)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v6

    new-array v7, v1, [F

    .line 464
    iget v8, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v8, v7, v4

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v6, v7, v5

    .line 465
    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v0, v7, v4

    float-to-int v0, v0

    aget v6, v7, v5

    float-to-int v6, v6

    .line 468
    new-instance v7, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v8, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    new-instance v9, Lcom/brakefield/infinitestudio/geometry/Point;

    int-to-float v0, v0

    int-to-float v6, v6

    invoke-direct {v9, v0, v6}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-direct {v7, v8, v9}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 469
    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v7

    const/4 v8, 0x6

    new-array v8, v8, [F

    .line 470
    sget-object v9, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v9, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v9, v8, v4

    sget-object v9, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v9, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v9, v8, v5

    int-to-float v3, v3

    aput v3, v8, v1

    int-to-float v2, v2

    const/4 v3, 0x3

    aput v2, v8, v3

    const/4 v2, 0x4

    aput v0, v8, v2

    const/4 v0, 0x5

    aput v6, v8, v0

    .line 471
    invoke-virtual {p1, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 472
    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    aget v6, v8, v4

    iput v6, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 473
    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    aget v6, v8, v5

    iput v6, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 474
    new-instance p1, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v2, v8, v2

    aget v0, v8, v0

    invoke-direct {p1, v2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 475
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v2, p1}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 476
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result p1

    .line 477
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->angle:F

    float-to-double v9, v0

    sub-float/2addr p1, v7

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    add-double/2addr v9, v6

    double-to-float p1, v9

    sput p1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->angle:F

    .line 478
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 479
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->angle:F

    neg-float v0, v0

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v6, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->close:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {p1, v0, v2, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    new-array v0, v1, [F

    aget v1, v8, v1

    aput v1, v0, v4

    aget v1, v8, v3

    aput v1, v0, v5

    .line 481
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 482
    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    aget v1, v0, v4

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 483
    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->scale:Lcom/brakefield/infinitestudio/geometry/Point;

    aget v0, v0, v5

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    return-void
.end method
