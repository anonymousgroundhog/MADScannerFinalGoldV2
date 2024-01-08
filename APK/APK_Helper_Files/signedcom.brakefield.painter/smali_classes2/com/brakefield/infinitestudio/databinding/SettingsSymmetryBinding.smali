.class public final Lcom/brakefield/infinitestudio/databinding/SettingsSymmetryBinding;
.super Ljava/lang/Object;
.source "SettingsSymmetryBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final clipRow:Landroid/widget/TableRow;

.field public final clipToggle:Lcom/brakefield/infinitestudio/ui/CustomSwitch;

.field public final fanSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

.field public final fanSliderRow:Landroid/widget/TableRow;

.field public final fanSliderTextRow:Landroid/widget/TableRow;

.field public final fanSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final lockToggle:Lcom/brakefield/infinitestudio/ui/CustomSwitch;

.field public final planeSliderRow:Landroid/widget/TableRow;

.field public final planeSliderTextRow:Landroid/widget/TableRow;

.field public final planesSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

.field public final planesSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TableRow;Lcom/brakefield/infinitestudio/ui/CustomSwitch;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroid/widget/TableRow;Landroid/widget/TableRow;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/CustomSwitch;Landroid/widget/TableRow;Landroid/widget/TableRow;Lcom/brakefield/infinitestudio/ui/CustomSlider;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/brakefield/infinitestudio/databinding/SettingsSymmetryBinding;->rootView:Landroid/widget/LinearLayout;

    .line 65
    iput-object p2, p0, Lcom/brakefield/infinitestudio/databinding/SettingsSymmetryBinding;->clipRow:Landroid/widget/TableRow;

    .line 66
    iput-object p3, p0, Lcom/brakefield/infinitestudio/databinding/SettingsSymmetryBinding;->clipToggle:Lcom/brakefield/infinitestudio/ui/CustomSwitch;

    .line 67
    iput-object p4, p0, Lcom/brakefield/infinitestudio/databinding/SettingsSymmetryBinding;->fanSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    .line 68
    iput-object p5, p0, Lcom/brakefield/infinitestudio/databinding/SettingsSymmetryBinding;->fanSliderRow:Landroid/widget/TableRow;

    .line 69
    iput-object p6, p0, Lcom/brakefield/infinitestudio/databinding/SettingsSymmetryBinding;->fanSliderTextRow:Landroid/widget/TableRow;

    .line 70
    iput-object p7, p0, Lcom/brakefield/infinitestudio/databinding/SettingsSymmetryBinding;->fanSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 71
    iput-object p8, p0, Lcom/brakefield/infinitestudio/databinding/SettingsSymmetryBinding;->lockToggle:Lcom/brakefield/infinitestudio/ui/CustomSwitch;

    .line 72
    iput-object p9, p0, Lcom/brakefield/infinitestudio/databinding/SettingsSymmetryBinding;->planeSliderRow:Landroid/widget/TableRow;

    .line 73
    iput-object p10, p0, Lcom/brakefield/infinitestudio/databinding/SettingsSymmetryBinding;->planeSliderTextRow:Landroid/widget/TableRow;

    .line 74
    iput-object p11, p0, Lcom/brakefield/infinitestudio/databinding/SettingsSymmetryBinding;->planesSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    .line 75
    iput-object p12, p0, Lcom/brakefield/infinitestudio/databinding/SettingsSymmetryBinding;->planesSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/SettingsSymmetryBinding;
    .locals 15

    .line 105
    sget v0, Lcom/brakefield/infinitestudio/R$id;->clip_row:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TableRow;

    if-eqz v4, :cond_0

    .line 111
    sget v0, Lcom/brakefield/infinitestudio/R$id;->clip_toggle:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/brakefield/infinitestudio/ui/CustomSwitch;

    if-eqz v5, :cond_0

    .line 117
    sget v0, Lcom/brakefield/infinitestudio/R$id;->fan_slider:I

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/brakefield/infinitestudio/ui/CustomSlider;

    if-eqz v6, :cond_0

    .line 123
    sget v0, Lcom/brakefield/infinitestudio/R$id;->fan_slider_row:I

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TableRow;

    if-eqz v7, :cond_0

    .line 129
    sget v0, Lcom/brakefield/infinitestudio/R$id;->fan_slider_text_row:I

    .line 130
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TableRow;

    if-eqz v8, :cond_0

    .line 135
    sget v0, Lcom/brakefield/infinitestudio/R$id;->fan_slider_value:I

    .line 136
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v9, :cond_0

    .line 141
    sget v0, Lcom/brakefield/infinitestudio/R$id;->lock_toggle:I

    .line 142
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/brakefield/infinitestudio/ui/CustomSwitch;

    if-eqz v10, :cond_0

    .line 147
    sget v0, Lcom/brakefield/infinitestudio/R$id;->plane_slider_row:I

    .line 148
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TableRow;

    if-eqz v11, :cond_0

    .line 153
    sget v0, Lcom/brakefield/infinitestudio/R$id;->plane_slider_text_row:I

    .line 154
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TableRow;

    if-eqz v12, :cond_0

    .line 159
    sget v0, Lcom/brakefield/infinitestudio/R$id;->planes_slider:I

    .line 160
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/brakefield/infinitestudio/ui/CustomSlider;

    if-eqz v13, :cond_0

    .line 165
    sget v0, Lcom/brakefield/infinitestudio/R$id;->planes_slider_value:I

    .line 166
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v14, :cond_0

    .line 171
    new-instance v0, Lcom/brakefield/infinitestudio/databinding/SettingsSymmetryBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/brakefield/infinitestudio/databinding/SettingsSymmetryBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TableRow;Lcom/brakefield/infinitestudio/ui/CustomSwitch;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroid/widget/TableRow;Landroid/widget/TableRow;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/CustomSwitch;Landroid/widget/TableRow;Landroid/widget/TableRow;Lcom/brakefield/infinitestudio/ui/CustomSlider;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V

    return-object v0

    .line 175
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 176
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/infinitestudio/databinding/SettingsSymmetryBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-static {p0, v0, v1}, Lcom/brakefield/infinitestudio/databinding/SettingsSymmetryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/SettingsSymmetryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/SettingsSymmetryBinding;
    .locals 2

    .line 92
    sget v0, Lcom/brakefield/infinitestudio/R$layout;->settings_symmetry:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 94
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 96
    :cond_0
    invoke-static {p0}, Lcom/brakefield/infinitestudio/databinding/SettingsSymmetryBinding;->bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/SettingsSymmetryBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/databinding/SettingsSymmetryBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/brakefield/infinitestudio/databinding/SettingsSymmetryBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
