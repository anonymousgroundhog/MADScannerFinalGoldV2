.class public final Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;
.super Ljava/lang/Object;
.source "InterfaceSettingsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final card:Landroidx/cardview/widget/CardView;

.field public final colorHistoryStripToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

.field public final colorWheel:Landroid/widget/ImageView;

.field public final hideNavigationBarToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

.field public final interfaceSettings:Landroid/widget/FrameLayout;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final splitToolsMenuToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

.field public final theme1:Lcom/brakefield/infinitestudio/ui/ThemeButton;

.field public final theme2:Lcom/brakefield/infinitestudio/ui/ThemeButton;

.field public final theme3:Lcom/brakefield/infinitestudio/ui/ThemeButton;

.field public final uiScaleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroidx/cardview/widget/CardView;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/FrameLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Lcom/brakefield/infinitestudio/ui/ThemeButton;Lcom/brakefield/infinitestudio/ui/ThemeButton;Lcom/brakefield/infinitestudio/ui/ThemeButton;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->rootView:Landroid/widget/FrameLayout;

    .line 63
    iput-object p2, p0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->card:Landroidx/cardview/widget/CardView;

    .line 64
    iput-object p3, p0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->colorHistoryStripToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    .line 65
    iput-object p4, p0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->colorWheel:Landroid/widget/ImageView;

    .line 66
    iput-object p5, p0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->hideNavigationBarToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    .line 67
    iput-object p6, p0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->interfaceSettings:Landroid/widget/FrameLayout;

    .line 68
    iput-object p7, p0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->splitToolsMenuToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    .line 69
    iput-object p8, p0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->theme1:Lcom/brakefield/infinitestudio/ui/ThemeButton;

    .line 70
    iput-object p9, p0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->theme2:Lcom/brakefield/infinitestudio/ui/ThemeButton;

    .line 71
    iput-object p10, p0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->theme3:Lcom/brakefield/infinitestudio/ui/ThemeButton;

    .line 72
    iput-object p11, p0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->uiScaleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;
    .locals 14

    const v0, 0x7f0a00fb

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/cardview/widget/CardView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a012a

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0143

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a02a5

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    if-eqz v7, :cond_0

    .line 126
    move-object v8, p0

    check-cast v8, Landroid/widget/FrameLayout;

    const v0, 0x7f0a0595

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    if-eqz v9, :cond_0

    const v0, 0x7f0a061f

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/brakefield/infinitestudio/ui/ThemeButton;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0620

    .line 141
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/brakefield/infinitestudio/ui/ThemeButton;

    if-eqz v11, :cond_0

    const v0, 0x7f0a0621

    .line 147
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/brakefield/infinitestudio/ui/ThemeButton;

    if-eqz v12, :cond_0

    const v0, 0x7f0a0664

    .line 153
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v13, :cond_0

    .line 158
    new-instance p0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    move-object v2, p0

    move-object v3, v8

    invoke-direct/range {v2 .. v13}, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;-><init>(Landroid/widget/FrameLayout;Landroidx/cardview/widget/CardView;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/FrameLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Lcom/brakefield/infinitestudio/ui/ThemeButton;Lcom/brakefield/infinitestudio/ui/ThemeButton;Lcom/brakefield/infinitestudio/ui/ThemeButton;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;)V

    return-object p0

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 163
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;
    .locals 2

    const v0, 0x7f0d00a6

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
