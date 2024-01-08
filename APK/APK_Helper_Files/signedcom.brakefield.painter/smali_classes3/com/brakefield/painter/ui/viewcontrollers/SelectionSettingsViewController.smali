.class public Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "SelectionSettingsViewController.java"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;)Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    return-object p0
.end method

.method private bindUI(Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 3

    .line 240
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 244
    iget-object v1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectAllButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda9;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    .line 247
    iget-object v1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectInvertButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda10;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda10;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    .line 250
    iget-object v1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectClearButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda12;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda12;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    .line 253
    iget-object v1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectTransformMaskButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda13;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda13;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    .line 256
    iget-object v1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectExpandButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda14;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda14;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    .line 259
    iget-object v1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectContractButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda15;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda15;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    .line 262
    iget-object v1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectFeatherButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda16;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda16;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    .line 266
    iget-object v1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectTransformButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda17;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda17;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    .line 269
    iget-object v1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectDuplicateButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda18;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda18;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    .line 272
    iget-object v1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectCopyMergedButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda4;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    .line 275
    iget-object v1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectIsolateButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda5;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    .line 278
    iget-object v1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectDeleteButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda6;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    .line 281
    iget-object v1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectClipButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda7;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    .line 284
    iget-object v1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectBrushButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda8;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    .line 289
    iget-object v0, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskStyleSetting:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    .line 290
    iget-object v0, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskColorSetting:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    .line 291
    iget-object p1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskOpacitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2, p1, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$12(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 241
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    return-void
.end method

.method static synthetic lambda$bindUI$13(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 245
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$14(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 248
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$15(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 251
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$16(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 254
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$17(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 257
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$18(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 260
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$19(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 263
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$20(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 267
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$21(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 270
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$22(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 273
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$23(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 276
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$24(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 279
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$25(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 282
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$26(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 285
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$getView$0(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    const/16 p2, 0xf

    .line 47
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setTool(I)V

    .line 48
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    .line 49
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->updateLayers()V

    .line 50
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic lambda$getView$1(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->atMaxLayers(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->maskingCopy()V

    .line 61
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 62
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    return-void
.end method

.method static synthetic lambda$getView$2(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->atMaxLayers(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->maskingCopyMerged()V

    .line 70
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 71
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    return-void
.end method

.method static synthetic lambda$getView$3(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->atMaxLayers(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->maskingCut()V

    .line 79
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 80
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    return-void
.end method

.method static synthetic lambda$getView$4(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 86
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->maskingDelete()V

    .line 87
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    .line 88
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method static synthetic lambda$getView$5(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 94
    sput-boolean p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->selectionClip:Z

    .line 95
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    .line 96
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method static synthetic lambda$getView$6(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 102
    sput-boolean p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->selectionClipBrush:Z

    .line 103
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    .line 104
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 6

    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    .line 32
    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectAllButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectAllImage:Landroid/widget/ImageView;

    const/16 v2, 0x12c

    .line 33
    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    .line 32
    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 34
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectInvertButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectInvertImage:Landroid/widget/ImageView;

    const/16 v2, 0x12d

    .line 35
    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    .line 34
    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 36
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectClearButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectClearImage:Landroid/widget/ImageView;

    const/16 v2, 0x12e

    .line 37
    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    .line 36
    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 38
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectExpandButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectExpandImage:Landroid/widget/ImageView;

    const/16 v2, 0x12f

    .line 39
    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    .line 38
    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 40
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectContractButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectContractImage:Landroid/widget/ImageView;

    const/16 v2, 0x130

    .line 41
    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    .line 40
    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 42
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectFeatherButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectFeatherImage:Landroid/widget/ImageView;

    const/16 v2, 0x132

    .line 43
    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    .line 42
    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 46
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectTransformMaskButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda11;

    invoke-direct {v1, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda11;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectTransformMaskButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectTransformMaskImage:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 53
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectTransformMaskImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 55
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectTransformButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectTransformImage:Landroid/widget/ImageView;

    const/16 v2, 0x64

    .line 56
    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    .line 55
    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 58
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectDuplicateButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda20;

    invoke-direct {v1, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda20;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectDuplicateButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectDuplicateImage:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 65
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectDuplicateImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 67
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectCopyMergedButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda21;

    invoke-direct {v1, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda21;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectCopyMergedButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectCopyMergedImage:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectCopyMergedImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 76
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectIsolateButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda22;

    invoke-direct {v1, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda22;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectIsolateButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectIsolateImage:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectIsolateImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 85
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectDeleteButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda23;

    invoke-direct {v1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda23;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectDeleteButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectDeleteImage:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 91
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectDeleteImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 93
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectClipButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda24;

    invoke-direct {v1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda24;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectClipButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectClipImage:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectClipImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 101
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectBrushButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda25;

    invoke-direct {v1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda25;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectBrushButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectBrushImage:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 107
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->selectBrushImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 110
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskStyleAnts:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 113
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskStyleOverlay:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 114
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskStyleThreshold:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 116
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getMaskStyle()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskStyleThreshold:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getActiveColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskStyleOverlay:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getActiveColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskStyleAnts:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getActiveColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 119
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskColorSetting:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 120
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskOpacitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v1, v3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setVisibility(I)V

    .line 130
    :goto_0
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskStyleAnts:Landroid/widget/ImageView;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda26;

    invoke-direct {v3, p0, v0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda26;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;Landroid/content/SharedPreferences;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskStyleAnts:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 151
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskStyleOverlay:Landroid/widget/ImageView;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;Landroid/content/SharedPreferences;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskStyleOverlay:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 172
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskStyleThreshold:Landroid/widget/ImageView;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;Landroid/content/SharedPreferences;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskStyleThreshold:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 194
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskOpacitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$1;

    invoke-direct {v4, p0, p2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;Lcom/brakefield/painter/ui/SimpleUI;Landroid/content/SharedPreferences;)V

    const/4 v5, 0x0

    invoke-static {p1, v1, v3, v5, v4}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 212
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskOpacitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getMaskOpacity()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 214
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskColor:Lcom/brakefield/infinitestudio/ui/RoundButton;

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/RoundButton;->setBorder(Z)V

    .line 215
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskColor:Lcom/brakefield/infinitestudio/ui/RoundButton;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda19;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/RoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskColor:Lcom/brakefield/infinitestudio/ui/RoundButton;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getMaskColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/RoundButton;->setBackgroundColor(I)V

    .line 233
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->bindUI(Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 235
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$10$com-brakefield-painter-ui-viewcontrollers-SelectionSettingsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/content/SharedPreferences;IZ)V
    .locals 4

    .line 219
    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-static {v0, v2, v3}, Lcom/brakefield/painter/PainterLib;->setMaskColor(FFF)V

    .line 220
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 221
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskColor:Lcom/brakefield/infinitestudio/ui/RoundButton;

    invoke-virtual {p1, p3}, Lcom/brakefield/infinitestudio/ui/RoundButton;->setBackgroundColor(I)V

    if-eqz p4, :cond_0

    .line 223
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "PREF_MASK_COLOR"

    .line 224
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 225
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method synthetic lambda$getView$11$com-brakefield-painter-ui-viewcontrollers-SelectionSettingsViewController(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 7

    .line 217
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;-><init>()V

    .line 218
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getMaskColor()I

    move-result v2

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;Lcom/brakefield/painter/ui/SimpleUI;Landroid/content/SharedPreferences;)V

    const/4 v4, 0x0

    const/4 v6, 0x4

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getView(Landroid/app/Activity;ILcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$OnOpacityChangeListener;Lcom/brakefield/painter/ui/SimpleUI;I)Landroid/view/View;

    move-result-object p3

    .line 229
    invoke-virtual {p2, p1, p3, p4}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$getView$7$com-brakefield-painter-ui-viewcontrollers-SelectionSettingsViewController(Landroid/content/SharedPreferences;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 1

    .line 0
    const/4 p3, 0x0

    .line 132
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->setMaskStyle(I)V

    .line 134
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PREF_MASK_STYLE"

    .line 135
    invoke-interface {p1, v0, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 138
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskStyleAnts:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getActiveColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 139
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskStyleOverlay:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 140
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskStyleThreshold:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 142
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskColorSetting:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->beginDelayedFadeOut(Landroid/view/ViewGroup;)V

    .line 144
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskColorSetting:Landroid/widget/FrameLayout;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 145
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskOpacitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p1, p3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setVisibility(I)V

    .line 147
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method synthetic lambda$getView$8$com-brakefield-painter-ui-viewcontrollers-SelectionSettingsViewController(Landroid/content/SharedPreferences;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 1

    .line 0
    const/4 p3, 0x1

    .line 153
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->setMaskStyle(I)V

    .line 155
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PREF_MASK_STYLE"

    .line 156
    invoke-interface {p1, v0, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 159
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskStyleAnts:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 160
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskStyleOverlay:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getActiveColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 161
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskStyleThreshold:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 163
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskColorSetting:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->beginDelayedFadeIn(Landroid/view/ViewGroup;)V

    .line 165
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskColorSetting:Landroid/widget/FrameLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 166
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskOpacitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p1, p3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setVisibility(I)V

    .line 168
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method synthetic lambda$getView$9$com-brakefield-painter-ui-viewcontrollers-SelectionSettingsViewController(Landroid/content/SharedPreferences;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 1

    .line 0
    const/4 p3, 0x2

    .line 174
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->setMaskStyle(I)V

    .line 176
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PREF_MASK_STYLE"

    .line 177
    invoke-interface {p1, v0, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 180
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskStyleAnts:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 181
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskStyleOverlay:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 182
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskStyleThreshold:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getActiveColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 185
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskColorSetting:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->beginDelayedFadeOut(Landroid/view/ViewGroup;)V

    .line 187
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskColorSetting:Landroid/widget/FrameLayout;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 188
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->binding:Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskOpacitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p1, p3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setVisibility(I)V

    .line 190
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method
