.class public Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;
.super Ljava/lang/Object;
.source "PathTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/geometry/PathTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathSegment"
.end annotation


# static fields
.field public static final CUBIC:I = 0x2

.field public static final IN:I = -0x1

.field public static final LINE:I = 0x0

.field public static final OUT:I = 0x1

.field public static final QUAD:I = 0x1

.field public static final UNDEFINED:I


# instance fields
.field private location:I

.field private object:Ljava/lang/Object;

.field private path:Lcom/brakefield/infinitestudio/geometry/PathTracer;

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1

    .line 1565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1562
    iput v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->location:I

    const/4 v0, 0x0

    .line 1563
    iput-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->path:Lcom/brakefield/infinitestudio/geometry/PathTracer;

    .line 1566
    iput-object p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    .line 1567
    iput p2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->type:I

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;)I
    .locals 0

    .line 1550
    iget p0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->type:I

    return p0
.end method

.method static synthetic access$100(Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;)Ljava/lang/Object;
    .locals 0

    .line 1550
    iget-object p0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    return-object p0
.end method

.method private getPaint()Landroid/graphics/Paint;
    .locals 3

    .line 1630
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v1, 0x40a00000    # 5.0f

    .line 1631
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1632
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1633
    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->location:I

    if-nez v1, :cond_0

    const v1, -0x777778

    .line 1634
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const v1, -0xffff01

    .line 1636
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    const/high16 v1, -0x10000

    .line 1638
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;)I
    .locals 6

    .line 1674
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->type:I

    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->type:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    return v2

    .line 1701
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;

    .line 1702
    iget-object p1, p1, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast p1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;

    .line 1703
    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x1:F

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x1:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y1:F

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y1:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x2:F

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x2:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y2:F

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y2:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x4:F

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x4:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y4:F

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y4:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    return v3

    .line 1707
    :cond_2
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x1:F

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x4:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y1:F

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y4:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x4:F

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x1:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y4:F

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y1:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x2:F

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y2:F

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x2:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y2:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v2

    .line 1690
    :cond_4
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;

    .line 1691
    iget-object p1, p1, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast p1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;

    .line 1692
    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x1:F

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x1:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_5

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y1:F

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y1:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_5

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x2:F

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x2:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_5

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y2:F

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y2:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_5

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x3:F

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x3:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_5

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y3:F

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y3:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_5

    return v3

    .line 1695
    :cond_5
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x1:F

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x3:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_6

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y1:F

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y3:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_6

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x3:F

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x1:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_6

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y3:F

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y1:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_6

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x2:F

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x2:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_6

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y2:F

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y2:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v2

    .line 1678
    :cond_7
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/Line;

    .line 1679
    iget-object p1, p1, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast p1, Lcom/brakefield/infinitestudio/geometry/Line;

    .line 1680
    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_8

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_8

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_8

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_8

    return v3

    .line 1683
    :cond_8
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_9

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_9

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    iget v4, p1, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_9

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_9

    return v1

    :cond_9
    return v2
.end method

