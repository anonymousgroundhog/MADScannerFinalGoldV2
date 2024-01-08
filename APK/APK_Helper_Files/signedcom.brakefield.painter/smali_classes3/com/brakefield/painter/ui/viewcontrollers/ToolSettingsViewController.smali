.class public Lcom/brakefield/painter/ui/viewcontrollers/ToolSettingsViewController;
.super Ljava/lang/Object;
.source "ToolSettingsViewController.java"


# instance fields
.field binding:Lcom/brakefield/painter/databinding/ToolSettingsViewControllerBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 4

    .line 23
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getSymmetryManager()Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    move-result-object v0

    .line 24
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getPerspectiveManager()Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

    move-result-object v1

    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2}, Lcom/brakefield/painter/databinding/ToolSettingsViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/ToolSettingsViewControllerBinding;

    move-result-object v2

    iput-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolSettingsViewController;->binding:Lcom/brakefield/painter/databinding/ToolSettingsViewControllerBinding;

    .line 28
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 29
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 30
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 31
    :cond_0
    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/FillSettingsViewController;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/viewcontrollers/FillSettingsViewController;-><init>()V

    .line 32
    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolSettingsViewController;->binding:Lcom/brakefield/painter/databinding/ToolSettingsViewControllerBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/ToolSettingsViewControllerBinding;->settingsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/FillSettingsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 35
    :cond_1
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getType()I

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;-><init>()V

    .line 37
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolSettingsViewController;->binding:Lcom/brakefield/painter/databinding/ToolSettingsViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/ToolSettingsViewControllerBinding;->settingsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 40
    :cond_2
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isLazyActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/LazyGuideSettingsViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/LazyGuideSettingsViewController;-><init>()V

    .line 42
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolSettingsViewController;->binding:Lcom/brakefield/painter/databinding/ToolSettingsViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/ToolSettingsViewControllerBinding;->settingsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/LazyGuideSettingsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 45
    :cond_3
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isCanvasPreviewShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 46
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CanvasPreviewSettingsViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CanvasPreviewSettingsViewController;-><init>()V

    .line 47
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolSettingsViewController;->binding:Lcom/brakefield/painter/databinding/ToolSettingsViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/ToolSettingsViewControllerBinding;->settingsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CanvasPreviewSettingsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50
    :cond_4
    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->getType()I

    move-result v0

    if-eqz v0, :cond_5

    .line 51
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;-><init>()V

    .line 52
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolSettingsViewController;->binding:Lcom/brakefield/painter/databinding/ToolSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ToolSettingsViewControllerBinding;->settingsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 55
    :cond_5
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolSettingsViewController;->binding:Lcom/brakefield/painter/databinding/ToolSettingsViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/ToolSettingsViewControllerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method
