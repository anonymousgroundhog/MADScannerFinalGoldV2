.class Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;
.super Ljava/lang/Object;
.source "MainToolbar.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/color/SwatchSlider$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/toolbars/MainToolbar;->setupSwatchSlider(Lcom/brakefield/infinitestudio/color/SwatchSlider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private colorViewBackground:Lcom/brakefield/infinitestudio/ui/CircleDrawable;

.field private colorViewId:I

.field private colorViewOffsetX:F

.field private colorViewOffsetY:F

.field private containerView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field final synthetic this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

.field final synthetic val$swatchSlider:Lcom/brakefield/infinitestudio/color/SwatchSlider;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;Lcom/brakefield/infinitestudio/color/SwatchSlider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1093
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;->val$swatchSlider:Lcom/brakefield/infinitestudio/color/SwatchSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 1095
    iput p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;->colorViewId:I

    const/4 p1, 0x0

    .line 1097
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;->containerView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-void
.end method

.method private findTopmostLayout(Landroid/view/View;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 2

    .line 1102
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1103
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1104
    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;->findTopmostLayout(Landroid/view/View;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1110
    :cond_0
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_1

    .line 1111
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addColorView(FF)Landroid/view/View;
    .locals 4

    .line 1120
    iput p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;->colorViewOffsetX:F

    .line 1121
    iput p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;->colorViewOffsetY:F

    .line 1123
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;->val$swatchSlider:Lcom/brakefield/infinitestudio/color/SwatchSlider;

    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;->findTopmostLayout(Landroid/view/View;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;->containerView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 1125
    iget p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;->colorViewId:I

    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/high16 v0, 0x42800000    # 64.0f

    .line 1129
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    float-to-int v0, v0

    .line 1131
    iget v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;->colorViewOffsetX:F

    int-to-float v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;->colorViewOffsetX:F

    .line 1132
    iget v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;->colorViewOffsetY:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;->colorViewOffsetY:F

    if-eqz p2, :cond_1

    .line 1135
    new-instance p1, Landroid/view/View;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$700(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1136
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    iput v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;->colorViewId:I

    .line 1137
    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 1138
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 1142
    new-instance p2, Lcom/brakefield/infinitestudio/ui/CircleDrawable;

    const/high16 v0, -0x1000000

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/CircleDrawable;-><init>(I)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;->colorViewBackground:Lcom/brakefield/infinitestudio/ui/CircleDrawable;

    .line 1143
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1144
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;->containerView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p2, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-object p1
.end method

.method public onColorChanged(I)V
    .locals 3

    .line 1161
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-static {v0, v2, p1}, Lcom/brakefield/painter/PainterLib;->setColor(FFF)V

    .line 1162
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$200(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object p1

    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$700(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method public removeColorView(Landroid/view/View;)V
    .locals 1

    .line 1157
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;->containerView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public updateColorView(Landroid/view/View;IFF)V
    .locals 1

    .line 1151
    iget v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;->colorViewOffsetX:F

    add-float/2addr p3, v0

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationX(F)V

    .line 1152
    iget p3, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;->colorViewOffsetY:F

    add-float/2addr p4, p3

    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationY(F)V

    .line 1153
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;->colorViewBackground:Lcom/brakefield/infinitestudio/ui/CircleDrawable;

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/CircleDrawable;->setColor(I)V

    return-void
.end method
