.class public final Lcom/brakefield/painter/databinding/AboutViewControllerBinding;
.super Ljava/lang/Object;
.source "AboutViewControllerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final appIcon:Landroid/widget/ImageView;

.field public final appLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final blurView:Lcom/brakefield/infinitestudio/ui/blurview/BlurView;

.field public final companyLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final content:Landroid/view/View;

.field public final infiniteLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final versionLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/blurview/BlurView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/view/View;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/brakefield/painter/databinding/AboutViewControllerBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 50
    iput-object p2, p0, Lcom/brakefield/painter/databinding/AboutViewControllerBinding;->appIcon:Landroid/widget/ImageView;

    .line 51
    iput-object p3, p0, Lcom/brakefield/painter/databinding/AboutViewControllerBinding;->appLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 52
    iput-object p4, p0, Lcom/brakefield/painter/databinding/AboutViewControllerBinding;->blurView:Lcom/brakefield/infinitestudio/ui/blurview/BlurView;

    .line 53
    iput-object p5, p0, Lcom/brakefield/painter/databinding/AboutViewControllerBinding;->companyLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 54
    iput-object p6, p0, Lcom/brakefield/painter/databinding/AboutViewControllerBinding;->content:Landroid/view/View;

    .line 55
    iput-object p7, p0, Lcom/brakefield/painter/databinding/AboutViewControllerBinding;->infiniteLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 56
    iput-object p8, p0, Lcom/brakefield/painter/databinding/AboutViewControllerBinding;->versionLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/AboutViewControllerBinding;
    .locals 11

    const v0, 0x7f0a0067

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0068

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a00b9

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/brakefield/infinitestudio/ui/blurview/BlurView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a014c

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a015d

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    const v0, 0x7f0a02cb

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a068b

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v10, :cond_0

    .line 128
    new-instance v0, Lcom/brakefield/painter/databinding/AboutViewControllerBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/brakefield/painter/databinding/AboutViewControllerBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/blurview/BlurView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/view/View;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V

    return-object v0

    .line 131
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 132
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/AboutViewControllerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/AboutViewControllerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/AboutViewControllerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/AboutViewControllerBinding;
    .locals 2

    const v0, 0x7f0d001d

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/AboutViewControllerBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/AboutViewControllerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/AboutViewControllerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/brakefield/painter/databinding/AboutViewControllerBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
