.class public Lcom/brakefield/painter/ui/SymPreview;
.super Landroid/view/View;
.source "SymPreview.java"


# instance fields
.field private h:I

.field private final symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p1, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getSymmetryManager()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;-><init>(J)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/SymPreview;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    return-void
.end method

.method private drawCenterImage(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 51
    iget-object v1, v0, Lcom/brakefield/painter/ui/SymPreview;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getType()I

    move-result v1

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/painter/ui/SymPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 53
    new-instance v9, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v9, v2}, Landroid/graphics/Paint;-><init>(I)V

    const v3, -0x333334

    .line 54
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 56
    new-instance v3, Landroid/graphics/DashPathEffect;

    const/4 v4, 0x4

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v10}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 57
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 58
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 60
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 v11, 0x40000000    # 2.0f

    .line 61
    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v3, 0x5

    const/4 v5, 0x3

    if-ne v1, v3, :cond_1

    .line 64
    iget-object v1, v0, Lcom/brakefield/painter/ui/SymPreview;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getMirror()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v5

    .line 68
    :cond_1
    :goto_0
    iget v3, v0, Lcom/brakefield/painter/ui/SymPreview;->w:I

    iget v6, v0, Lcom/brakefield/painter/ui/SymPreview;->h:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v12, v3, v6

    const v13, 0x7f08049b

    const/high16 v14, 0x41200000    # 10.0f

    if-eqz v1, :cond_9

    const/high16 v16, 0x40800000    # 4.0f

    const/4 v3, 0x0

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v17, 0x43b40000    # 360.0f

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_2

    goto/16 :goto_4

    .line 144
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 145
    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 146
    iget-object v1, v0, Lcom/brakefield/painter/ui/SymPreview;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getPlanes()I

    move-result v6

    const/16 v18, 0x0

    move/from16 v5, v18

    :goto_1
    mul-int/lit8 v1, v6, 0x2

    if-ge v5, v1, :cond_3

    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v1, v1

    div-float v1, v17, v1

    int-to-float v2, v5

    mul-float/2addr v1, v2

    .line 149
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    const/4 v2, 0x0

    neg-float v1, v12

    div-float v4, v1, v11

    const/16 v19, 0x0

    div-float v20, v12, v11

    move-object/from16 v1, p1

    move v10, v3

    move v3, v4

    move/from16 v4, v19

    move/from16 v19, v5

    move/from16 v5, v20

    move v15, v6

    move-object v6, v9

    .line 150
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v5, v19, 0x1

    move v3, v10

    move v6, v15

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    move v10, v3

    move v15, v6

    move/from16 v1, v18

    :goto_2
    if-ge v1, v15, :cond_4

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v15

    div-float v2, v17, v2

    int-to-float v3, v1

    mul-float/2addr v2, v3

    .line 155
    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->rotate(F)V

    div-float v2, v12, v16

    .line 156
    invoke-virtual {v7, v10, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 157
    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    neg-float v3, v12

    div-float v4, v3, v14

    float-to-int v4, v4

    div-float v5, v3, v11

    float-to-int v5, v5

    div-float v6, v12, v14

    float-to-int v6, v6

    div-float v9, v12, v11

    float-to-int v9, v9

    .line 158
    invoke-virtual {v2, v4, v5, v6, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    div-float v3, v3, v16

    .line 160
    invoke-virtual {v7, v3, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 161
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 162
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 163
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 164
    invoke-virtual {v7, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 165
    invoke-virtual {v7, v3, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 166
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 170
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_4

    :cond_5
    move v10, v3

    .line 128
    iget-object v1, v0, Lcom/brakefield/painter/ui/SymPreview;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getPlanes()I

    move-result v1

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 130
    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 131
    iget-object v2, v0, Lcom/brakefield/painter/ui/SymPreview;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    invoke-virtual {v2}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getFan()F

    move-result v2

    int-to-float v1, v1

    mul-float/2addr v6, v1

    float-to-double v3, v6

    .line 132
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    neg-int v5, v5

    :goto_3
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v6, v14

    if-ge v5, v6, :cond_6

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    div-float v6, v17, v1

    int-to-float v9, v5

    mul-float/2addr v6, v9

    mul-float/2addr v6, v2

    .line 134
    invoke-virtual {v7, v6}, Landroid/graphics/Canvas;->rotate(F)V

    div-float v6, v12, v16

    .line 135
    invoke-virtual {v7, v10, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 136
    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    neg-float v9, v12

    const/high16 v14, 0x41200000    # 10.0f

    div-float v15, v9, v14

    float-to-int v15, v15

    div-float/2addr v9, v11

    float-to-int v9, v9

    div-float v10, v12, v14

    float-to-int v10, v10

    div-float v14, v12, v11

    float-to-int v14, v14

    .line 137
    invoke-virtual {v6, v15, v9, v10, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 138
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v5, v5, 0x1

    const/4 v10, 0x0

    goto :goto_3

    .line 141
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_4

    .line 78
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, 0x42b40000    # 90.0f

    .line 79
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    const/4 v2, 0x0

    neg-float v10, v12

    div-float v14, v10, v11

    const/4 v4, 0x0

    div-float v11, v12, v11

    move-object/from16 v1, p1

    move v3, v14

    move v5, v11

    move-object v6, v9

    .line 80
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 81
    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float v3, v10, v2

    float-to-int v3, v3

    float-to-int v4, v14

    div-float/2addr v12, v2

    float-to-int v2, v12

    float-to-int v5, v11

    .line 82
    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    div-float v10, v10, v16

    const/4 v2, 0x0

    .line 84
    invoke-virtual {v7, v10, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 85
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 86
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 88
    invoke-virtual {v7, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 89
    invoke-virtual {v7, v10, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 90
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    neg-float v10, v12

    div-float v14, v10, v11

    const/4 v4, 0x0

    div-float v11, v12, v11

    move-object/from16 v1, p1

    move v3, v14

    move v5, v11

    move-object v6, v9

    .line 96
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 97
    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float v3, v10, v2

    float-to-int v3, v3

    float-to-int v4, v14

    div-float/2addr v12, v2

    float-to-int v2, v12

    float-to-int v5, v11

    .line 98
    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 99
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    div-float v10, v10, v16

    const/4 v2, 0x0

    .line 100
    invoke-virtual {v7, v10, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 101
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 104
    invoke-virtual {v7, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 105
    invoke-virtual {v7, v10, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 106
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4

    .line 73
    :cond_9
    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    neg-float v2, v12

    const/high16 v3, 0x41200000    # 10.0f

    div-float v4, v2, v3

    float-to-int v4, v4

    div-float/2addr v2, v11

    float-to-int v2, v2

    div-float v3, v12, v3

    float-to-int v3, v3

    div-float/2addr v12, v11

    float-to-int v5, v12

    .line 74
    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 75
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_4
    return-void

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SymPreview;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/brakefield/painter/ui/SymPreview;->w:I

    .line 34
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SymPreview;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/brakefield/painter/ui/SymPreview;->h:I

    .line 36
    iget v1, p0, Lcom/brakefield/painter/ui/SymPreview;->w:I

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    const/16 v1, 0xff

    .line 41
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 44
    iget v0, p0, Lcom/brakefield/painter/ui/SymPreview;->w:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/brakefield/painter/ui/SymPreview;->h:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 45
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/SymPreview;->drawCenterImage(Landroid/graphics/Canvas;)V

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    :goto_0
    const-wide/16 v0, 0x32

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/brakefield/painter/ui/SymPreview;->postInvalidateDelayed(J)V

    return-void
.end method
