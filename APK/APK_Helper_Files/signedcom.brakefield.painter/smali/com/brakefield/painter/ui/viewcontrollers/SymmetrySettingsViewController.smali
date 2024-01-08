.class public Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "SymmetrySettingsViewController.java"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

.field private symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    return-void
.end method

.method static synthetic lambda$getView$6(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 86
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->resetSymmetry()V

    .line 87
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 4

    .line 27
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getSymmetryManager()Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    .line 31
    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symTypeX:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 32
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symTypeY:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 33
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symTypeR:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 34
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symTypeK:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 36
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symTypeX:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symTypeY:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symTypeR:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symTypeK:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symmetryLockButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symmetryLockImage:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 69
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symmetryLockButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symmetryClipButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symmetryClipImage:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 76
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symmetryClipButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symmetryResetImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 84
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symmetryResetButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symmetryResetImage:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 85
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symmetryResetButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->planesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setMax(I)V

    .line 91
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->planesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;)V

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-static {p1, v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 100
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->fanSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;Lcom/brakefield/painter/ui/SimpleUI;)V

    const/4 p2, 0x0

    invoke-static {p1, v0, v1, p2, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 108
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->updateSymmetrySettings()V

    .line 110
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$0$com-brakefield-painter-ui-viewcontrollers-SymmetrySettingsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 37
    iget-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->setType(I)V

    .line 38
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->updateSymmetrySettings()V

    .line 39
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$1$com-brakefield-painter-ui-viewcontrollers-SymmetrySettingsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 43
    iget-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->setType(I)V

    .line 44
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->updateSymmetrySettings()V

    .line 45
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$2$com-brakefield-painter-ui-viewcontrollers-SymmetrySettingsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 49
    iget-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->setType(I)V

    .line 50
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->updateSymmetrySettings()V

    .line 51
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$3$com-brakefield-painter-ui-viewcontrollers-SymmetrySettingsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 55
    iget-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->setType(I)V

    .line 56
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->updateSymmetrySettings()V

    .line 57
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$4$com-brakefield-painter-ui-viewcontrollers-SymmetrySettingsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 1

    .line 70
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    invoke-virtual {p2}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getLock()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->setLock(Z)V

    .line 71
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 72
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symmetryLockImage:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    invoke-virtual {p2}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getLock()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getActiveColor()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method synthetic lambda$getView$5$com-brakefield-painter-ui-viewcontrollers-SymmetrySettingsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 1

    .line 77
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    invoke-virtual {p2}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getClip()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->setClip(Z)V

    .line 78
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 79
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symmetryClipImage:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    invoke-virtual {p2}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getClip()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getActiveColor()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method synthetic lambda$getView$7$com-brakefield-painter-ui-viewcontrollers-SymmetrySettingsViewController(F)Ljava/lang/String;
    .locals 1

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getPlanes()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$8$com-brakefield-painter-ui-viewcontrollers-SymmetrySettingsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 94
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->setPlanes(I)V

    .line 95
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->planesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 96
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symPreview:Lcom/brakefield/painter/ui/SymPreview;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SymPreview;->postInvalidate()V

    .line 97
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method synthetic lambda$getView$9$com-brakefield-painter-ui-viewcontrollers-SymmetrySettingsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 102
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    int-to-float p4, p3

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p4, v0

    invoke-virtual {p2, p4}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->setFan(F)V

    .line 103
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->fanSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 104
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symPreview:Lcom/brakefield/painter/ui/SymPreview;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SymPreview;->postInvalidate()V

    .line 105
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method protected updateSymmetrySettings()V
    .locals 6

    .line 116
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symTypeX:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 117
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symTypeY:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 118
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symTypeR:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 119
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symTypeK:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 121
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getType()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v0, v2, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symTypeK:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getActiveColor()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 136
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symmetryText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v4, 0x7f120adc

    invoke-static {v4}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symTypeR:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getActiveColor()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 132
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symmetryText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v4, 0x7f120add

    invoke-static {v4}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symTypeY:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getActiveColor()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 128
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symmetryText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v4, 0x7f120ade

    invoke-static {v4}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symTypeX:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getActiveColor()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 124
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symmetryText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v4, 0x7f120adf

    invoke-static {v4}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symmetryLockImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    invoke-virtual {v4}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getLock()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getActiveColor()I

    move-result v4

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result v4

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 142
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symmetryClipImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    invoke-virtual {v4}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getClip()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getActiveColor()I

    move-result v4

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result v4

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 144
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->planesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->beginDelayedFadeOut(Landroid/view/ViewGroup;)V

    .line 146
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getType()I

    move-result v0

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eq v0, v3, :cond_6

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getType()I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 147
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->planesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v0, v4}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setVisibility(I)V

    goto :goto_3

    .line 149
    :cond_6
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->planesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v0, v5}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setVisibility(I)V

    .line 152
    :goto_3
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getType()I

    move-result v0

    if-eq v0, v3, :cond_7

    .line 153
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->fanSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v0, v4}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symmetryClipButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_4

    .line 156
    :cond_7
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->fanSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v0, v5}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symmetryClipButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 160
    :goto_4
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->planesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getPlanes()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 161
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->fanSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getFan()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 163
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->binding:Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symPreview:Lcom/brakefield/painter/ui/SymPreview;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SymPreview;->postInvalidate()V

    return-void
.end method
