.class public Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;
.super Ljava/lang/Object;
.source "PathCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$OnPathCreatedListener;
    }
.end annotation


# static fields
.field static accel:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

.field private static aster:F

.field static decel:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

.field private static imageView:Landroid/widget/ImageView;

.field private static innerSmooth:I

.field private static outerSmooth:I

.field private static paint:Landroid/graphics/Paint;

.field private static path:Landroid/graphics/Path;

.field private static points:I

.field private static rotate:I

.field private static skewX:F

.field private static skewY:F

.field private static spin:F

.field private static squash:F

.field private static stretch:F

.field private static sweepAngle:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/brakefield/infinitestudio/interpolators/AccelInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/interpolators/AccelInterpolator;-><init>(F)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->accel:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    .line 37
    new-instance v0, Lcom/brakefield/infinitestudio/interpolators/DecelInterpolator;

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/interpolators/DecelInterpolator;-><init>(F)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->decel:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    .line 38
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->path:Landroid/graphics/Path;

    const/4 v0, 0x4

    .line 39
    sput v0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->points:I

    const/4 v0, 0x0

    .line 40
    sput v0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->aster:F

    .line 41
    sput v0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->spin:F

    .line 42
    sput v1, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->stretch:F

    .line 43
    sput v1, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->squash:F

    .line 44
    sput v0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->skewX:F

    .line 45
    sput v0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->skewY:F

    const v0, 0x40c90fdb

    .line 46
    sput v0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->sweepAngle:F

    const/4 v0, 0x0

    .line 47
    sput v0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->rotate:I

    .line 48
    sput v0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->outerSmooth:I

    .line 49
    sput v0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->innerSmooth:I

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()F
    .locals 1

    .line 30
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->aster:F

    return v0
.end method

.method static synthetic access$002(F)F
    .locals 0

    .line 30
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->aster:F

    return p0
.end method

.method static synthetic access$100()V
    .locals 0

    .line 30
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->refresh()V

    return-void
.end method

.method static synthetic access$1000()F
    .locals 1

    .line 30
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->skewY:F

    return v0
.end method

.method static synthetic access$1002(F)F
    .locals 0

    .line 30
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->skewY:F

    return p0
.end method

.method static synthetic access$1100()I
    .locals 1

    .line 30
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->rotate:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .locals 0

    .line 30
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->rotate:I

    return p0
.end method

.method static synthetic access$1200()Landroid/graphics/Path;
    .locals 1

    .line 30
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->path:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 30
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->points:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0

    .line 30
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->points:I

    return p0
.end method

.method static synthetic access$300()V
    .locals 0

    .line 30
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->updateAster()V

    return-void
.end method

.method static synthetic access$400()F
    .locals 1

    .line 30
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->spin:F

    return v0
.end method

.method static synthetic access$402(F)F
    .locals 0

    .line 30
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->spin:F

    return p0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 30
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->outerSmooth:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0

    .line 30
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->outerSmooth:I

    return p0
.end method

.method static synthetic access$600()I
    .locals 1

    .line 30
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->innerSmooth:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0

    .line 30
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->innerSmooth:I

    return p0
.end method

.method static synthetic access$700()F
    .locals 1

    .line 30
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->stretch:F

    return v0
.end method

.method static synthetic access$702(F)F
    .locals 0

    .line 30
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->stretch:F

    return p0
.end method

.method static synthetic access$800()F
    .locals 1

    .line 30
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->squash:F

    return v0
.end method

.method static synthetic access$802(F)F
    .locals 0

    .line 30
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->squash:F

    return p0
.end method

.method static synthetic access$900()F
    .locals 1

    .line 30
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->skewX:F

    return v0
.end method

.method static synthetic access$902(F)F
    .locals 0

    .line 30
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->skewX:F

    return p0
.end method

