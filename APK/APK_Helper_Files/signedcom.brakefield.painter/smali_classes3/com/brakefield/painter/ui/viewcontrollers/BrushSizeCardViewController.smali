.class public Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;
.super Ljava/lang/Object;
.source "BrushSizeCardViewController.java"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;)Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;

    return-object p0
.end method

.method private getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;
    .locals 2

    .line 198
    new-instance v0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->getBlendModeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$getView$0(F)Ljava/lang/String;
    .locals 2

    .line 48
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushPixelSize()F

    move-result p0

    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v0, p0, v0

    const-string v1, ""

    if-gez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%.1f"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getView$1(F)Ljava/lang/String;
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p0, v0

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p0, v0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    float-to-double v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    double-to-float p0, v0

    float-to-double v0, p0

    .line 109
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p0, v0

    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x43b40000    # 360.0f

    sub-float/2addr p0, v0

    .line 111
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo v0, "\u00b0"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getView$2(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 190
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->showBrushSettings(Landroid/app/Activity;)V

    .line 191
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 10

    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;

    .line 34
    new-instance v0, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushStrokeSettings()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;-><init>(J)V

    .line 35
    new-instance v1, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushHeadSettings()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;-><init>(J)V

    .line 37
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->isDark()Z

    move-result v2

    const/16 v3, 0x14

    if-eqz v2, :cond_0

    .line 38
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;->brushPreview:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    new-array v5, v3, [F

    fill-array-data v5, :array_0

    invoke-direct {v4, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;->brushPreview:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 45
    :goto_0
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;->brushPreview:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 47
    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$$ExternalSyntheticLambda0;-><init>()V

    .line 52
    iget-object v4, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;

    iget-object v4, v4, Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v5

    new-instance v6, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$1;

    invoke-direct {v6, p0, v2, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-static {p1, v4, v5, v2, v6}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 70
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushSize()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 103
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;->angleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    const/16 v4, 0x168

    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setMax(I)V

    .line 104
    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$$ExternalSyntheticLambda1;-><init>()V

    .line 113
    iget-object v4, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;

    iget-object v4, v4, Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;->angleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v5

    new-instance v6, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$2;

    invoke-direct {v6, p0, v1, v2, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-static {p1, v4, v5, v2, v6}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 135
    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->getAngle()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    float-to-double v4, v1

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v4, v6

    double-to-float v1, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v1, v4

    cmpl-float v4, v1, v2

    if-lez v4, :cond_1

    sub-float/2addr v1, v2

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;->angleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 141
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;->blendingModesDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$3;

    invoke-direct {v2, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;Lcom/brakefield/painter/ui/SimpleUI;)V

    new-instance v4, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    const/16 v5, 0x1e

    new-array v5, v5, [Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    const/4 v6, 0x0

    .line 154
    invoke-direct {p0, v6}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 155
    invoke-direct {p0, v6}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    const/4 v7, 0x3

    .line 156
    invoke-direct {p0, v7}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x4

    .line 157
    invoke-direct {p0, v6}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v9

    aput-object v9, v5, v7

    const/4 v7, 0x5

    .line 158
    invoke-direct {p0, v7}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x6

    .line 159
    invoke-direct {p0, v6}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v9

    aput-object v9, v5, v7

    const/4 v7, 0x7

    .line 160
    invoke-direct {p0, v7}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0x8

    .line 161
    invoke-direct {p0, v6}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v9

    aput-object v9, v5, v7

    const/16 v7, 0x9

    .line 162
    invoke-direct {p0, v7}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0xa

    .line 163
    invoke-direct {p0, v6}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v9

    aput-object v9, v5, v7

    const/16 v7, 0xb

    .line 164
    invoke-direct {p0, v7}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v9

    aput-object v9, v5, v6

    .line 165
    invoke-direct {p0, v8}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v6

    aput-object v6, v5, v7

    const/16 v6, 0xc

    .line 166
    invoke-direct {p0, v6}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const/16 v7, 0xe

    .line 167
    invoke-direct {p0, v7}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v8

    aput-object v8, v5, v6

    const/16 v6, 0xf

    .line 168
    invoke-direct {p0, v6}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v8

    aput-object v8, v5, v7

    const/16 v7, 0x10

    .line 169
    invoke-direct {p0, v7}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v8

    aput-object v8, v5, v6

    const/16 v6, 0x11

    .line 170
    invoke-direct {p0, v6}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v8

    aput-object v8, v5, v7

    const/16 v7, 0x12

    .line 171
    invoke-direct {p0, v7}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v8

    aput-object v8, v5, v6

    const/16 v6, 0x13

    .line 172
    invoke-direct {p0, v6}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v8

    aput-object v8, v5, v7

    .line 173
    invoke-direct {p0, v3}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x15

    .line 174
    invoke-direct {p0, v6}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v7

    aput-object v7, v5, v3

    const/16 v3, 0x17

    .line 175
    invoke-direct {p0, v3}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v3

    aput-object v3, v5, v6

    const/16 v3, 0x16

    .line 176
    invoke-direct {p0, v3}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v3

    const/16 v6, 0x16

    aput-object v3, v5, v6

    const/16 v3, 0x19

    .line 177
    invoke-direct {p0, v3}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v3

    const/16 v6, 0x17

    aput-object v3, v5, v6

    const/16 v3, 0x1a

    .line 178
    invoke-direct {p0, v3}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v3

    const/16 v6, 0x18

    aput-object v3, v5, v6

    const/16 v3, 0x1b

    .line 179
    invoke-direct {p0, v3}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v3

    const/16 v6, 0x19

    aput-object v3, v5, v6

    const/16 v3, 0x1c

    .line 180
    invoke-direct {p0, v3}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v3

    const/16 v6, 0x1a

    aput-object v3, v5, v6

    const/16 v3, 0x32

    .line 181
    invoke-direct {p0, v3}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v3

    const/16 v6, 0x1b

    aput-object v3, v5, v6

    const/16 v3, 0x33

    .line 182
    invoke-direct {p0, v3}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v3

    const/16 v6, 0x1c

    aput-object v3, v5, v6

    const/16 v3, 0x34

    .line 183
    invoke-direct {p0, v3}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v3

    const/16 v6, 0x1d

    aput-object v3, v5, v6

    invoke-direct {v4, p1, v5}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;)V

    .line 184
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->getBlendingMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 141
    invoke-static {v1, v2, v4, v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupDropdown(Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Landroid/widget/AdapterView$OnItemSelectedListener;Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;->brushSettings:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 188
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;->brushSettings:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 189
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;->brushSettings:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1

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
