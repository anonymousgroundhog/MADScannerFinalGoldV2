.class public Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "CloneSettingsViewController.java"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;)Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    return-object p0
.end method

.method static synthetic access$100(Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->refreshOffsetVisibility()V

    return-void
.end method

.method static synthetic access$200(Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->refreshAlignVisibility()V

    return-void
.end method

.method static synthetic lambda$getView$4(Lcom/brakefield/painter/ui/SimpleUI;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 126
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setAutoPredictStrokes(Z)V

    .line 127
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method static synthetic lambda$getView$8(Lcom/brakefield/painter/ui/SimpleUI;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 157
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setCloneAligned(Z)V

    .line 158
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method private refreshAlignVisibility()V
    .locals 2

    .line 176
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCloneMode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCloneOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->alignedSourceToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->setVisibility(I)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->alignedSourceToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private refreshOffsetVisibility()V
    .locals 2

    .line 168
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCloneMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->offsetSourceToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->setVisibility(I)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->offsetSourceToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 10

    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    .line 34
    iget-object v0, v0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->modesDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    new-instance v4, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const v5, 0x7f1209ea

    .line 72
    invoke-static {v5}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const v5, 0x7f12004b

    .line 73
    invoke-static {v5}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v4, v5, v8}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v3, v7

    new-instance v4, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const v5, 0x7f120aa1

    .line 74
    invoke-static {v5}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v4, v5, v9}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v3, v8

    invoke-direct {v2, p1, v3}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;)V

    .line 75
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCloneMode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 34
    invoke-static {v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupDropdown(Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Landroid/widget/AdapterView$OnItemSelectedListener;Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;Ljava/lang/Object;)V

    .line 77
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCloneMode()I

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    if-eq v0, v7, :cond_1

    if-eq v0, v8, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->artisticSettings:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->smartSettings:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->artisticSettings:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->smartSettings:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->artisticSettings:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->smartSettings:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->strokeLengthSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;Lcom/brakefield/painter/ui/SimpleUI;)V

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 98
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->strokeLengthSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getAutoMaxStrokeLength()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 100
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->edgesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-static {p1, v0, v1, v3, v4}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 106
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->edgesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getAutoEdgeContrast()F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v1, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 108
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->mixInSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v5, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-static {p1, v0, v1, v3, v5}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 114
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->mixInSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getAutoMixColor()F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 116
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->rotationSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v5, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-static {p1, v0, v1, v3, v5}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 122
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->rotationSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getAutoSmartRotation()F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 124
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->completeStrokesToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 128
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getAutoPredictStrokes()Z

    move-result v5

    .line 124
    invoke-static {v0, v1, v5}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 130
    new-instance v0, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushBlendSettings()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;-><init>(J)V

    .line 133
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->blurSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v5

    new-instance v6, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;)V

    invoke-static {p1, v1, v5, v3, v6}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 138
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->blurSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->getSmudgeAmount()F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 140
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->pullSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    new-instance v5, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;)V

    invoke-static {p1, v1, v4, v3, v5}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 145
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->pullSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->getSmudgeStrength()F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 147
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->offsetSourceToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 153
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCloneOffset()Z

    move-result v1

    .line 147
    invoke-static {p1, v0, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 155
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->alignedSourceToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 159
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCloneAligned()Z

    move-result p2

    .line 155
    invoke-static {p1, v0, p2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 161
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->refreshOffsetVisibility()V

    .line 162
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->refreshAlignVisibility()V

    .line 164
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$0$com-brakefield-painter-ui-viewcontrollers-CloneSettingsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 94
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->strokeLengthSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    int-to-float p2, p3

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    .line 95
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setAutoMaxStrokeLength(F)V

    .line 96
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method synthetic lambda$getView$1$com-brakefield-painter-ui-viewcontrollers-CloneSettingsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 102
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->edgesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    int-to-float p2, p3

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    .line 103
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setAutoEdgeContrast(F)V

    .line 104
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method synthetic lambda$getView$2$com-brakefield-painter-ui-viewcontrollers-CloneSettingsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 110
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->mixInSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    int-to-float p2, p3

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    .line 111
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setAutoMixColor(F)V

    .line 112
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method synthetic lambda$getView$3$com-brakefield-painter-ui-viewcontrollers-CloneSettingsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 118
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->rotationSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    int-to-float p2, p3

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    .line 119
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setAutoSmartRotation(F)V

    .line 120
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method synthetic lambda$getView$5$com-brakefield-painter-ui-viewcontrollers-CloneSettingsViewController(Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p2, p3

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p2, p4

    const/high16 p4, 0x3f800000    # 1.0f

    sub-float/2addr p4, p2

    .line 135
    invoke-virtual {p1, p4}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->setSmudgeAmount(F)V

    .line 136
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->blurSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

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

.method synthetic lambda$getView$6$com-brakefield-painter-ui-viewcontrollers-CloneSettingsViewController(Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p2, p3

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p2, p4

    .line 142
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->setSmudgeStrength(F)V

    .line 143
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->pullSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

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

.method synthetic lambda$getView$7$com-brakefield-painter-ui-viewcontrollers-CloneSettingsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 149
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->setCloneOffset(Z)V

    .line 150
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    if-eqz p3, :cond_0

    .line 151
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->alignedSourceToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->alignedSourceToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setGone(Landroid/view/View;)V

    :goto_0
    return-void
.end method
