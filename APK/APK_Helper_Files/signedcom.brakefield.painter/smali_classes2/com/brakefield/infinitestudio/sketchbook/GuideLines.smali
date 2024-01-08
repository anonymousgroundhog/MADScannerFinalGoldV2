.class public Lcom/brakefield/infinitestudio/sketchbook/GuideLines;
.super Ljava/lang/Object;
.source "GuideLines.java"


# static fields
.field public static final JSON_CURVILINEAR_PERSPECTIVE_GUIDE:Ljava/lang/String; = "curvilinear perspective-guide"

.field public static final JSON_ELLIPTICAL_GUIDE:Ljava/lang/String; = "elliptical-guide"

.field public static final JSON_FOCAL_GUIDE:Ljava/lang/String; = "focal-guide"

.field public static final JSON_LINEAR_GUIDE:Ljava/lang/String; = "linear-guide"

.field public static final JSON_ONE_POINT_PERSPECTIVE_GUIDE:Ljava/lang/String; = "1 point perspective-guide"

.field public static final JSON_QUICK_CURVE_GUIDE:Ljava/lang/String; = "quick curve-guide"

.field public static final JSON_THREE_POINT_PERSPECTIVE_GUIDE:Ljava/lang/String; = "3 point perspective-guide"

.field public static final JSON_TWO_POINT_PERSPECTIVE_GUIDE:Ljava/lang/String; = "2 point perspective-guide"

.field public static RANGE:I = 0x0

.field public static SNAP_DISTANCE:I = 0x32

.field public static TOUCH_SIZE:F = 40.0f

.field public static final TYPE_CURVILINEAR_PERSPECTIVE:I = 0x8

.field public static final TYPE_ELLIPTICAL:I = 0x2

.field public static final TYPE_FOCAL:I = 0x3

.field public static final TYPE_ISOMETRIC_PERSPECTIVE:I = 0x9

.field public static final TYPE_LINEAR:I = 0x1

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_ONE_POINT_PERSPECTIVE:I = 0x5

.field public static final TYPE_QUICK_CURVE:I = 0x4

.field public static final TYPE_THREE_POINT_PERSPECTIVE:I = 0x7

.field public static final TYPE_TWO_POINT_PERSPECTIVE:I = 0x6

.field private static currentMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/geometry/Point;",
            ">;"
        }
    .end annotation
.end field

.field public static curvilinearPerspectiveGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;

.field public static ellipticalGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;

.field public static fill:Landroid/graphics/Paint;

.field public static focalGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;

.field public static forceSnap:Z

.field public static gravitator:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

.field public static guide:Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;

.field public static interp:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

.field public static linearGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;

.field public static onePointPerspectiveGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;

.field public static paint:Landroid/graphics/Paint;

.field public static paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field public static quickCurveGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;

.field public static shadowPaint:Landroid/graphics/Paint;

.field public static snap:Z

.field private static snapMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/geometry/Point;",
            ">;"
        }
    .end annotation
.end field

.field public static snapPaint:Landroid/graphics/Paint;

.field public static threePointPerspectiveGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;

.field public static twoPointPerspectiveGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;

.field public static type:I


# instance fields
.field showGrid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paths:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->snapMap:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->currentMap:Ljava/util/List;

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->shadowPaint:Landroid/graphics/Paint;

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->snapPaint:Landroid/graphics/Paint;

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->fill:Landroid/graphics/Paint;

    .line 73
    sput-boolean v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->snap:Z

    .line 75
    new-instance v0, Lcom/brakefield/infinitestudio/interpolators/AccelInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/interpolators/AccelInterpolator;-><init>(F)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->interp:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    const/4 v0, 0x0

    .line 77
    sput-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->forceSnap:Z

    .line 79
    new-instance v1, Lcom/brakefield/infinitestudio/interpolators/AccelInterpolator;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v2}, Lcom/brakefield/infinitestudio/interpolators/AccelInterpolator;-><init>(F)V

    sput-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->gravitator:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    const/16 v1, 0x32

    .line 81
    sput v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->RANGE:I

    const/4 v1, 0x0

    .line 83
    sput-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->guide:Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;

    .line 85
    sput v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->type:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->showGrid:Z

    return-void
