.class public Lcom/brakefield/infinitestudio/ui/AssistDrawable;
.super Landroid/graphics/drawable/StateListDrawable;
.source "AssistDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final clearPaint:Landroid/graphics/Paint;

.field private down:Z

.field private final outlinePaint:Landroid/graphics/Paint;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .line 27
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/AssistDrawable;->outlinePaint:Landroid/graphics/Paint;

    .line 22
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/brakefield/infinitestudio/ui/AssistDrawable;->backgroundPaint:Landroid/graphics/Paint;

    .line 23
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/brakefield/infinitestudio/ui/AssistDrawable;->clearPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 25
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/AssistDrawable;->down:Z

    .line 29
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/AssistDrawable;->view:Landroid/view/View;

    .line 31
    sget p1, Lcom/brakefield/infinitestudio/color/Colors;->BLUE:I

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, 0x40800000    # 4.0f

    .line 33
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 35
    sget p1, Lcom/brakefield/infinitestudio/color/Colors;->BLUE:I

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p1, 0x28

    .line 36
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 38
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 74
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/AssistDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 76
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 77
    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 78
    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    .line 79
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    .line 82
    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/AssistDrawable;->view:Landroid/view/View;

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-nez v4, :cond_0

    const/high16 v4, 0x41000000    # 8.0f

    goto :goto_0

    :cond_0
    const/high16 v4, 0x40000000    # 2.0f

    :goto_0
    add-float/2addr v1, v4

    add-float/2addr v2, v4

    sub-float/2addr v3, v4

    sub-float/2addr v0, v4

    const/high16 v4, 0x41000000    # 8.0f

    .line 91
    iget-object v12, p0, Lcom/brakefield/infinitestudio/ui/AssistDrawable;->clearPaint:Landroid/graphics/Paint;

    const/high16 v11, 0x41000000    # 8.0f

    move-object v5, p1

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v0

    move v10, v11

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 92
    iget-object v12, p0, Lcom/brakefield/infinitestudio/ui/AssistDrawable;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 93
    iget-boolean v5, p0, Lcom/brakefield/infinitestudio/ui/AssistDrawable;->down:Z

    if-eqz v5, :cond_1

    iget-object v12, p0, Lcom/brakefield/infinitestudio/ui/AssistDrawable;->backgroundPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v0

    move v10, v4

    move v11, v4

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 7

    .line 49
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/AssistDrawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 53
    :goto_0
    array-length v4, v0

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    .line 54
    aget v4, v0, v2

    const v6, 0x101009c

    if-eq v4, v6, :cond_0

    const v6, 0x10100a7

    if-eq v4, v6, :cond_0

    const v6, 0x1010367

    if-eq v4, v6, :cond_0

    goto :goto_1

    :cond_0
    move v3, v5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 63
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/AssistDrawable;->down:Z

    if-nez v0, :cond_2

    iput-boolean v5, p0, Lcom/brakefield/infinitestudio/ui/AssistDrawable;->down:Z

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    .line 64
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/AssistDrawable;->down:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/AssistDrawable;->down:Z

    .line 66
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/AssistDrawable;->invalidateSelf()V

    .line 68
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method
