.class public Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;
.super Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;
.source "SymKaleido.java"


# instance fields
.field angle:F

.field planes:I

.field px:F

.field py:F

.field sweep:F


# direct methods
.method public constructor <init>(FFIF)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;-><init>()V

    const v0, 0x40c90fdb

    .line 34
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->sweep:F

    .line 40
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->px:F

    .line 41
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->py:F

    .line 42
    iput p3, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->planes:I

    .line 43
    iput p4, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->angle:F

    return-void
.end method

.method static synthetic lambda$bindSettings$0(F)Ljava/lang/String;
    .locals 2

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v1, Lorg/checkerframework/checker/propkey/qual/lW/MjAmnOQWs;->IMiMIdPZJLs:Ljava/lang/String;

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
    .locals 5

    .line 258
    sget v0, Lcom/brakefield/infinitestudio/R$id;->planes_slider_value:I

    .line 259
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 261
    sget v1, Lcom/brakefield/infinitestudio/R$id;->planes_slider:I

    .line 262
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/ui/CustomSlider;

    const/16 v2, 0x8

    .line 264
    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setMax(I)V

    .line 266
    new-instance v3, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido$$ExternalSyntheticLambda0;-><init>()V

    new-instance v4, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido$1;

    invoke-direct {v4, p0, v0, p4}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido$1;-><init>(Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;Landroid/widget/TextView;Landroid/view/View$OnClickListener;)V

    invoke-static {p1, v1, p3, v3, v4}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 281
    iget p1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->planes:I

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {v1, p1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setProgress(I)V

    .line 282
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->planes:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    sget p1, Lcom/brakefield/infinitestudio/R$id;->fan_slider_text_row:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 285
    sget p3, Lcom/brakefield/infinitestudio/R$id;->fan_slider_row:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 287
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 288
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public close(FF)I
    .locals 7

    .line 176
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->getTouchSize()F

    move-result v0

    .line 178
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->adjust:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 179
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->px:F

    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->py:F

    invoke-static {p1, p2, v1, v4}, Lcom/brakefield/infinitestudio/geometry/Line;->length(FFFF)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->getRotateControl()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    .line 183
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->getLockControl()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v4

    .line 185
    iget v5, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->px:F

    iget v6, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->py:F

    invoke-static {p1, p2, v5, v6}, Lcom/brakefield/infinitestudio/geometry/Line;->length(FFFF)F

    move-result v5

    cmpg-float v5, v5, v0

    if-gez v5, :cond_2

    return v3

    .line 187
    :cond_2
    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v3, v1}, Lcom/brakefield/infinitestudio/geometry/Line;->length(FFFF)F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_3

    const/4 p1, 0x2

    return p1

    .line 189
    :cond_3
    iget v1, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p1, p2, v1, v3}, Lcom/brakefield/infinitestudio/geometry/Line;->length(FFFF)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    const/4 p1, 0x3

    return p1

    :cond_4
    return v2
.end method

