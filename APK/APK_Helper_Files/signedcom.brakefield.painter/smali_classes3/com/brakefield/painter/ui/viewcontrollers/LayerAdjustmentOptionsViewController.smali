.class public Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "LayerAdjustmentOptionsViewController.java"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    return-void
.end method

.method private bindUI(Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;Lcom/brakefield/painter/ui/SimpleUI;I)V
    .locals 3

    .line 132
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    int-to-long v1, p3

    const/4 p3, 0x0

    invoke-virtual {p2, v0, v1, v2, p3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 134
    new-instance p3, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2}, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 138
    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->selectButton:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController$$ExternalSyntheticLambda1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p1, v1, v2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$4(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 135
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    return-void
.end method

.method static synthetic lambda$bindUI$5(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 139
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$getView$1(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 95
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMaster()Z

    move-result p3

    if-nez p3, :cond_0

    const-string p1, "Layer mask"

    .line 96
    invoke-static {p0, p1}, Lcom/brakefield/painter/PurchaseManager;->showPurchaseSplash(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 99
    :cond_0
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->hasLayerMask(I)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->getLayerMaskId(I)I

    move-result p1

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->deleteLayer(I)V

    goto :goto_0

    .line 100
    :cond_1
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->addLayerMask(I)V

    .line 101
    :goto_0
    invoke-virtual {p2, p0}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 102
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->updateLayers()V

    .line 103
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    return-void
.end method

.method static synthetic lambda$getView$2(ILcom/brakefield/painter/ui/SimpleUI;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 111
    invoke-static {p0, p3}, Lcom/brakefield/painter/PainterLib;->setLayerHideFromPlayback(IZ)V

    .line 112
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;I)Landroid/view/View;
    .locals 8

    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    .line 30
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->getLayerName(I)Ljava/lang/String;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->layerName:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->layerName:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 34
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->blendModeText:Landroid/widget/Button;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->blendModeText:Landroid/widget/Button;

    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->getLayerBlendingMode(I)I

    move-result v1

    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->getBlendModeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->blendModeText:Landroid/widget/Button;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getLighterColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 42
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->blendModeText:Landroid/widget/Button;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setElevation(F)V

    .line 43
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->blendModeText:Landroid/widget/Button;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 46
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->blendModeText:Landroid/widget/Button;

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 47
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    .line 50
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController$1;

    invoke-direct {v2, p0, p3, p2}, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;ILcom/brakefield/painter/ui/SimpleUI;)V

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 65
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->getLayerOpacity(I)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setProgress(I)V

    const/16 v0, 0xff

    .line 68
    invoke-static {v0}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v0

    check-cast v0, Lcom/brakefield/painter/ui/DockableElements$LayerMergeElement;

    const/16 v1, 0xfe

    .line 69
    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    check-cast v1, Lcom/brakefield/painter/ui/DockableElements$LayerDuplicateElement;

    const/16 v2, 0xfc

    .line 70
    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    check-cast v2, Lcom/brakefield/painter/ui/DockableElements$LayerVisibilityElement;

    const/16 v3, 0x100

    .line 71
    invoke-static {v3}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v3

    check-cast v3, Lcom/brakefield/painter/ui/DockableElements$LayerDeleteElement;

    const/16 v4, 0xfd

    .line 72
    invoke-static {v4}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v4

    check-cast v4, Lcom/brakefield/painter/ui/DockableElements$LayerClippingMaskElement;

    const/16 v5, 0x101

    .line 73
    invoke-static {v5}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v5

    check-cast v5, Lcom/brakefield/painter/ui/DockableElements$LayerSelectElement;

    .line 75
    invoke-virtual {v0, p3}, Lcom/brakefield/painter/ui/DockableElements$LayerMergeElement;->setLayerId(I)V

    .line 76
    invoke-virtual {v1, p3}, Lcom/brakefield/painter/ui/DockableElements$LayerDuplicateElement;->setLayerId(I)V

    .line 77
    invoke-virtual {v2, p3}, Lcom/brakefield/painter/ui/DockableElements$LayerVisibilityElement;->setLayerId(I)V

    .line 78
    invoke-virtual {v3, p3}, Lcom/brakefield/painter/ui/DockableElements$LayerDeleteElement;->setLayerId(I)V

    .line 79
    invoke-virtual {v4, p3}, Lcom/brakefield/painter/ui/DockableElements$LayerClippingMaskElement;->setLayerId(I)V

    .line 80
    invoke-virtual {v5, p3}, Lcom/brakefield/painter/ui/DockableElements$LayerSelectElement;->setLayerId(I)V

    .line 82
    iget-object v6, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object v6, v6, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->mergeDownButton:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object v7, v7, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->mergeDownButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p1, v6, v7, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 83
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->duplicateButton:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object v6, v6, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->duplicateButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p1, v0, v6, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 84
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->visibilityButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->visibilityButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 85
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->deleteButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->deleteButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p1, v0, v1, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 86
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->clipButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->clipButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p1, v0, v1, v4}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 87
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->selectButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->selectButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p1, v0, v1, v5}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 90
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->getLayerVisibility(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->updateVisibilityButton(Z)V

    .line 91
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->getLayerClippingMask(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->updateClippingMaskButton(Z)V

    .line 92
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->hasLayerMask(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->updateMaskButton(Z)V

    .line 94
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->maskButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p3, p2}, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController$$ExternalSyntheticLambda3;-><init>(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->maskButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 106
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->maskButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->maskButtonImage:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 109
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->hideFromPlaybackToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p3, p2}, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController$$ExternalSyntheticLambda4;-><init>(ILcom/brakefield/painter/ui/SimpleUI;)V

    .line 113
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->getLayerHideFromPlayback(I)Z

    move-result v1

    .line 109
    invoke-static {p1, v0, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 116
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->layerOptionsMore:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 117
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->layerOptionsMore:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 118
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->layerOptionsMore:Landroid/widget/ImageView;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->maskButton:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMasterWithoutTrial()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;ZZ)V

    .line 125
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->bindUI(Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;Lcom/brakefield/painter/ui/SimpleUI;I)V

    .line 127
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$0$com-brakefield-painter-ui-viewcontrollers-LayerAdjustmentOptionsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;ILandroid/view/View;)V
    .locals 1

    .line 35
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    .line 36
    new-instance p4, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;

    invoke-direct {p4}, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;-><init>()V

    .line 37
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->blendModeText:Landroid/widget/Button;

    invoke-virtual {p4, p2, p1, v0, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/widget/TextView;I)Landroid/view/View;

    move-result-object p3

    const/4 p4, 0x1

    .line 38
    invoke-virtual {p1, p2, p3, p4}, Lcom/brakefield/painter/ui/SimpleUI;->fullscreen(Landroid/app/Activity;Landroid/view/View;Z)V

    return-void
.end method

.method synthetic lambda$getView$3$com-brakefield-painter-ui-viewcontrollers-LayerAdjustmentOptionsViewController(Landroid/view/View;)V
    .locals 1

    .line 119
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->layerOptionsMore:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->hideFromPlaybackToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    return-void
.end method

.method protected updateClippingMaskButton(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->clipButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->clipButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method

.method protected updateMaskButton(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->maskButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->maskButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method

.method protected updateVisibilityButton(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->visibilityButtonImage:Landroid/widget/ImageView;

    const v0, 0x7f0804d7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->visibilityButtonText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v0, 0x7f1201f8

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->visibilityButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->visibilityButtonImage:Landroid/widget/ImageView;

    const v0, 0x7f0804d6

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->visibilityButtonText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v0, 0x7f120a96

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerAdjustmentOptionsViewControllerBinding;->visibilityButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method
