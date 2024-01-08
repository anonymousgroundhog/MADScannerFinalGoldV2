.class public Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;
.super Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;
.source "CurvilinearPerspectiveGuide.java"


# instance fields
.field private a:Lcom/brakefield/infinitestudio/geometry/Point;

.field hPoint:Lcom/brakefield/infinitestudio/geometry/Point;

.field hRadius:F

.field horizontal:Lcom/brakefield/infinitestudio/geometry/Point;

.field radius:F

.field relativeVertical:Lcom/brakefield/infinitestudio/geometry/Point;

.field private resize:Lcom/brakefield/infinitestudio/geometry/Point;

.field private snapRadius:F

.field vPoint:Lcom/brakefield/infinitestudio/geometry/Point;

.field vRadius:F

.field vertical:Lcom/brakefield/infinitestudio/geometry/Point;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 35
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;-><init>()V

    .line 20
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 22
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v1, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->resize:Lcom/brakefield/infinitestudio/geometry/Point;

    const/high16 v0, 0x447a0000    # 1000.0f

    .line 24
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->radius:F

    .line 29
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v1, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->vertical:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 30
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v1, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->horizontal:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 31
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v1, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->relativeVertical:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 37
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->hardwareScale:F

    div-float/2addr v1, v2

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/Camera;->hardwareScale:F

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 40
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->w:I

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->h:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->radius:F

    .line 42
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static closestPoint(Lcom/brakefield/infinitestudio/geometry/Line;Lcom/brakefield/infinitestudio/geometry/Point;)F
    .locals 9

    .line 494
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    .line 495
    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    .line 496
    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    .line 497
    iget p0, p0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    .line 498
    iget v3, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 499
    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v2, v0

    sub-float/2addr p0, v1

    sub-float/2addr v3, v0

    sub-float/2addr p1, v1

    mul-float v0, v2, v3

    mul-float v1, p0, p1

    add-float/2addr v0, v1

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 505
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    float-to-double v7, p1

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v3, v7

    double-to-float p1, v3

    float-to-double v1, v2

    .line 506
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double v3, p0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    double-to-float p0, v1

    float-to-double v1, p1

    float-to-double v3, v0

    .line 507
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    float-to-double p0, p0

    div-double/2addr v3, p0

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private getBottom()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 5

    .line 108
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->radius:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method private getCenterOfCircle(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 10

    .line 121
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 123
    new-instance p1, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {p1, p2, p3}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 125
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object p2

    .line 126
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result p3

    .line 128
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v1, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v3, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v4, p3

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v4, v6

    .line 129
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float p3, v8

    const v8, 0x47c35000    # 100000.0f

    mul-float/2addr p3, v8

    add-float/2addr v3, p3

    iget p2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 130
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float p3, v4

    mul-float/2addr p3, v8

    add-float/2addr p2, p3

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 132
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/geometry/Line;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object p2

    .line 133
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result p1

    .line 135
    new-instance p3, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v1, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v3, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v4, p1

    add-double/2addr v4, v6

    .line 136
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float p1, v6

    mul-float/2addr p1, v8

    add-float/2addr v3, p1

    iget p1, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 137
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float p2, v4

    mul-float/2addr p2, v8

    add-float/2addr p1, p2

    invoke-direct {p3, v1, v2, v3, p1}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 139
    invoke-virtual {v0, p3}, Lcom/brakefield/infinitestudio/geometry/Line;->intersectsAt(Lcom/brakefield/infinitestudio/geometry/Line;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object p1

    return-object p1
.end method

.method private getLeft()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 4

    .line 112
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->radius:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method private getRight()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 4

    .line 116
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->radius:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method private getTop()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 5

    .line 104
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->radius:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 267
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 269
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 271
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->showGrid:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snap:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapping:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snap:Z

    if-nez v1, :cond_4

    .line 274
    :cond_1
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->radius:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v1

    .line 275
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->radius:F

    div-float/2addr v5, v4

    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v3

    .line 277
    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v4, v1

    .line 278
    iget v5, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v5, v1

    .line 279
    iget v6, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v6, v3

    .line 280
    iget v7, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v7, v3

    .line 282
    new-instance v8, Lcom/brakefield/infinitestudio/geometry/Point;

    const v9, -0x39e3c000    # -10000.0f

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 283
    new-instance v9, Lcom/brakefield/infinitestudio/geometry/Point;

    const v11, 0x461c4000    # 10000.0f

    invoke-direct {v9, v11, v10}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 285
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 286
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 288
    new-instance v10, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v10, v8, v9}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 290
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 291
    invoke-virtual {v10}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v8, v8

    iget v9, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v10, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    move v8, v2

    :goto_0
    const-wide v9, 0x3fe99999a0000000L    # 0.800000011920929

    const/16 v11, 0xa

    if-gt v8, v11, :cond_2

    int-to-float v12, v8

    int-to-float v11, v11

    div-float/2addr v12, v11

    float-to-double v11, v12

    .line 294
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v3

    .line 295
    new-instance v10, Landroid/graphics/RectF;

    iget v11, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v11, v9

    iget v12, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v12, v9

    invoke-direct {v10, v11, v4, v12, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v9, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->guideStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v9}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_1
    if-gt v3, v11, :cond_3

    int-to-float v4, v3

    int-to-float v5, v11

    div-float/2addr v4, v5

    float-to-double v4, v4

    .line 300
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v1

    .line 301
    new-instance v5, Landroid/graphics/RectF;

    iget v8, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v8, v4

    iget v12, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v12, v4

    invoke-direct {v5, v6, v8, v7, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->guideStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 305
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 348
    :cond_4
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snap:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapping:Z

    if-eqz v1, :cond_5

    .line 350
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapX:F

    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapY:F

    invoke-direct {v1, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 351
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 353
    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {p0, p1, v3, v1}, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->drawHint(Landroid/graphics/Canvas;FF)V

    .line 431
    :cond_5
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapping:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->lock:Z

    if-nez v1, :cond_7

    .line 432
    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->moveDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v7, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v0, v1, :cond_6

    const/4 v2, 0x1

    :cond_6
    move v9, v2

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    :cond_7
    return-void
.end method

.method public drawHint(Landroid/graphics/Canvas;FF)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    .line 529
    iget-boolean v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->showCursor:Z

    if-nez v1, :cond_0

    return-void

    .line 532
    :cond_0
    new-instance v10, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v10, v8, v9}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 534
    new-instance v11, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v2, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v11, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 535
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 537
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->getTop()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    .line 538
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->getBottom()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v2

    .line 539
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->getLeft()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v12

    .line 540
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->getRight()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v13

    .line 542
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 543
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 544
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 545
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 547
    iget v3, v11, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    cmpl-float v3, v8, v3

    const v14, 0x461c4000    # 10000.0f

    if-nez v3, :cond_1

    .line 548
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    sub-float v2, v9, v14

    invoke-direct {v1, v8, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 549
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    add-float v3, v9, v14

    invoke-direct {v2, v8, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 550
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 551
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 552
    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v5, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v6, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v15, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->cursorStroke:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 554
    :cond_1
    invoke-direct {v0, v1, v10, v2}, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->getCenterOfCircle(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    .line 555
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v2, v10, v1}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 556
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v2

    .line 557
    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v4, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->cursorStroke:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 560
    :goto_0
    iget v1, v11, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    cmpl-float v1, v9, v1

    if-nez v1, :cond_2

    .line 561
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    sub-float v2, v8, v14

    invoke-direct {v1, v2, v9}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 562
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    add-float v3, v8, v14

    invoke-direct {v2, v3, v9}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 563
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 564
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 565
    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v5, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v6, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v10, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->cursorStroke:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 567
    :cond_2
    invoke-direct {v0, v12, v10, v13}, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->getCenterOfCircle(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    .line 568
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v2, v10, v1}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 569
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v2

    .line 570
    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v4, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->cursorStroke:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 573
    :goto_1
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v2, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 574
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v2, v8, v9}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 576
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 578
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v3, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 579
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v1

    .line 581
    iget v3, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v1, v8

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v6

    sub-float/2addr v3, v1

    iget v1, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 582
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v6

    sub-float v8, v1, v8

    iget v1, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 583
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v6

    add-float/2addr v9, v1

    iget v1, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 584
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v2, v4

    mul-float/2addr v2, v6

    add-float v5, v1, v2

    iget-object v6, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->cursorStroke:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v8

    move v4, v9

    .line 581
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawMarker(Landroid/graphics/Canvas;FFF)V
    .locals 0

    return-void
.end method

.method public getJSON()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 590
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 591
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v1, v1

    const-string/jumbo v3, "x1"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 592
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v1, v1

    const-string/jumbo v3, "y1"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 593
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->radius:F

    float-to-double v1, v1

    const-string v3, "radius"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object v0
.end method

.method public load(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 599
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "x1"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 600
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    const-string/jumbo v1, "y1"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const-string v0, "radius"

    .line 601
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->radius:F

    return-void
.end method

.method public onDown(FF)Z
    .locals 7

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->perspectiveFactor:F

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 52
    iput-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v2, 0x0

    .line 54
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->move:Z

    .line 56
    iget-boolean v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->lock:Z

    if-nez v3, :cond_1

    .line 57
    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v3, v4}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v3

    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->radius:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 59
    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->resize:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    goto :goto_0

    .line 61
    :cond_0
    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v3, v4}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v3

    sget v4, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    div-float/2addr v4, v5

    .line 62
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v5

    div-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 64
    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 69
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 70
    iput-boolean v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapping:Z

    .line 72
    :cond_2
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->downX:F

    .line 73
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->downY:F

    .line 75
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapX:F

    .line 76
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapY:F

    .line 78
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v3, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 80
    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    cmpl-float v5, p1, v5

    if-nez v5, :cond_3

    .line 81
    iput-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->vPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 82
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->vRadius:F

    goto :goto_1

    .line 84
    :cond_3
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->getTop()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v5

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->getBottom()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v6

    invoke-direct {p0, v5, v3, v6}, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->getCenterOfCircle(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v5

    iput-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->vPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 85
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object v6, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->vPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v5, v3, v6}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 86
    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v5

    iput v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->vRadius:F

    .line 89
    :goto_1
    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    cmpl-float v5, p2, v5

    if-nez v5, :cond_4

    .line 90
    iput-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->hPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 91
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->hRadius:F

    goto :goto_2

    .line 93
    :cond_4
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->getLeft()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->getRight()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    invoke-direct {p0, v0, v3, v1}, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->getCenterOfCircle(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->hPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 94
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->hPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v3, v1}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 95
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->hRadius:F

    .line 98
    :goto_2
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->setStartDistance(Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 100
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz p1, :cond_5

    move v2, v4

    :cond_5
    return v2
.end method

.method public onMove(FF)Z
    .locals 13

    .line 144
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->resize:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v0, v1, p1, p2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->radius:F

    goto :goto_0

    .line 151
    :cond_0
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->move:Z

    if-nez v0, :cond_1

    .line 155
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->move:Z

    .line 158
    :cond_1
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->move:Z

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 160
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    :cond_2
    :goto_0
    return v2

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    if-nez v0, :cond_a

    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->downX:F

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->downY:F

    .line 165
    invoke-static {v0, v1, p1, p2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    .line 166
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    .line 168
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 172
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->vPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    if-nez v1, :cond_4

    .line 174
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->downX:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    goto :goto_1

    .line 177
    :cond_4
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->vPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, v2, v0}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 179
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v1

    .line 181
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->vPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v2, v2

    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->vRadius:F

    float-to-double v4, v4

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    double-to-float v1, v2

    .line 182
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->vPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v2, v2

    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->vRadius:F

    float-to-double v4, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    .line 184
    invoke-static {p1, p2, v1, v2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v1

    .line 189
    :goto_1
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->hPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    if-nez v2, :cond_5

    .line 191
    iget p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->downY:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_2

    .line 194
    :cond_5
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->hPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v2, v3, v0}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 196
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v2

    .line 198
    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->hPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v3, v3

    iget v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->hRadius:F

    float-to-double v5, v5

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v5, v9

    add-double/2addr v3, v5

    double-to-float v2, v3

    .line 199
    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->hPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v3, v3

    iget v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->hRadius:F

    float-to-double v5, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    .line 201
    invoke-static {p1, p2, v2, v3}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result p1

    .line 204
    :goto_2
    new-instance p2, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->downX:F

    iget v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->downY:F

    invoke-direct {p2, v2, v3, v4, v5}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 206
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result p2

    .line 208
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v3, v3

    float-to-double v5, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    const-wide v9, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    double-to-float v3, v3

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v7, v4

    .line 209
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v9

    add-double/2addr v7, v4

    double-to-float v4, v7

    invoke-direct {v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 210
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v3, v4, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 211
    invoke-static {v3, v0}, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->closestPoint(Lcom/brakefield/infinitestudio/geometry/Line;Lcom/brakefield/infinitestudio/geometry/Point;)F

    .line 212
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v2

    float-to-double v4, v2

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v4, v6

    double-to-float v2, v4

    .line 213
    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v4, v4

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v9

    add-double/2addr v4, v11

    double-to-float v2, v4

    .line 214
    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v4, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v9

    add-double/2addr v4, v6

    double-to-float v4, v4

    .line 215
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v6, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v7, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v5, v6, v7, v2, v4}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    invoke-virtual {v3, v5}, Lcom/brakefield/infinitestudio/geometry/Line;->intersectsAt(Lcom/brakefield/infinitestudio/geometry/Line;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v2

    .line 216
    iget v3, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v3, v4

    .line 217
    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v2, v0

    .line 219
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_6

    cmpg-float v0, v0, p1

    if-gez v0, :cond_6

    .line 222
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->relativeVertical:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 223
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->relativeVertical:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 224
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->relativeVertical:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 225
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapAngle:F

    goto :goto_5

    :cond_6
    cmpg-float p1, v1, p1

    if-gez p1, :cond_8

    .line 228
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->vPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    if-nez p1, :cond_7

    .line 229
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->vertical:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 230
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->vertical:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->downX:F

    iput p2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 231
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->vertical:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->downY:F

    iput p2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto :goto_3

    .line 233
    :cond_7
    iput-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 236
    :goto_3
    iget p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->vRadius:F

    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapRadius:F

    goto :goto_5

    .line 239
    :cond_8
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->hPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    if-nez p1, :cond_9

    .line 240
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->horizontal:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 241
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->horizontal:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->downX:F

    iput p2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 242
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->horizontal:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->downY:F

    iput p2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto :goto_4

    .line 244
    :cond_9
    iput-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 247
    :goto_4
    iget p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->hRadius:F

    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapRadius:F

    :cond_a
    :goto_5
    const/4 p1, 0x0

    return p1
.end method

.method public onUp()Z
    .locals 2

    const/4 v0, 0x0

    .line 255
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapping:Z

    .line 257
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 258
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setStartDistance(Lcom/brakefield/infinitestudio/geometry/Point;)V
    .locals 0

    return-void
.end method

.method public snap(Lcom/brakefield/infinitestudio/geometry/Point;)Z
    .locals 13

    .line 437
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snap:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapping:Z

    if-eqz v0, :cond_5

    .line 439
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 440
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->downX:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 441
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->downY:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    return v1

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->vertical:Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v0, v2, :cond_1

    .line 446
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 447
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->updateSnapPoint(Lcom/brakefield/infinitestudio/geometry/Point;)V

    return v1

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->horizontal:Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v0, v2, :cond_2

    .line 452
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 453
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->updateSnapPoint(Lcom/brakefield/infinitestudio/geometry/Point;)V

    return v1

    .line 457
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->relativeVertical:Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v0, v2, :cond_4

    .line 458
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 459
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v3, v3

    iget v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapAngle:F

    float-to-double v5, v5

    .line 460
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    const-wide v7, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v4, v4

    iget v6, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapAngle:F

    float-to-double v9, v6

    .line 461
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    add-double/2addr v4, v9

    double-to-float v4, v4

    invoke-direct {v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 462
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v3, v0, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 463
    invoke-static {v3, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->closestPoint(Lcom/brakefield/infinitestudio/geometry/Line;Lcom/brakefield/infinitestudio/geometry/Point;)F

    .line 464
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v0

    float-to-double v4, v0

    const-wide v9, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v4, v9

    double-to-float v0, v4

    .line 465
    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v4, v2

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v7

    add-double/2addr v4, v11

    double-to-float v0, v4

    .line 466
    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v4, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    add-double/2addr v4, v9

    double-to-float v2, v4

    .line 467
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v6, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v4, v5, v6, v0, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/geometry/Line;->intersectsAt(Lcom/brakefield/infinitestudio/geometry/Line;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 468
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v2, v3

    .line 469
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v3, v4

    if-eqz v0, :cond_3

    .line 471
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v0, v2

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 472
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v0, v3

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 474
    :cond_3
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->updateSnapPoint(Lcom/brakefield/infinitestudio/geometry/Point;)V

    return v1

    .line 478
    :cond_4
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v2, p1}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 480
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v0

    .line 482
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v2, v2

    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapRadius:F

    float-to-double v4, v4

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 483
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v2, v0

    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->snapRadius:F

    float-to-double v4, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 485
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->updateSnapPoint(Lcom/brakefield/infinitestudio/geometry/Point;)V

    return v1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 518
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->radius:F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->radius:F

    return-void
.end method
