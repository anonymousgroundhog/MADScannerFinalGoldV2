.class public Lcom/brakefield/infinitestudio/geometry/PathTracer;
.super Landroid/graphics/Path;
.source "PathTracer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/geometry/PathTracer$Arc;,
        Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;,
        Lcom/brakefield/infinitestudio/geometry/PathTracer$Rect;,
        Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;,
        Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;,
        Lcom/brakefield/infinitestudio/geometry/PathTracer$LineTo;,
        Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;,
        Lcom/brakefield/infinitestudio/geometry/PathTracer$CubicTo;,
        Lcom/brakefield/infinitestudio/geometry/PathTracer$Close;,
        Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;,
        Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;,
        Lcom/brakefield/infinitestudio/geometry/PathTracer$Intersection;,
        Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/graphics/Path;",
        "Ljava/lang/Comparable<",
        "Lcom/brakefield/infinitestudio/geometry/PathTracer;",
        ">;"
    }
.end annotation


# static fields
.field private static final CCW:F = 1.0f

.field private static final CW:F


# instance fields
.field public id:I

.field private lastMove:Lcom/brakefield/infinitestudio/geometry/Point;

.field private lastPoint:Lcom/brakefield/infinitestudio/geometry/Point;

.field public parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private start:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->id:I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->start:Z

    .line 34
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->lastPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 35
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v1, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->lastMove:Lcom/brakefield/infinitestudio/geometry/Point;

    return-void
.end method

