.class public Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;
.super Ljava/lang/Object;
.source "TangentGuide.java"


# static fields
.field public static active:Z

.field public static crosshairs:Z

.field public static draw:Z

.field private static line:Lcom/brakefield/infinitestudio/geometry/Line;

.field public static prevActive:Z

.field private static prevX:F

.field private static prevY:F

.field private static r:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->line:Lcom/brakefield/infinitestudio/geometry/Line;

    const/4 v0, 0x0

    .line 21
    sput-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->crosshairs:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public static drawCursor(Landroid/graphics/Canvas;FF)V
    .locals 13

    .line 78
    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->crosshairs:Z

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .line 79
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float v5, v0

    sget-object v6, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    move-object v1, p0

    move v2, p1

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v8, 0x0

    .line 80
    sget p1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v10, p1

    sget-object v12, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    move-object v7, p0

    move v9, p2

    move v11, p2

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 83
    :cond_0
    sget-boolean p1, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->draw:Z

    if-eqz p1, :cond_1

    .line 84
    sget-boolean p1, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->active:Z

    if-eqz p1, :cond_1

    .line 85
    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->line:Lcom/brakefield/infinitestudio/geometry/Line;

    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->line:Lcom/brakefield/infinitestudio/geometry/Line;

    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->line:Lcom/brakefield/infinitestudio/geometry/Line;

    iget v3, p1, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->line:Lcom/brakefield/infinitestudio/geometry/Line;

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public static onDown(FF)V
    .locals 2

    .line 25
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->r:F

    .line 27
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->prevX:F

    .line 28
    sput p1, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->prevY:F

    .line 29
    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->onDown(FF)V

    return-void
.end method

.method public static onMove(FF)V
    .locals 13

    .line 34
    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->active:Z

    if-eqz v0, :cond_1

    .line 36
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->line:Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v0

    .line 38
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->line:Lcom/brakefield/infinitestudio/geometry/Line;

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->prevX:F

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->prevY:F

    invoke-virtual {v1, v2, v3, p0, p1}, Lcom/brakefield/infinitestudio/geometry/Line;->init(FFFF)V

    .line 40
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->line:Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 46
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->line:Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v0

    .line 48
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->prevX:F

    .line 49
    sput p1, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->prevY:F

    const/4 v1, 0x1

    .line 50
    sput-boolean v1, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->draw:Z

    .line 53
    :cond_0
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->line:Lcom/brakefield/infinitestudio/geometry/Line;

    float-to-double v2, p0

    sget v4, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->r:F

    float-to-double v4, v4

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v4, v8

    sub-double v4, v2, v4

    double-to-float v0, v4

    float-to-double v4, p1

    sget v8, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->r:F

    float-to-double v8, v8

    .line 54
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double v8, v4, v8

    double-to-float v8, v8

    sget v9, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->r:F

    float-to-double v9, v9

    .line 55
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v2, v9

    double-to-float v2, v2

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->r:F

    float-to-double v9, v3

    .line 56
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v9, v6

    add-double/2addr v4, v9

    double-to-float v3, v4

    .line 53
    invoke-virtual {v1, v0, v8, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Line;->init(FFFF)V

    .line 58
    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->onMove(FF)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->onMove(FF)V

    .line 62
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->prevX:F

    .line 63
    sput p1, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->prevY:F

    :goto_0
    return-void
.end method

.method public static onUp(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    sput-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/cursors/TangentGuide;->draw:Z

    .line 69
    invoke-static {p0}, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->onUp(Landroid/graphics/Canvas;)V

    return-void
.end method
