.class public Lcom/brakefield/painter/ui/toolbars/FillToolbar;
.super Lcom/brakefield/painter/ui/toolbars/Toolbar;
.source "FillToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;
    }
.end annotation


# instance fields
.field private downBright:F

.field private downHue:F

.field private downSat:F

.field private updateHandler:Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/brakefield/painter/ui/toolbars/Toolbar;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/toolbars/FillToolbar;)F
    .locals 0

    .line 28
    iget p0, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar;->downHue:F

    return p0
.end method

.method static synthetic access$002(Lcom/brakefield/painter/ui/toolbars/FillToolbar;F)F
    .locals 0

    .line 28
    iput p1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar;->downHue:F

    return p1
.end method

.method static synthetic access$100(Lcom/brakefield/painter/ui/toolbars/FillToolbar;)F
    .locals 0

    .line 28
    iget p0, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar;->downSat:F

    return p0
.end method

.method static synthetic access$102(Lcom/brakefield/painter/ui/toolbars/FillToolbar;F)F
    .locals 0

    .line 28
    iput p1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar;->downSat:F

    return p1
.end method

.method static synthetic access$202(Lcom/brakefield/painter/ui/toolbars/FillToolbar;F)F
    .locals 0

    .line 28
    iput p1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar;->downBright:F

    return p1
.end method

