.class public Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "LayerRenderingOptionsViewController.java"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;)Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;

    return-object p0
.end method

.method static synthetic lambda$getView$0(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 58
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->setGammaCorrection(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 60
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 61
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "PREF_GAMMA_CORRECTION"

    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic lambda$getView$1(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    .line 72
    invoke-static {p0, p2}, Lcom/brakefield/painter/PainterLib;->setLayerRenderingMode(Landroid/content/Context;I)V

    .line 73
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    .line 74
    invoke-virtual {p1, p0}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 4

    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;

    .line 29
    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->colorModesDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController$1;

    invoke-direct {v1, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;Lcom/brakefield/painter/ui/SimpleUI;)V

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    .line 52
    invoke-static {}, Lcom/brakefield/painter/ColorProfiles;->getSpinnerItems()[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;)V

    .line 53
    invoke-static {}, Lcom/brakefield/painter/ColorProfiles;->getCurrentColorProfile()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 29
    invoke-static {v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupDropdown(Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Landroid/widget/AdapterView$OnItemSelectedListener;Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->gammaCorrectionToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    .line 62
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getGammaCorrection()Z

    move-result v2

    .line 56
    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 65
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->visibilitySoloButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->visibilitySoloImage:Landroid/widget/ImageView;

    const/16 v2, 0x105

    .line 66
    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    .line 65
    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 67
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->visibilityTraceButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->visibilityTraceImage:Landroid/widget/ImageView;

    const/16 v2, 0x106

    .line 68
    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    .line 67
    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 70
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->visibilityNormalButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->visibilityNormalImage:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 71
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->visibilityNormalButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;->updateVisibilityModeButton()V

    .line 79
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method protected updateVisibilityModeButton()V
    .locals 3

    .line 84
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getLayerRenderingMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->visibilityNormalImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->visibilityNormalImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->visibilitySoloImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->visibilitySoloImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 92
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->visibilityTraceImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_2

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->visibilityTraceImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_2
    return-void
.end method
