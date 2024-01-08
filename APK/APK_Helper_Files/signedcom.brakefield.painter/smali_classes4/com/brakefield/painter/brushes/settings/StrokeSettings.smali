.class public Lcom/brakefield/painter/brushes/settings/StrokeSettings;
.super Lcom/brakefield/painter/brushes/settings/BrushSettings;
.source "StrokeSettings.java"


# instance fields
.field binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/brakefield/painter/brushes/settings/BrushSettings;-><init>()V

    return-void
.end method

.method private getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;
    .locals 2

    .line 304
    new-instance v0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->getBlendModeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$bindSettings$0(F)Ljava/lang/String;
    .locals 2

    .line 44
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushPixelSize()F

    move-result p0

    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v0, p0, v0

    const-string v1, ""

    if-gez v0, :cond_0

    .line 45
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

    .line 46
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

.method static synthetic lambda$bindSettings$12(Landroid/app/Activity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 286
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setDrawFillPreview(Z)V

    .line 287
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 288
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "PREF_FILLS_DRAW_PREVIEW"

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic lambda$bindSettings$3(Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;IF)Ljava/lang/String;
    .locals 0

    .line 76
    invoke-virtual {p0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->getMaxSize()F

    move-result p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p0, p1

    const/high16 p1, 0x41200000    # 10.0f

    cmpg-float p1, p0, p1

    const-string p2, ""

    if-gez p1, :cond_0

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "%.2f%%"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/high16 p1, 0x41c80000    # 25.0f

    cmpg-float p1, p0, p1

    if-gez p1, :cond_1

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "%.1f%%"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 79
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "%d%%"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bindSettings(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    .line 40
    new-instance v7, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushStrokeSettings()J

    move-result-wide v0

    invoke-direct {v7, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;-><init>(J)V

    .line 42
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda0;-><init>()V

    new-instance v3, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda7;

    invoke-direct {v3, v6}, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/brushes/settings/StrokeSettings;)V

    invoke-static {v15, v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 55
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushSize()F

    move-result v1

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v1, v1, v16

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 57
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda8;

    invoke-direct {v2, v6}, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/brushes/settings/StrokeSettings;)V

    const/4 v14, 0x0

    invoke-static {v15, v0, v1, v14, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 68
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushOpacity()F

    move-result v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 73
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->maxSizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    const/16 v1, 0x640

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setMax(I)V

    .line 75
    new-instance v8, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda9;

    const/16 v9, 0x10

    invoke-direct {v8, v7, v9}, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;I)V

    .line 81
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v10, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->maxSizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v11

    new-instance v12, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda10;

    const/high16 v2, 0x40000000    # 2.0f

    const/16 v4, 0x10

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v3, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda10;-><init>(Lcom/brakefield/painter/brushes/settings/StrokeSettings;FLcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;ILcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;)V

    invoke-static {v15, v10, v11, v8, v12}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 88
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->maxSizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v7}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->getMaxSize()F

    move-result v1

    int-to-float v2, v9

    div-float/2addr v1, v2

    float-to-double v1, v1

    const/high16 v13, 0x3f000000    # 0.5f

    float-to-double v3, v13

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->maxSizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->getMax()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 90
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->smoothnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda11;

    invoke-direct {v2, v6, v7}, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda11;-><init>(Lcom/brakefield/painter/brushes/settings/StrokeSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;)V

    invoke-static {v15, v0, v1, v14, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 96
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->smoothnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v7}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->getSmoothness()F

    move-result v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 98
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->adhesionSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda12;

    invoke-direct {v2, v6, v7}, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda12;-><init>(Lcom/brakefield/painter/brushes/settings/StrokeSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;)V

    invoke-static {v15, v0, v1, v14, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 104
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->adhesionSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v7}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->getAdhesion()F

    move-result v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 106
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->wetEdgesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda1;

    invoke-direct {v2, v6, v7}, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/brushes/settings/StrokeSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;)V

    invoke-static {v15, v0, v1, v14, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 113
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->wetEdgesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v7}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->getWetEdges()F

    move-result v1

    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 116
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->blendingModesDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    new-instance v1, Lcom/brakefield/painter/brushes/settings/StrokeSettings$1;

    invoke-direct {v1, v6}, Lcom/brakefield/painter/brushes/settings/StrokeSettings$1;-><init>(Lcom/brakefield/painter/brushes/settings/StrokeSettings;)V

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    const/16 v3, 0x1e

    new-array v3, v3, [Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    const/4 v12, 0x0

    .line 135
    invoke-direct {v6, v12}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v4

    aput-object v4, v3, v12

    const/4 v4, 0x2

    .line 136
    invoke-direct {v6, v4}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v5

    const/4 v8, 0x1

    aput-object v5, v3, v8

    const/4 v5, 0x3

    .line 137
    invoke-direct {v6, v5}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v10

    aput-object v10, v3, v4

    const/4 v4, 0x4

    .line 138
    invoke-direct {v6, v4}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v10

    aput-object v10, v3, v5

    const/4 v5, 0x5

    .line 139
    invoke-direct {v6, v5}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v10

    aput-object v10, v3, v4

    const/4 v4, 0x6

    .line 140
    invoke-direct {v6, v4}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v10

    aput-object v10, v3, v5

    const/4 v5, 0x7

    .line 141
    invoke-direct {v6, v5}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v10

    aput-object v10, v3, v4

    const/16 v11, 0x8

    .line 142
    invoke-direct {v6, v11}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v4, 0x9

    .line 143
    invoke-direct {v6, v4}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v5

    aput-object v5, v3, v11

    const/16 v5, 0xa

    .line 144
    invoke-direct {v6, v5}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v10

    aput-object v10, v3, v4

    const/16 v4, 0xb

    .line 145
    invoke-direct {v6, v4}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v10

    aput-object v10, v3, v5

    .line 146
    invoke-direct {v6, v8}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xc

    .line 147
    invoke-direct {v6, v4}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xe

    .line 148
    invoke-direct {v6, v4}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v5

    const/16 v8, 0xd

    aput-object v5, v3, v8

    const/16 v5, 0xf

    .line 149
    invoke-direct {v6, v5}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v8

    aput-object v8, v3, v4

    .line 150
    invoke-direct {v6, v9}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v4, 0x11

    .line 151
    invoke-direct {v6, v4}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v5

    aput-object v5, v3, v9

    const/16 v5, 0x12

    .line 152
    invoke-direct {v6, v5}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v8

    aput-object v8, v3, v4

    const/16 v4, 0x13

    .line 153
    invoke-direct {v6, v4}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v8

    aput-object v8, v3, v5

    const/16 v5, 0x14

    .line 154
    invoke-direct {v6, v5}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x15

    .line 155
    invoke-direct {v6, v4}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v4

    const/16 v5, 0x14

    aput-object v4, v3, v5

    const/16 v4, 0x17

    .line 156
    invoke-direct {v6, v4}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v4

    const/16 v5, 0x15

    aput-object v4, v3, v5

    const/16 v4, 0x16

    .line 157
    invoke-direct {v6, v4}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v4

    const/16 v5, 0x16

    aput-object v4, v3, v5

    const/16 v4, 0x19

    .line 158
    invoke-direct {v6, v4}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v4

    const/16 v5, 0x17

    aput-object v4, v3, v5

    const/16 v4, 0x1a

    .line 159
    invoke-direct {v6, v4}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v4

    const/16 v5, 0x18

    aput-object v4, v3, v5

    const/16 v4, 0x1b

    .line 160
    invoke-direct {v6, v4}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v4

    const/16 v5, 0x19

    aput-object v4, v3, v5

    const/16 v4, 0x1c

    .line 161
    invoke-direct {v6, v4}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v4

    const/16 v5, 0x1a

    aput-object v4, v3, v5

    const/16 v4, 0x32

    .line 162
    invoke-direct {v6, v4}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v4

    const/16 v5, 0x1b

    aput-object v4, v3, v5

    const/16 v4, 0x33

    .line 163
    invoke-direct {v6, v4}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v4

    const/16 v5, 0x1c

    aput-object v4, v3, v5

    const/16 v4, 0x34

    .line 164
    invoke-direct {v6, v4}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v4

    const/16 v5, 0x1d

    aput-object v4, v3, v5

    invoke-direct {v2, v15, v3}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;)V

    .line 166
    invoke-virtual {v7}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->getBlendingMode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 116
    invoke-static {v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupDropdown(Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Landroid/widget/AdapterView$OnItemSelectedListener;Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;Ljava/lang/Object;)V

    .line 168
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->blendingModeIntensitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda2;

    invoke-direct {v2, v6, v7}, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/brushes/settings/StrokeSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;)V

    invoke-static {v15, v0, v1, v14, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 174
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->blendingModeIntensitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v7}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->getBlendingModeIntensity()F

    move-result v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 176
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->glazeStrokesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda3;

    invoke-direct {v2, v6, v7}, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/brushes/settings/StrokeSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;)V

    invoke-static {v15, v0, v1, v14, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 182
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->glazeStrokesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v7}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->getGlazeStrokes()F

    move-result v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 184
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->sizeProfileCurve:Lcom/brakefield/painter/databinding/ProfileCurveBinding;

    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/ProfileCurveBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f12038c

    invoke-virtual {v15, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0663

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    const v2, 0x7f120a9e

    const v3, 0x7f120a9e

    .line 185
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v4, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->sizeProfileCurve:Lcom/brakefield/painter/databinding/ProfileCurveBinding;

    new-instance v5, Lcom/brakefield/painter/brushes/settings/StrokeSettings$2;

    invoke-direct {v5, v6, v7}, Lcom/brakefield/painter/brushes/settings/StrokeSettings$2;-><init>(Lcom/brakefield/painter/brushes/settings/StrokeSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->setupProfileCurve(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;IILcom/brakefield/painter/databinding/ProfileCurveBinding;Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;)V

    .line 201
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->flowProfileCurve:Lcom/brakefield/painter/databinding/ProfileCurveBinding;

    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/ProfileCurveBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f1202c0

    invoke-virtual {v15, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0663

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    const v2, 0x7f1201c1

    const v3, 0x7f1201c1

    .line 202
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v4, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->flowProfileCurve:Lcom/brakefield/painter/databinding/ProfileCurveBinding;

    new-instance v5, Lcom/brakefield/painter/brushes/settings/StrokeSettings$3;

    invoke-direct {v5, v6, v7}, Lcom/brakefield/painter/brushes/settings/StrokeSettings$3;-><init>(Lcom/brakefield/painter/brushes/settings/StrokeSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->setupProfileCurve(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;IILcom/brakefield/painter/databinding/ProfileCurveBinding;Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;)V

    .line 219
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v9, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->sizeDynamics:Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;

    const v10, 0x7f120a9e

    const v0, 0x7f120383

    new-instance v1, Lcom/brakefield/painter/brushes/settings/StrokeSettings$4;

    invoke-direct {v1, v6}, Lcom/brakefield/painter/brushes/settings/StrokeSettings$4;-><init>(Lcom/brakefield/painter/brushes/settings/StrokeSettings;)V

    new-instance v2, Lcom/brakefield/painter/brushes/settings/StrokeSettings$5;

    invoke-direct {v2, v6}, Lcom/brakefield/painter/brushes/settings/StrokeSettings$5;-><init>(Lcom/brakefield/painter/brushes/settings/StrokeSettings;)V

    new-instance v3, Lcom/brakefield/painter/brushes/settings/StrokeSettings$6;

    invoke-direct {v3, v6}, Lcom/brakefield/painter/brushes/settings/StrokeSettings$6;-><init>(Lcom/brakefield/painter/brushes/settings/StrokeSettings;)V

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move v4, v11

    move v11, v0

    move v0, v12

    move-object v12, v1

    move v1, v13

    move-object v13, v2

    move-object v2, v14

    move-object v14, v3

    invoke-static/range {v7 .. v14}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->setupDynamics(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;IILcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;)V

    .line 266
    iget-object v3, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->tiltOffsetSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v5

    new-instance v7, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda4;

    invoke-direct {v7, v6}, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/brushes/settings/StrokeSettings;)V

    invoke-static {v15, v3, v5, v2, v7}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 272
    iget-object v3, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->tiltOffsetSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushTiltOffset()F

    move-result v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    add-float/2addr v5, v1

    mul-float v5, v5, v16

    float-to-int v1, v5

    invoke-virtual {v3, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 275
    iget-object v1, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->jitterContinuousSizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    new-instance v5, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda5;

    invoke-direct {v5, v6}, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/brushes/settings/StrokeSettings;)V

    invoke-static {v15, v1, v3, v2, v5}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 281
    iget-object v1, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->jitterContinuousSizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushJitterSize()F

    move-result v2

    mul-float v2, v2, v16

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 284
    iget-object v1, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->drawFillPreviewToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v2, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda6;

    invoke-direct {v2, v15}, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda6;-><init>(Landroid/app/Activity;)V

    .line 289
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getDrawFillPreview()Z

    move-result v3

    .line 284
    invoke-static {v1, v2, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 292
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isVectorFillBrush()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->strokeFillSection:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 295
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v0, v4}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setVisibility(I)V

    .line 296
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->maxSizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v0, v4}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setVisibility(I)V

    .line 297
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->strokeDynamicsSection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 298
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->strokeJitterSection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 299
    iget-object v0, v6, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->strokeProfilesSection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 1

    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->bindSettings(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 34
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$bindSettings$1$com-brakefield-painter-brushes-settings-StrokeSettings(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 0
    int-to-float p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 49
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    double-to-float p1, p1

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushSize(F)V

    .line 50
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushPixelSize()F

    move-result p1

    const/high16 p2, 0x41200000    # 10.0f

    cmpg-float p2, p1, p2

    const-string p3, ""

    if-gez p2, :cond_0

    .line 51
    iget-object p2, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "%.1f px"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object p2, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "%d"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 53
    :goto_0
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$10$com-brakefield-painter-brushes-settings-StrokeSettings(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 0
    int-to-float p1, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    const/high16 p3, 0x3f000000    # 0.5f

    sub-float/2addr p1, p3

    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p1, p3

    .line 268
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushTiltOffset(F)V

    .line 269
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->tiltOffsetSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x32

    mul-int/lit8 p2, p2, 0x2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 270
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$11$com-brakefield-painter-brushes-settings-StrokeSettings(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p1, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    .line 277
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushJitterSize(F)V

    .line 278
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->jitterContinuousSizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 279
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$2$com-brakefield-painter-brushes-settings-StrokeSettings(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 0
    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 60
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void

    :cond_0
    int-to-float p1, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    .line 63
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushOpacity(F)V

    .line 64
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$4$com-brakefield-painter-brushes-settings-StrokeSettings(FLcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;ILcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 0
    int-to-float p6, p6

    .line 83
    invoke-virtual {p5}, Landroid/widget/SeekBar;->getMax()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p6, p5

    float-to-double p5, p6

    float-to-double v0, p1

    invoke-static {p5, p6, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p5

    double-to-float p1, p5

    int-to-float p3, p3

    mul-float/2addr p3, p1

    .line 84
    invoke-virtual {p2, p3}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->setMaxSize(F)V

    .line 85
    iget-object p2, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->maxSizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-interface {p4, p1}, Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;->getDisplayValue(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$5$com-brakefield-painter-brushes-settings-StrokeSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p2, p3

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p2, p4

    .line 92
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->setSmoothness(F)V

    .line 93
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->smoothnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "%"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$6$com-brakefield-painter-brushes-settings-StrokeSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p2, p3

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p2, p4

    .line 100
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->setAdhesion(F)V

    .line 101
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->adhesionSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "%"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$7$com-brakefield-painter-brushes-settings-StrokeSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p2, p3

    const/high16 p4, 0x43480000    # 200.0f

    div-float/2addr p2, p4

    .line 108
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->setWetEdges(F)V

    .line 109
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->wetEdgesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "%"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$8$com-brakefield-painter-brushes-settings-StrokeSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p2, p3

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p2, p4

    .line 170
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->setBlendingModeIntensity(F)V

    .line 171
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->blendingModeIntensitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "%"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$9$com-brakefield-painter-brushes-settings-StrokeSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p2, p3

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p2, p4

    .line 178
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->setGlazeStrokes(F)V

    .line 179
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->glazeStrokesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "%"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method
