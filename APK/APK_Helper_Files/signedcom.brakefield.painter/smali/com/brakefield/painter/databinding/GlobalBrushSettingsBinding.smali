.class public final Lcom/brakefield/painter/databinding/GlobalBrushSettingsBinding;
.super Ljava/lang/Object;
.source "GlobalBrushSettingsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final card:Landroidx/cardview/widget/CardView;

.field public final drawCursorToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

.field public final globalBrushSettings:Landroid/widget/FrameLayout;

.field public final globalDynamics:Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final shapeDetectionToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroidx/cardview/widget/CardView;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/FrameLayout;Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/brakefield/painter/databinding/GlobalBrushSettingsBinding;->rootView:Landroid/widget/FrameLayout;

    .line 43
    iput-object p2, p0, Lcom/brakefield/painter/databinding/GlobalBrushSettingsBinding;->card:Landroidx/cardview/widget/CardView;

    .line 44
    iput-object p3, p0, Lcom/brakefield/painter/databinding/GlobalBrushSettingsBinding;->drawCursorToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    .line 45
    iput-object p4, p0, Lcom/brakefield/painter/databinding/GlobalBrushSettingsBinding;->globalBrushSettings:Landroid/widget/FrameLayout;

    .line 46
    iput-object p5, p0, Lcom/brakefield/painter/databinding/GlobalBrushSettingsBinding;->globalDynamics:Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;

    .line 47
    iput-object p6, p0, Lcom/brakefield/painter/databinding/GlobalBrushSettingsBinding;->shapeDetectionToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/GlobalBrushSettingsBinding;
    .locals 9

    const v0, 0x7f0a00fb

    .line 78
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/cardview/widget/CardView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a01bb

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    if-eqz v5, :cond_0

    .line 89
    move-object v6, p0

    check-cast v6, Landroid/widget/FrameLayout;

    const v0, 0x7f0a026e

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    invoke-static {v1}, Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;

    move-result-object v7

    const v0, 0x7f0a0551

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    if-eqz v8, :cond_0

    .line 104
    new-instance p0, Lcom/brakefield/painter/databinding/GlobalBrushSettingsBinding;

    move-object v2, p0

    move-object v3, v6

    invoke-direct/range {v2 .. v8}, Lcom/brakefield/painter/databinding/GlobalBrushSettingsBinding;-><init>(Landroid/widget/FrameLayout;Landroidx/cardview/widget/CardView;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/FrameLayout;Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;)V

    return-object p0

    .line 107
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 108
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/GlobalBrushSettingsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/GlobalBrushSettingsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/GlobalBrushSettingsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/GlobalBrushSettingsBinding;
    .locals 2

    const v0, 0x7f0d0095

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/GlobalBrushSettingsBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/GlobalBrushSettingsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/GlobalBrushSettingsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/brakefield/painter/databinding/GlobalBrushSettingsBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
