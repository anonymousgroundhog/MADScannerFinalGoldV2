.class public Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "BlendSettingsViewController.java"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/BlendSettingsViewControllerBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;)Lcom/brakefield/painter/databinding/BlendSettingsViewControllerBinding;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BlendSettingsViewControllerBinding;

    return-object p0
.end method

.method static synthetic lambda$getView$0(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 80
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->setBlendSampleBottomLayers(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 82
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 83
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "PREF_BLEND_SAMPLE_LOWER_LAYERS"

    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 6

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/BlendSettingsViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/BlendSettingsViewControllerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BlendSettingsViewControllerBinding;

    .line 27
    new-instance v0, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushBlendSettings()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;-><init>(J)V

    .line 29
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BlendSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BlendSettingsViewControllerBinding;->blurSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController$1;

    invoke-direct {v3, p0, v0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;Lcom/brakefield/painter/ui/SimpleUI;)V

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v4, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 44
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BlendSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BlendSettingsViewControllerBinding;->blurSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->getSmudgeAmount()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 46
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BlendSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BlendSettingsViewControllerBinding;->pullSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v5, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController$2;

    invoke-direct {v5, p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController$2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;)V

    invoke-static {p1, v1, v2, v4, v5}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 60
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BlendSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BlendSettingsViewControllerBinding;->pullSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->getSmudgeStrength()F

    move-result v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 62
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BlendSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BlendSettingsViewControllerBinding;->flowSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v5, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController$3;

    invoke-direct {v5, p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController$3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;)V

    invoke-static {p1, v1, v2, v4, v5}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 76
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BlendSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BlendSettingsViewControllerBinding;->flowSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->getSmudgeOpacity()F

    move-result v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 78
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BlendSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BlendSettingsViewControllerBinding;->sampleBottomLayersToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    .line 84
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBlendSampleBottomLayers()Z

    move-result p1

    .line 78
    invoke-static {v0, v1, p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 86
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BlendSettingsViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/BlendSettingsViewControllerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method