.method public copy()Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;
    .locals 5

    .line 202
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->px:F

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->py:F

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->planes:I

    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->angle:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;-><init>(FFIF)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v6, p0

    .line 101
    iget v0, v6, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->angle:F

    .line 102
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isFlipped()Z

    move-result v1

    if-eqz v1, :cond_0

    neg-float v0, v0

    .line 105
    :cond_0
    iget v1, v6, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->px:F

    .line 106
    iget v2, v6, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->py:F

    const/4 v7, 0x2

    new-array v3, v7, [F

    const/4 v8, 0x0

    aput v1, v3, v8

    const/4 v9, 0x1

    aput v2, v3, v9

    .line 108
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 109
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v4, v3, v8

    aget v5, v3, v9

    .line 113
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getRotationInRadians()F

    move-result v1

    .line 115
    iget v2, v6, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->planes:I

    int-to-double v2, v2

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v10, v2

    double-to-float v2, v10

    move v3, v8

    .line 116
    :goto_0
    iget v10, v6, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->planes:I

    if-ge v3, v10, :cond_3

    float-to-double v14, v4

    .line 117
    sget v10, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    mul-int/2addr v10, v7

    int-to-double v10, v10

    int-to-float v12, v3

    mul-float v16, v12, v2

    add-float v12, v16, v0

    add-float/2addr v12, v1

    float-to-double v12, v12

    .line 119
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v10, v10, v17

    add-double/2addr v10, v14

    double-to-float v11, v10

    float-to-double v8, v5

    .line 121
    sget v10, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    mul-int/2addr v10, v7

    move-wide/from16 v19, v8

    int-to-double v7, v10

    .line 123
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double v8, v19, v7

    double-to-float v7, v8

    .line 126
    iget-boolean v8, v6, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->adjust:Z

    if-eqz v8, :cond_1

    .line 127
    sget-object v8, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->shadowPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v9, v11

    move v11, v4

    move v12, v5

    move v13, v9

    move-wide/from16 v21, v14

    move v14, v7

    move-object v15, v8

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    move v9, v11

    move-wide/from16 v21, v14

    .line 128
    :goto_1
    sget-object v15, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v4

    move v12, v5

    move v13, v9

    move v14, v7

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 130
    sget v7, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    const/4 v8, 0x2

    mul-int/2addr v7, v8

    int-to-double v7, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v2, v9

    add-float v16, v16, v9

    add-float v16, v16, v0

    add-float v9, v16, v1

    float-to-double v9, v9

    .line 132
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v7, v11

    add-double v14, v21, v7

    double-to-float v7, v14

    .line 134
    sget v8, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    const/4 v11, 0x2

    mul-int/2addr v8, v11

    int-to-double v11, v8

    .line 136
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v11, v8

    add-double v8, v19, v11

    double-to-float v8, v8

    .line 139
    iget-boolean v9, v6, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->adjust:Z

    if-eqz v9, :cond_2

    .line 140
    sget-object v15, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->shadowPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v4

    move v12, v5

    move v13, v7

    move v14, v8

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 141
    :cond_2
    sget-object v15, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v4

    move v12, v5

    move v13, v7

    move v14, v8

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_0

    .line 144
    :cond_3
    iget-boolean v0, v6, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->adjust:Z

    if-eqz v0, :cond_7

    .line 146
    iget-object v2, v6, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->moveDrawable:Landroid/graphics/drawable/Drawable;

    iget v0, v6, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->touchCase:I

    const/4 v7, 0x1

    if-ne v0, v7, :cond_4

    move v8, v7

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFZ)V

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->getRotateControl()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 149
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 150
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 152
    iget-object v2, v6, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->rotateDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v0, v6, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->touchCase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    move v5, v7

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFZ)V

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->getLockControl()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 155
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 156
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 158
    iget-object v2, v6, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->lockDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v0, v6, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->touchCase:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    move v5, v7

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->drawControl(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFZ)V

    :cond_7
    return-void
.end method

.method public getAngle()F
    .locals 2

    .line 254
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->angle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getCenterPoint()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 3

    .line 250
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->px:F

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->py:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public getClippingPlane(FF)I
    .locals 4

    .line 207
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 208
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->angle:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    neg-double v1, v1

    double-to-float v1, v1

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->px:F

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->py:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 210
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 211
    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 212
    iget p1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 213
    iget p2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 215
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->planes:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v2, v0

    double-to-float v0, v2

    .line 217
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->px:F

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->py:F

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 219
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide v1, 0x4076800000000000L    # 360.0

    rem-double/2addr p1, v1

    double-to-float p1, p1

    float-to-double p1, p1

    float-to-double v0, v0

    .line 221
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    div-double/2addr p1, v0

    double-to-int p1, p1

    return p1
.end method

.method public getJSON()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 226
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 228
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 229
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->px:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 230
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->py:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    const-string/jumbo v2, "type"

    const/4 v3, 0x5

    .line 232
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "data"

    .line 233
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "planes"

    .line 235
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->planes:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 236
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->angle:F

    float-to-double v1, v1

    const-string v3, "angle"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object v0
