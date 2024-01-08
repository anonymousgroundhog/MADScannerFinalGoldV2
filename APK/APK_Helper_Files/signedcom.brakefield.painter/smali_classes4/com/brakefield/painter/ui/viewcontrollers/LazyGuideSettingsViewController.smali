.class public Lcom/brakefield/painter/ui/viewcontrollers/LazyGuideSettingsViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "LazyGuideSettingsViewController.java"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/LazyGuideSettingsViewControllerBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    return-void
.end method

.method static synthetic lambda$getView$1(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 32
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setLazyElastic(Z)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 3

    .line 20
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/LazyGuideSettingsViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/LazyGuideSettingsViewControllerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LazyGuideSettingsViewController;->binding:Lcom/brakefield/painter/databinding/LazyGuideSettingsViewControllerBinding;

    .line 22
    iget-object v0, v0, Lcom/brakefield/painter/databinding/LazyGuideSettingsViewControllerBinding;->radiusSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getLazyRadius()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LazyGuideSettingsViewController;->binding:Lcom/brakefield/painter/databinding/LazyGuideSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LazyGuideSettingsViewControllerBinding;->radiusSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/LazyGuideSettingsViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/LazyGuideSettingsViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/LazyGuideSettingsViewController;)V

    const/4 v2, 0x0

    invoke-static {p1, v0, p2, v2, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 28
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LazyGuideSettingsViewController;->binding:Lcom/brakefield/painter/databinding/LazyGuideSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LazyGuideSettingsViewControllerBinding;->radiusSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getLazyRadius()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 30
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LazyGuideSettingsViewController;->binding:Lcom/brakefield/painter/databinding/LazyGuideSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LazyGuideSettingsViewControllerBinding;->elasticToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance p2, Lcom/brakefield/painter/ui/viewcontrollers/LazyGuideSettingsViewController$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/brakefield/painter/ui/viewcontrollers/LazyGuideSettingsViewController$$ExternalSyntheticLambda1;-><init>()V

    .line 33
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getLazyElastic()Z

    move-result v0

    .line 30
    invoke-static {p1, p2, v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 35
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LazyGuideSettingsViewController;->binding:Lcom/brakefield/painter/databinding/LazyGuideSettingsViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/LazyGuideSettingsViewControllerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$0$com-brakefield-painter-ui-viewcontrollers-LazyGuideSettingsViewController(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p1, p2

    .line 25
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setLazyRadius(F)V

    .line 26
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LazyGuideSettingsViewController;->binding:Lcom/brakefield/painter/databinding/LazyGuideSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LazyGuideSettingsViewControllerBinding;->radiusSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getLazyRadius()F

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    const/4 p3, 0x0

    sget-object p3, Lcom/fasterxml/jackson/core/base/wdxk/XdOzfHnSj;->nxSgRPztcRPLSw:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    return-void
.end method
