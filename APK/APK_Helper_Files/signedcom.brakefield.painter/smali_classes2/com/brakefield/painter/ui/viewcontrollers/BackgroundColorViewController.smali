.class public Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "BackgroundColorViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler;
    }
.end annotation


# instance fields
.field private updateHandler:Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    return-void
.end method

.method private bindUI(Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 1

    .line 74
    iget-object v0, p1, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->depthSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    .line 75
    iget-object v0, p1, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    .line 76
    iget-object p1, p1, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->scaleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler;

    invoke-direct {v1, v0, p3}, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler;-><init>(Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;Landroid/view/View;)V

    iput-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController;->updateHandler:Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler;

    .line 33
    iget-object p3, v0, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->backgroundColor:Lcom/brakefield/infinitestudio/ui/RoundButton;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/brakefield/infinitestudio/ui/RoundButton;->setBorder(Z)V

    .line 34
    iget-object p3, v0, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->backgroundColor:Lcom/brakefield/infinitestudio/ui/RoundButton;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {p3, v1}, Lcom/brakefield/infinitestudio/ui/RoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object p3, v0, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->textureToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController;Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 45
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->usePaperTexture()Z

    move-result v2

    .line 40
    invoke-static {p3, v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 47
    iget-object p3, v0, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->textureButton:Landroid/view/View;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController;Landroid/app/Activity;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p1, v0, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->textureButton:Landroid/view/View;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 66
    invoke-direct {p0, v0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController;->bindUI(Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 68
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController;->update()V

    .line 70
    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$0$com-brakefield-painter-ui-viewcontrollers-BackgroundColorViewController(Lcom/brakefield/painter/ui/SimpleUI;IZ)V
    .locals 2

    .line 35
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result p3

    int-to-float p3, p3

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p3, v0

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-static {p3, v1, p2}, Lcom/brakefield/painter/PainterLib;->setBackgroundColor(FFF)V

    .line 36
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController;->update()V

    .line 37
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method synthetic lambda$getView$1$com-brakefield-painter-ui-viewcontrollers-BackgroundColorViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 6

    .line 34
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBackgroundColor()I

    move-result v3

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController;Lcom/brakefield/painter/ui/SimpleUI;)V

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/painter/ui/SimpleUI;->showColorsPanel(Landroid/app/Activity;Landroid/view/View;ILcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;I)V

    return-void
.end method

.method synthetic lambda$getView$2$com-brakefield-painter-ui-viewcontrollers-BackgroundColorViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 42
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->setUsePaperTexture(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController;->update()V

    .line 44
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method synthetic lambda$getView$3$com-brakefield-painter-ui-viewcontrollers-BackgroundColorViewController(Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;)V
    .locals 2

    .line 49
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;->isPreset()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 50
    iget-object p2, p2, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;->item:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setPaperResourceName(Ljava/lang/String;)V

    .line 53
    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->setPaperCustomName(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p2, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;->item:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 56
    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->setPaperResourceName(Ljava/lang/String;)V

    .line 57
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setPaperCustomName(Ljava/lang/String;)V

    .line 59
    :goto_0
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController;->update()V

    return-void
.end method

.method synthetic lambda$getView$4$com-brakefield-painter-ui-viewcontrollers-BackgroundColorViewController(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 48
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController;Landroid/view/View;)V

    sput-object v0, Lcom/brakefield/painter/activities/BrushTextureResourcesActivity;->listener:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;

    .line 61
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/brakefield/painter/activities/BrushTextureResourcesActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public update()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController;->updateHandler:Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler;->update()V

    return-void
.end method