.end method

.method public static applyPerspectiveFactor(FFF)F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public static buildSnapMap()V
    .locals 10

    .line 291
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->snapMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 292
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    if-eqz v1, :cond_0

    .line 294
    new-instance v2, Landroid/graphics/PathMeasure;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 295
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    const/4 v4, 0x2

    new-array v4, v4, [F

    move v5, v3

    :goto_0
    int-to-float v6, v5

    cmpg-float v7, v6, v1

    if-gez v7, :cond_0

    const/4 v7, 0x0

    .line 298
    invoke-virtual {v2, v6, v4, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 299
    sget-object v6, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->snapMap:Ljava/util/List;

    new-instance v7, Lcom/brakefield/infinitestudio/geometry/Point;

    aget v8, v4, v3

    const/4 v9, 0x1

    aget v9, v4, v9

    invoke-direct {v7, v8, v9}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x5

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static declared-synchronized clear()V
    .locals 2

    const-class v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;

    monitor-enter v0

    const/4 v1, 0x0

    .line 146
    :try_start_0
    sput-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->guide:Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized draw(Landroid/graphics/Canvas;)V
    .locals 4

    const-class v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;

    monitor-enter v0

    .line 134
    :try_start_0
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->fill:Landroid/graphics/Paint;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    if-eqz v2, :cond_0

    .line 136
    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 138
    :cond_1
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->guide:Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 370
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 372
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->linearGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;

    if-eqz v1, :cond_0

    const-string v2, "linear-guide"

    .line 373
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->getJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    :cond_0
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->ellipticalGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;

    if-eqz v1, :cond_1

    const-string v2, "elliptical-guide"

    .line 376
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->getJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 378
    :cond_1
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->focalGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;

    if-eqz v1, :cond_2

    const-string v2, "focal-guide"

    .line 379
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->getJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    :cond_2
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->onePointPerspectiveGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;

    if-eqz v1, :cond_3

    const-string v2, "1 point perspective-guide"

    .line 386
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->getJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 385
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    :cond_3
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->twoPointPerspectiveGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;

    if-eqz v1, :cond_4

    const-string v2, "2 point perspective-guide"

    .line 390
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->getJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 389
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 392
    :cond_4
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->threePointPerspectiveGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;

    if-eqz v1, :cond_5

    const-string v2, "3 point perspective-guide"

    .line 394
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->getJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 393
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    :cond_5
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->curvilinearPerspectiveGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;

    if-eqz v1, :cond_6

    const-string v2, "curvilinear perspective-guide"

    .line 398
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->getJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 397
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    return-object v0
.end method

.method public static getSnap(Lcom/brakefield/infinitestudio/geometry/Point;)Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 9

    .line 151
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->RANGE:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->RANGE:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget v4, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->RANGE:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget v5, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->RANGE:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 154
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->RANGE:I

    int-to-float v1, v1

    .line 156
    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->snapMap:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 157
    iget v5, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v6, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v0, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 158
    iget v5, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v6, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v7, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v8, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v5, v6, v7, v8}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v5

    cmpg-float v6, v5, v1

    if-ltz v6, :cond_1

    if-nez v3, :cond_0

    :cond_1
    move-object v3, v4

    move v1, v5

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public static init()V
    .locals 3

    const/high16 v0, 0x40400000    # 3.0f

    .line 97
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    .line 98
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v1

    sput v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    .line 100
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 103
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 104
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 105
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 106
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 108
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->shadowPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 109
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->shadowPaint:Landroid/graphics/Paint;

    sget v2, Lcom/brakefield/infinitestudio/color/Colors;->DARK:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->shadowPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->shadowPaint:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 113
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->fill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->fill:Landroid/graphics/Paint;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->clear()V

    .line 117
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->snapPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 118
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 119
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->snapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 121
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->linearGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;

    .line 122
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->ellipticalGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;

    .line 123
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->focalGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;

    .line 124
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->quickCurveGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;

    .line 125
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->onePointPerspectiveGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;

    .line 126
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->twoPointPerspectiveGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;

    .line 127
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->threePointPerspectiveGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;

    .line 128
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->curvilinearPerspectiveGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;

    .line 130
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->load()V

    return-void

    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x41200000    # 10.0f
        0x40a00000    # 5.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public static isPerspectiveGuide()Z
    .locals 2

    .line 440
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static load()V
    .locals 5

    .line 404
    :try_start_0
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getTempProjectPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v1, Lcom/google/android/exoplayer2/metadata/icy/OZ/XlYsLoHtRjl;->kOhNrkAO:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFileInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 407
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 412
    :cond_0
    new-instance v3, Lorg/json/JSONTokener;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 414
    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->linearGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;

    const-string v4, "linear-guide"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;->load(Lorg/json/JSONObject;)V

    .line 415
    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->ellipticalGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;

    const-string v4, "elliptical-guide"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;->load(Lorg/json/JSONObject;)V

    .line 416
    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->focalGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;

    const-string v4, "focal-guide"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;->load(Lorg/json/JSONObject;)V

    .line 418
    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->onePointPerspectiveGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;

    const-string v4, "1 point perspective-guide"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;->load(Lorg/json/JSONObject;)V

    .line 419
    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->twoPointPerspectiveGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;

    const-string v4, "2 point perspective-guide"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;->load(Lorg/json/JSONObject;)V

    .line 420
    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->threePointPerspectiveGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;

    const-string v4, "3 point perspective-guide"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;->load(Lorg/json/JSONObject;)V

    .line 421
    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->curvilinearPerspectiveGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;

    const-string v4, "curvilinear perspective-guide"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;->load(Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 423
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v2

    .line 404
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 424
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_3
    return-void
.end method

.method public static onDown(FF)V
    .locals 1

    const/4 v0, 0x0

    .line 236
    sput-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->forceSnap:Z

    .line 238
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->guide:Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->onDown(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 240
    :cond_0
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 241
    invoke-static {v0}, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->snap(Lcom/brakefield/infinitestudio/geometry/Point;)V

    const/4 p0, 0x1

    .line 243
    sput-boolean p0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->forceSnap:Z

    return-void
.end method

.method public static onMove(FF)V
    .locals 1

    .line 268
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->guide:Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->onMove(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 270
    :cond_0
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 274
    sget-boolean p0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->forceSnap:Z

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->snap(Lcom/brakefield/infinitestudio/geometry/Point;)V

    :cond_1
    return-void
.end method

.method public static onUp(Landroid/graphics/Canvas;)V
    .locals 0

    .line 287
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->guide:Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->onUp()Z

    :cond_0
    return-void
.end method

.method public static save()V
    .locals 2

    .line 350
    :try_start_0
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getTempProjectPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "guides.json"

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFileOutputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 351
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 352
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->getJSON()Lorg/json/JSONObject;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 355
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setGravity(I)V
    .locals 3

    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p0, v0

    const/high16 v2, 0x41200000    # 10.0f

    if-gez v1, :cond_0

    .line 281
    new-instance v1, Lcom/brakefield/infinitestudio/interpolators/AccelInterpolator;

    sub-float/2addr v0, p0

    mul-float/2addr v0, v2

    invoke-direct {v1, v0}, Lcom/brakefield/infinitestudio/interpolators/AccelInterpolator;-><init>(F)V

    sput-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->interp:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    goto :goto_0

    :cond_0
    cmpl-float v1, p0, v0

    if-nez v1, :cond_1

    .line 282
    new-instance p0, Lcom/brakefield/infinitestudio/interpolators/LinearInterpolator;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/interpolators/LinearInterpolator;-><init>()V

    sput-object p0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->interp:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    goto :goto_0

    .line 283
    :cond_1
    new-instance v1, Lcom/brakefield/infinitestudio/interpolators/DecelInterpolator;

    sub-float/2addr p0, v0

    mul-float/2addr p0, v2

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/interpolators/DecelInterpolator;-><init>(F)V

    sput-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->interp:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    :goto_0
    return-void
.end method

.method public static setGuide()V
    .locals 1

    .line 306
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->type:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 338
    :pswitch_0
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/sketchbook/guides/IsometricGuide;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->guide:Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;

    goto :goto_0

    .line 335
    :pswitch_1
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->curvilinearPerspectiveGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/CurvilinearPerspectiveGuide;

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->guide:Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;

    goto :goto_0

    .line 332
    :pswitch_2
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->threePointPerspectiveGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/ThreePointPerspectiveGuide;

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->guide:Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;

    goto :goto_0

    .line 329
    :pswitch_3
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->twoPointPerspectiveGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/TwoPointPerspectiveGuide;

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->guide:Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;

    goto :goto_0

    .line 326
    :pswitch_4
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->onePointPerspectiveGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/OnePointPerspectiveGuide;

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->guide:Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;

    goto :goto_0

    .line 323
    :pswitch_5
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->guide:Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;

    goto :goto_0

    .line 319
    :pswitch_6
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->focalGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/FocalGuide;

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->guide:Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;

    goto :goto_0

    .line 315
    :pswitch_7
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->ellipticalGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/EllipticalGuide;

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->guide:Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;

    goto :goto_0

    .line 311
    :pswitch_8
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->linearGuide:Lcom/brakefield/infinitestudio/sketchbook/guides/LinearGuide;

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->guide:Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;

    goto :goto_0

    :pswitch_9
    const/4 v0, 0x0

    .line 308
    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->guide:Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setType(I)V
    .locals 0

    .line 344
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->type:I

    .line 345
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->setGuide()V

    return-void
.end method

.method public static declared-synchronized snap(Lcom/brakefield/infinitestudio/geometry/Point;)V
    .locals 10

    const-class v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;

    monitor-enter v0

    .line 171
    :try_start_0
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->RANGE:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget v4, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->RANGE:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget v5, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->RANGE:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget v6, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->RANGE:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 174
    sget v2, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->RANGE:I

    int-to-float v2, v2

    .line 176
    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->snapMap:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 177
    iget v6, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v7, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v1, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 178
    iget v6, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v7, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v8, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v9, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v6, v7, v8, v9}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v6

    cmpg-float v7, v6, v2

    if-gez v7, :cond_0

    move-object v4, v5

    move v2, v6

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 188
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v5, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 190
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v2

    .line 191
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v1

    .line 193
    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->gravitator:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    sget v4, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->RANGE:I

    int-to-float v5, v4

    sub-float/2addr v5, v2

    int-to-float v4, v4

    invoke-interface {v3, v2, v5, v4}, Lcom/brakefield/infinitestudio/interpolators/Interpolator;->interpolate(FFF)F

    move-result v2

    .line 195
    iget v3, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v3, v3

    float-to-double v5, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    add-double/2addr v3, v7

    double-to-float v3, v3

    iput v3, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 196
    iget v3, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v5, v1

    add-double/2addr v3, v5

    double-to-float v1, v3

    iput v1, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 199
    :cond_2
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->guide:Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->snap(Lcom/brakefield/infinitestudio/geometry/Point;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized snapToCurrentMap(Lcom/brakefield/infinitestudio/geometry/Point;)V
    .locals 10

    const-class v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;

    monitor-enter v0

    .line 204
    :try_start_0
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->RANGE:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget v4, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->RANGE:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget v5, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->RANGE:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget v6, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->RANGE:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 207
    sget v2, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->RANGE:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 209
    :goto_0
    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->currentMap:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    if-ge v4, v5, :cond_1

    .line 210
    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->currentMap:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 211
    iget v6, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v7, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v1, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 212
    iget v6, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v7, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v8, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v9, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v6, v7, v8, v9}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v6

    cmpg-float v7, v6, v2

    if-gez v7, :cond_0

    move-object v3, v5

    move v2, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 222
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v5, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 224
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v2

    .line 225
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v1

    .line 227
    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->gravitator:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    sget v4, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->RANGE:I

    int-to-float v5, v4

    sub-float/2addr v5, v2

    int-to-float v4, v4

    invoke-interface {v3, v2, v5, v4}, Lcom/brakefield/infinitestudio/interpolators/Interpolator;->interpolate(FFF)F

    move-result v2

    .line 229
    iget v3, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v3, v3

    float-to-double v5, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    add-double/2addr v3, v7

    double-to-float v3, v3

    iput v3, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 230
    iget v3, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v5, v1

    add-double/2addr v3, v5

    double-to-float v1, v3

    iput v1, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static transform(Landroid/graphics/Matrix;)V
    .locals 1

    .line 142
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->guide:Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method
