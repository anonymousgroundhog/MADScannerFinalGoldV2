.class public Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;
.super Ljava/lang/Object;
.source "Eyedropper.java"


# static fields
.field public static clickListener:Landroid/view/View$OnClickListener;

.field public static color:I

.field public static listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

.field private static paint:Landroid/graphics/Paint;

.field private static previousPaint:Landroid/graphics/Paint;

.field private static previousSize:I

.field private static size:I

.field public static x:F

.field public static y:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->paint:Landroid/graphics/Paint;

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->previousPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 65
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->x:F

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->y:F

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->size:I

    int-to-float v2, v2

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 66
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->x:F

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->y:F

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->previousSize:I

    int-to-float v2, v2

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->previousPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static init()V
    .locals 4

    .line 29
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->size:I

    .line 31
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->paint:Landroid/graphics/Paint;

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 35
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v0, v3, v1, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 37
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->previousPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->previousPaint:Landroid/graphics/Paint;

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x41000000    # 8.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 41
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->size:I

    int-to-float v0, v0

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->previousPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->previousSize:I

    return-void
.end method

.method public static onUp()V
    .locals 3

    .line 70
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    if-eqz v0, :cond_1

    .line 71
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->color:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;->colorChanged(IZ)V

    .line 72
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->clickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 73
    :cond_0
    sput-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    .line 74
    sput-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->clickListener:Landroid/view/View$OnClickListener;

    goto :goto_0

    .line 76
    :cond_1
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->color:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/color/PaintManager;->getOpaqueColor(I)I

    move-result v0

    sput v0, Lcom/brakefield/infinitestudio/color/PaintManager;->color:I

    .line 77
    invoke-static {}, Lcom/brakefield/infinitestudio/color/PaintManager;->create()V

    :goto_0
    return-void
.end method

.method public static update(FF)V
    .locals 0

    .line 46
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->x:F

    .line 47
    sput p1, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->y:F

    return-void
.end method

.method public static updateColor(I)V
    .locals 1

    .line 52
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->color:I

    .line 53
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->paint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public static updatePreviousColor(I)V
    .locals 1

    .line 59
    invoke-static {p0}, Lcom/brakefield/infinitestudio/color/PaintManager;->getOpaqueColor(I)I

    move-result p0

    .line 60
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->previousPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
