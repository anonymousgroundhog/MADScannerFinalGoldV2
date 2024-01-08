.class public Lcom/infinite/geom/PathNative;
.super Lcom/infinite/core/NativeObject;
.source "PathNative.java"


# static fields
.field public static final ARC:I = 0x9

.field public static final CIRCLE:I = 0x7

.field public static final CLOSE:I = 0x0

.field public static final CUBIC_TO:I = 0x4

.field public static final ELLIPSE:I = 0x8

.field public static final LINE_TO:I = 0x2

.field public static final MOVE_TO:I = 0x1

.field public static final PAINT:I = 0xa

.field public static final QUAD_TO:I = 0x3

.field public static final RECT:I = 0x5

.field public static final ROUNDED_RECT:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/infinite/core/NativeObject;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native close(J)V
.end method

.method private native concat(JJ)V
.end method

.method private native cubicTo(JFFFFFF)V
.end method

.method private native data(J)[F
.end method

.method private native isEmpty(J)Z
.end method

.method private native lineTo(JFF)V
.end method

.method private native moveTo(JFF)V
.end method

.method private native quadTo(JFFFF)V
.end method

.method private native reset(J)V
.end method

.method private native rewind(J)V
.end method

.method private native set(JJ)V
.end method

.method private native size(J)I
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/infinite/geom/PathNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/infinite/geom/PathNative;->close(J)V

    return-void
.end method

.method public concat(Lcom/infinite/geom/PathNative;)V
    .locals 4

    .line 60
    iget-wide v0, p0, Lcom/infinite/geom/PathNative;->nativePointer:J

    iget-wide v2, p1, Lcom/infinite/geom/PathNative;->nativePointer:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/infinite/geom/PathNative;->concat(JJ)V

    return-void
.end method

.method public cubicTo(FFFFFF)V
    .locals 9

    .line 54
    iget-wide v1, p0, Lcom/infinite/geom/PathNative;->nativePointer:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/infinite/geom/PathNative;->cubicTo(JFFFFFF)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, p1, p2, v0}, Lcom/infinite/geom/PathNative;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Matrix;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 95
    iget-wide v4, v0, Lcom/infinite/geom/PathNative;->nativePointer:J

    invoke-direct {v0, v4, v5}, Lcom/infinite/geom/PathNative;->data(J)[F

    move-result-object v4

    if-eqz v4, :cond_8

    .line 97
    array-length v5, v4

    if-nez v5, :cond_0

    goto/16 :goto_5

    .line 99
    :cond_0
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 102
    :goto_0
    array-length v8, v4

    if-ge v6, v8, :cond_6

    .line 104
    aget v8, v4, v6

    float-to-int v8, v8

    const/4 v9, 0x0

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    if-eqz v7, :cond_2

    if-eqz v3, :cond_1

    .line 111
    invoke-virtual {v5, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 112
    :cond_1
    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 113
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    const/4 v7, 0x0

    :cond_2
    add-int/lit8 v8, v6, 0x5

    .line 116
    aget v10, v4, v8

    cmpl-float v9, v10, v9

    if-nez v9, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_4

    .line 117
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_2

    .line 119
    :cond_4
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    sget-object v9, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 121
    aget v9, v4, v8

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_2
    add-int/lit8 v9, v6, 0x4

    .line 124
    aget v9, v4, v9

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/lit8 v11, v6, 0x1

    aget v11, v4, v11

    mul-float/2addr v11, v10

    float-to-int v11, v11

    add-int/lit8 v12, v6, 0x2

    aget v12, v4, v12

    mul-float/2addr v12, v10

    float-to-int v12, v12

    add-int/lit8 v6, v6, 0x3

    aget v6, v4, v6

    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-static {v9, v11, v12, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    move v6, v8

    goto/16 :goto_4

    :pswitch_1
    add-int/lit8 v6, v6, 0x6

    goto/16 :goto_4

    :pswitch_2
    add-int/lit8 v8, v6, 0x1

    .line 173
    aget v10, v4, v8

    add-int/lit8 v11, v6, 0x3

    aget v12, v4, v11

    sub-float/2addr v10, v12

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-int/lit8 v12, v6, 0x2

    .line 174
    aget v15, v4, v12

    add-int/lit8 v16, v6, 0x4

    aget v17, v4, v16

    sub-float v15, v15, v17

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 176
    aget v8, v4, v8

    aget v11, v4, v11

    add-float/2addr v8, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v8, v11

    .line 177
    aget v12, v4, v12

    aget v16, v4, v16

    add-float v12, v12, v16

    div-float/2addr v12, v11

    add-int/lit8 v6, v6, 0x5

    .line 179
    aget v13, v4, v6

    cmpl-float v9, v13, v9

    if-eqz v9, :cond_5

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 183
    invoke-virtual {v1, v8, v12}, Landroid/graphics/Canvas;->translate(FF)V

    move v9, v15

    float-to-double v14, v13

    .line 184
    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    double-to-float v13, v13

    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->rotate(F)V

    neg-float v13, v8

    neg-float v14, v12

    .line 185
    invoke-virtual {v1, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 186
    new-instance v13, Landroid/graphics/RectF;

    div-float/2addr v10, v11

    sub-float v14, v8, v10

    div-float v15, v9, v11

    sub-float v9, v12, v15

    add-float/2addr v8, v10

    add-float/2addr v12, v15

    invoke-direct {v13, v14, v9, v8, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v13, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_4

    :cond_5
    move v9, v15

    .line 189
    new-instance v13, Landroid/graphics/RectF;

    div-float/2addr v10, v11

    sub-float v14, v8, v10

    div-float v15, v9, v11

    sub-float v9, v12, v15

    add-float/2addr v8, v10

    add-float/2addr v12, v15

    invoke-direct {v13, v14, v9, v8, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v13, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_4

    :pswitch_3
    add-int/lit8 v8, v6, 0x3

    .line 167
    aget v8, v4, v8

    add-int/lit8 v9, v6, 0x1

    .line 168
    aget v9, v4, v9

    add-int/lit8 v10, v6, 0x2

    aget v10, v4, v10

    invoke-virtual {v1, v9, v10, v8, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_4

    :pswitch_4
    add-int/lit8 v6, v6, 0x6

    goto/16 :goto_3

    :pswitch_5
    add-int/lit8 v7, v6, 0x1

    .line 153
    aget v8, v4, v7

    add-int/lit8 v9, v6, 0x2

    aget v10, v4, v9

    invoke-virtual {v5, v8, v10}, Landroid/graphics/Path;->moveTo(FF)V

    add-int/lit8 v8, v6, 0x3

    .line 154
    aget v10, v4, v8

    aget v11, v4, v9

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 155
    aget v8, v4, v8

    add-int/lit8 v10, v6, 0x4

    aget v11, v4, v10

    invoke-virtual {v5, v8, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 156
    aget v8, v4, v7

    aget v10, v4, v10

    invoke-virtual {v5, v8, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 157
    aget v7, v4, v7

    aget v8, v4, v9

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 158
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    add-int/lit8 v6, v6, 0x5

    goto :goto_3

    :pswitch_6
    add-int/lit8 v7, v6, 0x1

    .line 148
    aget v7, v4, v7

    add-int/lit8 v8, v6, 0x2

    aget v8, v4, v8

    add-int/lit8 v9, v6, 0x3

    aget v9, v4, v9

    add-int/lit8 v10, v6, 0x4

    aget v10, v4, v10

    add-int/lit8 v11, v6, 0x5

    aget v11, v4, v11

    add-int/lit8 v13, v6, 0x6

    aget v12, v4, v13

    move-object v6, v5

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v6, v13

    goto :goto_3

    :pswitch_7
    add-int/lit8 v7, v6, 0x1

    .line 143
    aget v7, v4, v7

    add-int/lit8 v8, v6, 0x2

    aget v8, v4, v8

    add-int/lit8 v9, v6, 0x3

    aget v9, v4, v9

    add-int/lit8 v6, v6, 0x4

    aget v10, v4, v6

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_3

    :pswitch_8
    add-int/lit8 v7, v6, 0x1

    .line 138
    aget v7, v4, v7

    add-int/lit8 v6, v6, 0x2

    aget v8, v4, v6

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    :pswitch_9
    add-int/lit8 v7, v6, 0x1

    .line 133
    aget v7, v4, v7

    add-int/lit8 v6, v6, 0x2

    aget v8, v4, v6

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_3
    const/4 v7, 0x1

    goto :goto_4

    .line 197
    :pswitch_a
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    :goto_4
    const/4 v8, 0x1

    add-int/2addr v6, v8

    goto/16 :goto_0

    :cond_6
    if-eqz v7, :cond_8

    if-eqz v3, :cond_7

    .line 203
    invoke-virtual {v5, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 204
    :cond_7
    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_8
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
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

.method protected getNativePointer()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/infinite/geom/PathNative;->nativePointer:J

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/infinite/geom/PathNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/infinite/geom/PathNative;->isEmpty(J)Z

    move-result v0

    return v0
.end method

.method public lineTo(FF)V
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/infinite/geom/PathNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/infinite/geom/PathNative;->lineTo(JFF)V

    return-void
.end method

.method public moveTo(FF)V
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/infinite/geom/PathNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/infinite/geom/PathNative;->moveTo(JFF)V

    return-void
.end method

.method public quadTo(FFFF)V
    .locals 7

    .line 51
    iget-wide v1, p0, Lcom/infinite/geom/PathNative;->nativePointer:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/infinite/geom/PathNative;->quadTo(JFFFF)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/infinite/geom/PathNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/infinite/geom/PathNative;->reset(J)V

    return-void
.end method

.method public rewind()V
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/infinite/geom/PathNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/infinite/geom/PathNative;->rewind(J)V

    return-void
.end method

.method public set(Lcom/infinite/geom/PathNative;)V
    .locals 4

    .line 57
    iget-wide v0, p0, Lcom/infinite/geom/PathNative;->nativePointer:J

    iget-wide v2, p1, Lcom/infinite/geom/PathNative;->nativePointer:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/infinite/geom/PathNative;->set(JJ)V

    return-void
.end method

.method public size()I
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/infinite/geom/PathNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/infinite/geom/PathNative;->size(J)I

    move-result v0

    return v0
.end method
