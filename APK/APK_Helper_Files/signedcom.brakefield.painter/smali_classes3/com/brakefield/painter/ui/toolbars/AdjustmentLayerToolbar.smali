.class public Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar;
.super Lcom/brakefield/painter/ui/toolbars/Toolbar;
.source "AdjustmentLayerToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$UpdateHandler;
    }
.end annotation


# instance fields
.field private updateHandler:Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$UpdateHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/brakefield/painter/ui/toolbars/Toolbar;-><init>()V

    return-void
.end method

.method static synthetic lambda$getView$0(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;Landroid/widget/SeekBar;IZ)V
    .locals 4

    .line 35
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->selectedLayerId()I

    move-result p2

    int-to-float p4, p3

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p4, v0

    .line 36
    invoke-static {p2, p4}, Lcom/brakefield/painter/PainterLib;->setAdjustmentLayerValue(IF)V

    .line 37
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 38
    iget-object p0, p1, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->adjustmentSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->isMiddlePivot()Z

    move-result p0

    if-eqz p0, :cond_0

    int-to-double p2, p3

    .line 39
    iget-object p0, p1, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->adjustmentSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getMax()I

    move-result p0

    int-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    sub-double/2addr p2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr p2, v0

    double-to-int p3, p2

    .line 41
    :cond_0
    iget-object p0, p1, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->adjustmentSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "%"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 5

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$UpdateHandler;

    invoke-direct {v1, v0}, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$UpdateHandler;-><init>(Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;)V

    iput-object v1, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$UpdateHandler;

    .line 29
    iget-object v1, v0, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->adjustmentName:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setTextColor(I)V

    .line 31
    iget-object v1, v0, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->adjustmentSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setTextColor(I)V

    .line 33
    iget-object v1, v0, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->adjustmentSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$$ExternalSyntheticLambda0;

    invoke-direct {v3, p2, v0}, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;)V

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v4, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 44
    iget-object v1, v0, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->gradientSlider:Lcom/brakefield/painter/ui/GradientSlider;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$1;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$1;-><init>(Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;)V

    invoke-virtual {v1, v2}, Lcom/brakefield/painter/ui/GradientSlider;->setGradientChangedListener(Lcom/brakefield/painter/ui/GradientSlider$OnGradientChangedListener;)V

    .line 66
    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    return-object p1
.end method

.method public update()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$UpdateHandler;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$UpdateHandler;->update()V

    return-void
.end method