.method private static refresh()V
    .locals 25

    const/16 v0, 0xc8

    .line 358
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 359
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 360
    sget v2, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->sweepAngle:F

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->points:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/16 v3, 0x64

    int-to-float v3, v3

    .line 362
    sget v4, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->aster:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    mul-float/2addr v4, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, v2, v6

    .line 363
    sget v8, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->spin:F

    add-float/2addr v7, v8

    .line 364
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    float-to-double v9, v3

    const-wide/16 v11, 0x0

    .line 365
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v9

    double-to-int v13, v13

    .line 366
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v9

    double-to-int v11, v11

    .line 368
    sget v12, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->outerSmooth:I

    const/4 v14, 0x1

    if-nez v12, :cond_2

    sget v12, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->innerSmooth:I

    if-nez v12, :cond_2

    int-to-float v6, v13

    int-to-float v11, v11

    .line 370
    invoke-virtual {v8, v6, v11}, Landroid/graphics/Path;->moveTo(FF)V

    move v6, v14

    .line 371
    :goto_0
    sget v11, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->points:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v14

    if-ge v6, v11, :cond_1

    .line 372
    rem-int/lit8 v11, v6, 0x2

    if-eqz v11, :cond_0

    float-to-double v11, v4

    .line 373
    div-int/lit8 v13, v6, 0x2

    int-to-float v13, v13

    mul-float/2addr v13, v2

    add-float/2addr v13, v7

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    move/from16 v19, v6

    mul-double v5, v11, v17

    double-to-int v5, v5

    .line 375
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v11, v14

    double-to-int v6, v11

    int-to-float v5, v5

    int-to-float v6, v6

    .line 377
    invoke-virtual {v8, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_0
    move/from16 v19, v6

    .line 379
    div-int/lit8 v6, v19, 0x2

    int-to-float v5, v6

    mul-float/2addr v5, v2

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v9

    double-to-int v11, v11

    .line 380
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v9

    double-to-int v5, v5

    int-to-float v6, v11

    int-to-float v5, v5

    .line 381
    invoke-virtual {v8, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    add-int/lit8 v6, v19, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    move/from16 v16, v3

    goto/16 :goto_9

    .line 388
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x1

    .line 389
    :goto_2
    sget v12, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->points:I

    mul-int/lit8 v12, v12, 0x2

    const/4 v14, 0x1

    add-int/2addr v12, v14

    if-ge v11, v12, :cond_4

    .line 390
    rem-int/lit8 v12, v11, 0x2

    if-eqz v12, :cond_3

    float-to-double v14, v4

    .line 391
    div-int/lit8 v12, v11, 0x2

    int-to-float v12, v12

    mul-float/2addr v12, v2

    add-float/2addr v12, v7

    move/from16 v17, v7

    float-to-double v6, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v12, v14, v19

    double-to-int v12, v12

    .line 393
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v14, v6

    double-to-int v6, v14

    .line 395
    new-instance v7, Lcom/brakefield/infinitestudio/geometry/Point;

    int-to-float v12, v12

    int-to-float v6, v6

    invoke-direct {v7, v12, v6}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    move/from16 v17, v7

    .line 397
    div-int/lit8 v6, v11, 0x2

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v9

    double-to-int v12, v12

    .line 398
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v9

    double-to-int v6, v6

    .line 399
    new-instance v7, Lcom/brakefield/infinitestudio/geometry/Point;

    int-to-float v12, v12

    int-to-float v6, v6

    invoke-direct {v7, v12, v6}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v11, v11, 0x1

    move/from16 v7, v17

    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    move v4, v2

    .line 403
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_b

    .line 407
    rem-int/lit8 v6, v4, 0x2

    if-nez v6, :cond_5

    sget v6, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->innerSmooth:I

    goto :goto_5

    :cond_5
    sget v6, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->outerSmooth:I

    :goto_5
    int-to-float v6, v6

    .line 409
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/brakefield/infinitestudio/geometry/Point;

    if-nez v4, :cond_6

    .line 413
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/brakefield/infinitestudio/geometry/Point;

    goto :goto_6

    :cond_6
    const/4 v10, 0x1

    add-int/lit8 v9, v4, -0x1

    .line 415
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 416
    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v10

    if-ne v4, v11, :cond_7

    .line 417
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/brakefield/infinitestudio/geometry/Point;

    goto :goto_7

    :cond_7
    add-int/lit8 v11, v4, 0x1

    .line 419
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 420
    :goto_7
    new-instance v12, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v12, v9, v7}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 421
    invoke-virtual {v12}, Lcom/brakefield/infinitestudio/geometry/Line;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v9

    if-nez v4, :cond_8

    .line 423
    iget v13, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v14, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 424
    :cond_8
    invoke-virtual {v12}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v13, v6

    const/4 v14, 0x0

    cmpg-float v15, v13, v14

    if-gez v15, :cond_9

    move v13, v14

    .line 427
    :cond_9
    invoke-virtual {v12}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v12

    .line 428
    iget v15, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    move/from16 v16, v3

    float-to-double v2, v15

    float-to-double v14, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v21, v21, v14

    add-double v2, v2, v21

    double-to-float v2, v2

    .line 429
    iget v3, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    move-object/from16 v20, v11

    float-to-double v10, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v14, v12

    add-double/2addr v10, v14

    double-to-float v3, v10

    .line 430
    invoke-virtual {v8, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 431
    iget v2, v7, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 432
    iget v3, v7, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 433
    new-instance v10, Lcom/brakefield/infinitestudio/geometry/Line;

    move-object/from16 v11, v20

    invoke-direct {v10, v11, v7}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 434
    invoke-virtual {v10}, Lcom/brakefield/infinitestudio/geometry/Line;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v7

    .line 435
    invoke-virtual {v10}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    sub-float/2addr v11, v6

    const/4 v6, 0x0

    cmpg-float v13, v11, v6

    if-gez v13, :cond_a

    move v14, v6

    goto :goto_8

    :cond_a
    move v14, v11

    .line 438
    :goto_8
    invoke-virtual {v10}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v6

    .line 439
    iget v10, v7, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v10, v10

    float-to-double v13, v14

    move-wide/from16 v18, v10

    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v21, v21, v13

    move-wide/from16 v23, v13

    add-double v12, v18, v21

    double-to-float v11, v12

    .line 440
    iget v12, v7, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v12, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v9, v9, v23

    add-double/2addr v12, v9

    double-to-float v9, v12

    .line 441
    invoke-virtual {v8, v2, v3, v11, v9}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 443
    iget v2, v7, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, v7, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v16

    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_b
    move/from16 v16, v3

    .line 445
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 449
    :goto_9
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 450
    sget v3, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->rotate:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 451
    sget v3, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->skewX:F

    sget v4, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->skewY:F

    cmpl-float v5, v3, v4

    if-lez v5, :cond_c

    move v5, v3

    goto :goto_a

    :cond_c
    move v5, v4

    .line 452
    :goto_a
    sget v6, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->squash:F

    sget v7, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->stretch:F

    cmpl-float v9, v6, v7

    if-lez v9, :cond_d

    move v9, v6

    goto :goto_b

    :cond_d
    move v9, v7

    :goto_b
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v9, v10, v9

    add-float/2addr v6, v9

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v5, v10

    sub-float/2addr v6, v5

    add-float/2addr v7, v9

    sub-float/2addr v7, v5

    .line 456
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postSkew(FF)Z

    .line 457
    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 458
    invoke-virtual {v8, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    move/from16 v2, v16

    .line 459
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 460
    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 461
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 462
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static show(Landroid/app/Activity;Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$OnPathCreatedListener;)V
    .locals 9

    .line 56
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    sget v1, Lcom/brakefield/infinitestudio/R$layout;->path_creator:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    .line 60
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 62
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 64
    new-instance v2, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$1;

    invoke-direct {v2}, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$1;-><init>()V

    const-string v3, "Close"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 72
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v1, -0x1000000

    .line 73
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    sget v1, Lcom/brakefield/infinitestudio/R$id;->path_imageview:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sput-object v1, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->imageView:Landroid/widget/ImageView;

    .line 78
    sget v1, Lcom/brakefield/infinitestudio/R$id;->aster_value:I

    .line 79
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->aster:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    sget v2, Lcom/brakefield/infinitestudio/R$id;->aster_slider:I

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    const/16 v4, 0x64

    .line 83
    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 84
    new-instance v5, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$2;

    invoke-direct {v5, v1}, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 102
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->updateAster()V

    .line 103
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->aster:F

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 105
    sget v1, Lcom/brakefield/infinitestudio/R$id;->points_value:I

    .line 106
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->points:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    sget v6, Lcom/brakefield/infinitestudio/R$id;->points_slider:I

    invoke-virtual {p0, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    const/16 v7, 0x48

    .line 110
    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setMax(I)V

    .line 111
    new-instance v7, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$3;

    invoke-direct {v7, v1, v2}, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$3;-><init>(Landroid/widget/TextView;Landroid/widget/SeekBar;)V

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 131
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->decel:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->points:I

    int-to-float v2, v2

    const/high16 v7, 0x42900000    # 72.0f

    invoke-interface {v1, v7, v2, v7}, Lcom/brakefield/infinitestudio/interpolators/Interpolator;->interpolate(FFF)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v6, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 133
    sget v1, Lcom/brakefield/infinitestudio/R$id;->spin_value:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->spin:F

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    sget v2, Lcom/brakefield/infinitestudio/R$id;->spin_slider:I

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    const/16 v6, 0x168

    .line 137
    invoke-virtual {v2, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 138
    new-instance v7, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$4;

    invoke-direct {v7, v1}, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$4;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v2, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 156
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->spin:F

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    double-to-int v1, v7

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 158
    sget v1, Lcom/brakefield/infinitestudio/R$id;->outer_smooth_value:I

    .line 159
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->outerSmooth:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    sget v2, Lcom/brakefield/infinitestudio/R$id;->outer_smooth_slider:I

    .line 163
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 164
    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 165
    new-instance v7, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$5;

    invoke-direct {v7, v1}, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$5;-><init>(Landroid/widget/TextView;)V

    .line 166
    invoke-virtual {v2, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 184
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->outerSmooth:I

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 186
    sget v1, Lcom/brakefield/infinitestudio/R$id;->inner_smooth_value:I

    .line 187
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->innerSmooth:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    sget v2, Lcom/brakefield/infinitestudio/R$id;->inner_smooth_slider:I

    .line 191
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 192
    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 193
    new-instance v7, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$6;

    invoke-direct {v7, v1}, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$6;-><init>(Landroid/widget/TextView;)V

    .line 194
    invoke-virtual {v2, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 212
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->innerSmooth:I

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 214
    sget v1, Lcom/brakefield/infinitestudio/R$id;->stretch_value:I

    .line 215
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->stretch:F

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    sget v2, Lcom/brakefield/infinitestudio/R$id;->stretch_slider:I

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 219
    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 220
    new-instance v7, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$7;

    invoke-direct {v7, v1}, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$7;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v2, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 238
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->stretch:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 240
    sget v1, Lcom/brakefield/infinitestudio/R$id;->squash_value:I

    .line 241
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->squash:F

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    sget v2, Lcom/brakefield/infinitestudio/R$id;->squash_slider:I

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 245
    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 246
    new-instance v7, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$8;

    invoke-direct {v7, v1}, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$8;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v2, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 264
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->squash:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 266
    sget v1, Lcom/brakefield/infinitestudio/R$id;->skew_x_value:I

    .line 267
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->skewX:F

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    sget v2, Lcom/brakefield/infinitestudio/R$id;->skew_x_slider:I

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 271
    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 272
    new-instance v7, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$9;

    invoke-direct {v7, v1}, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$9;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v2, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 290
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->skewX:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 292
    sget v1, Lcom/brakefield/infinitestudio/R$id;->skew_y_value:I

    .line 293
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->skewY:F

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    sget v2, Lcom/brakefield/infinitestudio/R$id;->skew_y_slider:I

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 297
    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 298
    new-instance v4, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$10;

    invoke-direct {v4, v1}, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$10;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 316
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->skewY:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 318
    sget v1, Lcom/brakefield/infinitestudio/R$id;->rotate_value:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->rotate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    sget v2, Lcom/brakefield/infinitestudio/R$id;->rotate_slider:I

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/SeekBar;

    .line 322
    invoke-virtual {p0, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 323
    new-instance v2, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$11;

    invoke-direct {v2, v1}, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$11;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 341
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->rotate:I

    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 343
    new-instance p0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$12;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$12;-><init>(Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$OnPathCreatedListener;)V

    const-string p1, "Create"

    invoke-virtual {v0, p1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 351
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private static updateAster()V
    .locals 14

    .line 468
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->sweepAngle:F

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->points:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/16 v1, 0x64

    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    .line 471
    sget v4, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->spin:F

    add-float/2addr v3, v4

    int-to-double v4, v1

    float-to-double v6, v2

    float-to-double v8, v3

    .line 472
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v6

    add-double/2addr v10, v4

    const/4 v1, 0x0

    mul-float v3, v0, v1

    float-to-double v12, v3

    add-double/2addr v10, v12

    double-to-int v3, v10

    .line 474
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    add-double/2addr v8, v4

    add-double/2addr v8, v12

    double-to-int v8, v8

    .line 476
    new-instance v9, Lcom/brakefield/infinitestudio/geometry/Line;

    int-to-float v3, v3

    int-to-float v8, v8

    invoke-direct {v9, v2, v2, v3, v8}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 477
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v6

    add-double/2addr v10, v4

    double-to-int v3, v10

    .line 478
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v6

    add-double/2addr v10, v4

    double-to-int v8, v10

    float-to-double v10, v0

    .line 479
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v6

    add-double/2addr v12, v4

    double-to-int v0, v12

    .line 480
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v6, v10

    add-double/2addr v4, v6

    double-to-int v4, v4

    .line 481
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Line;

    int-to-float v3, v3

    int-to-float v6, v8

    int-to-float v0, v0

    int-to-float v4, v4

    invoke-direct {v5, v3, v6, v0, v4}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 482
    invoke-virtual {v9, v5}, Lcom/brakefield/infinitestudio/geometry/Line;->intersectsAt(Lcom/brakefield/infinitestudio/geometry/Line;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 484
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v1, v2, v2, v3, v0}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 485
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    .line 487
    sput v1, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->aster:F

    goto :goto_0

    .line 489
    :cond_0
    sput v1, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->aster:F

    :goto_0
    return-void
.end method
