.class public Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "LayerGroupOptionsViewController.java"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    return-void
.end method

.method private bindUI(Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;Lcom/brakefield/painter/ui/SimpleUI;I)V
    .locals 4

    .line 146
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    int-to-long v1, p3

    const/4 p3, 0x0

    invoke-virtual {p2, v0, v1, v2, p3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 148
    new-instance p3, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda13;

    invoke-direct {p3, p2}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda13;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 152
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->mergeDownButton:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda15;

    invoke-direct {v3, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda15;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 155
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->duplicateButton:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda16;

    invoke-direct {v3, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda16;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 158
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->copyMergedButton:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 161
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->flattenButton:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda2;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 164
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->visibilityButton:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda3;

    invoke-direct {v3, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda3;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 167
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->deleteButton:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda4;

    invoke-direct {v3, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda4;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 170
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->clipButton:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda5;

    invoke-direct {v3, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda5;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 173
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->maskButton:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda6;

    invoke-direct {v3, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda6;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 176
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->selectButton:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda7;

    invoke-direct {v3, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda7;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 179
    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->ungroupButton:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda14;

    invoke-direct {v0, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda14;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p1, v1, v2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$10(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 162
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$11(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 165
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$12(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 168
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$13(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 171
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$14(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 174
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$15(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 177
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$16(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 180
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$6(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 149
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    return-void
.end method

.method static synthetic lambda$bindUI$7(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 153
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$8(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 156
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$9(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 159
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$getView$3(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 109
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMaster()Z

    move-result p3

    if-nez p3, :cond_0

    const-string p1, "Layer mask"

    .line 110
    invoke-static {p0, p1}, Lcom/brakefield/painter/PurchaseManager;->showPurchaseSplash(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 113
    :cond_0
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->hasLayerMask(I)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->getLayerMaskId(I)I

    move-result p1

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->deleteLayer(I)V

    goto :goto_0

    .line 114
    :cond_1
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->addLayerMask(I)V

    .line 115
    :goto_0
    invoke-virtual {p2, p0}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 116
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->updateLayers()V

    .line 117
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    return-void
.end method

.method static synthetic lambda$getView$4(ILcom/brakefield/painter/ui/SimpleUI;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 125
    invoke-static {p0, p3}, Lcom/brakefield/painter/PainterLib;->setLayerHideFromPlayback(IZ)V

    .line 126
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;I)Landroid/view/View;
    .locals 8

    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    .line 31
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->getLayerName(I)Ljava/lang/String;

    move-result-object v4

    .line 33
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->layerName:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->layerName:Landroid/widget/Button;

    new-instance v7, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda8;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;Landroid/app/Activity;Ljava/lang/String;ILcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->layerName:Landroid/widget/Button;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 41
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->blendModeText:Landroid/widget/Button;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->blendModeText:Landroid/widget/Button;

    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->getLayerBlendingMode(I)I

    move-result v1

    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->getBlendModeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->blendModeText:Landroid/widget/Button;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->blendModeText:Landroid/widget/Button;

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const/high16 v1, 0x40800000    # 4.0f

    .line 52
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    .line 55
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$1;

    invoke-direct {v2, p0, p3, p2}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;ILcom/brakefield/painter/ui/SimpleUI;)V

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 70
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->getLayerOpacity(I)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setProgress(I)V

    const/16 v0, 0xff

    .line 73
    invoke-static {v0}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v0

    check-cast v0, Lcom/brakefield/painter/ui/DockableElements$LayerMergeElement;

    const/16 v1, 0xfe

    .line 74
    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    check-cast v1, Lcom/brakefield/painter/ui/DockableElements$LayerDuplicateElement;

    const/16 v2, 0xfc

    .line 75
    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    check-cast v2, Lcom/brakefield/painter/ui/DockableElements$LayerVisibilityElement;

    const/16 v3, 0x100

    .line 76
    invoke-static {v3}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v3

    check-cast v3, Lcom/brakefield/painter/ui/DockableElements$LayerDeleteElement;

    const/16 v4, 0xfd

    .line 77
    invoke-static {v4}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v4

    check-cast v4, Lcom/brakefield/painter/ui/DockableElements$LayerClippingMaskElement;

    const/16 v5, 0x101

    .line 78
    invoke-static {v5}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v5

    check-cast v5, Lcom/brakefield/painter/ui/DockableElements$LayerSelectElement;

    .line 80
    invoke-virtual {v0, p3}, Lcom/brakefield/painter/ui/DockableElements$LayerMergeElement;->setLayerId(I)V

    .line 81
    invoke-virtual {v1, p3}, Lcom/brakefield/painter/ui/DockableElements$LayerDuplicateElement;->setLayerId(I)V

    .line 82
    invoke-virtual {v2, p3}, Lcom/brakefield/painter/ui/DockableElements$LayerVisibilityElement;->setLayerId(I)V

    .line 83
    invoke-virtual {v3, p3}, Lcom/brakefield/painter/ui/DockableElements$LayerDeleteElement;->setLayerId(I)V

    .line 84
    invoke-virtual {v4, p3}, Lcom/brakefield/painter/ui/DockableElements$LayerClippingMaskElement;->setLayerId(I)V

    .line 85
    invoke-virtual {v5, p3}, Lcom/brakefield/painter/ui/DockableElements$LayerSelectElement;->setLayerId(I)V

    .line 87
    iget-object v6, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v6, v6, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->mergeDownButton:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v7, v7, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->mergeDownButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p1, v6, v7, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 88
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->duplicateButton:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v6, v6, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->duplicateButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p1, v0, v6, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 89
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->visibilityButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->visibilityButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 90
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->deleteButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->deleteButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p1, v0, v1, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 91
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->clipButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->clipButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p1, v0, v1, v4}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 92
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->selectButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->selectButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p1, v0, v1, v5}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 95
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->getLayerVisibility(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->updateVisibilityButton(Z)V

    .line 96
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->getLayerClippingMask(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->updateClippingMaskButton(Z)V

    .line 97
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->hasLayerMask(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->updateMaskButton(Z)V

    .line 99
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->flattenButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 100
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->flattenButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->flattenButtonImage:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 102
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->copyMergedButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 103
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->copyMergedButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->copyMergedButtonImage:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 105
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->ungroupButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 106
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->ungroupButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->ungroupButtonImage:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 108
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->maskButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1, p3, p2}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda10;-><init>(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->maskButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 120
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->maskButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->maskButtonImage:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 123
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->hideFromPlaybackToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda11;

    invoke-direct {v0, p3, p2}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda11;-><init>(ILcom/brakefield/painter/ui/SimpleUI;)V

    .line 127
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->getLayerHideFromPlayback(I)Z

    move-result v1

    .line 123
    invoke-static {p1, v0, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 130
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->layerOptionsMore:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 131
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->layerOptionsMore:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 132
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->layerOptionsMore:Landroid/widget/ImageView;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda12;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->maskButton:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMasterWithoutTrial()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;ZZ)V

    .line 139
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->bindUI(Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;Lcom/brakefield/painter/ui/SimpleUI;I)V

    .line 141
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$0$com-brakefield-painter-ui-viewcontrollers-LayerGroupOptionsViewController(ILcom/brakefield/painter/ui/SimpleUI;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-static {p1, p3}, Lcom/brakefield/painter/PainterLib;->setLayerName(ILjava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->layerName:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->updateLayers()V

    return-void
.end method

.method synthetic lambda$getView$1$com-brakefield-painter-ui-viewcontrollers-LayerGroupOptionsViewController(Landroid/app/Activity;Ljava/lang/String;ILcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 34
    new-instance p5, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda0;

    invoke-direct {p5, p0, p3, p4}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;ILcom/brakefield/painter/ui/SimpleUI;)V

    const p3, 0x7f12099b

    invoke-static {p1, p3, p2, p5}, Lcom/brakefield/infinitestudio/Dialogs;->showTextInputDialog(Landroid/content/Context;ILjava/lang/String;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method synthetic lambda$getView$2$com-brakefield-painter-ui-viewcontrollers-LayerGroupOptionsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;ILandroid/view/View;)V
    .locals 1

    .line 42
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    .line 43
    new-instance p4, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;

    invoke-direct {p4}, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;-><init>()V

    .line 44
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->blendModeText:Landroid/widget/Button;

    invoke-virtual {p4, p2, p1, v0, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/widget/TextView;I)Landroid/view/View;

    move-result-object p3

    const/4 p4, 0x1

    .line 45
    invoke-virtual {p1, p2, p3, p4}, Lcom/brakefield/painter/ui/SimpleUI;->fullscreen(Landroid/app/Activity;Landroid/view/View;Z)V

    return-void
.end method

.method synthetic lambda$getView$5$com-brakefield-painter-ui-viewcontrollers-LayerGroupOptionsViewController(Landroid/view/View;)V
    .locals 1

    .line 133
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->layerOptionsMore:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->hideFromPlaybackToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    return-void
.end method

.method protected updateClippingMaskButton(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->clipButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->clipButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method

.method protected updateMaskButton(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->maskButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->maskButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method

.method protected updateVisibilityButton(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->visibilityButtonImage:Landroid/widget/ImageView;

    const v0, 0x7f0804d7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->visibilityButtonText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v0, 0x7f1201f8

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->visibilityButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 191
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->visibilityButtonImage:Landroid/widget/ImageView;

    const v0, 0x7f0804d6

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->visibilityButtonText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v0, 0x7f120a96

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerGroupOptionsViewControllerBinding;->visibilityButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method
