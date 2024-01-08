.class public final Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;
.super Ljava/lang/Object;
.source "BrushSettingsStrokeSectionViewControllerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final adhesionSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final blendingModeIntensitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final blendingModesDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

.field public final drawFillPreviewToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

.field public final flowProfileCurve:Lcom/brakefield/painter/databinding/ProfileCurveBinding;

.field public final glazeStrokesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final jitterContinuousSizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final maxSizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final opacitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final sizeDynamics:Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;

.field public final sizeProfileCurve:Lcom/brakefield/painter/databinding/ProfileCurveBinding;

.field public final sizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final smoothnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final strokeDynamicsSection:Landroid/widget/LinearLayout;

.field public final strokeFillSection:Landroid/widget/LinearLayout;

.field public final strokeJitterSection:Landroid/widget/LinearLayout;

.field public final strokeProfilesSection:Landroid/widget/LinearLayout;

.field public final strokeSettingsSection:Landroid/widget/LinearLayout;

.field public final tiltOffsetSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final wetEdgesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Lcom/brakefield/painter/databinding/ProfileCurveBinding;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;Lcom/brakefield/painter/databinding/ProfileCurveBinding;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;)V
    .locals 2

    move-object v0, p0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 100
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->rootView:Landroid/widget/FrameLayout;

    move-object v1, p2

    .line 101
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->adhesionSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    move-object v1, p3

    .line 102
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->blendingModeIntensitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    move-object v1, p4

    .line 103
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->blendingModesDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    move-object v1, p5

    .line 104
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->drawFillPreviewToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    move-object v1, p6

    .line 105
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->flowProfileCurve:Lcom/brakefield/painter/databinding/ProfileCurveBinding;

    move-object v1, p7

    .line 106
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->glazeStrokesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    move-object v1, p8

    .line 107
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->jitterContinuousSizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    move-object v1, p9

    .line 108
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->maxSizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    move-object v1, p10

    .line 109
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    move-object v1, p11

    .line 110
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->sizeDynamics:Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;

    move-object v1, p12

    .line 111
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->sizeProfileCurve:Lcom/brakefield/painter/databinding/ProfileCurveBinding;

    move-object v1, p13

    .line 112
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    move-object/from16 v1, p14

    .line 113
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->smoothnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    move-object/from16 v1, p15

    .line 114
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->strokeDynamicsSection:Landroid/widget/LinearLayout;

    move-object/from16 v1, p16

    .line 115
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->strokeFillSection:Landroid/widget/LinearLayout;

    move-object/from16 v1, p17

    .line 116
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->strokeJitterSection:Landroid/widget/LinearLayout;

    move-object/from16 v1, p18

    .line 117
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->strokeProfilesSection:Landroid/widget/LinearLayout;

    move-object/from16 v1, p19

    .line 118
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->strokeSettingsSection:Landroid/widget/LinearLayout;

    move-object/from16 v1, p20

    .line 119
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->tiltOffsetSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    move-object/from16 v1, p21

    .line 120
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->wetEdgesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;
    .locals 25

    move-object/from16 v0, p0

    const v1, 0x7f0a004f

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f0a00b2

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v6, :cond_0

    const v1, 0x7f0a00b3

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    if-eqz v7, :cond_0

    const v1, 0x7f0a01bc

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    if-eqz v8, :cond_0

    const v1, 0x7f0a025b

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 180
    invoke-static {v2}, Lcom/brakefield/painter/databinding/ProfileCurveBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ProfileCurveBinding;

    move-result-object v9

    const v1, 0x7f0a026b

    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v10, :cond_0

    const v1, 0x7f0a02e7

    .line 189
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v11, :cond_0

    const v1, 0x7f0a0387

    .line 195
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v12, :cond_0

    const v1, 0x7f0a03f8

    .line 201
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v13, :cond_0

    const v1, 0x7f0a0568

    .line 207
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 211
    invoke-static {v2}, Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;

    move-result-object v14

    const v1, 0x7f0a056a

    .line 214
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 218
    invoke-static {v2}, Lcom/brakefield/painter/databinding/ProfileCurveBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ProfileCurveBinding;

    move-result-object v15

    const v1, 0x7f0a056b

    .line 221
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v16, :cond_0

    const v1, 0x7f0a057f

    .line 227
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v17, :cond_0

    const v1, 0x7f0a05b4

    .line 233
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/LinearLayout;

    if-eqz v18, :cond_0

    const v1, 0x7f0a05b5

    .line 239
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/LinearLayout;

    if-eqz v19, :cond_0

    const v1, 0x7f0a05b7

    .line 245
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/LinearLayout;

    if-eqz v20, :cond_0

    const v1, 0x7f0a05b9

    .line 251
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/LinearLayout;

    if-eqz v21, :cond_0

    const v1, 0x7f0a05ba

    .line 257
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/LinearLayout;

    if-eqz v22, :cond_0

    const v1, 0x7f0a0626

    .line 263
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v23, :cond_0

    const v1, 0x7f0a06b1

    .line 269
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v24, :cond_0

    .line 274
    new-instance v1, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-direct/range {v3 .. v24}, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;-><init>(Landroid/widget/FrameLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Lcom/brakefield/painter/databinding/ProfileCurveBinding;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;Lcom/brakefield/painter/databinding/ProfileCurveBinding;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;)V

    return-object v1

    .line 281
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 132
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;
    .locals 2

    const v0, 0x7f0d003d

    const/4 v1, 0x0

    .line 138
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 140
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 142
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