.end method

.method public getLockControl()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 6

    .line 246
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->px:F

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->py:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->getTouchSize()F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->angle:F

    float-to-double v2, v2

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;->project(Lcom/brakefield/infinitestudio/geometry/Point;FF)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public getMatrices()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->angle:F

    .line 52
    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->sweep:F

    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->planes:I

    int-to-float v5, v4

    div-float/2addr v3, v5

    .line 53
    rem-int/2addr v4, v1

    if-nez v4, :cond_0

    const/high16 v4, 0x40800000    # 4.0f

    div-float v4, v3, v4

    add-float/2addr v2, v4

    :cond_0
    const/4 v4, 0x0

    move v5, v4

    .line 57
    :goto_0
    iget v6, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->planes:I

    const/4 v7, 0x0

    if-ge v5, v6, :cond_1

    int-to-float v6, v5

    mul-float/2addr v6, v3

    add-float/2addr v7, v6

    .line 61
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    float-to-double v7, v7

    .line 62
    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    double-to-float v7, v7

    iget v8, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->px:F

    iget v9, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->py:F

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 63
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 68
    :cond_1
    :goto_1
    iget v5, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->planes:I

    add-int/lit8 v5, v5, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    if-ge v4, v5, :cond_3

    int-to-float v5, v4

    mul-float/2addr v5, v3

    div-float v8, v3, v6

    sub-float v9, v5, v8

    cmpl-float v9, v7, v9

    if-ltz v9, :cond_2

    add-float/2addr v5, v8

    cmpg-float v5, v7, v5

    if-gez v5, :cond_2

    .line 71
    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->px:F

    float-to-double v4, v4

    add-float v8, v3, v2

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    double-to-float v4, v4

    .line 73
    iget v5, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->py:F

    float-to-double v10, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v12

    add-double/2addr v10, v8

    double-to-float v5, v10

    .line 75
    new-instance v8, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v9, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->px:F

    iget v10, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->py:F

    invoke-direct {v8, v9, v10, v4, v5}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_2
    div-float v4, v3, v6

    if-eqz v8, :cond_4

    .line 83
    invoke-virtual {v8}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v5

    sub-float/2addr v5, v7

    add-float/2addr v5, v2

    .line 84
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->planes:I

    :goto_3
    iget v6, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->planes:I

    mul-int/2addr v6, v1

    if-ge v2, v6, :cond_4

    int-to-float v6, v2

    mul-float/2addr v6, v3

    add-float/2addr v6, v5

    add-float/2addr v6, v4

    .line 88
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 89
    iget v8, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->px:F

    iget v9, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->py:F

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v7, v10, v11, v8, v9}, Landroid/graphics/Matrix;->setScale(FFFF)V

    float-to-double v8, v6

    .line 90
    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v6, v8

    iget v8, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->px:F

    iget v9, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->py:F

    invoke-virtual {v7, v6, v8, v9}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 91
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-object v0
.end method

.method public getRotateControl()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 3

    .line 242
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->px:F

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->py:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->getTouchSize()F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->angle:F

    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;->project(Lcom/brakefield/infinitestudio/geometry/Point;FF)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 166
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->px:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->py:F

    const/4 v4, 0x1

    aput v3, v0, v4

    const v5, 0x461c4000    # 10000.0f

    add-float/2addr v1, v5

    const/4 v5, 0x2

    aput v1, v0, v5

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 167
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p1, v0, v2

    .line 168
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->px:F

    aget v2, v0, v4

    .line 169
    iput v2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->py:F

    .line 170
    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->angle:F

    aget v4, v0, v5

    aget v0, v0, v1

    invoke-static {p1, v2, v4, v0}, Lcom/brakefield/infinitestudio/geometry/Line;->angle(FFFF)F

    move-result p1

    add-float/2addr v3, p1

    iput v3, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->angle:F

    return-void
.end method
