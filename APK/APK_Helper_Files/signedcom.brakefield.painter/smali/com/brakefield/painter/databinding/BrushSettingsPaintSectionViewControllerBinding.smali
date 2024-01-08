.class public final Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;
.super Ljava/lang/Object;
.source "BrushSettingsPaintSectionViewControllerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final blendBlurSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final blendFlowSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final blendPullSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final dilutionDynamics:Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;

.field public final jitterContinuousBrightnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final jitterContinuousHueSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final jitterContinuousSaturationSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final jitterInitialBrightnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final jitterInitialHueSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final jitterInitialSaturationSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final mixAmountSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final mixDilutionSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final paintBlendSection:Landroid/widget/LinearLayout;

.field public final paintDynamicsSection:Landroid/widget/LinearLayout;

.field public final paintJitterSection:Landroid/widget/LinearLayout;

.field public final paintMixSection:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final sampleBottomLayersToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

.field public final wetPaintToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;)V
    .locals 2

    move-object v0, p0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 93
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->rootView:Landroid/widget/FrameLayout;

    move-object v1, p2

    .line 94
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->blendBlurSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    move-object v1, p3

    .line 95
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->blendFlowSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    move-object v1, p4

    .line 96
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->blendPullSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    move-object v1, p5

    .line 97
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->dilutionDynamics:Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;

    move-object v1, p6

    .line 98
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->jitterContinuousBrightnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    move-object v1, p7

    .line 99
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->jitterContinuousHueSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    move-object v1, p8

    .line 100
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->jitterContinuousSaturationSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    move-object v1, p9

    .line 101
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->jitterInitialBrightnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    move-object v1, p10

    .line 102
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->jitterInitialHueSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    move-object v1, p11

    .line 103
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->jitterInitialSaturationSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    move-object v1, p12

    .line 104
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->mixAmountSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    move-object v1, p13

    .line 105
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->mixDilutionSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    move-object/from16 v1, p14

    .line 106
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->paintBlendSection:Landroid/widget/LinearLayout;

    move-object/from16 v1, p15

    .line 107
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->paintDynamicsSection:Landroid/widget/LinearLayout;

    move-object/from16 v1, p16

    .line 108
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->paintJitterSection:Landroid/widget/LinearLayout;

    move-object/from16 v1, p17

    .line 109
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->paintMixSection:Landroid/widget/LinearLayout;

    move-object/from16 v1, p18

    .line 110
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->sampleBottomLayersToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    move-object/from16 v1, p19

    .line 111
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->wetPaintToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;
    .locals 23

    move-object/from16 v0, p0

    const v1, 0x7f0a008d

    .line 143
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f0a0090

    .line 149
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v6, :cond_0

    const v1, 0x7f0a00b1

    .line 155
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v7, :cond_0

    const v1, 0x7f0a01a4

    .line 161
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 165
    invoke-static {v2}, Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;

    move-result-object v8

    const v1, 0x7f0a02e0

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v9, :cond_0

    const v1, 0x7f0a02e2

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v10, :cond_0

    const v1, 0x7f0a02e4

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v11, :cond_0

    const v1, 0x7f0a02e9

    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v12, :cond_0

    const v1, 0x7f0a02ea

    .line 192
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v13, :cond_0

    const v1, 0x7f0a02ec

    .line 198
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v14, :cond_0

    const v1, 0x7f0a0397

    .line 204
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v15, :cond_0

    const v1, 0x7f0a0398

    .line 210
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v16, :cond_0

    const v1, 0x7f0a040b

    .line 216
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/LinearLayout;

    if-eqz v17, :cond_0

    const v1, 0x7f0a040d

    .line 222
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/LinearLayout;

    if-eqz v18, :cond_0

    const v1, 0x7f0a040f

    .line 228
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/LinearLayout;

    if-eqz v19, :cond_0

    const v1, 0x7f0a0410

    .line 234
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/LinearLayout;

    if-eqz v20, :cond_0

    const v1, 0x7f0a04cc

    .line 240
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    if-eqz v21, :cond_0

    const v1, 0x7f0a06b2

    .line 246
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    if-eqz v22, :cond_0

    .line 251
    new-instance v1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-direct/range {v3 .. v22}, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;-><init>(Landroid/widget/FrameLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;)V

    return-object v1

    .line 259
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 260
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 123
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;
    .locals 2

    const v0, 0x7f0d003b

    const/4 v1, 0x0

    .line 129
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 131
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 133
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
