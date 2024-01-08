.class public Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;
.super Ljava/lang/Object;
.source "LayerSelectionOptionsViewController.java"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bindUI(Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;Lcom/brakefield/painter/ui/SimpleUI;I)V
    .locals 4

    .line 46
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 50
    iget-object v1, p1, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectReplaceButton:Landroid/widget/FrameLayout;

    int-to-long v2, p3

    new-instance p3, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController$$ExternalSyntheticLambda1;

    invoke-direct {p3, v0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController$$ExternalSyntheticLambda1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v2, v3, p3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 53
    iget-object p3, p1, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectUnionButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController$$ExternalSyntheticLambda2;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p3, v2, v3, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 56
    iget-object p3, p1, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectSubtractButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController$$ExternalSyntheticLambda3;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p3, v2, v3, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 59
    iget-object p3, p1, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectReverseSubtractButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController$$ExternalSyntheticLambda4;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p3, v2, v3, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 62
    iget-object p3, p1, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectIntersectButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController$$ExternalSyntheticLambda5;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p3, v2, v3, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 65
    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectDifferenceButton:Landroid/widget/FrameLayout;

    new-instance p3, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController$$ExternalSyntheticLambda6;

    invoke-direct {p3, v0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController$$ExternalSyntheticLambda6;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p1, v2, v3, p3}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$0(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    return-void
.end method

.method static synthetic lambda$bindUI$1(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 51
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$2(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 54
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$3(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 57
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$4(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 60
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$5(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 63
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$6(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 66
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;I)Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;

    .line 21
    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectReplaceImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 22
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectReplaceButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectReplaceImage:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 24
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectUnionImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 25
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectUnionButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectUnionImage:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 27
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectSubtractImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 28
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectSubtractButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectSubtractImage:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 30
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectReverseSubtractImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 31
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectReverseSubtractButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectReverseSubtractImage:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 33
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectIntersectImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 34
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectIntersectButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectIntersectImage:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 36
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectDifferenceImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 37
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectDifferenceButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectDifferenceImage:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 39
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;

    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;->bindUI(Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;Lcom/brakefield/painter/ui/SimpleUI;I)V

    .line 41
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;->binding:Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method
