.class public Lcom/brakefield/painter/ui/viewcontrollers/OptionsViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "OptionsViewController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    return-void
.end method

.method private bindUI(Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 3

    .line 94
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/OptionsViewController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/OptionsViewController$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 98
    iget-object v1, p1, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->newProjectButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/OptionsViewController$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/OptionsViewController$$ExternalSyntheticLambda3;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    .line 101
    iget-object v1, p1, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->openButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/OptionsViewController$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/OptionsViewController$$ExternalSyntheticLambda4;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    .line 104
    iget-object v1, p1, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->saveButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/OptionsViewController$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/OptionsViewController$$ExternalSyntheticLambda5;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    .line 107
    iget-object v1, p1, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->importButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/OptionsViewController$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/OptionsViewController$$ExternalSyntheticLambda6;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    .line 110
    iget-object v1, p1, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->playbackButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/OptionsViewController$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/OptionsViewController$$ExternalSyntheticLambda7;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    .line 113
    iget-object v1, p1, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->exportButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/OptionsViewController$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/OptionsViewController$$ExternalSyntheticLambda8;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    .line 116
    iget-object v1, p1, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->communityButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/OptionsViewController$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/OptionsViewController$$ExternalSyntheticLambda9;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    .line 119
    iget-object v1, p1, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->classroomButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/OptionsViewController$$ExternalSyntheticLambda10;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/OptionsViewController$$ExternalSyntheticLambda10;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    .line 122
    iget-object p1, p1, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->settingsButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/OptionsViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/OptionsViewController$$ExternalSyntheticLambda1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p1, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$1(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 95
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    return-void
.end method

.method static synthetic lambda$bindUI$10(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 123
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$2(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 99
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$3(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 102
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$4(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 105
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$5(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 108
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$6(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 111
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$7(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 114
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$8(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 117
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$9(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 120
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$getView$0(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    const-string p1, "Options menu"

    .line 66
    invoke-static {p0, p1}, Lcom/brakefield/painter/PurchaseManager;->showPurchaseSplash(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 6

    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;

    move-result-object v0

    .line 28
    iget-object v1, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->newProjectButton:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->newProjectImage:Landroid/widget/ImageView;

    const/16 v3, 0xc8

    invoke-static {v3}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v3

    invoke-virtual {p2, p1, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 29
    iget-object v1, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->importButton:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->importImage:Landroid/widget/ImageView;

    const/16 v3, 0xcb

    invoke-static {v3}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v3

    invoke-virtual {p2, p1, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 30
    iget-object v1, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->playbackButton:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->playbackImage:Landroid/widget/ImageView;

    const/16 v3, 0xce

    invoke-static {v3}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v3

    invoke-virtual {p2, p1, v1, v2, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 32
    iget-object v1, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->playbackDot:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isRecordingPlayback()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    iget-object v1, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->playbackDot:Landroid/widget/ImageView;

    sget v3, Lcom/brakefield/infinitestudio/color/Colors;->RED:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 35
    iget-object v1, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->playbackDot:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 37
    :cond_0
    iget-object v1, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->playbackDot:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 38
    iget-object v1, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->playbackDot:Landroid/widget/ImageView;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 41
    :goto_0
    iget-object v1, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->exportButton:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->exportImage:Landroid/widget/ImageView;

    const/16 v4, 0xcd

    invoke-static {v4}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v4

    invoke-virtual {p2, p1, v1, v3, v4}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 42
    iget-object v1, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->saveButton:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->saveImage:Landroid/widget/ImageView;

    const/16 v4, 0xca

    invoke-static {v4}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v4

    invoke-virtual {p2, p1, v1, v3, v4}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 43
    iget-object v1, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->openButton:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->openImage:Landroid/widget/ImageView;

    const/16 v4, 0xc9

    invoke-static {v4}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v4

    invoke-virtual {p2, p1, v1, v3, v4}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 45
    iget-object v1, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->settingsButton:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 46
    iget-object v1, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->settingsImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 48
    iget-object v1, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->classroomButton:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 49
    iget-object v1, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->classroomImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 51
    iget-object v1, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->communityButton:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 52
    iget-object v1, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->communityImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 54
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->isEducationVersion()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    iget-object v1, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->communityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/GridLayout;

    move v3, v2

    .line 56
    :goto_1
    invoke-virtual {v1}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 57
    iget-object v4, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->communityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 58
    invoke-virtual {v1, v3}, Landroid/widget/GridLayout;->removeViewAt(I)V

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 64
    :cond_2
    :goto_2
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMasterWithoutTrial()Z

    move-result v1

    if-nez v1, :cond_3

    .line 65
    iget-object v1, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->unlockButton:Landroid/widget/Button;

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 66
    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/OptionsViewController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/brakefield/painter/ui/viewcontrollers/OptionsViewController$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v3}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p1, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->unlockButtonContainer:Landroid/widget/FrameLayout;

    invoke-static {v1, p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 68
    iget-object p1, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->unlockButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 70
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->inTrial()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 71
    iget-object p1, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->unlockButtonLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v1, 0x7f120222

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_3
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getChallengeType()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    .line 76
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->isDark()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 77
    iget-object p1, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->promptLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setTextColor(I)V

    goto :goto_3

    .line 79
    :cond_4
    iget-object p1, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->promptLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setTextColor(I)V

    .line 81
    :goto_3
    iget-object p1, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->promptLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getChallengeDrawingPrompt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p1, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->promptSection:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 84
    :cond_5
    iget-object p1, v0, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->promptSection:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    :goto_4
    invoke-direct {p0, v0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/OptionsViewController;->bindUI(Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 89
    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/OptionsViewControllerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method
