.class public Lcom/brakefield/painter/ui/viewcontrollers/CanvasPreviewSettingsViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "CanvasPreviewSettingsViewController.java"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/CanvasPreviewSettingsViewControllerBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    return-void
.end method

.method static synthetic lambda$getView$0(Lcom/brakefield/painter/ui/SimpleUI;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 23
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setCanvasPreviewBlackAndWhite(Z)V

    .line 24
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/brakefield/painter/databinding/CanvasPreviewSettingsViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/CanvasPreviewSettingsViewControllerBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CanvasPreviewSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CanvasPreviewSettingsViewControllerBinding;

    .line 21
    iget-object p1, p1, Lcom/brakefield/painter/databinding/CanvasPreviewSettingsViewControllerBinding;->grayscaleToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CanvasPreviewSettingsViewController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CanvasPreviewSettingsViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 25
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isCanvasPreviewBlackAndWhite()Z

    move-result p2

    .line 21
    invoke-static {p1, v0, p2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 27
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CanvasPreviewSettingsViewController;->binding:Lcom/brakefield/painter/databinding/CanvasPreviewSettingsViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/CanvasPreviewSettingsViewControllerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method