.method public static createPathFromSegments(Ljava/util/List;)Lcom/brakefield/infinitestudio/geometry/PathTracer;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;",
            ">;)",
            "Lcom/brakefield/infinitestudio/geometry/PathTracer;"
        }
    .end annotation

    .line 1461
    new-instance v7, Lcom/brakefield/infinitestudio/geometry/PathTracer;

    invoke-direct {v7}, Lcom/brakefield/infinitestudio/geometry/PathTracer;-><init>()V

    .line 1464
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v8, 0x1

    const/4 v0, 0x0

    move v9, v8

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;

    .line 1465
    invoke-static {v1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->access$000(Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;)I

    move-result v2

    const/4 v10, 0x0

    const/high16 v3, 0x40a00000    # 5.0f

    if-eqz v2, :cond_6

    if-eq v2, v8, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    goto :goto_0

    .line 1505
    :cond_0
    invoke-static {v1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->access$100(Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;

    if-eqz v9, :cond_1

    .line 1508
    iget v0, v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x1:F

    iget v1, v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y1:F

    invoke-virtual {v7, v0, v1}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->moveTo(FF)V

    .line 1509
    iget v1, v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x2:F

    iget v2, v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y2:F

    iget v3, v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    iget v4, v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    iget v5, v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x4:F

    iget v6, v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y4:F

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->cubicTo(FFFFFF)V

    move v9, v10

    goto :goto_1

    .line 1511
    :cond_1
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v2, v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x1:F

    iget v4, v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y1:F

    invoke-static {v1, v0, v2, v4}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    .line 1514
    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->close()V

    .line 1515
    iget v0, v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x1:F

    iget v1, v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y1:F

    invoke-virtual {v7, v0, v1}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->moveTo(FF)V

    .line 1516
    iget v1, v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x2:F

    iget v2, v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y2:F

    iget v3, v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    iget v4, v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    iget v5, v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x4:F

    iget v6, v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y4:F

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->cubicTo(FFFFFF)V

    goto :goto_1

    .line 1518
    :cond_2
    iget v1, v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x2:F

    iget v2, v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y2:F

    iget v3, v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    iget v4, v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    iget v5, v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x4:F

    iget v6, v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y4:F

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->cubicTo(FFFFFF)V

    .line 1521
    :goto_1
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x4:F

    iget v2, v11, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y4:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    goto/16 :goto_0

    .line 1486
    :cond_3
    invoke-static {v1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->access$100(Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;

    if-eqz v9, :cond_4

    .line 1489
    iget v0, v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x1:F

    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y1:F

    invoke-virtual {v7, v0, v2}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->moveTo(FF)V

    .line 1490
    iget v0, v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x2:F

    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y2:F

    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x3:F

    iget v4, v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y3:F

    invoke-virtual {v7, v0, v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->quadTo(FFFF)V

    move v9, v10

    goto :goto_2

    .line 1492
    :cond_4
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v4, v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x1:F

    iget v5, v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y1:F

    invoke-static {v2, v0, v4, v5}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    .line 1495
    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->close()V

    .line 1496
    iget v0, v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x1:F

    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y1:F

    invoke-virtual {v7, v0, v2}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->moveTo(FF)V

    .line 1497
    iget v0, v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x2:F

    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y2:F

    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x3:F

    iget v4, v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y3:F

    invoke-virtual {v7, v0, v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->quadTo(FFFF)V

    goto :goto_2

    .line 1499
    :cond_5
    iget v0, v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x2:F

    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y2:F

    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x3:F

    iget v4, v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y3:F

    invoke-virtual {v7, v0, v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->quadTo(FFFF)V

    .line 1502
    :goto_2
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x3:F

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y3:F

    invoke-direct {v0, v2, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    goto/16 :goto_0

    .line 1467
    :cond_6
    invoke-static {v1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->access$100(Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/geometry/Line;

    if-eqz v9, :cond_7

    .line 1470
    iget v0, v1, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    invoke-virtual {v7, v0, v2}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->moveTo(FF)V

    .line 1471
    iget v0, v1, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    invoke-virtual {v7, v0, v2}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->lineTo(FF)V

    move v9, v10

    goto :goto_3

    .line 1473
    :cond_7
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v4, v1, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    iget v5, v1, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    invoke-static {v2, v0, v4, v5}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    .line 1476
    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->close()V

    .line 1477
    iget v0, v1, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    invoke-virtual {v7, v0, v2}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->moveTo(FF)V

    .line 1478
    iget v0, v1, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    invoke-virtual {v7, v0, v2}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->lineTo(FF)V

    goto :goto_3

    .line 1480
    :cond_8
    iget v0, v1, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    invoke-virtual {v7, v0, v2}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->lineTo(FF)V

    .line 1483
    :goto_3
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    invoke-direct {v0, v2, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    goto/16 :goto_0

    :cond_9
    return-object v7
.end method

.method private static dist(FFFF)F
    .locals 4

    sub-float/2addr p0, p2

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 704
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float/2addr p1, p3

    float-to-double p0, p1

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static getIntersections2(Lcom/brakefield/infinitestudio/geometry/PathTracer;Lcom/brakefield/infinitestudio/geometry/PathTracer;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/geometry/PathTracer;",
            "Lcom/brakefield/infinitestudio/geometry/PathTracer;",
            ")",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/geometry/PathTracer$Intersection;",
            ">;"
        }
    .end annotation

    .line 1389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1391
    new-instance v1, Landroid/graphics/PathMeasure;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 1392
    new-instance v3, Landroid/graphics/PathMeasure;

    invoke-direct {v3, p1, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 1394
    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    .line 1395
    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    .line 1397
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 1398
    new-instance v4, Landroid/graphics/Region;

    sget v5, Lcom/brakefield/infinitestudio/sketchbook/Camera;->w:I

    sget v6, Lcom/brakefield/infinitestudio/sketchbook/Camera;->h:I

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {v1, p0, v4}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    const/4 p0, 0x2

    new-array p0, p0, [F

    .line 1402
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    const/4 v5, 0x0

    move-object v9, v5

    move v6, v7

    move v8, v6

    :goto_0
    int-to-float v10, v6

    cmpg-float v11, v10, p1

    if-gez v11, :cond_3

    .line 1412
    invoke-virtual {v3, v10, p0, v5}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    aget v11, p0, v7

    .line 1413
    iput v11, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aget v11, p0, v2

    .line 1414
    iput v11, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v11, -0x1

    if-nez v8, :cond_1

    .line 1416
    iget v8, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-int v8, v8

    iget v9, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-int v9, v9

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Region;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_0

    move v11, v2

    :cond_0
    :goto_1
    move v8, v11

    goto :goto_2

    .line 1418
    :cond_1
    iget v12, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-int v12, v12

    iget v13, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-int v13, v13

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Region;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_2

    move v11, v2

    :cond_2
    if-eq v11, v8, :cond_0

    .line 1421
    new-instance v8, Lcom/brakefield/infinitestudio/geometry/PathTracer$Intersection;

    new-instance v12, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v13, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v9, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v12, v13, v9}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-direct {v8, v12, v10}, Lcom/brakefield/infinitestudio/geometry/PathTracer$Intersection;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;F)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1424
    :goto_2
    new-instance v9, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v10, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v11, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v9, v10, v11}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1427
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1428
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Intersection;

    .line 1430
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/geometry/PathTracer$Intersection;

    .line 1431
    iget-object v4, v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Intersection;->point:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v5, v3, Lcom/brakefield/infinitestudio/geometry/PathTracer$Intersection;->point:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_5

    iget-object v4, v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Intersection;->point:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v3, v3, Lcom/brakefield/infinitestudio/geometry/PathTracer$Intersection;->point:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    cmpl-float v3, v4, v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_4

    :cond_6
    move v1, v7

    :goto_4
    if-nez v1, :cond_4

    .line 1437
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    return-object p0
.end method

.method private getLesserPathObject(Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;)Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 550
    :cond_0
    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->type:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v1, v4, :cond_3

    const/4 v4, 0x4

    if-eq v1, v4, :cond_1

    return-object v0

    .line 572
    :cond_1
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->getPoints()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 573
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 575
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 576
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 578
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v2, v0, v1}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 579
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/geometry/Line;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 581
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 582
    new-instance v7, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v6, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;FFFF)V

    return-object v7

    :cond_2
    return-object v0

    .line 564
    :cond_3
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->getPoints()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 565
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 566
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 567
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$LineTo;

    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, p0, v1, p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$LineTo;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;FF)V

    :cond_4
    return-object v0

    .line 556
    :cond_5
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->getPoints()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 557
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 558
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 559
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;

    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, p0, v1, p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;FF)V

    :cond_6
    return-object v0
.end method


# virtual methods
.method public addArc(Landroid/graphics/RectF;FF)V
    .locals 2

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/PathTracer$Arc;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/geometry/PathTracer$Arc;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;Landroid/graphics/RectF;FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->start:Z

    .line 47
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    return-void
.end method

.method public addCircle(FFFLandroid/graphics/Path$Direction;)V
    .locals 7

    .line 51
    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p4, v0}, Landroid/graphics/Path$Direction;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 52
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    new-instance v2, Landroid/graphics/RectF;

    sub-float v3, p1, p3

    sub-float v4, p2, p3

    add-float v5, p1, p3

    add-float v6, p2, p3

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 54
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;

    invoke-direct {v3, p0, v2, v0}, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;Landroid/graphics/RectF;F)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->start:Z

    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
    .locals 3

    .line 61
    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v0}, Landroid/graphics/Path$Direction;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 62
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;

    invoke-direct {v2, p0, p1, v0}, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;Landroid/graphics/RectF;F)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->start:Z

    .line 66
    invoke-super {p0, p1, p2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void
.end method

.method public addPath(Lcom/brakefield/infinitestudio/geometry/PathTracer;)V
    .locals 4

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    iget-object v1, p1, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 263
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    .line 264
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->copy()Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->start:Z

    .line 269
    invoke-super {p0, p1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    return-void
.end method

.method public addRect(FFFFLandroid/graphics/Path$Direction;)V
    .locals 9

    .line 80
    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p5, v0}, Landroid/graphics/Path$Direction;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    move v7, v0

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    new-instance v8, Lcom/brakefield/infinitestudio/geometry/PathTracer$Rect;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/brakefield/infinitestudio/geometry/PathTracer$Rect;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;FFFFF)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->start:Z

    .line 85
    invoke-super/range {p0 .. p5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
    .locals 3

    .line 70
    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v0}, Landroid/graphics/Path$Direction;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 71
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/PathTracer$Rect;

    invoke-direct {v2, p0, p1, v0}, Lcom/brakefield/infinitestudio/geometry/PathTracer$Rect;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;Landroid/graphics/RectF;F)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->start:Z

    .line 75
    invoke-super {p0, p1, p2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void
.end method

.method public addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V
    .locals 8

    .line 100
    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p4, v0}, Landroid/graphics/Path$Direction;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    move v6, v0

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    new-instance v7, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;Landroid/graphics/RectF;FFF)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->start:Z

    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V
    .locals 3

    .line 90
    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p3, v0}, Landroid/graphics/Path$Direction;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 91
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;Landroid/graphics/RectF;[FF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->start:Z

    .line 95
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public close()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 166
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/PathTracer$Close;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/geometry/PathTracer$Close;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->start:Z

    .line 168
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->lastMove:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->lastMove:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->lastPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 169
    invoke-super {p0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public compare(Lcom/brakefield/infinitestudio/geometry/PathTracer;)F
    .locals 13

    .line 2015
    new-instance v0, Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 2016
    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2, p1, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 2017
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    .line 2018
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    const/4 v4, 0x2

    new-array v5, v4, [F

    new-array v4, v4, [F

    const/4 v6, 0x0

    move v8, v1

    move v7, v6

    :goto_0
    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v9, v6, v9

    if-gtz v9, :cond_0

    mul-float v9, v6, p1

    const/4 v10, 0x0

    .line 2024
    invoke-virtual {v0, v9, v5, v10}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    mul-float v9, v6, v3

    .line 2025
    invoke-virtual {v2, v9, v4, v10}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    aget v9, v5, v1

    const/4 v10, 0x1

    aget v11, v5, v10

    aget v12, v4, v1

    aget v10, v4, v10

    .line 2026
    invoke-static {v9, v11, v12, v10}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v9

    add-float/2addr v7, v9

    add-int/lit8 v8, v8, 0x1

    const v9, 0x3d4ccccd    # 0.05f

    add-float/2addr v6, v9

    goto :goto_0

    :cond_0
    int-to-float p1, v8

    div-float/2addr v7, p1

    return v7
.end method

.method public compareTo(Lcom/brakefield/infinitestudio/geometry/PathTracer;)I
    .locals 1

    .line 624
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->id:I

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/PathTracer;->id:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Lcom/brakefield/infinitestudio/geometry/PathTracer;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->compareTo(Lcom/brakefield/infinitestudio/geometry/PathTracer;)I

    move-result p1

    return p1
.end method

.method public concat(Lcom/brakefield/infinitestudio/geometry/PathTracer;)V
    .locals 2

    .line 2034
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->getPathSegments()Ljava/util/ArrayList;

    move-result-object v0

    .line 2035
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->getPathSegments()Ljava/util/ArrayList;

    move-result-object p1

    .line 2036
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;

    invoke-direct {v1, v0}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;-><init>(Ljava/util/List;)V

    .line 2037
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;

    invoke-direct {v0, p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;-><init>(Ljava/util/List;)V

    .line 2038
    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->concat(Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;)V

    .line 2039
    iget-object p1, v1, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->segs:Ljava/util/List;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->createPathFromSegments(Ljava/util/List;)Lcom/brakefield/infinitestudio/geometry/PathTracer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->set(Lcom/brakefield/infinitestudio/geometry/PathTracer;)V

    return-void
.end method

.method public cubicTo(FFFFFF)V
    .locals 11

    move-object v8, p0

    .line 149
    iget-boolean v0, v8, Lcom/brakefield/infinitestudio/geometry/PathTracer;->start:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;FF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v2, v8, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {p0, v3, v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->moveTo(FF)V

    .line 155
    :cond_0
    iget-object v0, v8, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/util/List;

    .line 156
    new-instance v10, Lcom/brakefield/infinitestudio/geometry/PathTracer$CubicTo;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/brakefield/infinitestudio/geometry/PathTracer$CubicTo;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;FFFFFF)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 157
    iput-boolean v0, v8, Lcom/brakefield/infinitestudio/geometry/PathTracer;->start:Z

    .line 158
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, v8, Lcom/brakefield/infinitestudio/geometry/PathTracer;->lastPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 159
    invoke-super/range {p0 .. p6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-void
.end method

.method public cut(Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;Lcom/brakefield/infinitestudio/geometry/Point;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;",
            "Lcom/brakefield/infinitestudio/geometry/Point;",
            ")",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 788
    invoke-virtual {p1, p2, v0}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->cut(Lcom/brakefield/infinitestudio/geometry/Point;F)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public cut(Lcom/brakefield/infinitestudio/geometry/Point;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/geometry/Point;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;",
            ">;"
        }
    .end annotation

    .line 781
    new-instance p2, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->getPathSegments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;-><init>(Ljava/util/List;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 782
    invoke-virtual {p2, p1, v0}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->cut(Lcom/brakefield/infinitestudio/geometry/Point;F)V

    .line 783
    iget-object p1, p2, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->segs:Ljava/util/List;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->createPathFromSegments(Ljava/util/List;)Lcom/brakefield/infinitestudio/geometry/PathTracer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->set(Lcom/brakefield/infinitestudio/geometry/PathTracer;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public delete(Lcom/brakefield/infinitestudio/geometry/Point;)V
    .locals 11

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v3, v0

    move v4, v3

    move v5, v4

    move v2, v1

    .line 444
    :goto_0
    iget-object v6, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ge v2, v6, :cond_6

    .line 445
    iget-object v6, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move v8, v1

    .line 446
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 447
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    .line 448
    invoke-virtual {v9}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->getPoints()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 450
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v10, p1, :cond_0

    .line 456
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v7

    if-gt v8, v3, :cond_1

    add-int/lit8 v5, v8, 0x1

    :cond_1
    move v3, v2

    move v4, v8

    :cond_2
    if-eq v4, v0, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-eq v3, v0, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    if-eq v3, v0, :cond_e

    if-eq v4, v0, :cond_e

    .line 474
    iget-object v2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 475
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    .line 479
    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->type:I

    const/4 v6, 0x1

    if-eq v3, v6, :cond_c

    if-eq v3, v7, :cond_b

    const/4 v8, 0x3

    if-eq v3, v8, :cond_9

    const/4 v8, 0x4

    if-eq v3, v8, :cond_7

    goto/16 :goto_4

    .line 520
    :cond_7
    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    .line 522
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->getPoints()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 523
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d

    .line 524
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 525
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 526
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/brakefield/infinitestudio/geometry/Point;

    if-eq v1, p1, :cond_8

    if-eq v6, p1, :cond_8

    if-ne v5, v0, :cond_d

    .line 530
    :cond_8
    invoke-direct {p0, v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->getLesserPathObject(Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;)Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 532
    invoke-interface {v2, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 499
    :cond_9
    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    .line 501
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->getPoints()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 502
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    .line 503
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 504
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/brakefield/infinitestudio/geometry/Point;

    if-eq v1, p1, :cond_a

    if-ne v5, v0, :cond_d

    .line 509
    :cond_a
    invoke-direct {p0, v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->getLesserPathObject(Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;)Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 511
    invoke-interface {v2, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 495
    :cond_b
    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    goto :goto_4

    .line 483
    :cond_c
    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    if-eq v5, v0, :cond_d

    .line 485
    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    .line 486
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->getPoints()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 487
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 488
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 489
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;

    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, p0, v1, p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;FF)V

    invoke-interface {v2, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 540
    :cond_d
    :goto_4
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->reconstruct()V

    :cond_e
    return-void
.end method

.method public flip()V
    .locals 2

    .line 628
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->getPathSegments()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;-><init>(Ljava/util/List;)V

    .line 629
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->flip()V

    .line 630
    iget-object v0, v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->segs:Ljava/util/List;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->createPathFromSegments(Ljava/util/List;)Lcom/brakefield/infinitestudio/geometry/PathTracer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->set(Lcom/brakefield/infinitestudio/geometry/PathTracer;)V

    return-void
.end method

.method public getClosestPoint(Lcom/brakefield/infinitestudio/geometry/Point;F)Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 712
    iget-object v3, v1, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v6, v4

    const/high16 v7, -0x40800000    # -1.0f

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 713
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    .line 714
    invoke-virtual {v9}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->getPoints()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 718
    iget v9, v9, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->type:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eq v9, v11, :cond_9

    const/4 v13, 0x2

    if-eq v9, v13, :cond_6

    const/4 v14, 0x3

    if-eq v9, v14, :cond_3

    const/4 v14, 0x4

    if-eq v9, v14, :cond_0

    goto/16 :goto_7

    .line 759
    :cond_0
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 760
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 761
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 762
    new-instance v15, Lcom/brakefield/infinitestudio/geometry/CubicBezier;

    iget v13, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v14, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v12, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v9, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v5, v11, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v11, v11, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v1, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    move-object/from16 v21, v3

    iget v3, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    move/from16 v16, v12

    move-object v12, v15

    move-object/from16 v22, v4

    move-object v4, v15

    move/from16 v15, v16

    move/from16 v16, v9

    move/from16 v17, v5

    move/from16 v18, v11

    move/from16 v19, v1

    move/from16 v20, v3

    invoke-direct/range {v12 .. v20}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;-><init>(FFFFFFFF)V

    .line 763
    invoke-virtual {v4, v0, v2}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->getClosestPoint(Lcom/brakefield/infinitestudio/geometry/Point;F)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 765
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v5, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v6, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v3, v4, v5, v6}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->dist(FFFF)F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v5, v7, v4

    if-eqz v5, :cond_2

    cmpg-float v4, v3, v7

    if-gez v4, :cond_1

    goto :goto_2

    :cond_1
    move-object v6, v10

    goto/16 :goto_4

    :cond_2
    :goto_2
    move-object v4, v1

    move v7, v3

    move-object v6, v10

    goto/16 :goto_6

    :cond_3
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    .line 744
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 745
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 746
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;

    iget v10, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v11, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v12, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v13, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v14, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v15, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    move-object v9, v4

    invoke-direct/range {v9 .. v15}, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;-><init>(FFFFFF)V

    .line 748
    invoke-virtual {v4, v0, v2}, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->getClosestPoint(Lcom/brakefield/infinitestudio/geometry/Point;F)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 750
    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v6, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v9, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v4, v5, v6, v9}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->dist(FFFF)F

    move-result v4

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v6, v7, v5

    if-eqz v6, :cond_5

    cmpg-float v5, v4, v7

    if-gez v5, :cond_4

    goto :goto_3

    :cond_4
    move-object v6, v3

    goto :goto_4

    :cond_5
    :goto_3
    move-object v6, v3

    move v7, v4

    const/high16 v3, -0x40800000    # -1.0f

    move-object v4, v1

    goto/16 :goto_8

    :cond_6
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    .line 731
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 732
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v3, v6, v1}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 733
    invoke-virtual {v3, v0, v2}, Lcom/brakefield/infinitestudio/geometry/Line;->getClosestPoint(Lcom/brakefield/infinitestudio/geometry/Point;F)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 735
    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v6, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v9, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v4, v5, v6, v9}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->dist(FFFF)F

    move-result v4

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v6, v7, v5

    if-eqz v6, :cond_8

    cmpg-float v5, v4, v7

    if-gez v5, :cond_7

    goto :goto_5

    :cond_7
    move-object v6, v1

    :goto_4
    move-object/from16 v4, v22

    goto :goto_6

    :cond_8
    :goto_5
    move-object v6, v1

    move v7, v4

    move-object v4, v3

    :goto_6
    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_8

    :cond_9
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    .line 722
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 723
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v4, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v1, v3, v4, v5}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->dist(FFFF)F

    move-result v1

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, v7, v3

    if-eqz v4, :cond_a

    cmpg-float v4, v1, v7

    if-gez v4, :cond_d

    :cond_a
    move v7, v1

    move-object v4, v6

    goto :goto_8

    :cond_b
    :goto_7
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    :cond_c
    const/high16 v3, -0x40800000    # -1.0f

    :cond_d
    move-object/from16 v4, v22

    :goto_8
    move-object/from16 v1, p0

    move-object/from16 v3, v21

    goto/16 :goto_1

    :cond_e
    move-object/from16 v22, v4

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_f
    return-object v4
.end method

.method public getEnd(Ljava/util/List;Z)Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;",
            ">;Z)",
            "Lcom/brakefield/infinitestudio/geometry/Point;"
        }
    .end annotation

    .line 395
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 396
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    const/4 v2, 0x2

    if-nez p2, :cond_0

    .line 398
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v2

    .line 399
    :goto_0
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->type:I

    if-nez v3, :cond_0

    if-ltz p2, :cond_0

    .line 400
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    goto :goto_0

    .line 403
    :cond_0
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->getData()[F

    move-result-object p2

    .line 404
    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->type:I

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    goto :goto_1

    .line 418
    :cond_1
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    aget p1, p2, p1

    const/4 v1, 0x5

    aget p2, p2, v1

    invoke-direct {v0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    goto :goto_2

    .line 415
    :cond_2
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v1, p2, v2

    aget p1, p2, p1

    invoke-direct {v0, v1, p1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    goto :goto_2

    .line 412
    :cond_3
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    aget p1, p2, p1

    aget p2, p2, v1

    invoke-direct {v0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    goto :goto_2

    .line 409
    :cond_4
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    aget p1, p2, p1

    aget p2, p2, v1

    invoke-direct {v0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    goto :goto_2

    .line 406
    :cond_5
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->getStart(Ljava/util/List;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method public getEndPoint(Z)Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->getEnd(Ljava/util/List;Z)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object p1

    return-object p1
.end method

.method public getLineSegments()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/brakefield/infinitestudio/geometry/Line;",
            ">;>;"
        }
    .end annotation

    .line 1352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1353
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 1354
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v3, v2, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 1355
    iget-object v2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1356
    iget-object v2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1357
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    .line 1358
    invoke-virtual {v5, v1, v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->getLineSegments(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1359
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1360
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getMoveablePoints()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/brakefield/infinitestudio/geometry/Point;",
            ">;"
        }
    .end annotation

    .line 691
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 692
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 693
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    .line 694
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->getPoints()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 696
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 697
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getPathObjects()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;",
            ">;"
        }
    .end annotation

    .line 1839
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1841
    :goto_0
    iget-object v2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1842
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 1844
    iget-object v2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1845
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    .line 1846
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPathSegments()Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1800
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 1802
    :goto_0
    iget-object v4, v0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 1803
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 1805
    iget-object v5, v0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move v7, v2

    move-object v6, v4

    .line 1806
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 1807
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    .line 1808
    invoke-virtual {v8}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->getData()[F

    move-result-object v9

    .line 1809
    iget v8, v8, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->type:I

    if-eqz v8, :cond_4

    const/4 v10, 0x1

    if-eq v8, v10, :cond_3

    const/4 v11, 0x2

    if-eq v8, v11, :cond_2

    const/4 v12, 0x3

    if-eq v8, v12, :cond_1

    const/4 v13, 0x4

    if-eq v8, v13, :cond_0

    move v12, v2

    goto/16 :goto_3

    .line 1824
    :cond_0
    new-instance v8, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;

    new-instance v15, Lcom/brakefield/infinitestudio/geometry/CubicBezier;

    iget v14, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aget v17, v9, v2

    aget v18, v9, v10

    aget v19, v9, v11

    aget v20, v9, v12

    aget v21, v9, v13

    const/4 v10, 0x5

    aget v22, v9, v10

    move v12, v14

    move-object v14, v15

    move-object v2, v15

    move v15, v12

    move/from16 v16, v4

    invoke-direct/range {v14 .. v22}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;-><init>(FFFFFFFF)V

    invoke-direct {v8, v2, v11}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1825
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v4, v9, v13

    aget v8, v9, v10

    invoke-direct {v2, v4, v8}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    goto :goto_2

    .line 1819
    :cond_1
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;

    new-instance v8, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;

    iget v14, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v15, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v4, 0x0

    aget v16, v9, v4

    aget v17, v9, v10

    aget v18, v9, v11

    aget v19, v9, v12

    move-object v13, v8

    invoke-direct/range {v13 .. v19}, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;-><init>(FFFFFF)V

    invoke-direct {v2, v8, v10}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1821
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v4, v9, v11

    aget v8, v9, v12

    invoke-direct {v2, v4, v8}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    :goto_2
    move-object v4, v2

    const/4 v12, 0x0

    goto :goto_3

    .line 1815
    :cond_2
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;

    new-instance v8, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v11, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v12, 0x0

    aget v13, v9, v12

    aget v14, v9, v10

    invoke-direct {v8, v11, v4, v13, v14}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    invoke-direct {v2, v8, v12}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1816
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v4, v9, v12

    aget v8, v9, v10

    invoke-direct {v2, v4, v8}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    move-object v4, v2

    goto :goto_3

    :cond_3
    move v12, v2

    .line 1811
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v4, v9, v12

    aget v6, v9, v10

    invoke-direct {v2, v4, v6}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    move-object v4, v2

    move-object v6, v4

    goto :goto_3

    :cond_4
    move v12, v2

    .line 1828
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;

    new-instance v8, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v9, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v10, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v11, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v8, v9, v4, v10, v11}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    invoke-direct {v2, v8, v12}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v6

    :goto_3
    add-int/lit8 v7, v7, 0x1

    move v2, v12

    goto/16 :goto_1

    :cond_5
    move v12, v2

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    return-object v1
.end method

.method public getPaths()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/geometry/PathTracer;",
            ">;"
        }
    .end annotation

    .line 2053
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2054
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2055
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/PathTracer;

    invoke-direct {v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer;-><init>()V

    .line 2056
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    .line 2057
    iget v5, v4, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 2058
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2059
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/PathTracer;

    invoke-direct {v5}, Lcom/brakefield/infinitestudio/geometry/PathTracer;-><init>()V

    .line 2060
    invoke-virtual {v5, v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->set(Lcom/brakefield/infinitestudio/geometry/PathTracer;)V

    .line 2061
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2062
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/PathTracer;

    invoke-direct {v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer;-><init>()V

    .line 2065
    :cond_1
    invoke-virtual {v4, v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->addToPath(Landroid/graphics/Path;)V

    goto :goto_1

    .line 2067
    :cond_2
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2068
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/PathTracer;

    invoke-direct {v2}, Lcom/brakefield/infinitestudio/geometry/PathTracer;-><init>()V

    .line 2069
    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->set(Lcom/brakefield/infinitestudio/geometry/PathTracer;)V

    .line 2070
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getPoint(Ljava/util/List;I)Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;",
            ">;I)",
            "Lcom/brakefield/infinitestudio/geometry/Point;"
        }
    .end annotation

    .line 299
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 301
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    .line 302
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->getData()[F

    move-result-object v4

    .line 303
    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->type:I

    if-eqz v3, :cond_7

    const/4 v5, 0x1

    if-eq v3, v5, :cond_6

    const/4 v6, 0x2

    if-eq v3, v6, :cond_5

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-eq v3, v8, :cond_2

    if-eq v3, v7, :cond_0

    goto :goto_0

    :cond_0
    if-ne v2, p2, :cond_1

    .line 322
    new-instance p1, Lcom/brakefield/infinitestudio/geometry/Point;

    aget p2, v4, v1

    aget v0, v4, v5

    invoke-direct {p1, p2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-ne v2, p2, :cond_8

    .line 325
    new-instance p1, Lcom/brakefield/infinitestudio/geometry/Point;

    aget p2, v4, v6

    aget v0, v4, v8

    invoke-direct {p1, p2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object p1

    :cond_2
    if-ne v2, p2, :cond_3

    .line 330
    new-instance p1, Lcom/brakefield/infinitestudio/geometry/Point;

    aget p2, v4, v1

    aget v0, v4, v5

    invoke-direct {p1, p2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-ne v2, p2, :cond_4

    .line 333
    new-instance p1, Lcom/brakefield/infinitestudio/geometry/Point;

    aget p2, v4, v6

    aget v0, v4, v8

    invoke-direct {p1, p2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object p1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    if-ne v2, p2, :cond_8

    .line 336
    new-instance p1, Lcom/brakefield/infinitestudio/geometry/Point;

    aget p2, v4, v7

    const/4 v0, 0x5

    aget v0, v4, v0

    invoke-direct {p1, p2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object p1

    :cond_5
    if-ne v2, p2, :cond_8

    .line 316
    new-instance p1, Lcom/brakefield/infinitestudio/geometry/Point;

    aget p2, v4, v1

    aget v0, v4, v5

    invoke-direct {p1, p2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object p1

    :cond_6
    if-ne v2, p2, :cond_8

    .line 311
    new-instance p1, Lcom/brakefield/infinitestudio/geometry/Point;

    aget p2, v4, v1

    aget v0, v4, v5

    invoke-direct {p1, p2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object p1

    :cond_7
    if-ne v2, p2, :cond_8

    .line 306
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->getStart(Ljava/util/List;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object p1

    return-object p1

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPoints()I
    .locals 5

    .line 274
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 275
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    .line 276
    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->type:I

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public getPreviousPoint()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->lastPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    return-object v0
.end method

.method public getSelfIntersections()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/geometry/Point;",
            ">;"
        }
    .end annotation

    .line 1368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1369
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->getLineSegments()Ljava/util/List;

    move-result-object v1

    .line 1370
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1371
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1372
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brakefield/infinitestudio/geometry/Line;

    .line 1373
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1377
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ge v1, v3, :cond_4

    add-int/lit8 v3, v1, 0x2

    .line 1378
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1379
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brakefield/infinitestudio/geometry/Line;

    .line 1380
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/brakefield/infinitestudio/geometry/Line;

    .line 1381
    invoke-virtual {v4, v5}, Lcom/brakefield/infinitestudio/geometry/Line;->intersectSegments(Lcom/brakefield/infinitestudio/geometry/Line;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1382
    invoke-virtual {v4, v5}, Lcom/brakefield/infinitestudio/geometry/Line;->intersectsAt(Lcom/brakefield/infinitestudio/geometry/Line;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public getStart(Ljava/util/List;)Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;",
            ">;)",
            "Lcom/brakefield/infinitestudio/geometry/Point;"
        }
    .end annotation

    .line 362
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 363
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    .line 364
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->getData()[F

    move-result-object v1

    .line 365
    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->type:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 366
    new-instance p1, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v0, v1, v0

    aget v1, v1, v2

    invoke-direct {p1, v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    goto :goto_0

    .line 368
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getStartPoint()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->getStart(Ljava/util/List;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public isCCW()Z
    .locals 12

    .line 1530
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->getMoveablePoints()Ljava/util/ArrayList;

    move-result-object v0

    .line 1534
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v6, v2

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_0

    add-int/lit8 v8, v5, 0x1

    .line 1537
    rem-int v9, v8, v1

    .line 1538
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v10, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v11, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    mul-float/2addr v10, v11

    float-to-double v10, v10

    add-double/2addr v6, v10

    .line 1539
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v9, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    mul-float/2addr v5, v9

    float-to-double v9, v5

    sub-double/2addr v6, v9

    move v5, v8

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v0

    cmpl-double v0, v6, v2

    if-ltz v0, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method public isCW()Z
    .locals 1

    .line 1547
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->isCCW()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isClosed()Z
    .locals 4

    .line 386
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 389
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    .line 390
    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->type:I

    if-nez v0, :cond_1

    move v1, v3

    :cond_1
    return v1
.end method

.method public lineTo(FF)V
    .locals 4

    .line 119
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->start:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;FF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {p0, v3, v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->moveTo(FF)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 127
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/PathTracer$LineTo;

    invoke-direct {v1, p0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/PathTracer$LineTo;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->start:Z

    .line 130
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->lastPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 131
    invoke-super {p0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method public moveTo(FF)V
    .locals 2

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;

    invoke-direct {v1, p0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->start:Z

    .line 113
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->lastPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 114
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->lastMove:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 115
    invoke-super {p0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    return-void
.end method

.method public quadTo(FFFF)V
    .locals 8

    .line 135
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->start:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;FF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {p0, v3, v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->moveTo(FF)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 142
    new-instance v7, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;FFFF)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->start:Z

    .line 144
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p3, p4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->lastPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    return-void
.end method

.method public rCubicTo(FFFFFF)V
    .locals 12

    move-object v8, p0

    .line 208
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->getPreviousPoint()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v9

    .line 209
    iget-object v0, v8, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, v8, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/List;

    .line 211
    new-instance v11, Lcom/brakefield/infinitestudio/geometry/PathTracer$CubicTo;

    iget v0, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float v2, v0, p1

    iget v0, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float v3, v0, p2

    iget v0, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float v4, v0, p3

    iget v0, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float v5, v0, p4

    iget v0, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float v6, v0, p5

    iget v0, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float v7, v0, p6

    move-object v0, v11

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/brakefield/infinitestudio/geometry/PathTracer$CubicTo;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;FFFFFF)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    .line 213
    iput-boolean v0, v8, Lcom/brakefield/infinitestudio/geometry/PathTracer;->start:Z

    .line 214
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float v1, v1, p5

    iget v2, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float v2, v2, p6

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v0, v8, Lcom/brakefield/infinitestudio/geometry/PathTracer;->lastPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 215
    invoke-super/range {p0 .. p6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    return-void
.end method

.method public rLineTo(FF)V
    .locals 5

    .line 184
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->getPreviousPoint()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 187
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/PathTracer$LineTo;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v3, p1

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v4, p2

    invoke-direct {v2, p0, v3, v4}, Lcom/brakefield/infinitestudio/geometry/PathTracer$LineTo;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;FF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    .line 189
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->start:Z

    .line 190
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v2, p1

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v0, p2

    invoke-direct {v1, v2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->lastPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 191
    invoke-super {p0, p1, p2}, Landroid/graphics/Path;->rLineTo(FF)V

    return-void
.end method

.method public rMoveTo(FF)V
    .locals 5

    .line 173
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->getPreviousPoint()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 175
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v3, p1

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v4, p2

    invoke-direct {v2, p0, v3, v4}, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;FF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 177
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->start:Z

    .line 178
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v2, p1

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v3, p2

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->lastPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 179
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v2, p1

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v0, p2

    invoke-direct {v1, v2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->lastMove:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 180
    invoke-super {p0, p1, p2}, Landroid/graphics/Path;->rMoveTo(FF)V

    return-void
.end method

.method public rQuadTo(FFFF)V
    .locals 9

    .line 196
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->getPreviousPoint()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 199
    new-instance v8, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float v4, v2, p1

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float v5, v2, p2

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float v6, v2, p3

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float v7, v2, p4

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;FFFF)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    .line 201
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->start:Z

    .line 202
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v2, p3

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v0, p4

    invoke-direct {v1, v2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->lastPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 203
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    return-void
.end method

.method public reconstruct()V
    .locals 5

    .line 793
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/PathTracer;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/geometry/PathTracer;-><init>()V

    .line 794
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 795
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/PathTracer;

    invoke-direct {v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer;-><init>()V

    .line 796
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    if-eqz v4, :cond_0

    .line 798
    invoke-virtual {v4, v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->addToPath(Landroid/graphics/Path;)V

    goto :goto_1

    .line 802
    :cond_1
    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->addPath(Lcom/brakefield/infinitestudio/geometry/PathTracer;)V

    goto :goto_0

    .line 804
    :cond_2
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->set(Lcom/brakefield/infinitestudio/geometry/PathTracer;)V

    const/4 v0, 0x0

    .line 805
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->start:Z

    return-void
.end method

.method public reset()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 238
    invoke-super {p0}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method public reverse()V
    .locals 17

    move-object/from16 v0, p0

    .line 634
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/PathTracer;

    invoke-direct {v1}, Lcom/brakefield/infinitestudio/geometry/PathTracer;-><init>()V

    .line 635
    iget-object v2, v0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_d

    .line 636
    new-instance v11, Lcom/brakefield/infinitestudio/geometry/PathTracer;

    invoke-direct {v11}, Lcom/brakefield/infinitestudio/geometry/PathTracer;-><init>()V

    .line 637
    iget-object v4, v0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Ljava/util/List;

    .line 639
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    move v14, v4

    const/4 v15, 0x0

    :goto_1
    if-lez v14, :cond_b

    .line 640
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    add-int/lit8 v5, v14, -0x1

    .line 641
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    .line 642
    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->getData()[F

    move-result-object v6

    .line 643
    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->getData()[F

    move-result-object v7

    .line 645
    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->type:I

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v13, 0x2

    if-eq v5, v3, :cond_3

    if-eq v5, v13, :cond_2

    if-eq v5, v10, :cond_1

    if-eq v5, v9, :cond_0

    const/4 v5, 0x0

    move/from16 v16, v3

    goto :goto_3

    .line 656
    :cond_0
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v3, v7, v9

    aget v7, v7, v8

    invoke-direct {v5, v3, v7}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    goto :goto_2

    .line 653
    :cond_1
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v3, v7, v13

    aget v7, v7, v10

    invoke-direct {v5, v3, v7}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    :goto_2
    const/16 v16, 0x1

    goto :goto_3

    .line 650
    :cond_2
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v3, 0x0

    aget v8, v7, v3

    const/16 v16, 0x1

    aget v7, v7, v16

    invoke-direct {v5, v8, v7}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    goto :goto_3

    :cond_3
    move/from16 v16, v3

    const/4 v3, 0x0

    .line 647
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v8, v7, v3

    aget v3, v7, v16

    invoke-direct {v5, v8, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 659
    :goto_3
    iget v3, v4, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->type:I

    if-eqz v3, :cond_a

    if-eq v3, v13, :cond_8

    if-eq v3, v10, :cond_6

    if-eq v3, v9, :cond_4

    move/from16 v4, v16

    const/4 v3, 0x0

    goto/16 :goto_7

    .line 671
    :cond_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v14, v3, :cond_5

    .line 672
    aget v3, v6, v9

    const/4 v4, 0x5

    aget v7, v6, v4

    invoke-virtual {v11, v3, v7}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->moveTo(FF)V

    goto :goto_4

    :cond_5
    const/4 v4, 0x5

    .line 673
    :goto_4
    aget v3, v6, v9

    aget v7, v6, v4

    aget v8, v6, v13

    aget v9, v6, v10

    iget v10, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v13, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    move-object v4, v11

    move v5, v3

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v13

    invoke-virtual/range {v4 .. v10}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->cubicTo(FFFFFF)V

    goto :goto_5

    .line 666
    :cond_6
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v14, v3, :cond_7

    .line 667
    aget v3, v6, v13

    aget v4, v6, v10

    invoke-virtual {v11, v3, v4}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->moveTo(FF)V

    .line 668
    :cond_7
    aget v3, v6, v13

    aget v4, v6, v10

    iget v6, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v11, v3, v4, v6, v5}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->quadTo(FFFF)V

    :goto_5
    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_7

    .line 661
    :cond_8
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v14, v3, :cond_9

    const/4 v3, 0x0

    .line 662
    aget v7, v6, v3

    aget v6, v6, v4

    invoke-virtual {v11, v7, v6}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->moveTo(FF)V

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    .line 663
    :goto_6
    iget v6, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v11, v6, v5}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->lineTo(FF)V

    goto :goto_7

    :cond_a
    move/from16 v4, v16

    const/4 v3, 0x0

    .line 676
    invoke-virtual {v0, v12}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->getStart(Ljava/util/List;)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v6

    .line 677
    iget v7, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v11, v7, v6}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->moveTo(FF)V

    .line 678
    iget v6, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v11, v6, v5}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->lineTo(FF)V

    move v15, v4

    :goto_7
    add-int/lit8 v14, v14, -0x1

    move v3, v4

    goto/16 :goto_1

    :cond_b
    move v4, v3

    if-eqz v15, :cond_c

    .line 684
    invoke-virtual {v11}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->close()V

    .line 685
    :cond_c
    invoke-virtual {v1, v11}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->addPath(Lcom/brakefield/infinitestudio/geometry/PathTracer;)V

    add-int/lit8 v2, v2, -0x1

    move v3, v4

    goto/16 :goto_0

    .line 687
    :cond_d
    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->set(Lcom/brakefield/infinitestudio/geometry/PathTracer;)V

    return-void
.end method

.method public rewind()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 233
    invoke-super {p0}, Landroid/graphics/Path;->rewind()V

    return-void
.end method

.method public set(Lcom/brakefield/infinitestudio/geometry/PathTracer;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 429
    iget-object v0, p1, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 430
    iget-object v2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    .line 432
    iget-object v3, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->copy()Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 436
    :cond_2
    invoke-super {p0, p1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    return-void
.end method

.method public smooth()V
    .locals 12

    .line 1935
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1937
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    .line 1938
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->getPoints()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1942
    iget v5, v3, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->type:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_6

    const/4 v8, 0x2

    if-eq v5, v8, :cond_5

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eq v5, v10, :cond_3

    if-eq v5, v9, :cond_1

    goto/16 :goto_1

    .line 1980
    :cond_1
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 1981
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 1982
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v2, :cond_7

    .line 1984
    iget v4, v2, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->type:I

    if-ne v4, v10, :cond_2

    .line 1985
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->getPoints()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1987
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 1988
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 1989
    new-instance v6, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v6, v4, v5}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 1990
    invoke-virtual {v6}, Lcom/brakefield/infinitestudio/geometry/Line;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v4

    .line 1991
    iget v5, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v5, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 1992
    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput v4, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto/16 :goto_1

    .line 1994
    :cond_2
    iget v4, v2, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->type:I

    if-ne v4, v9, :cond_7

    .line 1995
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->getPoints()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1997
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 1998
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 1999
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 2000
    new-instance v6, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v6, v4, v5}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 2001
    invoke-virtual {v6}, Lcom/brakefield/infinitestudio/geometry/Line;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v4

    .line 2002
    iget v5, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v5, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 2003
    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput v4, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto :goto_1

    .line 1952
    :cond_3
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 1953
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v2, :cond_7

    .line 1955
    iget v4, v2, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->type:I

    if-ne v4, v10, :cond_4

    .line 1956
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->getPoints()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1958
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 1959
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 1960
    new-instance v6, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v6, v4, v5}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 1961
    invoke-virtual {v6}, Lcom/brakefield/infinitestudio/geometry/Line;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v4

    .line 1962
    iget v5, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v5, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 1963
    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput v4, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto :goto_1

    .line 1965
    :cond_4
    iget v4, v2, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->type:I

    if-ne v4, v9, :cond_7

    .line 1966
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->getPoints()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1968
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 1969
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 1970
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 1971
    new-instance v6, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v6, v4, v5}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 1972
    invoke-virtual {v6}, Lcom/brakefield/infinitestudio/geometry/Line;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v4

    .line 1973
    iget v5, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v5, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 1974
    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput v4, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto :goto_1

    .line 1949
    :cond_5
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/geometry/Point;

    goto :goto_1

    .line 1946
    :cond_6
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/geometry/Point;

    :cond_7
    :goto_1
    move-object v2, v3

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public toEPS(Ljava/io/FileWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "newpath"

    .line 2043
    invoke-virtual {p1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v0, "line.separator"

    .line 2044
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 2045
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2046
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    .line 2047
    invoke-virtual {v2, p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->toEPS(Ljava/io/FileWriter;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toSVG(Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "\"/>\n"

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 592
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    .line 593
    iget v6, v5, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->type:I

    packed-switch v6, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz v2, :cond_3

    .line 612
    invoke-virtual {p2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    move v2, v1

    goto :goto_2

    :pswitch_1
    if-eqz v2, :cond_1

    const-string v6, " "

    .line 597
    invoke-virtual {p2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_1
    :pswitch_2
    if-nez v2, :cond_3

    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "<path "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "id=\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    const-string v6, ""

    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "d=\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 616
    :cond_3
    :goto_2
    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->toSVG()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 620
    invoke-virtual {p2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 224
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    .line 225
    invoke-virtual {v2, p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->transform(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 228
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public transform(Landroid/graphics/Matrix;Lcom/brakefield/infinitestudio/geometry/PathTracer;)V
    .locals 5

    .line 242
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->rewind()V

    .line 243
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 244
    iget-object v2, p2, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    .line 246
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->copy()Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;

    move-result-object v2

    .line 247
    invoke-virtual {v2, p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->transform(Landroid/graphics/Matrix;)V

    .line 248
    iget-object v3, p2, Lcom/brakefield/infinitestudio/geometry/PathTracer;->parts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    return-void
.end method

.method public translate(FF)V
    .locals 1

    .line 255
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 256
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 257
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
