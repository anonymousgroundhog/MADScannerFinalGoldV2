.class public Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "LayerMaskOptionsViewController.java"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    return-void
.end method

.method private bindUI(Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;Lcom/brakefield/painter/ui/SimpleUI;I)V
    .locals 4

    .line 85
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->strengthSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    int-to-long v1, p3

    const/4 p3, 0x0

    invoke-virtual {p2, v0, v1, v2, p3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 87
    new-instance p3, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2}, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 91
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->fillMaskButton:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController$$ExternalSyntheticLambda1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 94
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->invertMaskButton:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController$$ExternalSyntheticLambda2;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 97
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->clearMaskButton:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController$$ExternalSyntheticLambda3;

    invoke-direct {v3, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController$$ExternalSyntheticLambda3;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 100
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->visibilityButton:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController$$ExternalSyntheticLambda4;

    invoke-direct {v3, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController$$ExternalSyntheticLambda4;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 103
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->applyMaskButton:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController$$ExternalSyntheticLambda5;

    invoke-direct {v3, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController$$ExternalSyntheticLambda5;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 106
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->deleteButton:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController$$ExternalSyntheticLambda6;

    invoke-direct {v3, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController$$ExternalSyntheticLambda6;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 109
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->linkedButton:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController$$ExternalSyntheticLambda7;

    invoke-direct {v3, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController$$ExternalSyntheticLambda7;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 112
    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->selectButton:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController$$ExternalSyntheticLambda8;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p1, v1, v2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$0(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    return-void
.end method

.method static synthetic lambda$bindUI$1(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 92
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$2(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 95
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$3(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 98
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$4(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 101
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$5(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 104
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$6(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 107
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$7(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 110
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$8(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 113
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;I)Landroid/view/View;
    .locals 5

    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    .line 26
    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->layerName:Landroid/widget/Button;

    const v1, 0x7f12092a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 27
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->layerName:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 29
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->strengthSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController$1;

    invoke-direct {v2, p0, p3, p2}, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;ILcom/brakefield/painter/ui/SimpleUI;)V

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 44
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->strengthSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->getLayerOpacity(I)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setProgress(I)V

    const/16 v0, 0xfc

    .line 47
    invoke-static {v0}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v0

    check-cast v0, Lcom/brakefield/painter/ui/DockableElements$LayerVisibilityElement;

    const/16 v1, 0x100

    .line 48
    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    check-cast v1, Lcom/brakefield/painter/ui/DockableElements$LayerDeleteElement;

    const/16 v2, 0x101

    .line 49
    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    check-cast v2, Lcom/brakefield/painter/ui/DockableElements$LayerSelectElement;

    .line 51
    invoke-virtual {v0, p3}, Lcom/brakefield/painter/ui/DockableElements$LayerVisibilityElement;->setLayerId(I)V

    .line 52
    invoke-virtual {v1, p3}, Lcom/brakefield/painter/ui/DockableElements$LayerDeleteElement;->setLayerId(I)V

    .line 53
    invoke-virtual {v2, p3}, Lcom/brakefield/painter/ui/DockableElements$LayerSelectElement;->setLayerId(I)V

    .line 55
    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->visibilityButton:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object v4, v4, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->visibilityButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p1, v3, v4, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 56
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->deleteButton:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->deleteButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p1, v0, v3, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 57
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->selectButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->selectButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 60
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->getLayerVisibility(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->updateVisibilityButton(Z)V

    .line 61
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->isLayerMaskLinked(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->updateLinkedButton(Z)V

    .line 63
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->fillMaskButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 64
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->fillMaskButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->fillMaskButtonImage:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 66
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->invertMaskButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 67
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->invertMaskButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->invertMaskButtonImage:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 69
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->clearMaskButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 70
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->clearMaskButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->clearMaskButtonImage:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 72
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->applyMaskButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 73
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->applyMaskButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->applyMaskButtonImage:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 75
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->linkedButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 76
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->linkedButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->linkedButtonImage:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 78
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->bindUI(Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;Lcom/brakefield/painter/ui/SimpleUI;I)V

    .line 80
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method protected updateLinkedButton(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->linkedButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->linkedButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method

.method protected updateVisibilityButton(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->visibilityButtonImage:Landroid/widget/ImageView;

    const v0, 0x7f0804d7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->visibilityButtonText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v0, 0x7f1201f8

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->visibilityButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->visibilityButtonImage:Landroid/widget/ImageView;

    const v0, 0x7f0804d6

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->visibilityButtonText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v0, 0x7f120a96

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerMaskOptionsViewControllerBinding;->visibilityButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method
