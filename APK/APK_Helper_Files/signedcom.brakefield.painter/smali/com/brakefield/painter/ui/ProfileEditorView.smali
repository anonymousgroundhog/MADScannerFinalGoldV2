.class public Lcom/brakefield/painter/ui/ProfileEditorView;
.super Landroid/view/View;
.source "ProfileEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/ProfileEditorView$ControlPoint;
    }
.end annotation


# instance fields
.field private final knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

.field private listener:Landroid/view/View$OnClickListener;

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/ProfileEditorView;->paint:Landroid/graphics/Paint;

    .line 25
    new-instance p2, Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;-><init>(F)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/ProfileEditorView;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    const/high16 p2, 0x40000000    # 2.0f

    .line 30
    invoke-static {p2}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p2

    .line 31
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    invoke-static {p2}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p2

    float-to-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 37
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/ProfileEditorView;->getPaddingLeft()I

    move-result v0

    .line 38
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/ProfileEditorView;->getPaddingTop()I

    move-result v1

    .line 39
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/ProfileEditorView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/brakefield/painter/ui/ProfileEditorView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/brakefield/painter/ui/ProfileEditorView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 40
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/ProfileEditorView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/brakefield/painter/ui/ProfileEditorView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/brakefield/painter/ui/ProfileEditorView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 42
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getEditProfileLeft()I

    move-result v4

    if-ne v0, v4, :cond_0

    .line 43
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getEditProfileTop()I

    move-result v4

    if-ne v1, v4, :cond_0

    .line 44
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getEditProfileRight()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 45
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getEditProfileBottom()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 46
    :cond_0
    invoke-static {v0, v1, v2, v3}, Lcom/brakefield/painter/PainterLib;->setupEditProfile(IIII)V

    .line 49
    :cond_1
    iget-object v4, p0, Lcom/brakefield/painter/ui/ProfileEditorView;->paint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 52
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    int-to-float v9, v0

    int-to-float v10, v1

    int-to-float v11, v2

    int-to-float v12, v3

    .line 53
    iget-object v13, p0, Lcom/brakefield/painter/ui/ProfileEditorView;->paint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 55
    new-instance v0, Lcom/infinite/geom/PathNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getEditProfilePath()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/infinite/geom/PathNative;-><init>(J)V

    .line 56
    iget-object v1, p0, Lcom/brakefield/painter/ui/ProfileEditorView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Lcom/infinite/geom/PathNative;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 61
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getNumberOfEditProfileControls()I

    move-result v0

    if-lez v0, :cond_4

    .line 65
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getEditProfileAdjustIndex()I

    move-result v1

    .line 67
    new-array v2, v0, [Lcom/brakefield/painter/ui/ProfileEditorView$ControlPoint;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_4

    .line 69
    invoke-static {v4}, Lcom/brakefield/painter/PainterLib;->getEditProfileControlPointX(I)F

    move-result v5

    .line 70
    invoke-static {v4}, Lcom/brakefield/painter/PainterLib;->getEditProfileControlPointY(I)F

    move-result v6

    .line 71
    new-instance v7, Lcom/brakefield/painter/ui/ProfileEditorView$ControlPoint;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/brakefield/painter/ui/ProfileEditorView$ControlPoint;-><init>(Lcom/brakefield/painter/ui/ProfileEditorView;Lcom/brakefield/painter/ui/ProfileEditorView$1;)V

    aput-object v7, v2, v4

    .line 72
    iput v5, v7, Lcom/brakefield/painter/ui/ProfileEditorView$ControlPoint;->x:F

    .line 73
    aget-object v7, v2, v4

    iput v6, v7, Lcom/brakefield/painter/ui/ProfileEditorView$ControlPoint;->y:F

    .line 74
    aget-object v7, v2, v4

    invoke-static {v4}, Lcom/brakefield/painter/PainterLib;->getEditProfileControlPointActive(I)Z

    move-result v8

    iput-boolean v8, v7, Lcom/brakefield/painter/ui/ProfileEditorView$ControlPoint;->active:Z

    .line 75
    aget-object v7, v2, v4

    if-lez v1, :cond_3

    add-int/lit8 v8, v0, -0x1

    if-ge v1, v8, :cond_3

    add-int/lit8 v8, v1, -0x1

    if-eq v4, v8, :cond_2

    add-int/lit8 v8, v1, 0x1

    if-ne v4, v8, :cond_3

    :cond_2
    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    move v8, v3

    :goto_1
    iput-boolean v8, v7, Lcom/brakefield/painter/ui/ProfileEditorView$ControlPoint;->cancel:Z

    .line 77
    aget-object v7, v2, v4

    invoke-virtual {p0, p1, v7, v5, v6}, Lcom/brakefield/painter/ui/ProfileEditorView;->drawControl(Landroid/graphics/Canvas;Lcom/brakefield/painter/ui/ProfileEditorView$ControlPoint;FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method drawControl(Landroid/graphics/Canvas;Lcom/brakefield/painter/ui/ProfileEditorView$ControlPoint;FF)V
    .locals 6

    .line 84
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getUIControlSize()F

    move-result v0

    .line 85
    iget-boolean v1, p2, Lcom/brakefield/painter/ui/ProfileEditorView$ControlPoint;->cancel:Z

    if-eqz v1, :cond_0

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/brakefield/painter/ui/ProfileEditorView;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    iget-boolean v2, p2, Lcom/brakefield/painter/ui/ProfileEditorView$ControlPoint;->active:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->setColor(I)V

    .line 88
    iget-object v1, p0, Lcom/brakefield/painter/ui/ProfileEditorView;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    sub-float v2, p3, v0

    float-to-int v2, v2

    sub-float v3, p4, v0

    float-to-int v3, v3

    add-float v4, p3, v0

    float-to-int v4, v4

    add-float v5, p4, v0

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->setBounds(IIII)V

    .line 89
    iget-object v1, p0, Lcom/brakefield/painter/ui/ProfileEditorView;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    invoke-virtual {v1, p1}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 91
    iget-boolean p2, p2, Lcom/brakefield/painter/ui/ProfileEditorView$ControlPoint;->cancel:Z

    if-eqz p2, :cond_2

    const p2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, p2

    .line 93
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/ProfileEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0800fb

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sub-float v1, p3, v0

    float-to-int v1, v1

    sub-float v2, p4, v0

    float-to-int v2, v2

    add-float/2addr p3, v0

    float-to-int p3, p3

    add-float/2addr p4, v0

    float-to-int p4, p4

    .line 94
    invoke-virtual {p2, v1, v2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 95
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->profileCancel()V

    .line 125
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/ProfileEditorView;->invalidate()V

    goto :goto_0

    .line 116
    :cond_1
    invoke-static {v0, v1}, Lcom/brakefield/painter/PainterLib;->profileMove(FF)V

    .line 117
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/ProfileEditorView;->invalidate()V

    goto :goto_0

    .line 120
    :cond_2
    invoke-static {v0, v1}, Lcom/brakefield/painter/PainterLib;->profileUp(FF)V

    .line 121
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/ProfileEditorView;->invalidate()V

    goto :goto_0

    .line 112
    :cond_3
    invoke-static {v0, v1}, Lcom/brakefield/painter/PainterLib;->profileDown(FF)V

    .line 113
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/ProfileEditorView;->invalidate()V

    .line 129
    :goto_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/ProfileEditorView;->listener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_4

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_4
    return v2
.end method

.method public setUpdateListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/brakefield/painter/ui/ProfileEditorView;->listener:Landroid/view/View$OnClickListener;

    return-void
.end method
