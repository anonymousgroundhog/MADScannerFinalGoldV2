.class public final Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;
.super Ljava/lang/Object;
.source "SymmetrySettingsViewControllerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final fanSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final planesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final symPreview:Lcom/brakefield/painter/ui/SymPreview;

.field public final symTypeK:Landroid/widget/ImageView;

.field public final symTypeR:Landroid/widget/ImageView;

.field public final symTypeX:Landroid/widget/ImageView;

.field public final symTypeY:Landroid/widget/ImageView;

.field public final symmetryClipButton:Landroid/widget/FrameLayout;

.field public final symmetryClipImage:Landroid/widget/ImageView;

.field public final symmetryLockButton:Landroid/widget/FrameLayout;

.field public final symmetryLockImage:Landroid/widget/ImageView;

.field public final symmetryResetButton:Landroid/widget/FrameLayout;

.field public final symmetryResetImage:Landroid/widget/ImageView;

.field public final symmetryText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/painter/ui/SymPreview;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->rootView:Landroid/widget/LinearLayout;

    .line 77
    iput-object p2, p0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->fanSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    .line 78
    iput-object p3, p0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->planesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    .line 79
    iput-object p4, p0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symPreview:Lcom/brakefield/painter/ui/SymPreview;

    .line 80
    iput-object p5, p0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symTypeK:Landroid/widget/ImageView;

    .line 81
    iput-object p6, p0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symTypeR:Landroid/widget/ImageView;

    .line 82
    iput-object p7, p0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symTypeX:Landroid/widget/ImageView;

    .line 83
    iput-object p8, p0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symTypeY:Landroid/widget/ImageView;

    .line 84
    iput-object p9, p0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symmetryClipButton:Landroid/widget/FrameLayout;

    .line 85
    iput-object p10, p0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symmetryClipImage:Landroid/widget/ImageView;

    .line 86
    iput-object p11, p0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symmetryLockButton:Landroid/widget/FrameLayout;

    .line 87
    iput-object p12, p0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symmetryLockImage:Landroid/widget/ImageView;

    .line 88
    iput-object p13, p0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symmetryResetButton:Landroid/widget/FrameLayout;

    .line 89
    iput-object p14, p0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symmetryResetImage:Landroid/widget/ImageView;

    .line 90
    iput-object p15, p0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->symmetryText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;
    .locals 19

    move-object/from16 v0, p0

    const v1, 0x7f0a0227

    .line 121
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f0a0447

    .line 127
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v6, :cond_0

    const v1, 0x7f0a05d4

    .line 133
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/brakefield/painter/ui/SymPreview;

    if-eqz v7, :cond_0

    const v1, 0x7f0a05d7

    .line 139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v1, 0x7f0a05d8

    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v1, 0x7f0a05d9

    .line 151
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v1, 0x7f0a05da

    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v1, 0x7f0a05df

    .line 163
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/FrameLayout;

    if-eqz v12, :cond_0

    const v1, 0x7f0a05e0

    .line 169
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    const v1, 0x7f0a05e1

    .line 175
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/FrameLayout;

    if-eqz v14, :cond_0

    const v1, 0x7f0a05e2

    .line 181
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/ImageView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a05e3

    .line 187
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/FrameLayout;

    if-eqz v16, :cond_0

    const v1, 0x7f0a05e4

    .line 193
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/ImageView;

    if-eqz v17, :cond_0

    const v1, 0x7f0a05e7

    .line 199
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v18, :cond_0

    .line 204
    new-instance v1, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v18}, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;-><init>(Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/painter/ui/SymPreview;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V

    return-object v1

    .line 209
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;
    .locals 2

    const v0, 0x7f0d0141

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 109
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 111
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/brakefield/painter/databinding/SymmetrySettingsViewControllerBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
