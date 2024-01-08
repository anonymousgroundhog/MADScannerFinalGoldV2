.class public abstract Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;
.super Ljava/lang/Object;
.source "Sym.java"


# static fields
.field public static final LOCK:I = 0x3

.field public static final MOVE:I = 0x1

.field public static final NONE:I = 0x0

.field public static final ROTATE:I = 0x2

.field protected static final STROKE_SIZE:F = 4.0f


# instance fields
.field protected adjust:Z

.field protected control:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

.field protected controlPressed:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

.field protected fill:Landroid/graphics/Paint;

.field protected knobSize:I

.field protected lockDrawable:Landroid/graphics/drawable/Drawable;

.field protected moveDrawable:Landroid/graphics/drawable/Drawable;

.field protected prevX:F

.field protected prevY:F

.field protected rotateDrawable:Landroid/graphics/drawable/Drawable;

.field protected stroke:Landroid/graphics/Paint;

.field protected touchCase:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->touchCase:I

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->adjust:Z

    .line 47
    sget-object v1, Lcom/brakefield/infinitestudio/Main;->res:Landroid/content/res/Resources;

    sget v2, Lcom/brakefield/infinitestudio/R$dimen;->knob_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->knobSize:I

    .line 49
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->fill:Landroid/graphics/Paint;

    .line 50
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->stroke:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->fill:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->fill:Landroid/graphics/Paint;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 58
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->stroke:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->stroke:Landroid/graphics/Paint;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 64
    new-instance v0, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->control:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    .line 65
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->knobSize:I

    neg-int v2, v1

    neg-int v3, v1

    invoke-virtual {v0, v2, v3, v1, v1}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->setBounds(IIII)V

    .line 66
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->control:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->setColor(I)V

    .line 68
    new-instance v0, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->controlPressed:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    .line 69
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->knobSize:I

    neg-int v3, v2

    neg-int v4, v2

    invoke-virtual {v0, v3, v4, v2, v2}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->setBounds(IIII)V

    .line 70
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->controlPressed:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    const v2, -0x333334

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->setColor(I)V

    .line 72
    sget-object v0, Lcom/brakefield/infinitestudio/Main;->res:Landroid/content/res/Resources;

    sget v2, Lcom/brakefield/infinitestudio/R$drawable;->transform:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->moveDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->knobSize:I

    neg-int v3, v2

    neg-int v4, v2

    invoke-virtual {v0, v3, v4, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 76
    sget-object v0, Lcom/brakefield/infinitestudio/Main;->res:Landroid/content/res/Resources;

    sget v2, Lcom/brakefield/infinitestudio/R$drawable;->guide_rotate:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->rotateDrawable:Landroid/graphics/drawable/Drawable;

    .line 77
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->knobSize:I

    neg-int v3, v2

    neg-int v4, v2

    invoke-virtual {v0, v3, v4, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 80
    sget-object v0, Lcom/brakefield/infinitestudio/Main;->res:Landroid/content/res/Resources;

    sget v2, Lcom/brakefield/infinitestudio/R$drawable;->pen_lock:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->knobSize:I

    neg-int v3, v2

    neg-int v4, v2

    invoke-virtual {v0, v3, v4, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 84
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->moveDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 85
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->lockDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 86
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->rotateDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method


# virtual methods
.method public bindSettings(Landroid/app/Activity;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 226
    sget p1, Lcom/brakefield/infinitestudio/R$id;->plane_slider_text_row:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 227
    sget p3, Lcom/brakefield/infinitestudio/R$id;->plane_slider_row:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 228
    sget p4, Lcom/brakefield/infinitestudio/R$id;->fan_slider_text_row:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    .line 229
    sget v0, Lcom/brakefield/infinitestudio/R$id;->fan_slider_row:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    .line 231
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 232
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 233
    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 234
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public abstract close(FF)I
.end method

.method public abstract copy()Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFZ)V
    .locals 3

    .line 92
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    if-eqz p5, :cond_0

    .line 95
    iget-object p5, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->fill:Landroid/graphics/Paint;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v1

    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p5, 0x3fc00000    # 1.5f

    goto :goto_0

    .line 98
    :cond_0
    iget-object p5, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->fill:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p5, 0x3f800000    # 1.0f

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->stroke:Landroid/graphics/Paint;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->stroke:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v0

    mul-float/2addr v1, p5

    .line 104
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p5

    .line 105
    iget-object p5, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, v0, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 108
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 109
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public abstract getAngle()F
.end method

.method public abstract getCenterPoint()Lcom/brakefield/infinitestudio/geometry/Point;
.end method

.method public getClippingPlane(FF)I
    .locals 0

    const/4 p1, 0x0

    return p1
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

.method public abstract getMatrices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end method

.method public getTouchSize()F
    .locals 2

    .line 213
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getGlobalZoom()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public abstract getType()I
.end method

.method public onDown(FF)Z
    .locals 2

    .line 175
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->adjust:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 177
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->close(FF)I

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->touchCase:I

    .line 179
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->prevX:F

    .line 180
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->prevY:F

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onLongpress(FF)Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->adjust:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->close(FF)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 131
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->adjust:Z

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMove(FF)Z
    .locals 7

    .line 187
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->adjust:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->touchCase:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    return v2

    .line 190
    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 191
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->touchCase:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->prevX:F

    sub-float v1, p1, v1

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->prevY:F

    sub-float v3, p2, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 193
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->getCenterPoint()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    .line 194
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->getAngle()F

    move-result v3

    float-to-double v3, v3

    iget v5, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v6, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v5, v6, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Line;->angle(FFFF)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Lcom/brakefield/infinitestudio/geometry/Line;->getDifferenceAngle(DD)F

    move-result v3

    iget v4, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v0, v3, v4, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 197
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->transform(Landroid/graphics/Matrix;)V

    .line 199
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->prevX:F

    .line 200
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->prevY:F

    return v2

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public onTap(FF)Z
    .locals 9

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->close(FF)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->getCenterPoint()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object p1

    .line 141
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 142
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->w:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v1, v3

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/Camera;->h:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v3, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 143
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->transform(Landroid/graphics/Matrix;)V

    .line 144
    sget-object p1, Lcom/brakefield/infinitestudio/Main;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return p2

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 147
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->getCenterPoint()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object p1

    .line 148
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->getAngle()F

    move-result v0

    :goto_0
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    if-gez v1, :cond_1

    add-float/2addr v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    cmpl-float v1, v0, v2

    if-lez v1, :cond_2

    sub-float/2addr v0, v2

    goto :goto_1

    :cond_2
    float-to-double v0, v0

    const-wide/16 v2, 0x0

    .line 153
    invoke-static {v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Line;->getDifferenceAngle(DD)F

    move-result v2

    const-wide v3, 0x4056800000000000L    # 90.0

    .line 154
    invoke-static {v0, v1, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Line;->getDifferenceAngle(DD)F

    move-result v3

    const-wide v4, 0x4066800000000000L    # 180.0

    .line 155
    invoke-static {v0, v1, v4, v5}, Lcom/brakefield/infinitestudio/geometry/Line;->getDifferenceAngle(DD)F

    move-result v4

    const-wide v5, 0x4070e00000000000L    # 270.0

    .line 156
    invoke-static {v0, v1, v5, v6}, Lcom/brakefield/infinitestudio/geometry/Line;->getDifferenceAngle(DD)F

    move-result v0

    .line 157
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 158
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 159
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v1, v2, v0, p1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_2

    .line 160
    :cond_3
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    .line 161
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v1, v3, v0, p1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_2

    .line 162
    :cond_4
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    .line 163
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v1, v4, v0, p1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_2

    .line 164
    :cond_5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    cmpg-float v2, v5, v2

    if-gez v2, :cond_6

    .line 165
    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v1, v0, v2, p1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 166
    :cond_6
    :goto_2
    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->transform(Landroid/graphics/Matrix;)V

    .line 167
    sget-object p1, Lcom/brakefield/infinitestudio/Main;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return p2

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public onUp()Z
    .locals 3

    .line 206
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->adjust:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->touchCase:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 207
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->adjust:Z

    .line 208
    :cond_1
    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->touchCase:I

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public abstract transform(Landroid/graphics/Matrix;)V
.end method
