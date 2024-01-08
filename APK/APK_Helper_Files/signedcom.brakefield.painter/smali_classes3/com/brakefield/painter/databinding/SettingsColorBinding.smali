.class public final Lcom/brakefield/painter/databinding/SettingsColorBinding;
.super Ljava/lang/Object;
.source "SettingsColorBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cmykTab:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final colorModeTabs:Landroid/widget/LinearLayout;

.field public final colorSettings:Landroid/widget/LinearLayout;

.field public final colorSettingsSection:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final colorSlidersCmyk:Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;

.field public final colorSlidersHsb:Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;

.field public final colorSlidersLab:Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;

.field public final colorSlidersRgb:Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;

.field public final eyedropperSampleSizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final eyedropperSettingsSection:Landroid/widget/LinearLayout;

.field public final hexadecimalValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final hsbTab:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final labTab:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final rgbTab:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->rootView:Landroid/widget/LinearLayout;

    .line 78
    iput-object p2, p0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->cmykTab:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 79
    iput-object p3, p0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->colorModeTabs:Landroid/widget/LinearLayout;

    .line 80
    iput-object p4, p0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->colorSettings:Landroid/widget/LinearLayout;

    .line 81
    iput-object p5, p0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->colorSettingsSection:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 82
    iput-object p6, p0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->colorSlidersCmyk:Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;

    .line 83
    iput-object p7, p0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->colorSlidersHsb:Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;

    .line 84
    iput-object p8, p0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->colorSlidersLab:Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;

    .line 85
    iput-object p9, p0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->colorSlidersRgb:Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;

    .line 86
    iput-object p10, p0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->eyedropperSampleSizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    .line 87
    iput-object p11, p0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->eyedropperSettingsSection:Landroid/widget/LinearLayout;

    .line 88
    iput-object p12, p0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->hexadecimalValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 89
    iput-object p13, p0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->hsbTab:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 90
    iput-object p14, p0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->labTab:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 91
    iput-object p15, p0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->rgbTab:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/SettingsColorBinding;
    .locals 19

    move-object/from16 v0, p0

    const v1, 0x7f0a0122

    .line 122
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v5, :cond_0

    const v1, 0x7f0a012b

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 133
    move-object v7, v0

    check-cast v7, Landroid/widget/LinearLayout;

    const v1, 0x7f0a013b

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_0

    const v1, 0x7f0a013d

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 146
    invoke-static {v2}, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;

    move-result-object v9

    const v1, 0x7f0a013e

    .line 149
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 153
    invoke-static {v2}, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;

    move-result-object v10

    const v1, 0x7f0a013f

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 160
    invoke-static {v2}, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;

    move-result-object v11

    const v1, 0x7f0a0140

    .line 163
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 167
    invoke-static {v2}, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;

    move-result-object v12

    const v1, 0x7f0a0224

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v13, :cond_0

    const v1, 0x7f0a0225

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_0

    const v1, 0x7f0a02a2

    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a02af

    .line 188
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0a02f8

    .line 194
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v17, :cond_0

    const v1, 0x7f0a04b8

    .line 200
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v18, :cond_0

    .line 205
    new-instance v0, Lcom/brakefield/painter/databinding/SettingsColorBinding;

    move-object v3, v0

    move-object v4, v7

    invoke-direct/range {v3 .. v18}, Lcom/brakefield/painter/databinding/SettingsColorBinding;-><init>(Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V

    return-object v0

    .line 210
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/SettingsColorBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/SettingsColorBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/SettingsColorBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/SettingsColorBinding;
    .locals 2

    const v0, 0x7f0d012f

    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 110
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 112
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/SettingsColorBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/SettingsColorBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/SettingsColorBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
