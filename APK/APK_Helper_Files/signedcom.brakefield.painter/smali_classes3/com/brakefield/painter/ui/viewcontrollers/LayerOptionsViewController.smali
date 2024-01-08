.class public Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "LayerOptionsViewController.java"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    return-void
.end method

.method private bindUI(Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;Lcom/brakefield/painter/ui/SimpleUI;I)V
    .locals 4

    .line 167
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    int-to-long v1, p3

    const/4 p3, 0x0

    invoke-virtual {p2, v0, v1, v2, p3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 169
    new-instance p3, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2}, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 173
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->clearButton:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda8;

    invoke-direct {v3, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda8;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 176
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->lockTransparencyButton:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda9;

    invoke-direct {v3, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda9;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 179
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->mergeDownButton:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda10;

    invoke-direct {v3, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda10;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 182
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->duplicateButton:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda11;

    invoke-direct {v3, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda11;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 185
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->visibilityButton:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda12;

    invoke-direct {v3, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda12;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 188
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->deleteButton:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda13;

    invoke-direct {v3, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda13;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 191
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->clipButton:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda14;

    invoke-direct {v3, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda14;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 194
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->maskButton:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda15;

    invoke-direct {v3, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda15;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 197
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->selectButton:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 200
    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->targetButton:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda7;

    invoke-direct {v0, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda7;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p1, v1, v2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$10(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 186
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$11(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 189
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$12(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 192
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$13(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 195
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$14(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 198
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$15(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 201
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$5(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 170
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    return-void
.end method

.method static synthetic lambda$bindUI$6(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 174
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$7(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 177
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$8(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 180
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$9(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 183
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$getView$3(ILcom/brakefield/painter/ui/SimpleUI;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 146
    invoke-static {p0, p3}, Lcom/brakefield/painter/PainterLib;->setLayerHideFromPlayback(IZ)V

    .line 147
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;I)Landroid/view/View;
    .locals 10

    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    .line 31
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->getLayerName(I)Ljava/lang/String;

    move-result-object v4

    .line 33
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->layerName:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->layerName:Landroid/widget/Button;

    new-instance v7, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;Landroid/app/Activity;Ljava/lang/String;ILcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->layerName:Landroid/widget/Button;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 41
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->blendModeText:Landroid/widget/Button;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->blendModeText:Landroid/widget/Button;

    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->getLayerBlendingMode(I)I

    move-result v1

    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->getBlendModeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->blendModeText:Landroid/widget/Button;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->blendModeText:Landroid/widget/Button;

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const/high16 v1, 0x40800000    # 4.0f

    .line 52
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    const/16 v0, 0xfb

    .line 73
    invoke-static {v0}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    check-cast v1, Lcom/brakefield/painter/ui/DockableElements$LayerClearElement;

    const/16 v2, 0xfa

    .line 74
    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v3

    check-cast v3, Lcom/brakefield/painter/ui/DockableElements$LayerLockElement;

    const/16 v4, 0xff

    .line 75
    invoke-static {v4}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v4

    check-cast v4, Lcom/brakefield/painter/ui/DockableElements$LayerMergeElement;

    const/16 v5, 0xfe

    .line 76
    invoke-static {v5}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v5

    check-cast v5, Lcom/brakefield/painter/ui/DockableElements$LayerDuplicateElement;

    const/16 v6, 0xfc

    .line 77
    invoke-static {v6}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v6

    check-cast v6, Lcom/brakefield/painter/ui/DockableElements$LayerVisibilityElement;

    const/16 v7, 0x100

    .line 78
    invoke-static {v7}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v7

    check-cast v7, Lcom/brakefield/painter/ui/DockableElements$LayerDeleteElement;

    const/16 v8, 0xfd

    .line 79
    invoke-static {v8}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v8

    check-cast v8, Lcom/brakefield/painter/ui/DockableElements$LayerClippingMaskElement;

    const/16 v9, 0x101

    .line 80
    invoke-static {v9}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v9

    check-cast v9, Lcom/brakefield/painter/ui/DockableElements$LayerSelectElement;

    .line 82
    invoke-virtual {v1, p3}, Lcom/brakefield/painter/ui/DockableElements$LayerClearElement;->setLayerId(I)V

    .line 83
    invoke-virtual {v3, p3}, Lcom/brakefield/painter/ui/DockableElements$LayerLockElement;->setLayerId(I)V

    .line 84
    invoke-virtual {v4, p3}, Lcom/brakefield/painter/ui/DockableElements$LayerMergeElement;->setLayerId(I)V

    .line 85
    invoke-virtual {v5, p3}, Lcom/brakefield/painter/ui/DockableElements$LayerDuplicateElement;->setLayerId(I)V

    .line 86
    invoke-virtual {v6, p3}, Lcom/brakefield/painter/ui/DockableElements$LayerVisibilityElement;->setLayerId(I)V

    .line 87
    invoke-virtual {v7, p3}, Lcom/brakefield/painter/ui/DockableElements$LayerDeleteElement;->setLayerId(I)V

    .line 88
    invoke-virtual {v8, p3}, Lcom/brakefield/painter/ui/DockableElements$LayerClippingMaskElement;->setLayerId(I)V

    .line 89
    invoke-virtual {v9, p3}, Lcom/brakefield/painter/ui/DockableElements$LayerSelectElement;->setLayerId(I)V

    .line 91
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->clearButton:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->clearButtonImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v0

    invoke-virtual {p2, p1, v1, v3, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 92
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->lockTransparencyButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->lockTransparencyButtonImage:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 93
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->mergeDownButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->mergeDownButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p1, v0, v1, v4}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 94
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->duplicateButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->duplicateButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p1, v0, v1, v5}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 95
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->visibilityButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->visibilityButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p1, v0, v1, v6}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 96
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->deleteButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->deleteButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p1, v0, v1, v7}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 97
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->clipButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->clipButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p1, v0, v1, v8}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 98
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->selectButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->selectButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p1, v0, v1, v9}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 102
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->getLayerVisibility(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->updateVisibilityButton(Z)V

    .line 103
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->getLayerLockAlpha(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->updateLockTransparencyButton(Z)V

    .line 104
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->getLayerClippingMask(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->updateClippingMaskButton(Z)V

    .line 105
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->hasLayerMask(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->updateMaskButton(Z)V

    .line 107
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    .line 108
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isCloning()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->targetButton:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 109
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->targetButtonImage:Landroid/widget/ImageView;

    const v0, 0x7f0804a6

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->targetButtonText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v0, 0x7f120ab1

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getTargetLayerId()I

    move-result p1

    const/4 v0, 0x0

    if-ne p3, p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->updateTargetButton(Z)V

    .line 113
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->targetButton:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->targetButtonImage:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 122
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->targetButton:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 127
    :goto_2
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->targetButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->targetButtonImage:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 140
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->maskButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 141
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->maskButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->maskButtonImage:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 144
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->hideFromPlaybackToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p3, p2}, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda5;-><init>(ILcom/brakefield/painter/ui/SimpleUI;)V

    .line 148
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->getLayerHideFromPlayback(I)Z

    move-result v2

    .line 144
    invoke-static {p1, v0, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 151
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->layerOptionsMore:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 152
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->layerOptionsMore:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 153
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->layerOptionsMore:Landroid/widget/ImageView;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->maskButton:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMasterWithoutTrial()Z

    move-result v0

    invoke-virtual {p2, p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;ZZ)V

    .line 160
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->bindUI(Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;Lcom/brakefield/painter/ui/SimpleUI;I)V

    .line 162
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$0$com-brakefield-painter-ui-viewcontrollers-LayerOptionsViewController(ILcom/brakefield/painter/ui/SimpleUI;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-static {p1, p3}, Lcom/brakefield/painter/PainterLib;->setLayerName(ILjava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->layerName:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->updateLayers()V

    return-void
.end method

.method synthetic lambda$getView$1$com-brakefield-painter-ui-viewcontrollers-LayerOptionsViewController(Landroid/app/Activity;Ljava/lang/String;ILcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 34
    new-instance p5, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda2;

    invoke-direct {p5, p0, p3, p4}, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;ILcom/brakefield/painter/ui/SimpleUI;)V

    const p3, 0x7f12099b

    invoke-static {p1, p3, p2, p5}, Lcom/brakefield/infinitestudio/Dialogs;->showTextInputDialog(Landroid/content/Context;ILjava/lang/String;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method synthetic lambda$getView$2$com-brakefield-painter-ui-viewcontrollers-LayerOptionsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;ILandroid/view/View;)V
    .locals 1

    .line 42
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    .line 43
    new-instance p4, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;

    invoke-direct {p4}, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;-><init>()V

    .line 44
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->blendModeText:Landroid/widget/Button;

    invoke-virtual {p4, p2, p1, v0, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/widget/TextView;I)Landroid/view/View;

    move-result-object p3

    const/4 p4, 0x1

    .line 45
    invoke-virtual {p1, p2, p3, p4}, Lcom/brakefield/painter/ui/SimpleUI;->fullscreen(Landroid/app/Activity;Landroid/view/View;Z)V

    return-void
.end method

.method synthetic lambda$getView$4$com-brakefield-painter-ui-viewcontrollers-LayerOptionsViewController(Landroid/view/View;)V
    .locals 1

    .line 154
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->layerOptionsMore:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->hideFromPlaybackToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    return-void
.end method

.method protected updateClippingMaskButton(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 229
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->clipButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->clipButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method

.method protected updateLockTransparencyButton(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 220
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->lockTransparencyButtonText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v0, 0x7f120b1f

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->lockTransparencyButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->lockTransparencyButtonText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v0, 0x7f12024c

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->lockTransparencyButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method

.method protected updateMaskButton(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 234
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->maskButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->maskButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method

.method protected updateTargetButton(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 239
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->targetButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 240
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->targetButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method

.method protected updateVisibilityButton(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 208
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->visibilityButtonImage:Landroid/widget/ImageView;

    const v0, 0x7f0804d7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->visibilityButtonText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v0, 0x7f1201f8

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->visibilityButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->visibilityButtonImage:Landroid/widget/ImageView;

    const v0, 0x7f0804d6

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->visibilityButtonText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v0, 0x7f120a96

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerOptionsViewControllerBinding;->visibilityButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method
