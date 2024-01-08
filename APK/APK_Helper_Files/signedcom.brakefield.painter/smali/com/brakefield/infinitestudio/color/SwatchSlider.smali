.class public Lcom/brakefield/infinitestudio/color/SwatchSlider;
.super Landroid/view/View;
.source "SwatchSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;,
        Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;,
        Lcom/brakefield/infinitestudio/color/SwatchSlider$Delegate;
    }
.end annotation


# instance fields
.field private colorPaint:Landroid/graphics/Paint;

.field private colorPath:Landroid/graphics/Path;

.field private colorPathCorners:[F

.field private colorRect:Landroid/graphics/RectF;

.field private colorView:Landroid/view/View;

.field private delegate:Lcom/brakefield/infinitestudio/color/SwatchSlider$Delegate;

.field private direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

.field private down:Z

.field private downProgress:F

.field private downX:F

.field private downY:F

.field private palette:Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;

.field private progress:F

.field private shadowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorPath:Landroid/graphics/Path;

    .line 48
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorPaint:Landroid/graphics/Paint;

    .line 50
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->shadowPaint:Landroid/graphics/Paint;

    .line 52
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorRect:Landroid/graphics/RectF;

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 53
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorPathCorners:[F

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorView:Landroid/view/View;

    .line 56
    sget-object p1, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->LEFT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    .line 61
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->setup()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorPath:Landroid/graphics/Path;

    .line 48
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorPaint:Landroid/graphics/Paint;

    .line 50
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->shadowPaint:Landroid/graphics/Paint;

    .line 52
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorRect:Landroid/graphics/RectF;

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 53
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorPathCorners:[F

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorView:Landroid/view/View;

    .line 56
    sget-object p1, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->LEFT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    .line 66
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->setup()V

    return-void
.end method

.method private addColorView(FF)V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 374
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->getLocationInWindow([I)V

    .line 375
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->delegate:Lcom/brakefield/infinitestudio/color/SwatchSlider$Delegate;

    invoke-interface {v0, p1, p2}, Lcom/brakefield/infinitestudio/color/SwatchSlider$Delegate;->addColorView(FF)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorView:Landroid/view/View;

    return-void
.end method

.method private getColorStripSize()F
    .locals 1

    const/high16 v0, 0x40e00000    # 7.0f

    .line 466
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    return v0
.end method

.method private getColorTabSize()F
    .locals 1

    const/high16 v0, 0x42200000    # 40.0f

    .line 470
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    return v0
.end method

.method private getColorViewOffset()F
    .locals 1

    const/high16 v0, 0x42c00000    # 96.0f

    .line 478
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    return v0
.end method

.method private getEdgeMargin()F
    .locals 1

    const/high16 v0, 0x41000000    # 8.0f

    .line 474
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    return v0
.end method

.method private getSelectedColor()I
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->palette:Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;

    invoke-interface {v0}, Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;->colorCount()I

    move-result v0

    .line 406
    iget v1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->progress:F

    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_0

    move v1, v0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->palette:Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;

    invoke-interface {v0, v1}, Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;->colorAt(I)I

    move-result v0

    return v0
.end method

.method private removeColorView()V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 388
    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->delegate:Lcom/brakefield/infinitestudio/color/SwatchSlider$Delegate;

    invoke-interface {v1, v0}, Lcom/brakefield/infinitestudio/color/SwatchSlider$Delegate;->removeColorView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 389
    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private setup()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->shadowPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method private updateColorView(FF)V
    .locals 5

    .line 379
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 381
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->getLocationInWindow([I)V

    .line 382
    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->delegate:Lcom/brakefield/infinitestudio/color/SwatchSlider$Delegate;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorView:Landroid/view/View;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->getSelectedColor()I

    move-result v3

    const/4 v4, 0x0

    aget v4, v0, v4

    int-to-float v4, v4

    add-float/2addr v4, p1

    const/4 p1, 0x1

    aget p1, v0, p1

    int-to-float p1, p1

    add-float/2addr p1, p2

    invoke-interface {v1, v2, v3, v4, p1}, Lcom/brakefield/infinitestudio/color/SwatchSlider$Delegate;->updateColorView(Landroid/view/View;IFF)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->getWidth()I

    move-result v2

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->getHeight()I

    move-result v3

    .line 79
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->palette:Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;

    invoke-interface {v5}, Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;->colorCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    .line 80
    :goto_0
    iget-object v7, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->palette:Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;

    invoke-interface {v7}, Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;->colorCount()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 81
    iget-object v7, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->palette:Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;

    invoke-interface {v7, v6}, Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;->colorAt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 84
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-gt v6, v7, :cond_1

    return-void

    .line 90
    :cond_1
    iget v8, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->progress:F

    int-to-float v9, v6

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/lit8 v10, v6, -0x1

    if-le v8, v10, :cond_2

    move v8, v10

    :cond_2
    const/high16 v11, 0x40000000    # 2.0f

    .line 98
    invoke-static {v11}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v12

    .line 101
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->getColorTabSize()F

    move-result v13

    .line 102
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->getColorStripSize()F

    move-result v14

    .line 103
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->getEdgeMargin()F

    move-result v15

    mul-float v16, v9, v13

    .line 107
    iget-object v5, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    sget-object v7, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->LEFT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    const/16 v19, -0x1

    const/16 v20, 0x0

    if-eq v5, v7, :cond_a

    iget-object v5, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    sget-object v7, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->RIGHT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    if-ne v5, v7, :cond_3

    goto :goto_5

    .line 129
    :cond_3
    iget-object v5, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    sget-object v7, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->ABOVE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    if-eq v5, v7, :cond_6

    iget-object v5, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    sget-object v7, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->BELOW:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    if-ne v5, v7, :cond_4

    goto :goto_1

    :cond_4
    move/from16 v5, v20

    move v7, v5

    move v14, v7

    :cond_5
    const/4 v9, 0x0

    goto :goto_8

    :cond_6
    :goto_1
    int-to-float v5, v2

    mul-float/2addr v15, v11

    sub-float v7, v5, v15

    cmpg-float v15, v16, v7

    if-gez v15, :cond_7

    goto :goto_2

    :cond_7
    move/from16 v16, v7

    :goto_2
    sub-float v7, v5, v16

    div-float/2addr v7, v11

    mul-float v15, v7, v11

    sub-float/2addr v5, v15

    .line 142
    iget-boolean v15, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->down:Z

    if-eqz v15, :cond_8

    const/4 v15, 0x1

    if-le v6, v15, :cond_8

    sub-float/2addr v5, v13

    int-to-float v9, v10

    div-float/2addr v5, v9

    goto :goto_3

    :cond_8
    div-float/2addr v5, v9

    move/from16 v8, v19

    .line 149
    :goto_3
    iget-object v9, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    sget-object v15, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->ABOVE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    if-ne v9, v15, :cond_9

    const/4 v9, 0x1

    goto :goto_4

    :cond_9
    const/4 v9, 0x0

    :goto_4
    move/from16 v27, v14

    move v14, v5

    move/from16 v5, v27

    goto :goto_8

    :cond_a
    :goto_5
    int-to-float v5, v3

    mul-float/2addr v15, v11

    sub-float v7, v5, v15

    cmpg-float v15, v16, v7

    if-gez v15, :cond_b

    goto :goto_6

    :cond_b
    move/from16 v16, v7

    :goto_6
    sub-float v7, v5, v16

    div-float/2addr v7, v11

    mul-float v15, v7, v11

    sub-float/2addr v5, v15

    .line 120
    iget-boolean v15, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->down:Z

    if-eqz v15, :cond_c

    const/4 v15, 0x1

    if-le v6, v15, :cond_c

    sub-float/2addr v5, v13

    int-to-float v9, v10

    div-float/2addr v5, v9

    goto :goto_7

    :cond_c
    div-float/2addr v5, v9

    move/from16 v8, v19

    .line 127
    :goto_7
    iget-object v9, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    sget-object v15, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->RIGHT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    if-ne v9, v15, :cond_5

    const/4 v9, 0x1

    :goto_8
    const/4 v15, 0x0

    :goto_9
    if-ge v15, v6, :cond_1a

    .line 154
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v16, v4

    .line 155
    iget-object v4, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->palette:Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;

    invoke-interface {v4, v11}, Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;->getDisplayColor(I)I

    move-result v4

    .line 157
    iget-object v11, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setColor(I)V

    if-ne v15, v8, :cond_f

    .line 162
    iget-object v4, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    sget-object v11, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->LEFT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    if-eq v4, v11, :cond_e

    iget-object v4, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    sget-object v11, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->RIGHT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    if-ne v4, v11, :cond_d

    goto :goto_a

    :cond_d
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v11, v5, v4

    move/from16 v19, v13

    goto :goto_b

    :cond_e
    :goto_a
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v11, v14, v4

    move/from16 v19, v11

    move v11, v13

    goto :goto_b

    :cond_f
    const/high16 v4, 0x40000000    # 2.0f

    move v11, v5

    move/from16 v19, v14

    :goto_b
    if-eqz v9, :cond_12

    .line 175
    iget-object v4, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    move/from16 v21, v5

    sget-object v5, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->LEFT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    if-eq v4, v5, :cond_11

    iget-object v4, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    sget-object v5, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->RIGHT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    if-ne v4, v5, :cond_10

    goto :goto_c

    :cond_10
    int-to-float v4, v3

    sub-float v4, v4, v20

    sub-float/2addr v4, v11

    goto :goto_d

    :cond_11
    :goto_c
    int-to-float v4, v2

    sub-float v4, v4, v20

    sub-float v4, v4, v19

    goto :goto_d

    :cond_12
    move/from16 v21, v5

    move/from16 v4, v20

    .line 182
    :goto_d
    iget-object v5, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorRect:Landroid/graphics/RectF;

    move/from16 v22, v2

    .line 183
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    move/from16 v23, v3

    sget-object v3, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->LEFT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    if-eq v2, v3, :cond_14

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    sget-object v3, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->RIGHT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    if-ne v2, v3, :cond_13

    goto :goto_e

    :cond_13
    add-float v2, v7, v19

    add-float v3, v4, v11

    .line 186
    invoke-virtual {v5, v7, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_f

    :cond_14
    :goto_e
    add-float v2, v4, v19

    add-float v3, v7, v11

    .line 184
    invoke-virtual {v5, v4, v7, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_f
    const/4 v2, 0x1

    if-ne v6, v2, :cond_15

    .line 190
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v12, v12, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_10
    const/16 v17, 0x0

    const/16 v18, 0x1

    goto :goto_11

    :cond_15
    const/4 v3, 0x6

    const/4 v4, 0x5

    const/16 v24, 0x4

    const/16 v25, 0x3

    const/16 v26, 0x2

    if-nez v15, :cond_16

    .line 193
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorPathCorners:[F

    const/16 v17, 0x0

    aput v12, v2, v17

    const/16 v18, 0x1

    .line 194
    aput v12, v2, v18

    .line 195
    aput v12, v2, v26

    .line 196
    aput v12, v2, v25

    .line 197
    aput v20, v2, v24

    .line 198
    aput v20, v2, v4

    .line 199
    aput v20, v2, v3

    const/4 v3, 0x7

    .line 200
    aput v20, v2, v3

    .line 202
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 203
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorPathCorners:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v5, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 204
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_10

    :cond_16
    if-ne v15, v10, :cond_17

    .line 208
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorPathCorners:[F

    const/16 v17, 0x0

    aput v20, v2, v17

    const/16 v18, 0x1

    .line 209
    aput v20, v2, v18

    .line 210
    aput v20, v2, v26

    .line 211
    aput v20, v2, v25

    .line 212
    aput v12, v2, v24

    .line 213
    aput v12, v2, v4

    .line 214
    aput v12, v2, v3

    const/4 v3, 0x7

    .line 215
    aput v12, v2, v3

    .line 217
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 218
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorPathCorners:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v5, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 219
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_11

    :cond_17
    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 222
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->colorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 225
    :goto_11
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    sget-object v3, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->LEFT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    if-eq v2, v3, :cond_19

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    sget-object v3, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->RIGHT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    if-ne v2, v3, :cond_18

    goto :goto_12

    :cond_18
    add-float v7, v7, v19

    goto :goto_13

    :cond_19
    :goto_12
    add-float/2addr v7, v11

    :goto_13
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v16

    move/from16 v5, v21

    move/from16 v2, v22

    move/from16 v3, v23

    const/high16 v11, 0x40000000    # 2.0f

    goto/16 :goto_9

    :cond_1a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 236
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->palette:Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 240
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->touchesCancelled()V

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->touchesMoved(FF)V

    goto :goto_0

    .line 253
    :cond_3
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->touchesEnded()V

    goto :goto_0

    .line 244
    :cond_4
    invoke-virtual {p0, v0, v2}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->pointInside(FF)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    .line 247
    :cond_5
    invoke-virtual {p0, v0, v2}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->touchesBegan(FF)V

    :goto_0
    return v3
.end method

.method pointInside(FF)Z
    .locals 10

    .line 422
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->getWidth()I

    move-result v0

    .line 423
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->getHeight()I

    move-result v1

    .line 424
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->getColorTabSize()F

    move-result v2

    .line 425
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->getEdgeMargin()F

    move-result v3

    .line 427
    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->palette:Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    invoke-interface {v4}, Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;->colorCount()I

    move-result v4

    const/4 v6, 0x1

    if-gt v4, v6, :cond_0

    goto :goto_5

    .line 431
    :cond_0
    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->palette:Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;

    invoke-interface {v4}, Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;->colorCount()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    .line 434
    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    sget-object v7, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->LEFT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x3f000000    # 0.5f

    if-eq v2, v7, :cond_5

    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    sget-object v7, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->RIGHT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    if-ne v2, v7, :cond_1

    goto :goto_2

    .line 446
    :cond_1
    iget-object p2, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    sget-object v1, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->ABOVE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    if-eq p2, v1, :cond_3

    iget-object p2, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    sget-object v1, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->BELOW:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    if-ne p2, v1, :cond_2

    goto :goto_0

    :cond_2
    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_4

    :cond_3
    :goto_0
    int-to-float p2, v0

    mul-float/2addr v3, v8

    sub-float v0, p2, v3

    cmpg-float v1, v4, v0

    if-gez v1, :cond_4

    goto :goto_1

    :cond_4
    move v4, v0

    :goto_1
    mul-float/2addr p2, v9

    sub-float/2addr p1, p2

    div-float/2addr p1, v4

    add-float/2addr p1, v9

    goto :goto_4

    :cond_5
    :goto_2
    int-to-float p1, v1

    mul-float/2addr v3, v8

    sub-float v0, p1, v3

    cmpg-float v1, v4, v0

    if-gez v1, :cond_6

    goto :goto_3

    :cond_6
    move v4, v0

    :goto_3
    mul-float/2addr p1, v9

    sub-float/2addr p2, p1

    div-float/2addr p2, v4

    add-float p1, p2, v9

    .line 460
    :goto_4
    iget-object p2, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->palette:Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;

    invoke-interface {p2}, Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;->colorCount()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    const/high16 p2, -0x41000000    # -0.5f

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_7

    .line 462
    iget-object p2, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->palette:Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;

    invoke-interface {p2}, Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;->colorCount()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, v9

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_7

    move v5, v6

    :cond_7
    :goto_5
    return v5
.end method

.method public setDelegate(Lcom/brakefield/infinitestudio/color/SwatchSlider$Delegate;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->delegate:Lcom/brakefield/infinitestudio/color/SwatchSlider$Delegate;

    return-void
.end method

.method public setDirection(Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    .line 416
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->postInvalidate()V

    return-void
.end method

.method public setPalette(Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->palette:Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;

    return-void
.end method

.method touchesBegan(FF)V
    .locals 8

    .line 264
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->getWidth()I

    move-result v0

    .line 265
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->getHeight()I

    move-result v1

    .line 266
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->getColorTabSize()F

    move-result v2

    .line 267
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->getEdgeMargin()F

    move-result v3

    .line 269
    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->palette:Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;

    invoke-interface {v4}, Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;->colorCount()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    .line 271
    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    sget-object v5, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->LEFT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x3f000000    # 0.5f

    if-eq v2, v5, :cond_3

    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    sget-object v5, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->RIGHT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    if-ne v2, v5, :cond_0

    goto :goto_1

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    sget-object v2, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->ABOVE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    sget-object v2, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->BELOW:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    if-ne v1, v2, :cond_5

    :cond_1
    int-to-float v1, v0

    mul-float/2addr v3, v6

    sub-float v2, v1, v3

    cmpg-float v3, v4, v2

    if-gez v3, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    mul-float/2addr v1, v7

    sub-float v1, p1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v7

    .line 293
    iput v1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->progress:F

    goto :goto_3

    :cond_3
    :goto_1
    int-to-float v1, v1

    mul-float/2addr v3, v6

    sub-float v2, v1, v3

    cmpg-float v3, v4, v2

    if-gez v3, :cond_4

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    mul-float/2addr v1, v7

    sub-float v1, p2, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v7

    .line 281
    iput v1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->progress:F

    .line 296
    :cond_5
    :goto_3
    iget v1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->progress:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    iput v2, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->progress:F

    .line 297
    :cond_6
    iget v1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->progress:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_7

    iput v3, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->progress:F

    .line 299
    :cond_7
    iget v1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->progress:F

    iput v1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->downProgress:F

    const/4 v1, 0x1

    .line 300
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->down:Z

    .line 301
    iput p1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->downX:F

    .line 302
    iput p2, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->downY:F

    .line 307
    sget-object v4, Lcom/brakefield/infinitestudio/color/SwatchSlider$1;->$SwitchMap$com$brakefield$infinitestudio$color$SwatchSlider$SwatchSliderDirection:[I

    iget-object v5, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/high16 v5, -0x41800000    # -0.25f

    if-eq v4, v1, :cond_c

    const/4 v1, 0x2

    if-eq v4, v1, :cond_b

    const/4 v6, 0x3

    const/high16 v7, -0x40800000    # -1.0f

    if-eq v4, v6, :cond_a

    const/4 v5, 0x4

    if-eq v4, v5, :cond_8

    move v5, v2

    goto :goto_5

    .line 321
    :cond_8
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->getX()F

    move-result v2

    div-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v2, v0

    cmpg-float v0, v2, v0

    const/high16 v2, 0x3e800000    # 0.25f

    if-gez v0, :cond_9

    move v5, v2

    goto :goto_4

    :cond_9
    move v5, v2

    :cond_a
    move v2, v7

    goto :goto_5

    :cond_b
    const/high16 v0, -0x40c00000    # -0.75f

    move v5, v0

    goto :goto_5

    :cond_c
    :goto_4
    move v2, v3

    .line 329
    :goto_5
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->getColorViewOffset()F

    move-result v0

    .line 331
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->removeColorView()V

    mul-float/2addr v2, v0

    mul-float/2addr v5, v0

    .line 332
    invoke-direct {p0, v2, v5}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->addColorView(FF)V

    .line 333
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->updateColorView(FF)V

    .line 335
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->postInvalidate()V

    return-void
.end method

.method touchesCancelled()V
    .locals 1

    const/4 v0, 0x0

    .line 367
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->down:Z

    .line 368
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->postInvalidate()V

    .line 369
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->removeColorView()V

    return-void
.end method

.method touchesEnded()V
    .locals 2

    const/4 v0, 0x0

    .line 359
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->down:Z

    .line 360
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->delegate:Lcom/brakefield/infinitestudio/color/SwatchSlider$Delegate;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->getSelectedColor()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/brakefield/infinitestudio/color/SwatchSlider$Delegate;->onColorChanged(I)V

    .line 361
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->postInvalidate()V

    .line 363
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->removeColorView()V

    return-void
.end method

.method touchesMoved(FF)V
    .locals 4

    .line 342
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    sget-object v1, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->LEFT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    sget-object v1, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->RIGHT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    sget-object v1, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->ABOVE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->direction:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    sget-object v1, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->BELOW:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    if-ne v0, v1, :cond_3

    .line 345
    :cond_1
    iget v0, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->downProgress:F

    iget v1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->downX:F

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->palette:Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;

    invoke-interface {v2}, Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;->colorCount()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->getColorTabSize()F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->progress:F

    goto :goto_1

    .line 343
    :cond_2
    :goto_0
    iget v0, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->downProgress:F

    iget v1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->downY:F

    sub-float v1, p2, v1

    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->palette:Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;

    invoke-interface {v2}, Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;->colorCount()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->getColorTabSize()F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->progress:F

    .line 347
    :cond_3
    :goto_1
    iget v0, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->progress:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iput v1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->progress:F

    .line 348
    :cond_4
    iget v0, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->progress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iput v1, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->progress:F

    .line 350
    :cond_5
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SwatchSlider;->delegate:Lcom/brakefield/infinitestudio/color/SwatchSlider$Delegate;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->getSelectedColor()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/brakefield/infinitestudio/color/SwatchSlider$Delegate;->onColorChanged(I)V

    .line 352
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->updateColorView(FF)V

    .line 354
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->postInvalidate()V

    return-void
.end method
