.class public Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;
.super Ljava/lang/Object;
.source "LazyFinger.java"


# static fields
.field public static active:Z

.field private static controls_0:Lcom/brakefield/infinitestudio/geometry/Point;

.field private static controls_1:Lcom/brakefield/infinitestudio/geometry/Point;

.field private static dashPaint:Landroid/graphics/Paint;

.field public static draw:Z

.field public static elastic:Z

.field private static paint:Landroid/graphics/Paint;

.field public static radius:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->paint:Landroid/graphics/Paint;

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->dashPaint:Landroid/graphics/Paint;

    .line 29
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_0:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 30
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_1:Lcom/brakefield/infinitestudio/geometry/Point;

    const/16 v0, 0x32

    .line 32
    sput v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->radius:I

    .line 33
    sput-boolean v1, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->elastic:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 124
    invoke-static {p0}, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static drawCursor(Landroid/graphics/Canvas;)V
    .locals 12

    .line 128
    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->draw:Z

    if-eqz v0, :cond_1

    .line 129
    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->active:Z

    if-eqz v0, :cond_1

    .line 130
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_0:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 131
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_0:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v7, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 132
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_1:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v8, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 133
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_1:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v9, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 134
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->radius:I

    if-lez v1, :cond_1

    .line 135
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_0:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_0:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_1:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v4, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_1:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v1, v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Line;->dist(FFFF)F

    move-result v1

    .line 136
    sget v2, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->radius:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 137
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_0:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_0:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_1:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v4, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_1:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v1, v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Line;->angle(FFFF)F

    move-result v1

    float-to-double v2, v0

    .line 138
    sget v4, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->radius:I

    int-to-double v4, v4

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v4, v10

    add-double/2addr v2, v4

    double-to-float v10, v2

    float-to-double v1, v7

    .line 139
    sget v3, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->radius:I

    int-to-double v3, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-float v9, v1

    .line 140
    sget-object v6, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->paint:Landroid/graphics/Paint;

    move-object v1, p0

    move v2, v0

    move v3, v7

    move v4, v10

    move v5, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v8, v10

    goto :goto_0

    .line 142
    :cond_0
    sget-object v6, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->dashPaint:Landroid/graphics/Paint;

    move-object v1, p0

    move v2, v0

    move v3, v7

    move v4, v8

    move v5, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 144
    :goto_0
    sget-boolean v1, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->elastic:Z

    if-nez v1, :cond_1

    .line 145
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->radius:I

    int-to-float v1, v1

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, v8, v9, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x40a00000    # 5.0f

    .line 146
    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v7, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 151
    :cond_1
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_1:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_1:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p0, v0, v1}, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->drawCursor(Landroid/graphics/Canvas;FF)V

    return-void
.end method

.method public static init()V
    .locals 6

    .line 36
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->paint:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 38
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 40
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 41
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, -0xbbbbbc

    invoke-virtual {v0, v3, v4, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 44
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->dashPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->dashPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 46
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 47
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->dashPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 48
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->dashPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->dashPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 50
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->dashPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 51
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->dashPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public static onDown(FF)V
    .locals 1

    .line 55
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 56
    invoke-static {v0}, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->onDown(Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 57
    iget p0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget p1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->onDown(FF)V

    return-void
.end method

.method public static onDown(Lcom/brakefield/infinitestudio/geometry/Point;)V
    .locals 1

    .line 72
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_0:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/geometry/Point;->set(Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 73
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_1:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/geometry/Point;->set(Lcom/brakefield/infinitestudio/geometry/Point;)V

    const/4 p0, 0x1

    .line 75
    sput-boolean p0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->draw:Z

    return-void
.end method

.method public static onMove(FF)V
    .locals 1

    .line 61
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 62
    invoke-static {v0}, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->onMove(Lcom/brakefield/infinitestudio/geometry/Point;)Z

    .line 63
    iget p0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget p1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->onMove(FF)V

    return-void
.end method

.method public static onMove(Lcom/brakefield/infinitestudio/geometry/Point;)Z
    .locals 10

    const/4 v0, 0x1

    .line 79
    sput-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->draw:Z

    .line 80
    sget-boolean v1, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->active:Z

    if-eqz v1, :cond_2

    .line 82
    sput-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->draw:Z

    .line 84
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->radius:I

    int-to-float v1, v1

    .line 85
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v2

    div-float/2addr v1, v2

    .line 87
    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_0:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v2, p0}, Lcom/brakefield/infinitestudio/geometry/Point;->set(Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 88
    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v4, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_1:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_1:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v2, v3, v4, v5}, Lcom/brakefield/infinitestudio/geometry/Line;->dist(FFFF)F

    move-result v2

    cmpg-float v3, v2, v1

    if-gez v3, :cond_0

    .line 90
    sget-boolean v3, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->elastic:Z

    if-nez v3, :cond_0

    .line 91
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_1:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->set(Lcom/brakefield/infinitestudio/geometry/Point;)V

    return v0

    .line 95
    :cond_0
    sget-boolean v3, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->elastic:Z

    if-eqz v3, :cond_1

    .line 96
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->radius:I

    int-to-float v1, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    float-to-double v3, v1

    const-wide v5, 0x3fa47ae140000000L    # 0.03999999910593033

    .line 97
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide v7, 0x3fecccccc0000000L    # 0.8999999761581421

    mul-double/2addr v5, v7

    double-to-float v1, v5

    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    .line 98
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    const-wide v5, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v3, v5

    double-to-float v3, v3

    add-float/2addr v1, v3

    const v3, 0x3f7ae148    # 0.98f

    mul-float/2addr v1, v3

    mul-float/2addr v1, v2

    .line 103
    :cond_1
    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v4, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_1:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_1:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v2, v3, v4, v5}, Lcom/brakefield/infinitestudio/geometry/Line;->angle(FFFF)F

    move-result v2

    .line 105
    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_1:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v4, v4

    float-to-double v6, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    add-double/2addr v4, v8

    double-to-float v4, v4

    iget v5, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v8, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v6, v1

    add-double/2addr v8, v6

    double-to-float v1, v8

    invoke-virtual {v3, v4, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->set(FF)V

    .line 107
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_1:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->set(Lcom/brakefield/infinitestudio/geometry/Point;)V

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static onUp(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    sput-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->draw:Z

    .line 68
    invoke-static {p0}, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->onUp(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static onUp(Lcom/brakefield/infinitestudio/geometry/Point;)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    sput-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->draw:Z

    .line 117
    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->elastic:Z

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_1:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/geometry/Point;->set(Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 120
    :cond_0
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->controls_1:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->set(Lcom/brakefield/infinitestudio/geometry/Point;)V

    return-void
.end method
