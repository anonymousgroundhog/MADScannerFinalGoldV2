.class public Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;
.super Ljava/lang/Object;
.source "GradientEditTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool$OnColorPointPressedListener;
    }
.end annotation


# static fields
.field public static final END:I = 0x2

.field public static final MID:I = 0x1

.field public static final START:I


# instance fields
.field private a:Lcom/brakefield/infinitestudio/geometry/Point;

.field private adjust:Lcom/brakefield/infinitestudio/color/ColorPoint;

.field private adjustCase:I

.field private adjustIndex:I

.field private b:Lcom/brakefield/infinitestudio/geometry/Point;

.field private colors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/color/ColorPoint;",
            ">;"
        }
    .end annotation
.end field

.field public downX:F

.field public downY:F

.field protected fillPaint:Landroid/graphics/Paint;

.field private halfCase:Z

.field private listener:Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool$OnColorPointPressedListener;

.field public move:Z

.field public removing:Z

.field private set:Z


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Ljava/util/List;Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool$OnColorPointPressedListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/geometry/Point;",
            "Lcom/brakefield/infinitestudio/geometry/Point;",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/color/ColorPoint;",
            ">;",
            "Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool$OnColorPointPressedListener;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->colors:Ljava/util/List;

    .line 34
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 35
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->fillPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->adjustCase:I

    .line 41
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->move:Z

    .line 42
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->removing:Z

    .line 46
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->halfCase:Z

    .line 48
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->set:Z

    .line 53
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->colors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 54
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->colors:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/color/ColorPoint;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    iget-object p3, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p3, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->set(Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 58
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;->set(Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 59
    iput-object p4, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->listener:Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool$OnColorPointPressedListener;

    return-void
.end method


# virtual methods
.method closestPoint(FFFFFF)F
    .locals 4

    sub-float/2addr p3, p1

    sub-float/2addr p4, p2

    sub-float/2addr p5, p1

    sub-float/2addr p6, p2

    mul-float p1, p3, p5

    mul-float p2, p4, p6

    add-float/2addr p1, p2

    float-to-double v0, p5

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 392
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double p5, p6

    invoke-static {p5, p6, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p5

    add-double/2addr v0, p5

    double-to-float p2, v0

    float-to-double p5, p3

    .line 393
    invoke-static {p5, p6, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p5

    float-to-double p3, p4

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    add-double/2addr p5, p3

    double-to-float p3, p5

    float-to-double p4, p2

    float-to-double p1, p1

    .line 394
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    float-to-double v0, p3

    div-double/2addr p1, v0

    sub-double/2addr p4, p1

    invoke-static {p4, p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 331
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Point;->copy()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Point;->copy()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    .line 334
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 335
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 336
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 338
    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 339
    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 341
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v2, v0, v1}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 343
    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v6, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v7, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v8, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 345
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->colors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/color/ColorPoint;

    .line 347
    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->adjust:Lcom/brakefield/infinitestudio/color/ColorPoint;

    if-ne v1, v3, :cond_0

    iget-boolean v3, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->removing:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    iget v3, v1, Lcom/brakefield/infinitestudio/color/ColorPoint;->f:F

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/geometry/Line;->getPointAtT(F)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v3

    .line 352
    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->fillPaint:Landroid/graphics/Paint;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/color/ColorPoint;->color:[F

    invoke-static {v1}, Lcom/brakefield/infinitestudio/color/ColorUtils;->getARGBInt([F)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 354
    iget v1, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->shadowPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {p1, v1, v4, v6, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 355
    iget v1, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v6, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getAdjustPoint()Lcom/brakefield/infinitestudio/color/ColorPoint;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->adjust:Lcom/brakefield/infinitestudio/color/ColorPoint;

    return-object v0
.end method

.method public getColorPoints()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/color/ColorPoint;",
            ">;"
        }
    .end annotation

    .line 309
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->sortColors()V

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->colors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/color/ColorPoint;

    .line 312
    iget-boolean v3, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->removing:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->adjust:Lcom/brakefield/infinitestudio/color/ColorPoint;

    if-ne v3, v2, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getEndPoint()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    return-object v0
.end method

.method public getStartPoint()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    return-object v0
.end method

.method public onDown(FF)V
    .locals 10

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->adjust:Lcom/brakefield/infinitestudio/color/ColorPoint;

    .line 66
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->set:Z

    if-eqz v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;->set(FF)V

    .line 68
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;->set(FF)V

    .line 69
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->downX:F

    .line 70
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->downY:F

    return-void

    .line 74
    :cond_0
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getGlobalZoom()F

    move-result v2

    div-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    .line 78
    :goto_0
    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->colors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 79
    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->colors:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/brakefield/infinitestudio/color/ColorPoint;

    .line 80
    iget-object v6, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v7, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v7, v7, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v8, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v8, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v7, v8

    iget v8, v5, Lcom/brakefield/infinitestudio/color/ColorPoint;->f:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 81
    iget-object v7, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v7, v7, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v8, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v8, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v9, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v9, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v8, v9

    iget v9, v5, Lcom/brakefield/infinitestudio/color/ColorPoint;->f:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 82
    invoke-static {v6, v7, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Line;->dist(FFFF)F

    move-result v6

    if-eqz v0, :cond_1

    cmpg-float v7, v6, v3

    if-gez v7, :cond_2

    .line 85
    :cond_1
    iput v4, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->adjustIndex:I

    move-object v0, v5

    move v3, v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_6

    cmpg-float v1, v3, v1

    if-gez v1, :cond_6

    .line 91
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->adjust:Lcom/brakefield/infinitestudio/color/ColorPoint;

    .line 92
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->adjustIndex:I

    if-nez v0, :cond_4

    .line 93
    iput v2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->adjustCase:I

    goto :goto_1

    .line 94
    :cond_4
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->colors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_5

    const/4 v0, 0x2

    .line 95
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->adjustCase:I

    goto :goto_1

    .line 97
    :cond_5
    iput v3, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->adjustCase:I

    .line 101
    :cond_6
    :goto_1
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->move:Z

    .line 102
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->removing:Z

    .line 103
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->downX:F

    .line 104
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->downY:F

    return-void
.end method

.method public onMove(FF)V
    .locals 17

    move-object/from16 v7, p0

    move/from16 v5, p1

    move/from16 v6, p2

    .line 109
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getGlobalZoom()F

    move-result v1

    div-float/2addr v0, v1

    .line 111
    iget-boolean v1, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->set:Z

    const/16 v8, 0x8

    const v9, 0x3e4ccccd    # 0.2f

    const/4 v10, 0x0

    if-eqz v1, :cond_1

    .line 112
    iget v0, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->downX:F

    iget v1, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->downY:F

    invoke-static {v0, v1, v5, v6}, Lcom/brakefield/infinitestudio/geometry/Line;->dist(FFFF)F

    move-result v0

    .line 113
    iget v1, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->downY:F

    sub-float v1, v6, v1

    float-to-double v1, v1

    iget v3, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->downX:F

    sub-float v3, v5, v3

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v2, v1

    .line 116
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v2, v9, v8, v10}, Lcom/brakefield/infinitestudio/geometry/Line;->snapAngle(FFIF)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v1, v2

    .line 120
    iget-boolean v2, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->halfCase:Z

    if-nez v2, :cond_0

    .line 121
    iget-object v2, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->downX:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v6, v8

    mul-float/2addr v6, v0

    sub-float/2addr v3, v6

    iget v6, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->downY:F

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v6, v4

    invoke-virtual {v2, v3, v6}, Lcom/brakefield/infinitestudio/geometry/Point;->set(FF)V

    .line 122
    :cond_0
    iget-object v2, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->downX:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v1, v8

    mul-float/2addr v1, v0

    add-float/2addr v3, v1

    iget v1, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->downY:F

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v1, v0

    invoke-virtual {v2, v3, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->set(FF)V

    return-void

    .line 126
    :cond_1
    iget-boolean v1, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->move:Z

    const/4 v11, 0x1

    if-nez v1, :cond_2

    iget v1, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->downX:F

    iget v2, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->downY:F

    .line 127
    invoke-static {v1, v2, v5, v6}, Lcom/brakefield/infinitestudio/geometry/Line;->dist(FFFF)F

    move-result v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    .line 128
    iput-boolean v11, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->move:Z

    .line 131
    :cond_2
    iget-boolean v0, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->move:Z

    if-eqz v0, :cond_c

    .line 133
    iget-object v0, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->adjust:Lcom/brakefield/infinitestudio/color/ColorPoint;

    if-nez v0, :cond_3

    .line 135
    iget v0, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->downX:F

    sub-float v0, v5, v0

    .line 136
    iget v1, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->downY:F

    sub-float v1, v6, v1

    .line 138
    iget-object v2, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v3, v0

    iput v3, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 139
    iget-object v2, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v3, v1

    iput v3, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 141
    iget-object v2, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v3, v0

    iput v3, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 142
    iget-object v0, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v2, v1

    iput v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 144
    iput v5, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->downX:F

    .line 145
    iput v6, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->downY:F

    return-void

    .line 157
    :cond_3
    iget v0, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->adjustCase:I

    const/4 v12, 0x2

    if-eqz v0, :cond_9

    if-eq v0, v11, :cond_5

    if-eq v0, v12, :cond_4

    goto/16 :goto_1

    .line 190
    :cond_4
    iget-object v0, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iput v5, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 191
    iget-object v0, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iput v6, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto/16 :goto_1

    .line 164
    :cond_5
    iget-object v0, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v1, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v2, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v3, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 167
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object v2, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v3, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v4, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v13, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v13, v13, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v1, v2, v3, v4, v13}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 168
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Line;

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v0, v13

    const v13, 0x49742400    # 1000000.0f

    mul-float/2addr v0, v13

    add-float/2addr v0, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float/2addr v14, v13

    add-float/2addr v14, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v13

    sub-float v8, v5, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v13

    sub-float v3, v6, v3

    invoke-direct {v2, v0, v14, v8, v3}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 170
    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;->intersectsAt(Lcom/brakefield/infinitestudio/geometry/Line;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v8

    .line 171
    iget-object v0, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v0, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v0, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v0, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    move-object/from16 v0, p0

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->closestPoint(FFFFFF)F

    move-result v0

    .line 173
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v11, 0x0

    :goto_0
    iput-boolean v11, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->removing:Z

    .line 175
    iget-object v0, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v1, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v2, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Line;->dist(FFFF)F

    move-result v0

    .line 176
    iget-object v1, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v2, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v3, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v4, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v1, v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Line;->dist(FFFF)F

    move-result v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_7

    move v0, v1

    .line 181
    :cond_7
    iget-object v1, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->adjust:Lcom/brakefield/infinitestudio/color/ColorPoint;

    iput v0, v1, Lcom/brakefield/infinitestudio/color/ColorPoint;->f:F

    .line 183
    iget-boolean v0, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->removing:Z

    if-eqz v0, :cond_8

    return-void

    .line 186
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->sortColors()V

    goto :goto_1

    .line 159
    :cond_9
    iget-object v0, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iput v5, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 160
    iget-object v0, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iput v6, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 195
    :goto_1
    iget v0, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->adjustCase:I

    if-eqz v0, :cond_a

    if-ne v0, v12, :cond_c

    .line 199
    :cond_a
    iget-object v1, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 200
    iget-object v2, v7, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    if-nez v0, :cond_b

    goto :goto_2

    :cond_b
    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    .line 207
    :goto_2
    iget v0, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v3, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v0, v3

    float-to-double v3, v0

    iget v0, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v0, v5

    float-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v0, v3

    float-to-double v3, v0

    .line 208
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/16 v4, 0x8

    const v5, 0x3e4ccccd    # 0.2f

    invoke-static {v3, v5, v4, v10}, Lcom/brakefield/infinitestudio/geometry/Line;->snapAngle(FFIF)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    double-to-float v3, v3

    cmpl-float v4, v3, v10

    if-eqz v4, :cond_c

    add-float/2addr v0, v3

    .line 212
    iget v3, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v5, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v6, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v3, v4, v5, v6}, Lcom/brakefield/infinitestudio/geometry/Line;->dist(FFFF)F

    move-result v3

    .line 213
    iget v4, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v4, v4

    float-to-double v8, v3

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v8

    add-double/2addr v4, v12

    double-to-float v0, v4

    iput v0, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 214
    iget v0, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v2, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v8, v4

    add-double/2addr v2, v8

    double-to-float v0, v2

    iput v0, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    :cond_c
    return-void
.end method

.method public onUp()V
    .locals 13

    .line 223
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->set:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 224
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->set:Z

    return-void

    .line 228
    :cond_0
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->removing:Z

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->colors:Ljava/util/List;

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->adjustIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 232
    :cond_1
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->move:Z

    if-nez v0, :cond_8

    .line 234
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->adjust:Lcom/brakefield/infinitestudio/color/ColorPoint;

    if-eqz v0, :cond_2

    .line 236
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->listener:Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool$OnColorPointPressedListener;

    if-eqz v1, :cond_8

    .line 237
    invoke-interface {v1, v0}, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool$OnColorPointPressedListener;->onColorPointPressed(Lcom/brakefield/infinitestudio/color/ColorPoint;)V

    goto/16 :goto_3

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->colors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 242
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v2

    div-float/2addr v0, v2

    .line 244
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v2, v4

    double-to-float v2, v2

    .line 247
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v6, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v7, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v7, v7, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 248
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v5, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->downX:F

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v2, v8

    const v8, 0x49742400    # 1000000.0f

    mul-float/2addr v2, v8

    add-float/2addr v5, v2

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->downY:F

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v8

    add-float/2addr v2, v9

    iget v9, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->downX:F

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v10, v8

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->downY:F

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v8

    sub-float/2addr v10, v6

    invoke-direct {v4, v5, v2, v9, v10}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 250
    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/geometry/Line;->intersectsAt(Lcom/brakefield/infinitestudio/geometry/Line;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v2

    .line 252
    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v6, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x41a00000    # 20.0f

    move v6, v1

    move v7, v4

    :goto_0
    int-to-float v8, v6

    cmpg-float v9, v8, v3

    if-gtz v9, :cond_5

    div-float/2addr v8, v3

    .line 261
    iget-object v9, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v9, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v10, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v10, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v11, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v11, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, v8

    add-float/2addr v9, v10

    .line 262
    iget-object v10, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v10, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v11, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v11, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v12, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v12, v12, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v11, v12

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    .line 264
    iget v11, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v12, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v11, v12, v9, v10}, Lcom/brakefield/infinitestudio/geometry/Line;->dist(FFFF)F

    move-result v9

    cmpl-float v10, v7, v4

    if-eqz v10, :cond_3

    cmpg-float v10, v9, v5

    if-gez v10, :cond_4

    :cond_3
    move v7, v8

    move v5, v9

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 272
    :cond_5
    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->downX:F

    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->downY:F

    iget v5, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v3, v4, v5, v2}, Lcom/brakefield/infinitestudio/geometry/Line;->dist(FFFF)F

    move-result v2

    cmpg-float v0, v2, v0

    if-gez v0, :cond_8

    move v0, v1

    .line 277
    :goto_1
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->colors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 278
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->colors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/color/ColorPoint;

    .line 279
    iget v2, v2, Lcom/brakefield/infinitestudio/color/ColorPoint;->f:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 283
    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->colors:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/color/ColorPoint;

    .line 284
    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->colors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/color/ColorPoint;

    .line 286
    iget v3, v2, Lcom/brakefield/infinitestudio/color/ColorPoint;->f:F

    sub-float v3, v7, v3

    iget v4, v0, Lcom/brakefield/infinitestudio/color/ColorPoint;->f:F

    iget v5, v2, Lcom/brakefield/infinitestudio/color/ColorPoint;->f:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    .line 288
    iget-object v4, v2, Lcom/brakefield/infinitestudio/color/ColorPoint;->color:[F

    aget v4, v4, v1

    iget-object v5, v0, Lcom/brakefield/infinitestudio/color/ColorPoint;->color:[F

    aget v5, v5, v1

    iget-object v6, v2, Lcom/brakefield/infinitestudio/color/ColorPoint;->color:[F

    aget v6, v6, v1

    sub-float/2addr v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    .line 289
    iget-object v5, v2, Lcom/brakefield/infinitestudio/color/ColorPoint;->color:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    iget-object v8, v0, Lcom/brakefield/infinitestudio/color/ColorPoint;->color:[F

    aget v8, v8, v6

    iget-object v9, v2, Lcom/brakefield/infinitestudio/color/ColorPoint;->color:[F

    aget v9, v9, v6

    sub-float/2addr v8, v9

    mul-float/2addr v8, v3

    add-float/2addr v5, v8

    .line 290
    iget-object v8, v2, Lcom/brakefield/infinitestudio/color/ColorPoint;->color:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    iget-object v10, v0, Lcom/brakefield/infinitestudio/color/ColorPoint;->color:[F

    aget v10, v10, v9

    iget-object v11, v2, Lcom/brakefield/infinitestudio/color/ColorPoint;->color:[F

    aget v11, v11, v9

    sub-float/2addr v10, v11

    mul-float/2addr v10, v3

    add-float/2addr v8, v10

    .line 291
    iget-object v10, v2, Lcom/brakefield/infinitestudio/color/ColorPoint;->color:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    iget-object v0, v0, Lcom/brakefield/infinitestudio/color/ColorPoint;->color:[F

    aget v0, v0, v11

    iget-object v2, v2, Lcom/brakefield/infinitestudio/color/ColorPoint;->color:[F

    aget v2, v2, v11

    sub-float/2addr v0, v2

    mul-float/2addr v0, v3

    add-float/2addr v10, v0

    .line 293
    new-instance v0, Lcom/brakefield/infinitestudio/color/ColorPoint;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/color/ColorPoint;-><init>()V

    .line 294
    iput v7, v0, Lcom/brakefield/infinitestudio/color/ColorPoint;->f:F

    .line 295
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/ColorPoint;->color:[F

    aput v4, v2, v1

    .line 296
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/ColorPoint;->color:[F

    aput v5, v1, v6

    .line 297
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/ColorPoint;->color:[F

    aput v8, v1, v9

    .line 298
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/ColorPoint;->color:[F

    aput v10, v1, v11

    .line 300
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->adjust:Lcom/brakefield/infinitestudio/color/ColorPoint;

    .line 302
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->colors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->adjust:Lcom/brakefield/infinitestudio/color/ColorPoint;

    if-eqz v0, :cond_0

    .line 325
    invoke-static {p1}, Lcom/brakefield/infinitestudio/color/ColorUtils;->getARGBArray(I)[F

    move-result-object p1

    iput-object p1, v0, Lcom/brakefield/infinitestudio/color/ColorPoint;->color:[F

    :cond_0
    return-void
.end method

.method public sortColors()V
    .locals 7

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 365
    :goto_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->colors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const/4 v1, -0x1

    const/4 v3, 0x0

    move v4, v1

    .line 368
    :goto_1
    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->colors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 369
    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->colors:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/brakefield/infinitestudio/color/ColorPoint;

    if-eq v4, v1, :cond_0

    .line 370
    iget v6, v5, Lcom/brakefield/infinitestudio/color/ColorPoint;->f:F

    cmpg-float v6, v6, v3

    if-gez v6, :cond_1

    .line 371
    :cond_0
    iget v3, v5, Lcom/brakefield/infinitestudio/color/ColorPoint;->f:F

    move v4, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 375
    :cond_2
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->colors:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/color/ColorPoint;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->colors:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 379
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 380
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/GradientEditTool;->colors:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/color/ColorPoint;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method
