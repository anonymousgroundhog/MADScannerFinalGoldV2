.class public Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;
.super Ljava/lang/Object;
.source "PatternSettingsViewController.java"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;

.field private patternFill:Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$getView$0(F)Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr p0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 5

    .line 22
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getToolManager()Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getPatternFill()Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->patternFill:Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;

    .line 27
    iget-object v0, v0, Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;->hueSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController$$ExternalSyntheticLambda0;-><init>()V

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-static {p1, v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 34
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;->hueSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->patternFill:Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->getHue()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 36
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;->saturationSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;Lcom/brakefield/painter/ui/SimpleUI;)V

    const/4 v4, 0x0

    invoke-static {p1, v0, v1, v4, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 42
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;->saturationSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->patternFill:Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->getSaturation()F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 44
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;->brightnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-static {p1, v0, v1, v4, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 50
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;->brightnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->patternFill:Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->getBrightness()F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 52
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;->contrastSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-static {p1, v0, v1, v4, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 58
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;->contrastSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->patternFill:Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->getContrast()F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 60
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-static {p1, v0, v1, v4, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 66
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->patternFill:Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;

    invoke-virtual {p2}, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->getOpacity()F

    move-result p2

    mul-float/2addr p2, v2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 68
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$1$com-brakefield-painter-ui-viewcontrollers-PatternSettingsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 30
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->patternFill:Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;

    int-to-float p4, p3

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p4, v0

    invoke-virtual {p2, p4}, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->setHue(F)V

    .line 31
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 32
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;->hueSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p3, p3, -0x32

    int-to-float p3, p3

    const p4, 0x40666666    # 3.6f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$getView$2$com-brakefield-painter-ui-viewcontrollers-PatternSettingsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 38
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->patternFill:Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;

    int-to-float p4, p3

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p4, v0

    invoke-virtual {p2, p4}, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->setSaturation(F)V

    .line 39
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 40
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;->saturationSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p3, p3, -0x32

    mul-int/lit8 p3, p3, 0x2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$getView$3$com-brakefield-painter-ui-viewcontrollers-PatternSettingsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 46
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->patternFill:Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;

    int-to-float p4, p3

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p4, v0

    invoke-virtual {p2, p4}, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->setBrightness(F)V

    .line 47
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 48
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;->brightnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p3, p3, -0x32

    mul-int/lit8 p3, p3, 0x2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$getView$4$com-brakefield-painter-ui-viewcontrollers-PatternSettingsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 54
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->patternFill:Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;

    int-to-float p4, p3

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p4, v0

    invoke-virtual {p2, p4}, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->setContrast(F)V

    .line 55
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 56
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;->contrastSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p3, p3, -0x32

    mul-int/lit8 p3, p3, 0x2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$getView$5$com-brakefield-painter-ui-viewcontrollers-PatternSettingsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 62
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->patternFill:Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;

    int-to-float p4, p3

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p4, v0

    invoke-virtual {p2, p4}, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->setOpacity(F)V

    .line 63
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 64
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/PatternSettingsViewControllerBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    return-void
.end method
