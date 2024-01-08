.class public Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;
.super Ljava/lang/Object;
.source "PatternEditTool.java"


# static fields
.field public static final END:I = 0x3

.field public static final MID:I = 0x2

.field public static final NONE:I = 0x0

.field public static final START:I = 0x1


# instance fields
.field private a:Lcom/brakefield/infinitestudio/geometry/Point;

.field private adjustCase:I

.field private b:Lcom/brakefield/infinitestudio/geometry/Point;

.field protected fillPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->fillPaint:Landroid/graphics/Paint;

    .line 28
    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->adjustCase:I

    .line 31
    iput-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 32
    iput-object p2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 135
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Point;->copy()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Point;->copy()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    .line 138
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 139
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 140
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 142
    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 143
    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 145
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v2, v0, v1}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 147
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/geometry/Line;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v2

    .line 149
    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v6, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v7, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v8, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 151
    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->fillPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v6, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->shadowPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {p1, v3, v5, v7, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 154
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v7, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 156
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    iget v0, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v7, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 159
    iget v0, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v7, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 161
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    iget v0, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v7, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 164
    iget v0, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getEndPoint()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    return-object v0
.end method

.method public getStartPoint()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    return-object v0
.end method

.method public onDown(FF)V
    .locals 4

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->adjustCase:I

    .line 39
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getGlobalZoom()F

    move-result v1

    div-float/2addr v0, v1

    .line 41
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 43
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v2, v3, p1, p2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v2

    cmpg-float v2, v2, v0

    if-gez v2, :cond_0

    const/4 p1, 0x3

    .line 46
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->adjustCase:I

    goto :goto_0

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v2, v3, p1, p2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v2

    cmpg-float v2, v2, v0

    if-gez v2, :cond_1

    const/4 p1, 0x1

    .line 48
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->adjustCase:I

    goto :goto_0

    .line 49
    :cond_1
    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v2, v1, p1, p2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    const/4 p1, 0x2

    .line 50
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->adjustCase:I

    :cond_2
    :goto_0
    return-void
.end method

.method public onMove(FF)V
    .locals 8

    .line 56
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 61
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 63
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->adjustCase:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    const v5, 0x3e4ccccd    # 0.2f

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 103
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 105
    new-instance p1, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {p1, p2, v0}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 106
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result p2

    .line 107
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result p1

    float-to-double v1, p2

    .line 110
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float p2, v6

    invoke-static {p2, v5, v4, v3}, Lcom/brakefield/infinitestudio/geometry/Line;->snapAngle(FFIF)F

    move-result p2

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    add-double/2addr v1, v3

    double-to-float p2, v1

    .line 113
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v2, v2

    float-to-double v4, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    add-double/2addr v2, v6

    double-to-float v2, v2

    iput v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 114
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v2, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    add-double/2addr v2, v6

    double-to-float v2, v2

    iput v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 115
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v2, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    sub-double/2addr v2, v6

    double-to-float v2, v2

    iput v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 116
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double/2addr v4, p1

    sub-double/2addr v2, v4

    double-to-float p1, v2

    iput p1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto/16 :goto_0

    .line 86
    :cond_1
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr p1, v1

    .line 87
    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr p2, v0

    .line 92
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 93
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v1, p2

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 95
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 96
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v0, p2

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto :goto_0

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 67
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 69
    new-instance p1, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {p1, p2, v0}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 70
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result p2

    .line 71
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result p1

    float-to-double v1, p2

    .line 74
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float p2, v6

    invoke-static {p2, v5, v4, v3}, Lcom/brakefield/infinitestudio/geometry/Line;->snapAngle(FFIF)F

    move-result p2

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    add-double/2addr v1, v3

    double-to-float p2, v1

    .line 77
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v2, v2

    float-to-double v4, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    add-double/2addr v2, v6

    double-to-float v2, v2

    iput v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 78
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v2, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    add-double/2addr v2, v6

    double-to-float v2, v2

    iput v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 79
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v2, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    sub-double/2addr v2, v6

    double-to-float v2, v2

    iput v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 80
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PatternEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double/2addr v4, p1

    sub-double/2addr v2, v4

    double-to-float p1, v2

    iput p1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    :goto_0
    return-void
.end method

.method public onUp()V
    .locals 0

    return-void
.end method
