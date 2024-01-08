.class public final Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;
.super Ljava/lang/Object;
.source "FillSettingsViewControllerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/LinearLayout;

.field public final titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final toleranceSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;->rootView:Landroid/widget/LinearLayout;

    .line 32
    iput-object p2, p0, Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 33
    iput-object p3, p0, Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;->toleranceSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;
    .locals 3

    const v0, 0x7f0a0635

    .line 64
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v1, :cond_0

    const v0, 0x7f0a063b

    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v2, :cond_0

    .line 75
    new-instance v0, Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0, v1, v2}, Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;-><init>(Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;)V

    return-object v0

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;
    .locals 2

    const v0, 0x7f0d008e

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/brakefield/painter/databinding/FillSettingsViewControllerBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
