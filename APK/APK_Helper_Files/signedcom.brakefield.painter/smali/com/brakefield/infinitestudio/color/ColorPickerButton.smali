.class public Lcom/brakefield/infinitestudio/color/ColorPickerButton;
.super Landroid/widget/Button;
.source "ColorPickerButton.java"


# instance fields
.field public color:I

.field private final paint:Landroid/graphics/Paint;

.field public prevColor:I

.field public toneLockColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x10000

    .line 17
    iput p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerButton;->color:I

    const p2, -0xffff01

    .line 18
    iput p2, p0, Lcom/brakefield/infinitestudio/color/ColorPickerButton;->prevColor:I

    .line 19
    iput p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerButton;->toneLockColor:I

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerButton;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/ColorPickerButton;->getWidth()I

    move-result v2

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/ColorPickerButton;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v5, v3, v4

    const/high16 v6, 0x41400000    # 12.0f

    .line 36
    invoke-static {v6}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v6

    sub-float/2addr v3, v6

    float-to-int v3, v3

    .line 40
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 41
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v3, v3

    mul-float/2addr v3, v4

    sub-float v8, v5, v3

    int-to-float v2, v2

    mul-float/2addr v4, v2

    add-float/2addr v3, v5

    const/4 v9, 0x0

    invoke-direct {v7, v9, v8, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 v10, 0x8

    new-array v11, v10, [F

    const/4 v12, 0x0

    aput v5, v11, v12

    const/4 v13, 0x1

    aput v5, v11, v13

    const/4 v14, 0x2

    aput v9, v11, v14

    const/4 v15, 0x3

    aput v9, v11, v15

    const/16 v16, 0x4

    aput v9, v11, v16

    const/16 v17, 0x5

    aput v9, v11, v17

    const/16 v18, 0x6

    aput v5, v11, v18

    const/16 v19, 0x7

    aput v5, v11, v19

    sget-object v15, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v7, v11, v15}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 42
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 43
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11, v4, v8, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-array v2, v10, [F

    aput v9, v2, v12

    aput v9, v2, v13

    aput v5, v2, v14

    const/4 v3, 0x3

    aput v5, v2, v3

    aput v5, v2, v16

    aput v5, v2, v17

    aput v9, v2, v18

    aput v9, v2, v19

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v11, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 45
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/ColorPickerButton;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/brakefield/infinitestudio/color/ColorPickerButton;->color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/ColorPickerButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 48
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/ColorPickerButton;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/brakefield/infinitestudio/color/ColorPickerButton;->prevColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/ColorPickerButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onSizeChanged(IIII)V

    .line 28
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerButton;->postInvalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerButton;->color:I

    .line 54
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerButton;->postInvalidate()V

    return-void
.end method

.method public setPreviousColor(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerButton;->prevColor:I

    .line 59
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerButton;->postInvalidate()V

    return-void
.end method

.method public setToneLockColor(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerButton;->toneLockColor:I

    .line 64
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerButton;->postInvalidate()V

    return-void
.end method
