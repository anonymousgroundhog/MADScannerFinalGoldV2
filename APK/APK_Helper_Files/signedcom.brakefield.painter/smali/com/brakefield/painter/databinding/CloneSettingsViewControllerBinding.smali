.class public final Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;
.super Ljava/lang/Object;
.source "CloneSettingsViewControllerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final alignedSourceToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

.field public final artisticSettings:Landroid/widget/LinearLayout;

.field public final blurSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final completeStrokesToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

.field public final edgesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final mixInSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final modesDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

.field public final offsetSourceToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

.field public final pullSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final rotationSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final smartSettings:Landroid/widget/LinearLayout;

.field public final strokeLengthSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->rootView:Landroid/widget/LinearLayout;

    .line 68
    iput-object p2, p0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->alignedSourceToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    .line 69
    iput-object p3, p0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->artisticSettings:Landroid/widget/LinearLayout;

    .line 70
    iput-object p4, p0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->blurSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    .line 71
    iput-object p5, p0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->completeStrokesToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    .line 72
    iput-object p6, p0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->edgesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    .line 73
    iput-object p7, p0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->mixInSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    .line 74
    iput-object p8, p0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->modesDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    .line 75
    iput-object p9, p0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->offsetSourceToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    .line 76
    iput-object p10, p0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->pullSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    .line 77
    iput-object p11, p0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->rotationSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    .line 78
    iput-object p12, p0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->smartSettings:Landroid/widget/LinearLayout;

    .line 79
    iput-object p13, p0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->strokeLengthSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;
    .locals 17

    move-object/from16 v0, p0

    const v1, 0x7f0a005c

    .line 110
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f0a0070

    .line 116
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    const v1, 0x7f0a00b8

    .line 122
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v7, :cond_0

    const v1, 0x7f0a014f

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    if-eqz v8, :cond_0

    const v1, 0x7f0a01ce

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v9, :cond_0

    const v1, 0x7f0a0399

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v10, :cond_0

    const v1, 0x7f0a03a4

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    if-eqz v11, :cond_0

    const v1, 0x7f0a03f0

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    if-eqz v12, :cond_0

    const v1, 0x7f0a0477

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v13, :cond_0

    const v1, 0x7f0a04c7

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v14, :cond_0

    const v1, 0x7f0a057d

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/LinearLayout;

    if-eqz v15, :cond_0

    const v1, 0x7f0a05b8

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v16, :cond_0

    .line 181
    new-instance v1, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;-><init>(Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;)V

    return-object v1

    .line 186
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;
    .locals 2

    const v0, 0x7f0d0049

    const/4 v1, 0x0

    .line 96
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
