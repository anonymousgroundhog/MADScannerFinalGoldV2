.class public final Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;
.super Ljava/lang/Object;
.source "SettingsBrushBleedBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bleedOutSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final dryoutSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final glazeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final mixAmountSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final settings:Landroid/widget/LinearLayout;

.field public final watercolorSettings:Landroid/widget/LinearLayout;

.field public final watercolorToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->rootView:Landroid/widget/LinearLayout;

    .line 50
    iput-object p2, p0, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->bleedOutSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    .line 51
    iput-object p3, p0, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->dryoutSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    .line 52
    iput-object p4, p0, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->glazeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    .line 53
    iput-object p5, p0, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->mixAmountSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    .line 54
    iput-object p6, p0, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->settings:Landroid/widget/LinearLayout;

    .line 55
    iput-object p7, p0, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->watercolorSettings:Landroid/widget/LinearLayout;

    .line 56
    iput-object p8, p0, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->watercolorToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;
    .locals 11

    const v0, 0x7f0a008c

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v4, :cond_0

    const v0, 0x7f0a01c2

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v5, :cond_0

    const v0, 0x7f0a026a

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0397

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0549

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 116
    move-object v9, p0

    check-cast v9, Landroid/widget/LinearLayout;

    const v0, 0x7f0a06ae

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    if-eqz v10, :cond_0

    .line 124
    new-instance p0, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;

    move-object v2, p0

    move-object v3, v9

    invoke-direct/range {v2 .. v10}, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;-><init>(Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;)V

    return-object p0

    .line 127
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 128
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;
    .locals 2

    const v0, 0x7f0d012b

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
