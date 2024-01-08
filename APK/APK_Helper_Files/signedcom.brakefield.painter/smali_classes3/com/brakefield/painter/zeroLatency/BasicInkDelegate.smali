.class public Lcom/brakefield/painter/zeroLatency/BasicInkDelegate;
.super Ljava/lang/Object;
.source "BasicInkDelegate.java"

# interfaces
.implements Lcom/brakefield/painter/zeroLatency/InkDelegate;


# instance fields
.field private mInkPaint:Landroid/graphics/Paint;

.field private mPressureSensitive:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;Z)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/BasicInkDelegate;->mInkPaint:Landroid/graphics/Paint;

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/zeroLatency/BasicInkDelegate;->setInkPaint(Landroid/graphics/Paint;Z)V

    return-void
.end method


# virtual methods
.method public drawInk(Landroid/graphics/Canvas;Lcom/brakefield/painter/zeroLatency/InkPoint;Ljava/util/List;Landroid/graphics/Paint;Z)Landroid/graphics/Rect;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/brakefield/painter/zeroLatency/InkPoint;",
            "Ljava/util/List<",
            "Lcom/brakefield/painter/zeroLatency/InkPoint;",
            ">;",
            "Landroid/graphics/Paint;",
            "Z)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 55
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/brakefield/painter/zeroLatency/InkPoint;

    .line 60
    :goto_0
    invoke-virtual {p4}, Landroid/graphics/Paint;->getAlpha()I

    move-result p5

    const/16 v0, 0xff

    if-lt p5, v0, :cond_1

    .line 62
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    move-object v0, p2

    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/painter/zeroLatency/InkPoint;

    .line 63
    iget v3, v0, Lcom/brakefield/painter/zeroLatency/InkPoint;->mX:F

    iget v4, v0, Lcom/brakefield/painter/zeroLatency/InkPoint;->mY:F

    iget v5, v1, Lcom/brakefield/painter/zeroLatency/InkPoint;->mX:F

    iget v6, v1, Lcom/brakefield/painter/zeroLatency/InkPoint;->mY:F

    invoke-virtual {p0, v1, p4}, Lcom/brakefield/painter/zeroLatency/BasicInkDelegate;->getStrokePaint(Lcom/brakefield/painter/zeroLatency/InkPoint;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object v0, v1

    goto :goto_1

    .line 67
    :cond_1
    sget-object p5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    new-instance p5, Landroid/graphics/Path;

    invoke-direct {p5}, Landroid/graphics/Path;-><init>()V

    .line 69
    iget v0, p2, Lcom/brakefield/painter/zeroLatency/InkPoint;->mX:F

    iget v1, p2, Lcom/brakefield/painter/zeroLatency/InkPoint;->mY:F

    invoke-virtual {p5, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 70
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/painter/zeroLatency/InkPoint;

    .line 71
    iget v2, v1, Lcom/brakefield/painter/zeroLatency/InkPoint;->mX:F

    iget v1, v1, Lcom/brakefield/painter/zeroLatency/InkPoint;->mY:F

    invoke-virtual {p5, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 73
    :cond_2
    invoke-virtual {p1, p5, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 76
    :cond_3
    new-instance p1, Landroid/graphics/Rect;

    iget p5, p2, Lcom/brakefield/painter/zeroLatency/InkPoint;->mX:F

    float-to-int p5, p5

    iget v0, p2, Lcom/brakefield/painter/zeroLatency/InkPoint;->mY:F

    float-to-int v0, v0

    iget v1, p2, Lcom/brakefield/painter/zeroLatency/InkPoint;->mX:F

    float-to-int v1, v1

    iget p2, p2, Lcom/brakefield/painter/zeroLatency/InkPoint;->mY:F

    float-to-int p2, p2

    invoke-direct {p1, p5, v0, v1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 77
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/brakefield/painter/zeroLatency/InkPoint;

    .line 78
    iget p5, p3, Lcom/brakefield/painter/zeroLatency/InkPoint;->mX:F

    float-to-int p5, p5

    iget p3, p3, Lcom/brakefield/painter/zeroLatency/InkPoint;->mY:F

    float-to-int p3, p3

    invoke-virtual {p1, p5, p3}, Landroid/graphics/Rect;->union(II)V

    goto :goto_3

    .line 80
    :cond_4
    invoke-virtual {p4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p2

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    add-int/lit8 p2, p2, 0x1

    neg-int p2, p2

    .line 81
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Rect;->inset(II)V

    return-object p1
.end method

.method public drawInk(Landroid/graphics/Canvas;Lcom/brakefield/painter/zeroLatency/InkPoint;Ljava/util/List;Z)Landroid/graphics/Rect;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/brakefield/painter/zeroLatency/InkPoint;",
            "Ljava/util/List<",
            "Lcom/brakefield/painter/zeroLatency/InkPoint;",
            ">;Z)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .line 42
    iget-object v4, p0, Lcom/brakefield/painter/zeroLatency/BasicInkDelegate;->mInkPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/painter/zeroLatency/BasicInkDelegate;->drawInk(Landroid/graphics/Canvas;Lcom/brakefield/painter/zeroLatency/InkPoint;Ljava/util/List;Landroid/graphics/Paint;Z)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public drawInk(Landroid/graphics/Canvas;Ljava/util/List;Landroid/graphics/Paint;Z)Landroid/graphics/Rect;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Lcom/brakefield/painter/zeroLatency/InkPoint;",
            ">;",
            "Landroid/graphics/Paint;",
            "Z)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 46
    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/painter/zeroLatency/BasicInkDelegate;->drawInk(Landroid/graphics/Canvas;Lcom/brakefield/painter/zeroLatency/InkPoint;Ljava/util/List;Landroid/graphics/Paint;Z)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getStrokePaint(Lcom/brakefield/painter/zeroLatency/InkPoint;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 2

    .line 32
    iget-boolean v0, p0, Lcom/brakefield/painter/zeroLatency/BasicInkDelegate;->mPressureSensitive:Z

    if-nez v0, :cond_0

    return-object p2

    .line 34
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 35
    iget v1, p1, Lcom/brakefield/painter/zeroLatency/InkPoint;->mPressure:F

    iget p1, p1, Lcom/brakefield/painter/zeroLatency/InkPoint;->mPressure:F

    mul-float/2addr v1, p1

    const p1, 0x3e4ccccd    # 0.2f

    add-float/2addr v1, p1

    .line 36
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p1

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object v0
.end method

.method public setInkPaint(Landroid/graphics/Paint;Z)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/BasicInkDelegate;->mInkPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 27
    iget-object p1, p0, Lcom/brakefield/painter/zeroLatency/BasicInkDelegate;->mInkPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 28
    iput-boolean p2, p0, Lcom/brakefield/painter/zeroLatency/BasicInkDelegate;->mPressureSensitive:Z

    return-void
.end method
