.class public Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;
.super Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;
.source "PenGuide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;
    }
.end annotation


# static fields
.field protected static final STROKE_SIZE:F = 4.0f

.field protected static final STROKE_SIZE_THIN:F = 2.0f

.field private static acceptDrawable:Landroid/graphics/drawable/Drawable;

.field private static fillAccept:Landroid/graphics/Paint;

.field private static lockDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field public final ACCEPT:I

.field public final MOVE:I

.field public final NONE:I

.field private added:Lcom/brakefield/infinitestudio/geometry/Point;

.field private downX:F

.field private downY:F

.field private editCase:I

.field fill:Landroid/graphics/Paint;

.field private finish:Z

.field private move:Z

.field private path:Landroid/graphics/Path;

.field public points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;",
            ">;"
        }
    .end annotation
.end field

.field private removing:Z

.field private snapPath:Landroid/graphics/Path;

.field private snapT:F

.field stroke:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->fillAccept:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 63
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->NONE:I

    const/4 v1, 0x1

    .line 33
    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->MOVE:I

    const/4 v2, 0x2

    .line 34
    iput v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->ACCEPT:I

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    .line 41
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->move:Z

    .line 47
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->path:Landroid/graphics/Path;

    .line 52
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->stroke:Landroid/graphics/Paint;

    .line 53
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->fill:Landroid/graphics/Paint;

    .line 55
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->finish:Z

    const/4 v1, 0x0

    .line 57
    iput-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->added:Lcom/brakefield/infinitestudio/geometry/Point;

    const/high16 v3, -0x40800000    # -1.0f

    .line 59
    iput v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->snapT:F

    .line 60
    iput-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->snapPath:Landroid/graphics/Path;

    .line 61
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->removing:Z

    const/4 v0, -0x1

    .line 65
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->fill:Landroid/graphics/Paint;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 68
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->stroke:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->stroke:Landroid/graphics/Paint;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->stroke:Landroid/graphics/Paint;

    const v3, -0x777778

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 73
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->acceptDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 74
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 76
    sget-object v2, Lcom/brakefield/infinitestudio/Main;->res:Landroid/content/res/Resources;

    sget v3, Lcom/brakefield/infinitestudio/R$drawable;->pen_accept:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->acceptDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v3, v1

    .line 77
    invoke-virtual {v2, v3, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 79
    sget-object v2, Lcom/brakefield/infinitestudio/Main;->res:Landroid/content/res/Resources;

    sget v4, Lcom/brakefield/infinitestudio/R$drawable;->pen_lock:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 80
    invoke-virtual {v2, v3, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 82
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->acceptDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 83
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->lockDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method private computeControlSmartPoints([F)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/List<",
            "[F>;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 619
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 620
    new-array v3, v1, [F

    .line 621
    new-array v4, v1, [F

    .line 624
    new-array v5, v1, [F

    .line 625
    new-array v6, v1, [F

    .line 626
    new-array v7, v1, [F

    .line 627
    new-array v8, v1, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 630
    aput v10, v5, v9

    const/high16 v11, 0x40000000    # 2.0f

    .line 631
    aput v11, v6, v9

    const/high16 v12, 0x3f800000    # 1.0f

    .line 632
    aput v12, v7, v9

    .line 633
    aget v13, v0, v9

    aget v14, v0, v2

    mul-float/2addr v14, v11

    add-float/2addr v13, v14

    aput v13, v8, v9

    move v13, v2

    :goto_0
    add-int/lit8 v14, v1, -0x1

    if-ge v13, v14, :cond_0

    .line 637
    aput v12, v5, v13

    const/high16 v14, 0x40800000    # 4.0f

    .line 638
    aput v14, v6, v13

    .line 639
    aput v12, v7, v13

    .line 640
    aget v15, v0, v13

    mul-float/2addr v15, v14

    add-int/lit8 v14, v13, 0x1

    aget v16, v0, v14

    mul-float v16, v16, v11

    add-float v15, v15, v16

    aput v15, v8, v13

    move v13, v14

    goto :goto_0

    .line 644
    :cond_0
    aput v11, v5, v14

    const/high16 v12, 0x40e00000    # 7.0f

    .line 645
    aput v12, v6, v14

    .line 646
    aput v10, v7, v14

    const/high16 v10, 0x41000000    # 8.0f

    .line 647
    aget v12, v0, v14

    mul-float/2addr v12, v10

    aget v10, v0, v1

    add-float/2addr v12, v10

    aput v12, v8, v14

    :goto_1
    if-ge v2, v1, :cond_1

    .line 651
    aget v10, v5, v2

    add-int/lit8 v12, v2, -0x1

    aget v13, v6, v12

    div-float/2addr v10, v13

    .line 652
    aget v13, v6, v2

    aget v15, v7, v12

    mul-float/2addr v15, v10

    sub-float/2addr v13, v15

    aput v13, v6, v2

    .line 653
    aget v13, v8, v2

    aget v12, v8, v12

    mul-float/2addr v10, v12

    sub-float/2addr v13, v10

    aput v13, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 656
    :cond_1
    aget v2, v8, v14

    aget v5, v6, v14

    div-float/2addr v2, v5

    aput v2, v3, v14

    add-int/lit8 v2, v1, -0x2

    :goto_2
    if-ltz v2, :cond_2

    .line 658
    aget v5, v8, v2

    aget v10, v7, v2

    add-int/lit8 v12, v2, 0x1

    aget v12, v3, v12

    mul-float/2addr v10, v12

    sub-float/2addr v5, v10

    aget v10, v6, v2

    div-float/2addr v5, v10

    aput v5, v3, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v9, v14, :cond_3

    add-int/lit8 v2, v9, 0x1

    .line 662
    aget v5, v0, v2

    mul-float/2addr v5, v11

    aget v6, v3, v2

    sub-float/2addr v5, v6

    aput v5, v4, v9

    move v9, v2

    goto :goto_3

    .line 664
    :cond_3
    aget v0, v0, v1

    aget v1, v3, v14

    add-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v5

    double-to-float v0, v0

    aput v0, v4, v14

    .line 666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 667
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getAcceptPoint()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 6

    .line 429
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 434
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 436
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v2, v0, v1}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 438
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v1, v3

    .line 439
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v3

    div-float/2addr v1, v3

    .line 440
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v2, v4

    double-to-float v2, v2

    .line 438
    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;->project(Lcom/brakefield/infinitestudio/geometry/Point;FF)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method private knotSmooth(Ljava/util/List;Landroid/graphics/Path;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/geometry/Point;",
            ">;",
            "Landroid/graphics/Path;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 579
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    .line 585
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 587
    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    move-object/from16 v3, p2

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    return-void

    :cond_1
    move-object/from16 v3, p2

    .line 592
    new-array v12, v2, [F

    .line 593
    new-array v13, v2, [F

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v2, :cond_2

    .line 596
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 597
    iget v8, v7, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v8, v12, v6

    .line 598
    iget v7, v7, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v7, v13, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 601
    :cond_2
    invoke-direct {v0, v12}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->computeControlSmartPoints([F)Ljava/util/List;

    move-result-object v1

    .line 602
    invoke-direct {v0, v13}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->computeControlSmartPoints([F)Ljava/util/List;

    move-result-object v6

    .line 606
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, [F

    .line 607
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, [F

    .line 608
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 609
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v16, v6

    check-cast v16, [F

    :goto_1
    add-int/lit8 v6, v2, -0x1

    if-ge v5, v6, :cond_3

    .line 612
    aget v6, v14, v5

    aget v7, v15, v5

    aget v8, v1, v5

    aget v9, v16, v5

    add-int/lit8 v17, v5, 0x1

    aget v10, v12, v17

    aget v11, v13, v17

    move-object/from16 v5, p2

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move/from16 v5, v17

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    const/4 v0, 0x0

    .line 388
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 389
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->added:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 390
    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->snapPath:Landroid/graphics/Path;

    const/high16 v0, -0x40800000    # -1.0f

    .line 391
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->snapT:F

    const/4 v0, 0x0

    .line 392
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->removing:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 676
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->getPath()Landroid/graphics/Path;

    move-result-object v0

    .line 704
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 705
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 707
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->finish:Z

    if-eqz v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->stroke:Landroid/graphics/Paint;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 710
    :cond_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->stroke:Landroid/graphics/Paint;

    sget v2, Lcom/brakefield/infinitestudio/color/Colors;->BLUE:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 712
    :goto_0
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->finish:Z

    const/high16 v2, 0x40800000    # 4.0f

    if-eqz v1, :cond_1

    .line 713
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->stroke:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_1

    .line 715
    :cond_1
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 717
    :goto_1
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->snapping:Z

    if-eqz v1, :cond_2

    .line 718
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->stroke:Landroid/graphics/Paint;

    const/16 v3, 0x3c

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2

    .line 720
    :cond_2
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->finish:Z

    if-eqz v1, :cond_3

    .line 721
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->stroke:Landroid/graphics/Paint;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2

    .line 723
    :cond_3
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->stroke:Landroid/graphics/Paint;

    const/16 v3, 0xc8

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 726
    :goto_2
    new-instance v1, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 727
    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 728
    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 730
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 732
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 734
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->snapping:Z

    if-eqz v0, :cond_4

    return-void

    .line 737
    :cond_4
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->finish:Z

    if-nez v0, :cond_5

    .line 738
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->drawControls(Landroid/graphics/Canvas;)V

    .line 740
    :cond_5
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->getAcceptPoint()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    if-nez v0, :cond_6

    return-void

    .line 745
    :cond_6
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 747
    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 751
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->editCase:I

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v1, v3, :cond_7

    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->move:Z

    if-nez v1, :cond_7

    .line 752
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->fillAccept:Landroid/graphics/Paint;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x3fc00000    # 1.5f

    goto :goto_3

    .line 755
    :cond_7
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->fillAccept:Landroid/graphics/Paint;

    const v3, -0xbbbbbc

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    move v1, v4

    .line 760
    :goto_3
    sget v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    mul-float/2addr v3, v4

    .line 762
    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 763
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->stroke:Landroid/graphics/Paint;

    const v5, -0x777778

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 765
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v3

    mul-float/2addr v6, v1

    iget-object v7, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 766
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v3, v6

    mul-float/2addr v3, v1

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->fillAccept:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 768
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 769
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 770
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 771
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->finish:Z

    if-eqz v0, :cond_8

    .line 772
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->acceptDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 774
    :cond_8
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 775
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawControls(Landroid/graphics/Canvas;)V
    .locals 9

    .line 397
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 399
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->getControlPoints()Ljava/util/List;

    move-result-object v1

    .line 400
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 402
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v3, v4, v5}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 404
    invoke-virtual {v3, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 408
    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v2, v4, :cond_1

    .line 409
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->stroke:Landroid/graphics/Paint;

    iget-boolean v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->removing:Z

    if-eqz v4, :cond_0

    sget v4, Lcom/brakefield/infinitestudio/color/Colors;->RED:I

    goto :goto_1

    :cond_0
    sget v4, Lcom/brakefield/infinitestudio/color/Colors;->BLUE:I

    :goto_1
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x3fc00000    # 1.5f

    goto :goto_2

    .line 412
    :cond_1
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->stroke:Landroid/graphics/Paint;

    const v4, -0xbbbbbc

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    move v2, v5

    .line 417
    :goto_2
    sget v4, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    mul-float/2addr v4, v5

    .line 419
    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->stroke:Landroid/graphics/Paint;

    const/high16 v6, 0x40800000    # 4.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 421
    iget v5, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v6, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v7, v4

    mul-float/2addr v7, v2

    iget-object v8, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 422
    iget v5, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v4, v6

    mul-float/2addr v4, v2

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public drawHint(Landroid/graphics/Canvas;FF)V
    .locals 0

    return-void
.end method

.method public getControlPoints()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/geometry/Point;",
            ">;"
        }
    .end annotation

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 560
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 561
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getJSON()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 11

    .line 447
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 449
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v7

    .line 452
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->isClosed()Z

    move-result v0

    .line 454
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 457
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 458
    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v3

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;

    .line 459
    iget-boolean v9, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->move:Z

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->removing:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-ne v6, v9, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    if-ne v6, v1, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    .line 464
    iget v5, v6, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->x:F

    iget v9, v6, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->y:F

    invoke-virtual {v7, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 465
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v8

    goto :goto_0

    .line 468
    :cond_4
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    iget v8, v6, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->type:I

    if-nez v8, :cond_1

    .line 470
    invoke-direct {p0, v2, v7}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->knotSmooth(Ljava/util/List;Landroid/graphics/Path;)V

    .line 471
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 472
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 476
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 477
    invoke-direct {p0, v2, v7}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->knotSmooth(Ljava/util/List;Landroid/graphics/Path;)V

    :cond_6
    if-eqz v0, :cond_8

    .line 480
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 481
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    sub-int/2addr v2, v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;

    .line 482
    iget v2, v1, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->type:I

    if-ne v2, v3, :cond_7

    .line 484
    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2, v7, v8}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    new-array v5, v4, [F

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 486
    invoke-virtual {v2, v6, v9, v5}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    new-array v4, v4, [F

    .line 488
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v6

    invoke-virtual {v2, v6, v9, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 490
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v6, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v9, v1, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->x:F

    iget v10, v1, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->y:F

    invoke-static {v2, v6, v9, v10}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    aget v6, v5, v3

    float-to-double v9, v6

    aget v5, v5, v8

    float-to-double v5, v5

    .line 492
    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v5, v9

    double-to-float v5, v5

    invoke-static {v0, v2, v5}, Lcom/brakefield/infinitestudio/geometry/Line;->project(Lcom/brakefield/infinitestudio/geometry/Point;FF)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v5

    aget v3, v4, v3

    float-to-double v9, v3

    aget v3, v4, v8

    float-to-double v3, v3

    .line 493
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Line;->project(Lcom/brakefield/infinitestudio/geometry/Point;FF)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    .line 500
    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v4, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v6, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v8, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    move-object v0, v7

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v8

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_1

    .line 502
    :cond_7
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v7, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 504
    :goto_1
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    :cond_8
    return-object v7
.end method

.method public getPaths()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 529
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 532
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 533
    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;

    if-eqz v4, :cond_1

    .line 535
    iget v4, v5, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->x:F

    iget v6, v5, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->y:F

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 536
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    goto :goto_0

    .line 539
    :cond_1
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    iget v6, v5, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->type:I

    if-nez v6, :cond_0

    .line 541
    invoke-direct {p0, v2, v1}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->knotSmooth(Ljava/util/List;Landroid/graphics/Path;)V

    .line 542
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 544
    iget v6, v5, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->x:F

    iget v7, v5, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->y:F

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 545
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 546
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 550
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 551
    invoke-direct {p0, v2, v1}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->knotSmooth(Ljava/util/List;Landroid/graphics/Path;)V

    .line 552
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public isClosed()Z
    .locals 6

    .line 512
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 516
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 518
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v5, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v3, v0, v5, v1}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v3

    div-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    return v4

    :cond_1
    return v2
.end method

.method public load(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    return-void
.end method

.method public onDown(FF)Z
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/high16 v3, -0x40800000    # -1.0f

    .line 142
    iput v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->snapT:F

    const/4 v4, 0x0

    .line 143
    iput-boolean v4, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->snapping:Z

    .line 145
    invoke-virtual/range {p0 .. p2}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->onShowPressed(FF)Z

    .line 147
    iget-boolean v5, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->finish:Z

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    iget v5, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->editCase:I

    if-eq v5, v6, :cond_0

    .line 148
    iput-boolean v7, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->snapping:Z

    return v4

    .line 152
    :cond_0
    iget-object v5, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 154
    iget-object v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    new-instance v5, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;

    invoke-direct {v5, v0, v1, v2, v4}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;-><init>(Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;FFI)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v3, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;-><init>(Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;FFI)V

    .line 157
    iget-object v4, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iput-object v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 160
    iput-object v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->added:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 162
    iput v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->downX:F

    .line 163
    iput v2, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->downY:F

    .line 165
    iput v7, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->editCase:I

    goto/16 :goto_9

    .line 167
    :cond_1
    iget-object v5, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-nez v5, :cond_d

    iget v5, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->editCase:I

    if-nez v5, :cond_d

    .line 169
    iput-boolean v7, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->move:Z

    .line 176
    iget-object v5, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v7, :cond_d

    .line 178
    iget-object v5, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v8, v5, [F

    .line 180
    new-instance v9, Landroid/graphics/PathMeasure;

    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->getPath()Landroid/graphics/Path;

    move-result-object v10

    invoke-direct {v9, v10, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 182
    invoke-virtual {v9}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v12, v10, v11

    const/4 v13, 0x0

    if-lez v12, :cond_a

    const/high16 v12, 0x42c80000    # 100.0f

    div-float v12, v10, v12

    new-array v6, v6, [F

    .line 190
    aput v11, v8, v4

    .line 191
    iget-object v14, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v7

    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v8, v14

    move v15, v7

    move/from16 v16, v15

    move v14, v11

    move/from16 v17, v14

    move/from16 v18, v17

    :goto_0
    cmpg-float v19, v14, v10

    const/high16 v20, 0x40000000    # 2.0f

    if-gtz v19, :cond_4

    .line 199
    iget-object v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v7

    if-ge v15, v3, :cond_4

    .line 201
    iget-object v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;

    .line 203
    invoke-virtual {v9, v14, v6, v13}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 205
    iget v11, v3, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->x:F

    iget v3, v3, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->y:F

    aget v13, v6, v4

    aget v4, v6, v7

    invoke-static {v11, v3, v13, v4}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v3

    if-eqz v16, :cond_2

    const/16 v16, 0x0

    goto :goto_1

    :cond_2
    cmpg-float v4, v17, v3

    if-gez v4, :cond_3

    .line 211
    aput v18, v8, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v7

    goto :goto_2

    :cond_3
    :goto_1
    div-float v18, v14, v10

    div-float v4, v3, v20

    .line 221
    invoke-static {v4, v12}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-float/2addr v14, v4

    move/from16 v17, v3

    :goto_2
    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    goto :goto_0

    :cond_4
    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_3
    cmpg-float v16, v4, v10

    if-gtz v16, :cond_7

    const/4 v7, 0x0

    .line 231
    invoke-virtual {v9, v4, v6, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    const/16 v17, 0x0

    aget v7, v6, v17

    move-object/from16 v18, v9

    const/16 v16, 0x1

    aget v9, v6, v16

    .line 233
    invoke-static {v1, v2, v7, v9}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v7

    const/4 v9, 0x0

    cmpl-float v21, v4, v9

    if-eqz v21, :cond_5

    cmpg-float v21, v7, v3

    if-gez v21, :cond_6

    :cond_5
    div-float v14, v4, v10

    aget v11, v6, v17

    aget v13, v6, v16

    move v3, v7

    :cond_6
    div-float v7, v7, v20

    .line 242
    invoke-static {v7, v12}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-float/2addr v4, v7

    move-object/from16 v9, v18

    const/4 v7, 0x1

    goto :goto_3

    :cond_7
    const/16 v17, 0x0

    .line 245
    sget v4, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v6

    div-float/2addr v4, v6

    cmpg-float v3, v3, v4

    if-gez v3, :cond_a

    .line 247
    iget-object v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;

    iget v3, v3, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->type:I

    .line 249
    new-instance v4, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;

    invoke-direct {v4, v0, v11, v13, v3}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;-><init>(Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;FFI)V

    move/from16 v3, v17

    :goto_4
    if-ge v3, v5, :cond_9

    .line 253
    aget v6, v8, v3

    cmpl-float v6, v6, v14

    if-lez v6, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 257
    :cond_9
    :goto_5
    iget-object v5, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v5, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 258
    iput-object v4, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->added:Lcom/brakefield/infinitestudio/geometry/Point;

    move-object v13, v4

    goto :goto_6

    :cond_a
    const/4 v13, 0x0

    :goto_6
    if-eqz v13, :cond_b

    .line 263
    sget v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    .line 264
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v4

    div-float/2addr v3, v4

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v3, v4, v3

    if-gez v3, :cond_b

    .line 266
    iput-object v13, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v3, 0x1

    .line 268
    iput v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->editCase:I

    goto :goto_8

    :cond_b
    const/4 v3, 0x1

    .line 273
    iget-object v4, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    .line 274
    iget-object v4, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;

    iget v4, v4, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->type:I

    goto :goto_7

    :cond_c
    move v4, v3

    .line 276
    :goto_7
    new-instance v5, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;

    invoke-direct {v5, v0, v1, v2, v4}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;-><init>(Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;FFI)V

    .line 278
    iput-object v5, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 279
    iput-object v5, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->added:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 281
    iput v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->editCase:I

    .line 283
    iget-object v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    :goto_8
    iget-object v1, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->path:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    goto :goto_a

    :cond_d
    :goto_9
    move v3, v7

    :goto_a
    return v3
.end method

.method public onMove(FF)Z
    .locals 6

    .line 302
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->finish:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->editCase:I

    if-eq v0, v1, :cond_0

    return v2

    .line 305
    :cond_0
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->move:Z

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 306
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->downX:F

    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->downY:F

    invoke-static {v0, v4, p1, p2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    sget v4, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    .line 307
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v5

    div-float/2addr v4, v5

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->move:Z

    .line 309
    :cond_2
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->editCase:I

    if-ne v0, v3, :cond_6

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->move:Z

    if-eqz v0, :cond_6

    .line 310
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 311
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 313
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_6

    .line 314
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p2, p1, -0x1

    add-int/2addr p1, v3

    .line 318
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->removing:Z

    const/4 v0, -0x1

    if-eq p2, v0, :cond_4

    .line 321
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 322
    iget v0, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget p2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v0, p2, v1, v4}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result p2

    sget v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    .line 324
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v1

    div-float/2addr v0, v1

    cmpg-float p2, p2, v0

    if-gez p2, :cond_3

    move p2, v3

    goto :goto_1

    :cond_3
    move p2, v2

    :goto_1
    iput-boolean p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->removing:Z

    .line 326
    :cond_4
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->removing:Z

    if-nez p2, :cond_6

    .line 327
    iget-object p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eq p1, p2, :cond_6

    .line 328
    iget-object p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 329
    iget p2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p2, p1, v0, v1}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result p1

    sget p2, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    .line 331
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v0

    div-float/2addr p2, v0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_5

    move v2, v3

    :cond_5
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->removing:Z

    .line 336
    :cond_6
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->getPath()Landroid/graphics/Path;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    return v3
.end method

.method public onMultiDown(FFFF)V
    .locals 0

    .line 379
    invoke-super {p0, p1, p2, p3, p4}, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->onMultiDown(FFFF)V

    .line 380
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->added:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz p1, :cond_0

    .line 381
    iget-object p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 382
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->getPath()Landroid/graphics/Path;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method public onShowPressed(FF)Z
    .locals 7

    .line 89
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->destroy()V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->move:Z

    .line 92
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->editCase:I

    .line 96
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->getAcceptPoint()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 101
    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v3, v1}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v1

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    .line 102
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v4

    div-float/2addr v3, v4

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    const/4 v0, 0x2

    .line 103
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->editCase:I

    .line 105
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->downX:F

    .line 106
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->downY:F

    return v2

    .line 111
    :cond_1
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->finish:Z

    if-eqz v1, :cond_2

    return v0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;

    .line 117
    iget v5, v4, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->x:F

    iget v6, v4, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->y:F

    invoke-static {p1, p2, v5, v6}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v5

    if-eqz v1, :cond_4

    cmpg-float v6, v5, v3

    if-gez v6, :cond_3

    :cond_4
    move-object v1, v4

    move v3, v5

    goto :goto_0

    .line 125
    :cond_5
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v4

    div-float/2addr v0, v4

    cmpg-float v0, v3, v0

    if-gez v0, :cond_6

    .line 127
    iput-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 128
    iput v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->editCase:I

    .line 130
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->downX:F

    .line 131
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->downY:F

    :cond_6
    return v2
.end method

.method public onUp()Z
    .locals 5

    .line 344
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->snapping:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 346
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->editCase:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_3

    .line 348
    iget-boolean v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->move:Z

    if-eqz v2, :cond_0

    iget-boolean v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->removing:Z

    if-eqz v4, :cond_0

    .line 349
    iput-boolean v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->removing:Z

    .line 350
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 351
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    goto :goto_1

    :cond_0
    if-nez v2, :cond_5

    .line 353
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v2, :cond_2

    .line 354
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    check-cast v2, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;

    .line 355
    iget v4, v2, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->type:I

    if-nez v4, :cond_1

    .line 356
    iput v1, v2, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->type:I

    goto :goto_0

    .line 358
    :cond_1
    iput v3, v2, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->type:I

    .line 360
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    .line 362
    iget-boolean v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->move:Z

    if-nez v2, :cond_5

    .line 363
    iget-boolean v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->finish:Z

    if-eqz v2, :cond_4

    .line 364
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 365
    iput-boolean v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->finish:Z

    goto :goto_1

    .line 367
    :cond_4
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->finish:Z

    :cond_5
    :goto_1
    const/4 v1, 0x0

    .line 370
    iput-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->adjust:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 371
    iput v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->editCase:I

    .line 372
    iput-boolean v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->snapping:Z

    return v0
.end method

.method public snap(Lcom/brakefield/infinitestudio/geometry/Point;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 781
    iget-boolean v2, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->snapping:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 823
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->getPath()Landroid/graphics/Path;

    move-result-object v4

    iput-object v4, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->snapPath:Landroid/graphics/Path;

    .line 825
    new-instance v4, Landroid/graphics/PathMeasure;

    iget-object v5, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->snapPath:Landroid/graphics/Path;

    invoke-direct {v4, v5, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 827
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    const/high16 v6, 0x41a00000    # 20.0f

    .line 829
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v7

    div-float/2addr v6, v7

    const/high16 v8, -0x40800000    # -1.0f

    move v10, v8

    move v11, v10

    move v12, v11

    move v13, v12

    const/4 v9, 0x0

    :goto_0
    cmpg-float v14, v9, v5

    const/4 v7, 0x0

    const/16 v16, 0x1

    if-gtz v14, :cond_3

    .line 839
    invoke-virtual {v4, v9, v2, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 841
    iget v7, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v14, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aget v15, v2, v3

    aget v3, v2, v16

    invoke-static {v7, v14, v15, v3}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v3

    cmpl-float v7, v10, v8

    if-eqz v7, :cond_1

    cmpg-float v7, v3, v10

    if-gez v7, :cond_2

    :cond_1
    const/4 v7, 0x0

    aget v12, v2, v7

    aget v13, v2, v16

    move v10, v3

    move v11, v9

    :cond_2
    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v3, v7

    .line 850
    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v9, v3

    const/4 v3, 0x0

    goto :goto_0

    .line 853
    :cond_3
    iget v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->snapT:F

    cmpl-float v3, v3, v8

    if-nez v3, :cond_4

    .line 854
    iput v11, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->snapT:F

    .line 856
    :cond_4
    iget v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->snapT:F

    sub-float v3, v11, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v5, v8

    cmpl-float v3, v3, v8

    if-lez v3, :cond_6

    .line 857
    iget v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->snapT:F

    cmpl-float v3, v3, v11

    if-lez v3, :cond_5

    add-float/2addr v11, v5

    goto :goto_1

    :cond_5
    sub-float/2addr v11, v5

    .line 864
    :cond_6
    :goto_1
    iget v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->snapT:F

    cmpg-float v8, v11, v3

    if-gez v8, :cond_7

    sub-float v8, v3, v11

    cmpl-float v8, v8, v6

    if-lez v8, :cond_8

    sub-float/2addr v3, v6

    goto :goto_2

    :cond_7
    sub-float v8, v11, v3

    cmpl-float v8, v8, v6

    if-lez v8, :cond_8

    add-float/2addr v3, v6

    goto :goto_2

    :cond_8
    move v3, v11

    :goto_2
    rem-float/2addr v3, v5

    rem-float/2addr v11, v5

    cmpl-float v6, v11, v3

    if-eqz v6, :cond_9

    .line 880
    invoke-virtual {v4, v3, v2, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 882
    iget v4, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v6, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v7, 0x0

    aget v8, v2, v7

    aget v9, v2, v16

    invoke-static {v4, v6, v8, v9}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    aget v12, v2, v7

    aget v13, v2, v16

    :cond_9
    const/4 v2, 0x0

    cmpg-float v2, v3, v2

    if-gez v2, :cond_a

    add-float/2addr v3, v5

    .line 894
    :cond_a
    iput v12, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 895
    iput v13, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 897
    iput v3, v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->snapT:F

    return v16
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 2

    .line 570
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;

    .line 571
    invoke-virtual {v1, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->transform(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 573
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    return-void
.end method
