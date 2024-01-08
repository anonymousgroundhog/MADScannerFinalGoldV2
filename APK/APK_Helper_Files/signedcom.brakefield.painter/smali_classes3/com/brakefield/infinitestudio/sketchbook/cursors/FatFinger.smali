.class public Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;
.super Ljava/lang/Object;
.source "FatFinger.java"


# static fields
.field public static final MULTI:I = 0x1

.field public static final SINGLE:I

.field public static active:Z

.field public static ang:F

.field private static angle:F

.field public static angleOffset:I

.field public static draw:Z

.field public static fatMag:I

.field private static line:Lcom/brakefield/infinitestudio/geometry/Line;

.field public static mode:I

.field private static paint:Landroid/graphics/Paint;

.field public static prevActive:Z

.field public static prevAngleOffset:I

.field public static prevFatMag:I

.field public static prevMode:I

.field private static prevX:F

.field private static prevY:F

.field public static px:F

.field public static py:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 39
    sput v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->angleOffset:I

    .line 40
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->line:Lcom/brakefield/infinitestudio/geometry/Line;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 161
    invoke-static {p0}, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static drawCursor(Landroid/graphics/Canvas;)V
    .locals 11

    .line 165
    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->draw:Z

    if-eqz v0, :cond_1

    .line 166
    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->active:Z

    if-eqz v0, :cond_0

    .line 167
    sget v4, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->prevX:F

    .line 168
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->prevY:F

    const/high16 v1, 0x40a00000    # 5.0f

    sub-float v6, v4, v1

    add-float v8, v4, v1

    .line 169
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->paint:Landroid/graphics/Paint;

    move-object v5, p0

    move v7, v0

    move v9, v0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v3, v0, v1

    add-float v5, v0, v1

    .line 170
    sget-object v6, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->paint:Landroid/graphics/Paint;

    move-object v1, p0

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 173
    :cond_0
    invoke-static {p0}, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->drawCursor(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public static init()V
    .locals 3

    .line 45
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 47
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 49
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 50
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, -0xbbbbbc

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public static onDown(FF)V
    .locals 5

    .line 56
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->px:F

    .line 57
    sput p1, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->py:F

    .line 59
    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->active:Z

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->line:Lcom/brakefield/infinitestudio/geometry/Line;

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;->init(FFFF)V

    .line 63
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->ang:F

    float-to-double v0, v0

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->angleOffset:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->angle:F

    .line 65
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->fatMag:I

    int-to-float v0, v0

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->angle:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v0, v3

    double-to-float v0, v0

    add-float/2addr p0, v0

    sput p0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->prevX:F

    .line 66
    sget p0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->fatMag:I

    int-to-float p0, p0

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v0

    div-float/2addr v2, v0

    mul-float/2addr p0, v2

    float-to-double v0, p0

    sget p0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->angle:F

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float p0, v0

    add-float/2addr p1, p0

    sput p1, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->prevY:F

    .line 68
    sget p0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->mode:I

    if-nez p0, :cond_1

    .line 69
    sget p0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->prevX:F

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->onDown(FF)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->onDown(FF)V

    .line 72
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->prevX:F

    .line 73
    sput p1, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->prevY:F

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 75
    sput-boolean p0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->draw:Z

    return-void
.end method

.method public static onDown(Lcom/brakefield/infinitestudio/geometry/Point;)V
    .locals 5

    .line 108
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sput v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->px:F

    .line 109
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sput v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->py:F

    .line 111
    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->active:Z

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->line:Lcom/brakefield/infinitestudio/geometry/Line;

    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Line;->init(FFFF)V

    .line 115
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->ang:F

    float-to-double v0, v0

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->angleOffset:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->angle:F

    .line 117
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->fatMag:I

    int-to-double v1, v1

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->angle:F

    float-to-double v3, v3

    .line 118
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    add-float/2addr v0, v1

    sput v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->prevX:F

    .line 119
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->fatMag:I

    int-to-double v1, v1

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->angle:F

    float-to-double v3, v3

    .line 120
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    add-float/2addr v0, v1

    sput v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->prevY:F

    .line 122
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->mode:I

    if-nez v0, :cond_1

    .line 123
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->prevX:F

    iput v0, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 124
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->prevY:F

    iput v0, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto :goto_0

    .line 127
    :cond_0
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sput v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->prevX:F

    .line 128
    iget p0, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sput p0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->prevY:F

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 130
    sput-boolean p0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->draw:Z

    return-void
.end method

.method public static onMove(FF)V
    .locals 5

    const/4 v0, 0x1

    .line 80
    sput-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->draw:Z

    .line 82
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->px:F

    .line 83
    sput p1, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->py:F

    .line 85
    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->active:Z

    if-eqz v0, :cond_0

    .line 87
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->fatMag:I

    int-to-float v0, v0

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->angle:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v0, v3

    double-to-float v0, v0

    add-float/2addr p0, v0

    sput p0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->prevX:F

    .line 88
    sget p0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->fatMag:I

    int-to-float p0, p0

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v0

    div-float/2addr v2, v0

    mul-float/2addr p0, v2

    float-to-double v0, p0

    sget p0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->angle:F

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float p0, v0

    add-float/2addr p1, p0

    sput p1, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->prevY:F

    .line 90
    sget p0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->mode:I

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->active:Z

    if-eqz p0, :cond_1

    .line 91
    sget p0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->prevX:F

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->onMove(FF)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->onMove(FF)V

    .line 94
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->prevX:F

    .line 95
    sput p1, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->prevY:F

    :cond_1
    :goto_0
    return-void
.end method

.method public static onMove(Lcom/brakefield/infinitestudio/geometry/Point;)V
    .locals 5

    const/4 v0, 0x1

    .line 135
    sput-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->draw:Z

    .line 137
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sput v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->px:F

    .line 138
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sput v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->py:F

    .line 140
    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->active:Z

    if-eqz v0, :cond_0

    .line 142
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->fatMag:I

    int-to-double v1, v1

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->angle:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    add-float/2addr v0, v1

    sput v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->prevX:F

    .line 143
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->fatMag:I

    int-to-double v1, v1

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->angle:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    add-float/2addr v0, v1

    sput v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->prevY:F

    .line 145
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->mode:I

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->active:Z

    if-eqz v0, :cond_1

    .line 146
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->prevX:F

    iput v0, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 147
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->prevY:F

    iput v0, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto :goto_0

    .line 150
    :cond_0
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sput v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->prevX:F

    .line 151
    iget p0, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sput p0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->prevY:F

    :cond_1
    :goto_0
    return-void
.end method

.method public static onUp(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    sput-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->draw:Z

    .line 102
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->mode:I

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->active:Z

    if-nez v0, :cond_1

    .line 103
    :cond_0
    invoke-static {p0}, Lcom/brakefield/infinitestudio/sketchbook/cursors/LazyFinger;->onUp(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public static onUp(Lcom/brakefield/infinitestudio/geometry/Point;)V
    .locals 0

    const/4 p0, 0x0

    .line 157
    sput-boolean p0, Lcom/brakefield/infinitestudio/sketchbook/cursors/FatFinger;->draw:Z

    return-void
.end method
