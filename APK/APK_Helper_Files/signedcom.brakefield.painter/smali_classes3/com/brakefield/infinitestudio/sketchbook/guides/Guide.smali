.class public abstract Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;
.super Ljava/lang/Object;
.source "Guide.java"


# static fields
.field public static final JSON_ANGLE:Ljava/lang/String; = "angle"

.field public static final JSON_RADIUS:Ljava/lang/String; = "radius"

.field public static final JSON_X_1:Ljava/lang/String; = "x1"

.field public static final JSON_X_2:Ljava/lang/String; = "x2"

.field public static final JSON_X_3:Ljava/lang/String; = "x3"

.field public static final JSON_Y_1:Ljava/lang/String; = "y1"

.field public static final JSON_Y_2:Ljava/lang/String; = "y2"

.field public static final JSON_Y_3:Ljava/lang/String; = "y3"

.field protected static final STROKE_SIZE:F = 4.0f


# instance fields
.field protected adjust:Lcom/brakefield/infinitestudio/geometry/Point;

.field protected cursorStroke:Landroid/graphics/Paint;

.field protected downX:F

.field protected downY:F

.field protected fill:Landroid/graphics/Paint;

.field protected guideStroke:Landroid/graphics/Paint;

.field protected knobSize:I

.field public lock:Z

.field protected move:Z

.field protected moveDrawable:Landroid/graphics/drawable/Drawable;

.field protected perspectiveFactor:F

.field public set:Z

.field public setting:Z

.field public showCursor:Z

.field public showGrid:Z

.field public snap:Z

.field protected snapAngle:F

.field protected snapCase:Lcom/brakefield/infinitestudio/geometry/Point;

.field protected snapX:F

.field protected snapY:F

.field protected snapping:Z

.field protected startDistance:F

.field protected stroke:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->snapping:Z

    const/4 v1, 0x1

    .line 47
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->showGrid:Z

    .line 49
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->cursorStroke:Landroid/graphics/Paint;

    .line 50
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->guideStroke:Landroid/graphics/Paint;

    .line 52
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->lock:Z

    .line 53
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->snap:Z

    .line 54
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->showCursor:Z

    .line 56
    sget-object v2, Lcom/brakefield/infinitestudio/Main;->res:Landroid/content/res/Resources;

    sget v3, Lcom/brakefield/infinitestudio/R$dimen;->knob_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->knobSize:I

    .line 58
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->set:Z

    .line 59
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->setting:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 61
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->perspectiveFactor:F

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->fill:Landroid/graphics/Paint;

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->stroke:Landroid/graphics/Paint;

    .line 71
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->fill:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->fill:Landroid/graphics/Paint;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 74
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->stroke:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->stroke:Landroid/graphics/Paint;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 79
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->cursorStroke:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->cursorStroke:Landroid/graphics/Paint;

    sget-object v2, Lcom/brakefield/infinitestudio/Main;->res:Landroid/content/res/Resources;

    sget v3, Lcom/brakefield/infinitestudio/R$color;->highlight:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->cursorStroke:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->cursorStroke:Landroid/graphics/Paint;

    const/16 v3, 0x3c

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 84
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->guideStroke:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->guideStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->guideStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->guideStroke:Landroid/graphics/Paint;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 89
    sget-object v0, Lcom/brakefield/infinitestudio/Main;->res:Landroid/content/res/Resources;

    sget v1, Lcom/brakefield/infinitestudio/R$drawable;->transform:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->moveDrawable:Landroid/graphics/drawable/Drawable;

    .line 90
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->knobSize:I

    neg-int v2, v1

    neg-int v3, v1

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 92
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->moveDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method


# virtual methods
.method public applyPerspectiveFactor(F)F
    .locals 0

    .line 148
    iget p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->perspectiveFactor:F

    return p1
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V
    .locals 3

    .line 98
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    if-eqz p6, :cond_0

    .line 101
    iget-object p6, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->fill:Landroid/graphics/Paint;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v1

    invoke-virtual {p6, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p6, 0x3fc00000    # 1.5f

    goto :goto_0

    .line 104
    :cond_0
    iget-object p6, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->fill:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {p6, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p6, 0x3f800000    # 1.0f

    .line 107
    :goto_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->stroke:Landroid/graphics/Paint;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->stroke:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v0

    mul-float/2addr v1, p6

    .line 110
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p6

    .line 111
    iget-object p6, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, v0, p6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-nez p2, :cond_1

    return-void

    .line 116
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 117
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 p3, 0x0

    cmpl-float p3, p5, p3

    if-eqz p3, :cond_2

    .line 119
    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 120
    :cond_2
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public abstract drawHint(Landroid/graphics/Canvas;FF)V
.end method

.method public abstract getJSON()Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public abstract load(Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public abstract onDown(FF)Z
.end method

.method public abstract onMove(FF)Z
.end method

.method public onMultiDown(FFFF)V
    .locals 0

    .line 152
    invoke-static {p1, p2, p3, p4}, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->onMultiDown(FFFF)V

    return-void
.end method

.method public onMultiMove(FFFF)V
    .locals 0

    .line 156
    invoke-static {p1, p2, p3, p4}, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->onMultiMove(FFFF)V

    return-void
.end method

.method public onMultiUp(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 160
    invoke-static {p1}, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->onMultiUp(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public abstract onUp()Z
.end method

.method public abstract snap(Lcom/brakefield/infinitestudio/geometry/Point;)Z
.end method

.method public abstract transform(Landroid/graphics/Matrix;)V
.end method

.method protected updateSnapPoint(Lcom/brakefield/infinitestudio/geometry/Point;)V
    .locals 1

    .line 125
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->snapX:F

    .line 126
    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/Guide;->snapY:F

    return-void
.end method
