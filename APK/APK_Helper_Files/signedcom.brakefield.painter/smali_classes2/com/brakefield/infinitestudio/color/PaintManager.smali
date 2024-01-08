.class public Lcom/brakefield/infinitestudio/color/PaintManager;
.super Ljava/lang/Object;
.source "PaintManager.java"


# static fields
.field public static final CAP_BUTT:I = 0x0

.field public static final CAP_ROUND:I = 0x1

.field public static final CAP_SQUARE:I = 0x2

.field public static final JOIN_BEVEL:I = 0x0

.field public static final JOIN_MITER:I = 0x1

.field public static final JOIN_ROUND:I = 0x2

.field public static final STYLE_FILL:I = 0x0

.field public static final STYLE_FILL_AND_STROKE:I = 0x1

.field public static final STYLE_STROKE:I = 0x2

.field public static alpha:I

.field public static cap:I

.field public static color:I

.field public static join:I

.field public static paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

.field public static style:I

.field public static width:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/brakefield/infinitestudio/color/PaintTracer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/color/PaintTracer;-><init>(I)V

    sput-object v0, Lcom/brakefield/infinitestudio/color/PaintManager;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    const/high16 v0, -0x1000000

    .line 25
    sput v0, Lcom/brakefield/infinitestudio/color/PaintManager;->color:I

    const/16 v0, 0xff

    .line 26
    sput v0, Lcom/brakefield/infinitestudio/color/PaintManager;->alpha:I

    const/high16 v0, 0x42480000    # 50.0f

    .line 27
    sput v0, Lcom/brakefield/infinitestudio/color/PaintManager;->width:F

    .line 28
    sput v1, Lcom/brakefield/infinitestudio/color/PaintManager;->cap:I

    .line 29
    sput v1, Lcom/brakefield/infinitestudio/color/PaintManager;->join:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()V
    .locals 4

    .line 34
    new-instance v0, Lcom/brakefield/infinitestudio/color/PaintTracer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/color/PaintTracer;-><init>(I)V

    sput-object v0, Lcom/brakefield/infinitestudio/color/PaintManager;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    .line 36
    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setDither(Z)V

    .line 37
    sget-object v0, Lcom/brakefield/infinitestudio/color/PaintManager;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    sget v2, Lcom/brakefield/infinitestudio/color/PaintManager;->color:I

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setColor(I)V

    .line 38
    sget-object v0, Lcom/brakefield/infinitestudio/color/PaintManager;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    sget v2, Lcom/brakefield/infinitestudio/color/PaintManager;->alpha:I

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setAlpha(I)V

    .line 39
    sget-object v0, Lcom/brakefield/infinitestudio/color/PaintManager;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    sget v2, Lcom/brakefield/infinitestudio/color/PaintManager;->width:F

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setStrokeWidth(F)V

    .line 41
    sget v0, Lcom/brakefield/infinitestudio/color/PaintManager;->cap:I

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    sget-object v0, Lcom/brakefield/infinitestudio/color/PaintManager;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_0

    .line 46
    :cond_1
    sget-object v0, Lcom/brakefield/infinitestudio/color/PaintManager;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_0

    .line 43
    :cond_2
    sget-object v0, Lcom/brakefield/infinitestudio/color/PaintManager;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 53
    :goto_0
    sget v0, Lcom/brakefield/infinitestudio/color/PaintManager;->join:I

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_3

    goto :goto_1

    .line 61
    :cond_3
    sget-object v0, Lcom/brakefield/infinitestudio/color/PaintManager;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_1

    .line 58
    :cond_4
    sget-object v0, Lcom/brakefield/infinitestudio/color/PaintManager;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    sget-object v3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_1

    .line 55
    :cond_5
    sget-object v0, Lcom/brakefield/infinitestudio/color/PaintManager;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    sget-object v3, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 65
    :goto_1
    sget v0, Lcom/brakefield/infinitestudio/color/PaintManager;->style:I

    if-eqz v0, :cond_8

    if-eq v0, v1, :cond_7

    if-eq v0, v2, :cond_6

    goto :goto_2

    .line 73
    :cond_6
    sget-object v0, Lcom/brakefield/infinitestudio/color/PaintManager;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_2

    .line 70
    :cond_7
    sget-object v0, Lcom/brakefield/infinitestudio/color/PaintManager;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_2

    .line 67
    :cond_8
    sget-object v0, Lcom/brakefield/infinitestudio/color/PaintManager;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_2
    return-void
.end method

.method public static getOpaqueColor(I)I
    .locals 2

    .line 79
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method
