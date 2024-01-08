.class public Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;
.super Ljava/lang/Object;
.source "BrushSettingsViewController.java"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$getView$0(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 2

    .line 42
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCurrentBrushDisplayName()Ljava/lang/String;

    move-result-object p2

    .line 44
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    .line 45
    sput-object p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->shareActivity:Landroid/app/Activity;

    .line 46
    new-instance p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushType()I

    move-result p2

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushCustomName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, p2, v0}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    sput-object p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->shareBrush:Lcom/brakefield/painter/brushes/brushfolders/Brush;

    .line 47
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$getView$1(Lcom/brakefield/painter/ui/SimpleUI;Ljava/lang/String;)V
    .locals 1

    .line 58
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->createBrush(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->saveBrush()V

    const/4 v0, 0x0

    .line 60
    invoke-static {v0, p1}, Lcom/brakefield/painter/PainterLib;->setBrushType(ILjava/lang/String;)V

    .line 61
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setCurrentBrushDisplayName(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 62
    sput-boolean p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveBrushPreview:Z

    .line 63
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 64
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->refresh()V

    return-void
.end method

.method static synthetic lambda$getView$2(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 1

    .line 57
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushPackManager;->getInstance()Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object p2

    const-string v0, "Custom"

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/brushes/BrushPackManager;->getNewBrushName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    const p1, 0x7f12099b

    invoke-static {p0, p1, p2, v0}, Lcom/brakefield/infinitestudio/Dialogs;->showTextInputDialog(Landroid/content/Context;ILjava/lang/String;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method static synthetic lambda$getView$3(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 70
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->loadBrush()V

    const/4 p2, 0x0

    .line 71
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setTool(I)V

    .line 72
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->hideBrushSettings()V

    .line 73
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->showInterface(Landroid/app/Activity;Z)V

    return-void
.end method

.method static synthetic lambda$getView$4(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x1

    .line 80
    sput-boolean p2, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveBrushPreview:Z

    const/4 p2, 0x0

    .line 81
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setTool(I)V

    .line 82
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->hideBrushSettings()V

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->showInterface(Landroid/app/Activity;Z)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic lambda$getView$6(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 8

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;

    .line 38
    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->share:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 39
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->share:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 40
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->share:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushCustomName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->share:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->share:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->saveNewBrush:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 56
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->saveNewBrush:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 57
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->saveNewBrush:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->cancel:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 68
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->cancel:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 69
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->cancel:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->save:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 78
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->save:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->save:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->topBar:Landroid/view/View;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 92
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->isDark()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->brushPreview:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    const/16 v3, 0x14

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->brushPreview:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 101
    :goto_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->brushPreview:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 103
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->brushSettings:Lcom/brakefield/painter/databinding/BrushSettingsBinding;

    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/BrushSettingsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-static {p1, p2, v0, v2}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->show(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 110
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->brushSettings:Lcom/brakefield/painter/databinding/BrushSettingsBinding;

    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/BrushSettingsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 112
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;

    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    .line 114
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 118
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 119
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    const/high16 v5, 0x40c00000    # 6.0f

    const/4 v6, -0x1

    if-ne p2, v4, :cond_2

    .line 120
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07005a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    const p2, 0x7f080473

    .line 121
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    invoke-static {v5}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p2

    float-to-int p2, p2

    iput p2, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 123
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 124
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 125
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    goto :goto_2

    .line 127
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700a8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    const p2, 0x7f080472

    .line 128
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    invoke-static {v5}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p2

    float-to-int p2, p2

    iput p2, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 130
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 131
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 132
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    move v7, v6

    move v6, p1

    move p1, v7

    .line 134
    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;)V

    .line 136
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method synthetic lambda$getView$5$com-brakefield-painter-ui-viewcontrollers-BrushSettingsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 104
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;->binding:Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->brushPreview:Landroid/widget/ImageView;

    sput-object p2, Lcom/brakefield/painter/PainterGraphicsRenderer;->updateBrushPreview:Landroid/widget/ImageView;

    .line 105
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method
