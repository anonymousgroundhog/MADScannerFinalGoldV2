.class public Lcom/brakefield/painter/ui/ProfileView;
.super Landroid/view/View;
.source "ProfileView.java"


# instance fields
.field private final matrix:Landroid/graphics/Matrix;

.field private final paint:Landroid/graphics/Paint;

.field private profile:Lcom/brakefield/painter/nativeobjs/ProfileNative;

.field private final strokeSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/ProfileView;->paint:Landroid/graphics/Paint;

    .line 21
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/brakefield/painter/ui/ProfileView;->matrix:Landroid/graphics/Matrix;

    const/high16 p2, 0x40000000    # 2.0f

    .line 28
    invoke-static {p2}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p2

    iput p2, p0, Lcom/brakefield/painter/ui/ProfileView;->strokeSize:F

    .line 29
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 35
    iget-object v0, p0, Lcom/brakefield/painter/ui/ProfileView;->profile:Lcom/brakefield/painter/nativeobjs/ProfileNative;

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/ProfileView;->paint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object v0, p0, Lcom/brakefield/painter/ui/ProfileView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/brakefield/painter/ui/ProfileView;->strokeSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/ProfileView;->getPaddingLeft()I

    move-result v0

    .line 41
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/ProfileView;->getPaddingTop()I

    move-result v1

    .line 42
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/ProfileView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/brakefield/painter/ui/ProfileView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/brakefield/painter/ui/ProfileView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 43
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/ProfileView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/brakefield/painter/ui/ProfileView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/brakefield/painter/ui/ProfileView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 46
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    int-to-float v10, v0

    int-to-float v11, v1

    int-to-float v12, v2

    int-to-float v13, v3

    .line 47
    iget-object v9, p0, Lcom/brakefield/painter/ui/ProfileView;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v10

    move v6, v11

    move v7, v12

    move v8, v13

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 49
    iget-object v4, p0, Lcom/brakefield/painter/ui/ProfileView;->matrix:Landroid/graphics/Matrix;

    sub-int/2addr v2, v0

    int-to-float v0, v2

    sub-int/2addr v3, v1

    int-to-float v1, v3

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 50
    iget-object v2, p0, Lcom/brakefield/painter/ui/ProfileView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 52
    iget-object v2, p0, Lcom/brakefield/painter/ui/ProfileView;->profile:Lcom/brakefield/painter/nativeobjs/ProfileNative;

    invoke-virtual {v2}, Lcom/brakefield/painter/nativeobjs/ProfileNative;->getPath()Lcom/infinite/geom/PathNative;

    move-result-object v2

    .line 53
    iget-object v3, p0, Lcom/brakefield/painter/ui/ProfileView;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/brakefield/painter/ui/ProfileView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, v3, v4}, Lcom/infinite/geom/PathNative;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Matrix;)V

    .line 55
    iget-object v2, p0, Lcom/brakefield/painter/ui/ProfileView;->paint:Landroid/graphics/Paint;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 56
    iget-object v2, p0, Lcom/brakefield/painter/ui/ProfileView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/brakefield/painter/ui/ProfileView;->strokeSize:F

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    const v3, 0x3ea8f5c3    # 0.33f

    mul-float v4, v0, v3

    add-float/2addr v4, v10

    .line 62
    invoke-virtual {v2, v4, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 63
    invoke-virtual {v2, v4, v13}, Landroid/graphics/Path;->lineTo(FF)V

    const v4, 0x3f2b851f    # 0.67f

    mul-float/2addr v0, v4

    add-float/2addr v0, v10

    .line 65
    invoke-virtual {v2, v0, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 66
    invoke-virtual {v2, v0, v13}, Landroid/graphics/Path;->lineTo(FF)V

    mul-float/2addr v3, v1

    add-float/2addr v3, v11

    .line 68
    invoke-virtual {v2, v10, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 69
    invoke-virtual {v2, v12, v3}, Landroid/graphics/Path;->lineTo(FF)V

    mul-float/2addr v1, v4

    add-float/2addr v1, v11

    .line 71
    invoke-virtual {v2, v10, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 72
    invoke-virtual {v2, v12, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 74
    invoke-virtual {v2, v10, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 75
    invoke-virtual {v2, v12, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 77
    iget-object v0, p0, Lcom/brakefield/painter/ui/ProfileView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getProfile()Lcom/brakefield/painter/nativeobjs/ProfileNative;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/brakefield/painter/ui/ProfileView;->profile:Lcom/brakefield/painter/nativeobjs/ProfileNative;

    return-object v0
.end method

.method public setProfile(Lcom/brakefield/painter/nativeobjs/ProfileNative;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/brakefield/painter/ui/ProfileView;->profile:Lcom/brakefield/painter/nativeobjs/ProfileNative;

    .line 84
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/ProfileView;->postInvalidate()V

    return-void
.end method