.method public cut(Lcom/brakefield/infinitestudio/geometry/Point;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/geometry/Point;",
            ")",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;",
            ">;"
        }
    .end annotation

    .line 1741
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1742
    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->type:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_3

    .line 1758
    :cond_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;

    .line 1759
    invoke-virtual {v1, p1}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->cut(Lcom/brakefield/infinitestudio/geometry/Point;)Ljava/util/List;

    move-result-object p1

    .line 1760
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;

    .line 1761
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;

    invoke-direct {v3, v1, v2}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1751
    :cond_1
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;

    .line 1752
    invoke-virtual {v1, p1}, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->cut(Lcom/brakefield/infinitestudio/geometry/Point;)Ljava/util/List;

    move-result-object p1

    .line 1753
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;

    .line 1754
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;

    invoke-direct {v3, v1, v2}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1744
    :cond_2
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v1, Lcom/brakefield/infinitestudio/geometry/Line;

    .line 1745
    invoke-virtual {v1, p1}, Lcom/brakefield/infinitestudio/geometry/Line;->cut(Lcom/brakefield/infinitestudio/geometry/Point;)Ljava/util/List;

    move-result-object p1

    .line 1746
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/geometry/Line;

    .line 1747
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    :goto_3
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1608
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->type:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1621
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;

    .line 1622
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 1623
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x1:F

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y1:F

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1624
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x2:F

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y2:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    iget v5, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    iget v6, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x4:F

    iget v7, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y4:F

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1625
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1614
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;

    .line 1615
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1616
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x1:F

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y1:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1617
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x2:F

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y2:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x3:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y3:F

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1618
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1610
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/Line;

    .line 1611
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    iget v5, v0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9

    .line 1586
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->type:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1599
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;

    .line 1600
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 1601
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x1:F

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y1:F

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1602
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x2:F

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y2:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    iget v5, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    iget v6, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x4:F

    iget v7, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y4:F

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1603
    invoke-virtual {p1, v8, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1592
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;

    .line 1593
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1594
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x1:F

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y1:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1595
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x2:F

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y2:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x3:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y3:F

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1596
    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1588
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/Line;

    .line 1589
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    iget v5, v0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public flip()Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;
    .locals 13

    .line 1571
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->type:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1579
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;

    .line 1580
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;

    new-instance v12, Lcom/brakefield/infinitestudio/geometry/CubicBezier;

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x4:F

    iget v5, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y4:F

    iget v6, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    iget v7, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    iget v8, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x2:F

    iget v9, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y2:F

    iget v10, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x1:F

    iget v11, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y1:F

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;-><init>(FFFFFFFF)V

    invoke-direct {v2, v12, v1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;-><init>(Ljava/lang/Object;I)V

    return-object v2

    .line 1576
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;

    .line 1577
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;

    new-instance v10, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x3:F

    iget v5, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y3:F

    iget v6, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x2:F

    iget v7, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y2:F

    iget v8, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x1:F

    iget v9, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y1:F

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;-><init>(FFFFFF)V

    invoke-direct {v2, v10, v1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;-><init>(Ljava/lang/Object;I)V

    return-object v2

    .line 1573
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/Line;

    .line 1574
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;

    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    iget v5, v0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    const/4 v0, 0x0

    invoke-direct {v1, v2, v0}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;-><init>(Ljava/lang/Object;I)V

    return-object v1
.end method

.method public getClosestPoint(Lcom/brakefield/infinitestudio/geometry/Point;F)Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 2

    .line 1768
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->type:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1776
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;

    .line 1777
    invoke-virtual {v0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->getClosestPoint(Lcom/brakefield/infinitestudio/geometry/Point;F)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object p1

    return-object p1

    .line 1773
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;

    .line 1774
    invoke-virtual {v0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->getClosestPoint(Lcom/brakefield/infinitestudio/geometry/Point;F)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object p1

    return-object p1

    .line 1770
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/Line;

    .line 1771
    invoke-virtual {v0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Line;->getClosestPoint(Lcom/brakefield/infinitestudio/geometry/Point;F)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object p1

    return-object p1
.end method

.method public getEnd()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 3

    .line 1659
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->type:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1667
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;

    .line 1668
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x4:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y4:F

    invoke-direct {v1, v2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object v1

    .line 1664
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;

    .line 1665
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x3:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y3:F

    invoke-direct {v1, v2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object v1

    .line 1661
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/Line;

    .line 1662
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    invoke-direct {v1, v2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object v1
.end method

.method public getLength()F
    .locals 2

    .line 1783
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->type:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1791
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;

    .line 1792
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->getLength()F

    move-result v0

    return v0

    .line 1788
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;

    .line 1789
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->getLength()F

    move-result v0

    return v0

    .line 1785
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/Line;

    .line 1786
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v0

    return v0
.end method

.method public getPath()Lcom/brakefield/infinitestudio/geometry/PathTracer;
    .locals 11

    .line 1718
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->path:Lcom/brakefield/infinitestudio/geometry/PathTracer;

    if-nez v0, :cond_3

    .line 1719
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/PathTracer;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/geometry/PathTracer;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->path:Lcom/brakefield/infinitestudio/geometry/PathTracer;

    .line 1720
    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->type:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 1732
    :cond_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;

    .line 1733
    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x1:F

    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y1:F

    invoke-virtual {v0, v2, v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->moveTo(FF)V

    .line 1734
    iget-object v4, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->path:Lcom/brakefield/infinitestudio/geometry/PathTracer;

    iget v5, v1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x2:F

    iget v6, v1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y2:F

    iget v7, v1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x3:F

    iget v8, v1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y3:F

    iget v9, v1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x4:F

    iget v10, v1, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y4:F

    invoke-virtual/range {v4 .. v10}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->cubicTo(FFFFFF)V

    goto :goto_0

    .line 1727
    :cond_1
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;

    .line 1728
    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x1:F

    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y1:F

    invoke-virtual {v0, v2, v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->moveTo(FF)V

    .line 1729
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->path:Lcom/brakefield/infinitestudio/geometry/PathTracer;

    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x2:F

    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y2:F

    iget v4, v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x3:F

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y3:F

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->quadTo(FFFF)V

    goto :goto_0

    .line 1722
    :cond_2
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v1, Lcom/brakefield/infinitestudio/geometry/Line;

    .line 1723
    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    invoke-virtual {v0, v2, v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->moveTo(FF)V

    .line 1724
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->path:Lcom/brakefield/infinitestudio/geometry/PathTracer;

    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Line;->x2:F

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Line;->y2:F

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->lineTo(FF)V

    .line 1737
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->path:Lcom/brakefield/infinitestudio/geometry/PathTracer;

    return-object v0
.end method

.method public getStart()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 3

    .line 1644
    iget v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->type:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1652
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;

    .line 1653
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->x1:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/CubicBezier;->y1:F

    invoke-direct {v1, v2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object v1

    .line 1649
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;

    .line 1650
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->x1:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->y1:F

    invoke-direct {v1, v2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object v1

    .line 1646
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->object:Ljava/lang/Object;

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/Line;

    .line 1647
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Line;->x1:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Line;->y1:F

    invoke-direct {v1, v2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object v1
.end method
