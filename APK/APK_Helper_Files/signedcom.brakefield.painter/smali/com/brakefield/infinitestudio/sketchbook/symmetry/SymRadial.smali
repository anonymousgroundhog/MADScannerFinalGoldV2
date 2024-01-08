.class public Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;
.super Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;
.source "SymRadial.java"


# instance fields
.field px:F

.field py:F

.field rCount:I

.field sweep:F


# direct methods
.method public constructor <init>(FFIF)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;-><init>()V

    .line 38
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->px:F

    .line 39
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->py:F

    .line 40
    iput p3, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->rCount:I

    .line 41
    iput p4, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->sweep:F

    return-void
.end method

.method static synthetic lambda$bindSettings$0(F)Ljava/lang/String;
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bindSettings(Landroid/app/Activity;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 162
    sget v0, Lcom/brakefield/infinitestudio/R$id;->planes_slider_value:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 164
    sget v1, Lcom/brakefield/infinitestudio/R$id;->planes_slider:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/ui/CustomSlider;

    const/16 v2, 0x10

    .line 165
    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setMax(I)V

    .line 167
    new-instance v2, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial$$ExternalSyntheticLambda0;-><init>()V

    new-instance v3, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial$1;

    invoke-direct {v3, p0, v0, p4}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial$1;-><init>(Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;Landroid/widget/TextView;Landroid/view/View$OnClickListener;)V

    invoke-static {p1, v1, p3, v2, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 182
    iget p4, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->rCount:I

    add-int/lit8 p4, p4, -0x2

    invoke-virtual {v1, p4}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setProgress(I)V

    .line 183
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->rCount:I

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    sget p4, Lcom/brakefield/infinitestudio/R$id;->fan_slider_value:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    .line 187
    sget v0, Lcom/brakefield/infinitestudio/R$id;->fan_slider:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;

    .line 188
    new-instance v1, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial$2;

    invoke-direct {v1, p0, p4}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial$2;-><init>(Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;Landroid/widget/TextView;)V

    const/4 p4, 0x0

    invoke-static {p1, v0, p3, p4, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 201
    iget p1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->sweep:F

    float-to-double p3, p1

    const-wide v1, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr p3, v1

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double/2addr p3, v1

    double-to-int p1, p3

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setProgress(I)V

    .line 203
    sget p1, Lcom/brakefield/infinitestudio/R$id;->clip_row:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public close(FF)I
    .locals 6

    .line 109
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->getTouchSize()F

    move-result v0

    .line 111
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->adjust:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->px:F

    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->py:F

    invoke-static {p1, p2, v1, v4}, Lcom/brakefield/infinitestudio/geometry/Line;->length(FFFF)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->getLockControl()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    .line 115
    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->px:F

    iget v5, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->py:F

    invoke-static {p1, p2, v4, v5}, Lcom/brakefield/infinitestudio/geometry/Line;->length(FFFF)F

    move-result v4

    cmpg-float v4, v4, v0

    if-gez v4, :cond_2

    return v3

    .line 116
    :cond_2
    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v3, v1}, Lcom/brakefield/infinitestudio/geometry/Line;->length(FFFF)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    return v2
.end method

.method public copy()Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;
    .locals 5

    .line 127
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->px:F

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->py:F

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->rCount:I

    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->sweep:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;-><init>(FFIF)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 73
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->px:F

    .line 74
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->py:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    .line 76
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 77
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v1, v2, v3

    aget v2, v2, v0

    .line 81
    sget v4, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v10, v4, v5

    sub-float v5, v1, v10

    add-float v7, v1, v10

    .line 83
    sget-object v9, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v2

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v6, v2, v10

    add-float v8, v2, v10

    .line 84
    sget-object v9, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    move v5, v1

    move v7, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 86
    iget-boolean v4, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->adjust:Z

    if-eqz v4, :cond_2

    .line 88
    iget-object v6, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->moveDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->touchCase:I

    if-ne v4, v0, :cond_0

    move v9, v0

    goto :goto_0

    :cond_0
    move v9, v3

    :goto_0
    move-object v4, p0

    move-object v5, p1

    move v7, v1

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFZ)V

    .line 90
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->getLockControl()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    .line 91
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 92
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 94
    iget-object v6, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->lockDrawable:Landroid/graphics/drawable/Drawable;

    iget v7, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v8, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->touchCase:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    move v9, v0

    goto :goto_1

    :cond_1
    move v9, v3

    :goto_1
    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFZ)V

    :cond_2
    return-void
.end method

.method public getAngle()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCenterPoint()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 3

    .line 154
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->px:F

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->py:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public getJSON()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 132
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 134
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 135
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->px:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 136
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->py:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    const-string/jumbo v2, "type"

    const/4 v3, 0x4

    .line 138
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "data"

    .line 139
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "r-count"

    .line 141
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->rCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 142
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->sweep:F

    float-to-double v1, v1

    const-string/jumbo v3, "sweep"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object v0
.end method

.method public getLockControl()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 4

    .line 148
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getRotationInRadians()F

    move-result v0

    neg-float v0, v0

    float-to-double v0, v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 149
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isFlipped()Z

    move-result v1

    if-eqz v1, :cond_0

    neg-float v0, v0

    .line 150
    :cond_0
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->px:F

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->py:F

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->getTouchSize()F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v2, v3

    invoke-static {v1, v2, v0}, Lcom/brakefield/infinitestudio/geometry/Line;->project(Lcom/brakefield/infinitestudio/geometry/Point;FF)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public getMatrices()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->sweep:F

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->rCount:I

    int-to-float v4, v3

    div-float/2addr v2, v4

    const/4 v4, 0x0

    .line 52
    :goto_0
    div-int/lit8 v5, v3, 0x2

    add-int/lit8 v6, v5, 0x1

    const/4 v7, 0x0

    if-ge v4, v6, :cond_0

    int-to-float v5, v4

    mul-float/2addr v5, v2

    add-float/2addr v7, v5

    .line 54
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    float-to-double v6, v7

    .line 55
    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v6, v6

    iget v7, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->px:F

    iget v8, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->py:F

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 56
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 59
    :cond_0
    rem-int/2addr v3, v1

    if-eqz v3, :cond_1

    move v5, v6

    :cond_1
    const/4 v1, 0x1

    :goto_1
    if-ge v1, v5, :cond_2

    int-to-float v3, v1

    mul-float/2addr v3, v2

    sub-float v3, v7, v3

    .line 62
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    float-to-double v8, v3

    .line 63
    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v3, v8

    iget v6, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->px:F

    iget v8, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->py:F

    invoke-virtual {v4, v3, v6, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 64
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 100
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->px:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->py:F

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 101
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p1, v0, v2

    .line 102
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->px:F

    aget p1, v0, v3

    .line 103
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->py:F

    return-void
.end method
