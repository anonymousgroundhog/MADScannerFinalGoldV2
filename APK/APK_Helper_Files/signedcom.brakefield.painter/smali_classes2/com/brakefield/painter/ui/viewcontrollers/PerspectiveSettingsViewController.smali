.class public Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "PerspectiveSettingsViewController.java"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;

.field private perspectiveManager:Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    return-void
.end method

.method static synthetic lambda$getView$3(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 57
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->resetGuide()V

    .line 58
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 2

    .line 22
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getPerspectiveManager()Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->perspectiveManager:Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;

    .line 26
    iget-object v0, v0, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->lockImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->perspectiveManager:Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->getLock()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getActiveColor()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 28
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->lockButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->lockImage:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 29
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->lockButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->snapImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->perspectiveManager:Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->getSnap()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getActiveColor()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 37
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->snapButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->snapImage:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 38
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->snapButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->gridImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->perspectiveManager:Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->getGrid()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getActiveColor()I

    move-result v1

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 46
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->gridButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->gridImage:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 47
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->gridButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->resetImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 55
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->resetButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->resetImage:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 56
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->resetButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$0$com-brakefield-painter-ui-viewcontrollers-PerspectiveSettingsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 30
    iget-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->perspectiveManager:Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

    invoke-virtual {p3}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->getLock()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->setLock(Z)V

    .line 31
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 32
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->lockImage:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->perspectiveManager:Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

    invoke-virtual {p2}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->getLock()Z

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

.method synthetic lambda$getView$1$com-brakefield-painter-ui-viewcontrollers-PerspectiveSettingsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 39
    iget-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->perspectiveManager:Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

    invoke-virtual {p3}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->getSnap()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->setSnap(Z)V

    .line 40
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 41
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->snapImage:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->perspectiveManager:Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

    invoke-virtual {p2}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->getSnap()Z

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

.method synthetic lambda$getView$2$com-brakefield-painter-ui-viewcontrollers-PerspectiveSettingsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 48
    iget-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->perspectiveManager:Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

    invoke-virtual {p3}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->getGrid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->setGrid(Z)V

    .line 49
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 50
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->binding:Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->gridImage:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->perspectiveManager:Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

    invoke-virtual {p2}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->getGrid()Z

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
