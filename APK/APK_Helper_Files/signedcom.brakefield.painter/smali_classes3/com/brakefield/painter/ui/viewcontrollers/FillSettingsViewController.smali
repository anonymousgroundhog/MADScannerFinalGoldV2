.class public Lcom/brakefield/painter/ui/viewcontrollers/FillSettingsViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "FillSettingsViewController.java"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 3

    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/FillSettingsViewController;->binding:Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;

    .line 26
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isMasking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/FillSettingsViewController;->binding:Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v1, 0x7f120a82

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 29
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 30
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getFillStrictType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 31
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/FillSettingsViewController;->binding:Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v1, 0x7f1209dd

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/FillSettingsViewController;->binding:Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v1, 0x7f1201dc

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/FillSettingsViewController;->binding:Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v1, 0x7f12018e

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :goto_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/FillSettingsViewController;->binding:Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;->toleranceSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/FillSettingsViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/FillSettingsViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/FillSettingsViewController;)V

    const/4 v2, 0x0

    invoke-static {p1, v0, p2, v2, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 45
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/FillSettingsViewController;->binding:Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;->toleranceSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getFillTolerance()I

    move-result p2

    int-to-float p2, p2

    const v0, 0x40233333    # 2.55f

    div-float/2addr p2, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 47
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/FillSettingsViewController;->binding:Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$0$com-brakefield-painter-ui-viewcontrollers-FillSettingsViewController(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 0
    const p1, 0x40233333    # 2.55f

    int-to-float p3, p2

    mul-float/2addr p3, p1

    float-to-int p1, p3

    .line 42
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setFillTolerance(I)V

    .line 43
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/FillSettingsViewController;->binding:Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;->toleranceSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    return-void
.end method
