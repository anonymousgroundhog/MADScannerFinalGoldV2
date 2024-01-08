.class public final Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;
.super Ljava/lang/Object;
.source "ColorSettingsLabXBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final labALabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final labASlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

.field public final labASliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final labBLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final labBSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

.field public final labBSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final luminosityLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final luminositySlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

.field public final luminositySliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/color/GradientSeek;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/color/GradientSeek;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/color/GradientSeek;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 57
    iput-object p2, p0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labALabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 58
    iput-object p3, p0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labASlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    .line 59
    iput-object p4, p0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labASliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 60
    iput-object p5, p0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labBLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 61
    iput-object p6, p0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labBSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    .line 62
    iput-object p7, p0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labBSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 63
    iput-object p8, p0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->luminosityLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 64
    iput-object p9, p0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->luminositySlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    .line 65
    iput-object p10, p0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->luminositySliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;
    .locals 13

    const v0, 0x7f0a02f2

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a02f3

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-eqz v5, :cond_0

    const v0, 0x7f0a02f4

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a02f5

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a02f6

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-eqz v8, :cond_0

    const v0, 0x7f0a02f7

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a034b

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a034c

    .line 138
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-eqz v11, :cond_0

    const v0, 0x7f0a034d

    .line 144
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v12, :cond_0

    .line 149
    new-instance v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/color/GradientSeek;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/color/GradientSeek;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/color/GradientSeek;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V

    return-object v0

    .line 153
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 154
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;
    .locals 2

    const v0, 0x7f0d0051

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
