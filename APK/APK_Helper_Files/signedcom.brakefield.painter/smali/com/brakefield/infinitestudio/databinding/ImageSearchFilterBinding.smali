.class public final Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;
.super Ljava/lang/Object;
.source "ImageSearchFilterBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final imageSearchCategorySpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

.field public final imageSearchEditorsChoiceToggle:Lcom/brakefield/infinitestudio/ui/CustomSwitch;

.field public final imageSearchOrderSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

.field public final imageSearchOrientationSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

.field public final imageSearchTypeSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final safeSearchButton:Landroid/widget/Button;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;Lcom/brakefield/infinitestudio/ui/CustomSwitch;Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;Landroid/widget/Button;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->rootView:Landroid/widget/LinearLayout;

    .line 49
    iput-object p2, p0, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->imageSearchCategorySpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    .line 50
    iput-object p3, p0, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->imageSearchEditorsChoiceToggle:Lcom/brakefield/infinitestudio/ui/CustomSwitch;

    .line 51
    iput-object p4, p0, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->imageSearchOrderSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    .line 52
    iput-object p5, p0, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->imageSearchOrientationSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    .line 53
    iput-object p6, p0, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->imageSearchTypeSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    .line 54
    iput-object p7, p0, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->safeSearchButton:Landroid/widget/Button;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;
    .locals 10

    .line 84
    sget v0, Lcom/brakefield/infinitestudio/R$id;->image_search_category_spinner:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    if-eqz v4, :cond_0

    .line 90
    sget v0, Lcom/brakefield/infinitestudio/R$id;->image_search_editors_choice_toggle:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/brakefield/infinitestudio/ui/CustomSwitch;

    if-eqz v5, :cond_0

    .line 96
    sget v0, Lcom/brakefield/infinitestudio/R$id;->image_search_order_spinner:I

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    if-eqz v6, :cond_0

    .line 102
    sget v0, Lcom/brakefield/infinitestudio/R$id;->image_search_orientation_spinner:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    if-eqz v7, :cond_0

    .line 108
    sget v0, Lcom/brakefield/infinitestudio/R$id;->image_search_type_spinner:I

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    if-eqz v8, :cond_0

    .line 114
    sget v0, Lcom/brakefield/infinitestudio/R$id;->safe_search_button:I

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/Button;

    if-eqz v9, :cond_0

    .line 120
    new-instance v0, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;-><init>(Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;Lcom/brakefield/infinitestudio/ui/CustomSwitch;Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;Landroid/widget/Button;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-static {p0, v0, v1}, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;
    .locals 2

    .line 71
    sget v0, Lcom/brakefield/infinitestudio/R$layout;->image_search_filter:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    :cond_0
    invoke-static {p0}, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
