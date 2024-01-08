.class public Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar;
.super Lcom/brakefield/painter/ui/toolbars/Toolbar;
.source "PatternPathToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$UpdateHandler;
    }
.end annotation


# instance fields
.field private patternPathTool:Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;

.field private updateHandler:Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$UpdateHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/brakefield/painter/ui/toolbars/Toolbar;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar;)Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar;->patternPathTool:Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;

    return-object p0
.end method

.method static synthetic lambda$getView$0(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;Landroid/view/View;)V
    .locals 0

    .line 53
    iget-object p2, p2, Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;->copiesSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->popupSlider(Landroid/app/Activity;Lcom/brakefield/infinitestudio/ui/PullButton;)V

    return-void
.end method

.method static synthetic lambda$getView$1(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;Landroid/view/View;)V
    .locals 0

    .line 75
    iget-object p2, p2, Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;->jitterSizeSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->popupSlider(Landroid/app/Activity;Lcom/brakefield/infinitestudio/ui/PullButton;)V

    return-void
.end method

.method static synthetic lambda$getView$2(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;Landroid/view/View;)V
    .locals 0

    .line 97
    iget-object p2, p2, Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;->jitterAngleSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->popupSlider(Landroid/app/Activity;Lcom/brakefield/infinitestudio/ui/PullButton;)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 5

    .line 25
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getToolManager()Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getPatternPathTool()Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar;->patternPathTool:Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;

    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;

    move-result-object v0

    .line 30
    new-instance v1, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$UpdateHandler;

    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar;->patternPathTool:Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;

    invoke-direct {v1, v2, v0}, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$UpdateHandler;-><init>(Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;)V

    iput-object v1, p0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$UpdateHandler;

    .line 32
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;->copiesSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setMax(I)V

    .line 33
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;->copiesSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$1;

    invoke-direct {v3, p0, p2, v0}, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$1;-><init>(Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;)V

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v4, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 51
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;->copiesSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTrackColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setTrackColor(I)V

    .line 52
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;->copiesSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setColorFilter(I)V

    .line 53
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;->copiesSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, p1, v0}, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;->jitterSizeSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$2;

    invoke-direct {v3, p0, p2, v0}, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$2;-><init>(Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;)V

    invoke-static {p1, v1, v2, v4, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 73
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;->jitterSizeSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTrackColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setTrackColor(I)V

    .line 74
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;->jitterSizeSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setColorFilter(I)V

    .line 75
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;->jitterSizeSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$$ExternalSyntheticLambda1;

    invoke-direct {v2, p2, p1, v0}, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;->jitterAngleSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$3;

    invoke-direct {v3, p0, p2, v0}, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$3;-><init>(Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;)V

    invoke-static {p1, v1, v2, v4, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 95
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;->jitterAngleSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTrackColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setTrackColor(I)V

    .line 96
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;->jitterAngleSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setColorFilter(I)V

    .line 97
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;->jitterAngleSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2, p1, v0}, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public update()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$UpdateHandler;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$UpdateHandler;->update()V

    return-void
.end method
