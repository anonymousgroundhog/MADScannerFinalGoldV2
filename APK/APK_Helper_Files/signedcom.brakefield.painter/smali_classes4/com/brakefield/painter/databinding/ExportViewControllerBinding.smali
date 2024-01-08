.class public final Lcom/brakefield/painter/databinding/ExportViewControllerBinding;
.super Ljava/lang/Object;
.source "ExportViewControllerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final backgroundToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

.field public final editName:Landroid/widget/EditText;

.field public final formatDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

.field public final projectHistoryToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

.field public final projectTimelapseToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

.field public final qualitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/EditText;Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->rootView:Landroid/widget/LinearLayout;

    .line 50
    iput-object p2, p0, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->backgroundToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    .line 51
    iput-object p3, p0, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->editName:Landroid/widget/EditText;

    .line 52
    iput-object p4, p0, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->formatDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    .line 53
    iput-object p5, p0, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->projectHistoryToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    .line 54
    iput-object p6, p0, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->projectTimelapseToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    .line 55
    iput-object p7, p0, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->qualitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ExportViewControllerBinding;
    .locals 10

    const v0, 0x7f0a0081

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    if-eqz v4, :cond_0

    const v0, 0x7f0a01d7

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/EditText;

    if-eqz v5, :cond_0

    const v0, 0x7f0a025e

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0468

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    if-eqz v7, :cond_0

    const v0, 0x7f0a046d

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0480

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v9, :cond_0

    .line 121
    new-instance v0, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;-><init>(Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/EditText;Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;)V

    return-object v0

    .line 124
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 125
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/ExportViewControllerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/ExportViewControllerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/ExportViewControllerBinding;
    .locals 2

    const v0, 0x7f0d008d

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 76
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ExportViewControllerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
