.class public Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;
.super Lcom/brakefield/painter/ui/toolbars/Toolbar;
.source "PanelsToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler;
    }
.end annotation


# instance fields
.field private downBright:F

.field private downHue:F

.field private downSat:F

.field private panelTool:Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;

.field private updateHandler:Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/brakefield/painter/ui/toolbars/Toolbar;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;)Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->panelTool:Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;

    return-object p0
.end method

.method static synthetic access$100(Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;)F
    .locals 0

    .line 23
    iget p0, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->downHue:F

    return p0
.end method

.method static synthetic access$102(Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;F)F
    .locals 0

    .line 23
    iput p1, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->downHue:F

    return p1
.end method

.method static synthetic access$200(Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;)F
    .locals 0

    .line 23
    iget p0, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->downSat:F

    return p0
.end method

.method static synthetic access$202(Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;F)F
    .locals 0

    .line 23
    iput p1, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->downSat:F

    return p1
.end method

.method static synthetic access$302(Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;F)F
    .locals 0

    .line 23
    iput p1, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->downBright:F

    return p1
.end method

.method static synthetic lambda$getView$0(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/databinding/PanelsToolbarBinding;Landroid/view/View;)V
    .locals 0

    .line 64
    iget-object p2, p2, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->widthSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->popupSlider(Landroid/app/Activity;Lcom/brakefield/infinitestudio/ui/PullButton;)V

    return-void
.end method

.method static synthetic lambda$getView$1(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/databinding/PanelsToolbarBinding;Landroid/view/View;)V
    .locals 0

    .line 88
    iget-object p2, p2, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->heightSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->popupSlider(Landroid/app/Activity;Lcom/brakefield/infinitestudio/ui/PullButton;)V

    return-void
.end method

.method static synthetic lambda$getView$2(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/databinding/PanelsToolbarBinding;Landroid/view/View;)V
    .locals 0

    .line 112
    iget-object p2, p2, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->gutterSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->popupSlider(Landroid/app/Activity;Lcom/brakefield/infinitestudio/ui/PullButton;)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 5

    .line 31
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getToolManager()Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    move-result-object v0

    .line 32
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->selectedLayerId()I

    move-result v1

    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->isPanelAdjustmentLayer(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    new-instance v0, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPanelAdjustmentLayerTool()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;-><init>(J)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->panelTool:Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getPanelTool()Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->panelTool:Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;

    .line 38
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/PanelsToolbarBinding;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler;

    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->panelTool:Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;

    invoke-direct {v1, v2, v0}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler;-><init>(Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;Lcom/brakefield/painter/databinding/PanelsToolbarBinding;)V

    iput-object v1, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler;

    .line 42
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->widthSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$1;

    invoke-direct {v3, p0, p2, v0}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$1;-><init>(Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/PanelsToolbarBinding;)V

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v4, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 62
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->widthSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTrackColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setTrackColor(I)V

    .line 63
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->widthSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setColorFilter(I)V

    .line 64
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->widthSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$$ExternalSyntheticLambda1;

    invoke-direct {v2, p2, p1, v0}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/databinding/PanelsToolbarBinding;)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->heightSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$2;

    invoke-direct {v3, p0, p2, v0}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$2;-><init>(Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/PanelsToolbarBinding;)V

    invoke-static {p1, v1, v2, v4, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 86
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->heightSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTrackColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setTrackColor(I)V

    .line 87
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->heightSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setColorFilter(I)V

    .line 88
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->heightSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2, p1, v0}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/databinding/PanelsToolbarBinding;)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->gutterSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$3;

    invoke-direct {v3, p0, p2, v0}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$3;-><init>(Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/PanelsToolbarBinding;)V

    invoke-static {p1, v1, v2, v4, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 110
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->gutterSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTrackColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setTrackColor(I)V

    .line 111
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->gutterSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setColorFilter(I)V

    .line 112
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->gutterSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$$ExternalSyntheticLambda3;

    invoke-direct {v2, p2, p1, v0}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/databinding/PanelsToolbarBinding;)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->panelsColor:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;)V

    new-instance v4, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$4;

    invoke-direct {v4, p0, v0}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$4;-><init>(Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;Lcom/brakefield/painter/databinding/PanelsToolbarBinding;)V

    invoke-static {p1, v1, v2, v3, v4}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 153
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->panelsColor:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/databinding/PanelsToolbarBinding;)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->panelsColor:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$5;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$5;-><init>(Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;Lcom/brakefield/painter/databinding/PanelsToolbarBinding;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setOnOutListener(Lcom/brakefield/infinitestudio/ui/PullButton$OnOutListener;)V

    .line 186
    iget-object p1, v0, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->panelsColor:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setVerticalable(Z)V

    .line 188
    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$3$com-brakefield-painter-ui-toolbars-PanelsToolbar(F)Ljava/lang/String;
    .locals 3

    .line 116
    iget v0, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->downBright:F

    sub-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const-string v0, "+"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 120
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%.1f"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 121
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%d"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$4$com-brakefield-painter-ui-toolbars-PanelsToolbar(Lcom/brakefield/painter/databinding/PanelsToolbarBinding;Lcom/brakefield/painter/ui/SimpleUI;IZ)V
    .locals 0

    .line 154
    iget-object p4, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->panelTool:Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;

    invoke-virtual {p4, p3}, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;->setColor(I)V

    .line 155
    iget-object p1, p1, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->panelsColor:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->panelTool:Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;

    invoke-virtual {p3}, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;->getColor()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setBackgroundColor(I)V

    .line 156
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method synthetic lambda$getView$5$com-brakefield-painter-ui-toolbars-PanelsToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/databinding/PanelsToolbarBinding;Landroid/view/View;)V
    .locals 7

    .line 153
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->panelTool:Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;->getColor()I

    move-result v4

    new-instance v5, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p3, p1}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;Lcom/brakefield/painter/databinding/PanelsToolbarBinding;Lcom/brakefield/painter/ui/SimpleUI;)V

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    invoke-virtual/range {v1 .. v6}, Lcom/brakefield/painter/ui/SimpleUI;->showColorsPanel(Landroid/app/Activity;Landroid/view/View;ILcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;I)V

    return-void
.end method

.method public update()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler;->update()V

    return-void
.end method