.method private bindUI(Lcom/brakefield/painter/databinding/FillToolbarBinding;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 1

    .line 160
    iget-object v0, p1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->fillSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    .line 164
    iget-object v0, p1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->repeat:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    .line 165
    iget-object v0, p1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->mirror:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    .line 166
    iget-object v0, p1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->reverse:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    .line 167
    iget-object v0, p1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->settings:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    .line 168
    iget-object v0, p1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->patternSource:Lcom/brakefield/infinitestudio/ui/RoundButton;

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    .line 172
    iget-object p1, p1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->sampleFrom:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$getView$0(Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;Lcom/brakefield/painter/ui/SimpleUI;Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getFillTool()Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;

    move-result-object p0

    add-int/lit8 p3, p3, 0x1

    .line 51
    invoke-virtual {p0, p3}, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;->setFillCycles(I)V

    .line 52
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method static synthetic lambda$getView$1(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/databinding/FillToolbarBinding;Landroid/view/View;)V
    .locals 0

    .line 56
    iget-object p2, p2, Lcom/brakefield/painter/databinding/FillToolbarBinding;->sweepCycles:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->popupSlider(Landroid/app/Activity;Lcom/brakefield/infinitestudio/ui/PullButton;)V

    return-void
.end method

.method static synthetic lambda$getView$3(Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 9

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 114
    invoke-virtual {p3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 115
    invoke-virtual {p0}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getFillTool()Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;

    move-result-object p0

    .line 116
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getFillStrictType()I

    move-result p3

    const/4 v2, 0x0

    if-nez p3, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v0

    .line 121
    :goto_0
    invoke-virtual {p0}, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;->getFillAdjustColor()I

    move-result v5

    aget v7, v1, v2

    const/4 p0, 0x1

    aget v8, v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v3 .. v8}, Lcom/brakefield/painter/ui/SimpleUI;->showFillToolColorsPanel(Landroid/app/Activity;IIII)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 8

    .line 35
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getToolManager()Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/brakefield/painter/databinding/FillToolbarBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/FillToolbarBinding;

    move-result-object v1

    .line 39
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 41
    new-instance v3, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;

    invoke-direct {v3, v0, v1, p2}, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;-><init>(Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;Lcom/brakefield/painter/databinding/FillToolbarBinding;Lcom/brakefield/painter/ui/SimpleUI;)V

    iput-object v3, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;

    .line 43
    iget-object v3, v1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->settings:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 44
    iget-object v3, v1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->settings:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 46
    iget-object v3, v1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->sweepCycles:Lcom/brakefield/infinitestudio/ui/PullButton;

    const/16 v4, 0x1f

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/ui/PullButton;->setMax(I)V

    .line 47
    iget-object v3, v1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->sweepCycles:Lcom/brakefield/infinitestudio/ui/PullButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/ui/PullButton;->setHorizontalable(Z)V

    .line 48
    iget-object v3, v1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->sweepCycles:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v5

    new-instance v6, Lcom/brakefield/painter/ui/toolbars/FillToolbar$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0, p2}, Lcom/brakefield/painter/ui/toolbars/FillToolbar$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;Lcom/brakefield/painter/ui/SimpleUI;)V

    const/4 v7, 0x0

    invoke-static {p1, v3, v5, v7, v6}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 54
    iget-object v3, v1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->sweepCycles:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTrackColor()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/brakefield/infinitestudio/ui/PullButton;->setTrackColor(I)V

    .line 55
    iget-object v3, v1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->sweepCycles:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/brakefield/infinitestudio/ui/PullButton;->setColorFilter(I)V

    .line 56
    iget-object v3, v1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->sweepCycles:Lcom/brakefield/infinitestudio/ui/PullButton;

    new-instance v5, Lcom/brakefield/painter/ui/toolbars/FillToolbar$$ExternalSyntheticLambda1;

    invoke-direct {v5, p2, p1, v1}, Lcom/brakefield/painter/ui/toolbars/FillToolbar$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/databinding/FillToolbarBinding;)V

    invoke-virtual {v3, v5}, Lcom/brakefield/infinitestudio/ui/PullButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v3, v1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->repeat:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 60
    iget-object v3, v1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->mirror:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 62
    iget-object v3, v1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->reverse:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 63
    iget-object v3, v1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->reverse:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 65
    iget-object v3, v1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->sampleFrom:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 66
    iget-object v3, v1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->sampleFrom:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 68
    iget-object v3, v1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->patternSource:Lcom/brakefield/infinitestudio/ui/RoundButton;

    invoke-static {v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 69
    iget-object v3, v1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->patternSource:Lcom/brakefield/infinitestudio/ui/RoundButton;

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/ui/RoundButton;->setBorder(Z)V

    .line 70
    iget-object v3, v1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->patternSource:Lcom/brakefield/infinitestudio/ui/RoundButton;

    const v4, 0x7f08030a

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/brakefield/infinitestudio/ui/RoundButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 72
    iget-object v2, v1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->color:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/ui/toolbars/FillToolbar$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/brakefield/painter/ui/toolbars/FillToolbar$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/toolbars/FillToolbar;)V

    new-instance v5, Lcom/brakefield/painter/ui/toolbars/FillToolbar$1;

    invoke-direct {v5, p0, v1}, Lcom/brakefield/painter/ui/toolbars/FillToolbar$1;-><init>(Lcom/brakefield/painter/ui/toolbars/FillToolbar;Lcom/brakefield/painter/databinding/FillToolbarBinding;)V

    invoke-static {p1, v2, v3, v4, v5}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 112
    iget-object v2, v1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->color:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    new-instance v3, Lcom/brakefield/painter/ui/toolbars/FillToolbar$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/FillToolbar$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, v1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->color:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/FillToolbar$2;

    invoke-direct {v2, p0, v1, p2, p1}, Lcom/brakefield/painter/ui/toolbars/FillToolbar$2;-><init>(Lcom/brakefield/painter/ui/toolbars/FillToolbar;Lcom/brakefield/painter/databinding/FillToolbarBinding;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setOnOutListener(Lcom/brakefield/infinitestudio/ui/PullButton$OnOutListener;)V

    .line 151
    iget-object p1, v1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->color:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setVerticalable(Z)V

    .line 153
    invoke-direct {p0, v1, p2}, Lcom/brakefield/painter/ui/toolbars/FillToolbar;->bindUI(Lcom/brakefield/painter/databinding/FillToolbarBinding;Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 155
    invoke-virtual {v1}, Lcom/brakefield/painter/databinding/FillToolbarBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$2$com-brakefield-painter-ui-toolbars-FillToolbar(F)Ljava/lang/String;
    .locals 3

    .line 74
    iget v0, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar;->downBright:F

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

    .line 78
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

    .line 79
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

.method public update()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;->update()V

    return-void
.end method
