.class public final Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;
.super Ljava/lang/Object;
.source "SettingsBrushPixelSnapBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final angleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final scaleWithSizeToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

.field public final screentoneSettings:Landroid/widget/LinearLayout;

.field public final screentoneToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

.field public final settings:Landroid/widget/LinearLayout;

.field public final spacingSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->rootView:Landroid/widget/LinearLayout;

    .line 46
    iput-object p2, p0, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->angleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    .line 47
    iput-object p3, p0, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->scaleWithSizeToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    .line 48
    iput-object p4, p0, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->screentoneSettings:Landroid/widget/LinearLayout;

    .line 49
    iput-object p5, p0, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->screentoneToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    .line 50
    iput-object p6, p0, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->settings:Landroid/widget/LinearLayout;

    .line 51
    iput-object p7, p0, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->spacingSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;
    .locals 10

    const v0, 0x7f0a0061

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v4, :cond_0

    const v0, 0x7f0a04dd

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    if-eqz v5, :cond_0

    .line 93
    move-object v6, p0

    check-cast v6, Landroid/widget/LinearLayout;

    const v0, 0x7f0a04e4

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0549

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0589

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v9, :cond_0

    .line 113
    new-instance p0, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;

    move-object v2, p0

    move-object v3, v6

    invoke-direct/range {v2 .. v9}, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;-><init>(Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;)V

    return-object p0

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;
    .locals 2

    const v0, 0x7f0d012e

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
