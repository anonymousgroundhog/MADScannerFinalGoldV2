.class public final Lcom/brakefield/painter/databinding/LiquifyToolbarBinding;
.super Ljava/lang/Object;
.source "LiquifyToolbarBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final liquifySettingsButton:Landroid/widget/ImageView;

.field public final liquifySizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

.field public final liquifySpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/SizePullButton;Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/brakefield/painter/databinding/LiquifyToolbarBinding;->rootView:Landroid/widget/LinearLayout;

    .line 37
    iput-object p2, p0, Lcom/brakefield/painter/databinding/LiquifyToolbarBinding;->liquifySettingsButton:Landroid/widget/ImageView;

    .line 38
    iput-object p3, p0, Lcom/brakefield/painter/databinding/LiquifyToolbarBinding;->liquifySizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

    .line 39
    iput-object p4, p0, Lcom/brakefield/painter/databinding/LiquifyToolbarBinding;->liquifySpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/LiquifyToolbarBinding;
    .locals 4

    const v0, 0x7f0a032d

    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const v0, 0x7f0a032e

    .line 76
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/ui/SizePullButton;

    if-eqz v2, :cond_0

    const v0, 0x7f0a0330

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    if-eqz v3, :cond_0

    .line 87
    new-instance v0, Lcom/brakefield/painter/databinding/LiquifyToolbarBinding;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/brakefield/painter/databinding/LiquifyToolbarBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/SizePullButton;Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;)V

    return-object v0

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/LiquifyToolbarBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/LiquifyToolbarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/LiquifyToolbarBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/LiquifyToolbarBinding;
    .locals 2

    const v0, 0x7f0d00b6

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/LiquifyToolbarBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/LiquifyToolbarBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/LiquifyToolbarBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/brakefield/painter/databinding/LiquifyToolbarBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
