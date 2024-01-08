.class public final Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;
.super Ljava/lang/Object;
.source "ColorSettingsCmykXBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final blackLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final blackSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

.field public final blackSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final cyanLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final cyanSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

.field public final cyanSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final magentaLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final magentaSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

.field public final magentaSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final yellowLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final yellowSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

.field public final yellowSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/color/GradientSeek;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/color/GradientSeek;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/color/GradientSeek;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/color/GradientSeek;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 67
    iput-object p2, p0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->blackLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 68
    iput-object p3, p0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->blackSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    .line 69
    iput-object p4, p0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->blackSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 70
    iput-object p5, p0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->cyanLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 71
    iput-object p6, p0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->cyanSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    .line 72
    iput-object p7, p0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->cyanSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 73
    iput-object p8, p0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->magentaLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 74
    iput-object p9, p0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->magentaSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    .line 75
    iput-object p10, p0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->magentaSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 76
    iput-object p11, p0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->yellowLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 77
    iput-object p12, p0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->yellowSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    .line 78
    iput-object p13, p0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->yellowSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;
    .locals 17

    move-object/from16 v0, p0

    const v1, 0x7f0a0089

    .line 109
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v5, :cond_0

    const v1, 0x7f0a008a

    .line 115
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-eqz v6, :cond_0

    const v1, 0x7f0a008b

    .line 121
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v7, :cond_0

    const v1, 0x7f0a0184

    .line 127
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v8, :cond_0

    const v1, 0x7f0a0185

    .line 133
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-eqz v9, :cond_0

    const v1, 0x7f0a0186

    .line 139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v10, :cond_0

    const v1, 0x7f0a0357

    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v11, :cond_0

    const v1, 0x7f0a0358

    .line 151
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-eqz v12, :cond_0

    const v1, 0x7f0a0359

    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v13, :cond_0

    const v1, 0x7f0a06c3

    .line 163
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v14, :cond_0

    const v1, 0x7f0a06c4

    .line 169
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-eqz v15, :cond_0

    const v1, 0x7f0a06c5

    .line 175
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v16, :cond_0

    .line 180
    new-instance v1, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/color/GradientSeek;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/color/GradientSeek;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/color/GradientSeek;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/color/GradientSeek;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V

    return-object v1

    .line 184
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;
    .locals 2

    const v0, 0x7f0d004f

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
