.class public final Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;
.super Ljava/lang/Object;
.source "BrushSettingsSpecialSectionViewControllerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final filtersSection:Landroid/widget/FrameLayout;

.field public final filtersSettings:Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;

.field public final particleSettings:Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;

.field public final particlesSection:Landroid/widget/FrameLayout;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final screentoneSection:Landroid/widget/FrameLayout;

.field public final screentoneSettings:Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;

.field public final watercolorSection:Landroid/widget/FrameLayout;

.field public final watercolorSettings:Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;Landroid/widget/FrameLayout;Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->rootView:Landroid/widget/FrameLayout;

    .line 54
    iput-object p2, p0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->filtersSection:Landroid/widget/FrameLayout;

    .line 55
    iput-object p3, p0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->filtersSettings:Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;

    .line 56
    iput-object p4, p0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->particleSettings:Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;

    .line 57
    iput-object p5, p0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->particlesSection:Landroid/widget/FrameLayout;

    .line 58
    iput-object p6, p0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->screentoneSection:Landroid/widget/FrameLayout;

    .line 59
    iput-object p7, p0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->screentoneSettings:Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;

    .line 60
    iput-object p8, p0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->watercolorSection:Landroid/widget/FrameLayout;

    .line 61
    iput-object p9, p0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->watercolorSettings:Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;
    .locals 12

    const v0, 0x7f0a0241

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0242

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    invoke-static {v1}, Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;

    move-result-object v5

    const v0, 0x7f0a0420

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 110
    invoke-static {v1}, Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;

    move-result-object v6

    const v0, 0x7f0a0422

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    const v0, 0x7f0a04e2

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    const v0, 0x7f0a04e3

    .line 125
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    invoke-static {v1}, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;

    move-result-object v9

    const v0, 0x7f0a06ac

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_0

    const v0, 0x7f0a06ad

    .line 138
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    invoke-static {v1}, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;

    move-result-object v11

    .line 144
    new-instance v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;Landroid/widget/FrameLayout;Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;)V

    return-object v0

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 150
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;
    .locals 2

    const v0, 0x7f0d003c

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
