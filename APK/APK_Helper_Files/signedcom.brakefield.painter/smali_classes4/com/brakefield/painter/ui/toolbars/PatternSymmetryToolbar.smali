.class public Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar;
.super Lcom/brakefield/painter/ui/toolbars/Toolbar;
.source "PatternSymmetryToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler;
    }
.end annotation


# instance fields
.field private patternSymTool:Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;

.field private updateHandler:Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/brakefield/painter/ui/toolbars/Toolbar;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar;)Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar;->patternSymTool:Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;

    return-object p0
.end method

.method static synthetic lambda$getView$0(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;Landroid/view/View;)V
    .locals 0

    .line 51
    iget-object p2, p2, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->planesSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->popupSlider(Landroid/app/Activity;Lcom/brakefield/infinitestudio/ui/PullButton;)V

    return-void
.end method

.method static synthetic lambda$getView$1(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;Landroid/view/View;)V
    .locals 0

    .line 73
    iget-object p2, p2, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->fanSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->popupSlider(Landroid/app/Activity;Lcom/brakefield/infinitestudio/ui/PullButton;)V

    return-void
.end method

.method static synthetic lambda$getView$2(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;Landroid/view/View;)V
    .locals 0

    .line 96
    iget-object p2, p2, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->rotateSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->popupSlider(Landroid/app/Activity;Lcom/brakefield/infinitestudio/ui/PullButton;)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 5

    .line 24
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getToolManager()Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getPatternSymTool()Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar;->patternSymTool:Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;

    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler;

    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar;->patternSymTool:Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;

    invoke-direct {v1, v2, v0}, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler;-><init>(Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;)V

    iput-object v1, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler;

    .line 31
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->planesSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$1;

    invoke-direct {v3, p0, p2, v0}, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$1;-><init>(Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;)V

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v4, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 49
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->planesSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTrackColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setTrackColor(I)V

    .line 50
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->planesSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setColorFilter(I)V

    .line 51
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->planesSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, p1, v0}, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->fanSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$2;

    invoke-direct {v3, p0, p2, v0}, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$2;-><init>(Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;)V

    invoke-static {p1, v1, v2, v4, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 71
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->fanSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTrackColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setTrackColor(I)V

    .line 72
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->fanSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setColorFilter(I)V

    .line 73
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->fanSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$$ExternalSyntheticLambda1;

    invoke-direct {v2, p2, p1, v0}, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->rotateSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    const/16 v2, 0x168

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setMax(I)V

    .line 76
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->rotateSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$3;

    invoke-direct {v3, p0, p2, v0}, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$3;-><init>(Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;)V

    invoke-static {p1, v1, v2, v4, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 94
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->rotateSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTrackColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setTrackColor(I)V

    .line 95
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->rotateSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setColorFilter(I)V

    .line 96
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->rotateSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2, p1, v0}, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->reflect:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->reflectImage:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 99
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->reflect:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$3$com-brakefield-painter-ui-toolbars-PatternSymmetryToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 100
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar;->patternSymTool:Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;

    invoke-virtual {p3}, Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;->getReflect()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;->setReflect(Z)V

    .line 101
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method public update()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler;->update()V

    return-void
.end method
