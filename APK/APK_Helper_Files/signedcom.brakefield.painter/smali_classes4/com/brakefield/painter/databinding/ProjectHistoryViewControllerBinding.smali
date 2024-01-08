.class public final Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;
.super Ljava/lang/Object;
.source "ProjectHistoryViewControllerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final blurView:Lcom/brakefield/infinitestudio/ui/blurview/BlurView;

.field public final cancelButton:Landroid/widget/Button;

.field public final carouselView:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

.field public final deleteButton:Landroid/widget/Button;

.field public final restoreButton:Landroid/widget/Button;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/blurview/BlurView;Landroid/widget/Button;Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;Landroid/widget/Button;Landroid/widget/Button;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 48
    iput-object p2, p0, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->blurView:Lcom/brakefield/infinitestudio/ui/blurview/BlurView;

    .line 49
    iput-object p3, p0, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->cancelButton:Landroid/widget/Button;

    .line 50
    iput-object p4, p0, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->carouselView:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    .line 51
    iput-object p5, p0, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->deleteButton:Landroid/widget/Button;

    .line 52
    iput-object p6, p0, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->restoreButton:Landroid/widget/Button;

    .line 53
    iput-object p7, p0, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;
    .locals 10

    const v0, 0x7f0a00b9

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/brakefield/infinitestudio/ui/blurview/BlurView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a00f3

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    const v0, 0x7f0a00fc

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0191

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_0

    const v0, 0x7f0a04b5

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0635

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v9, :cond_0

    .line 119
    new-instance v0, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/blurview/BlurView;Landroid/widget/Button;Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;Landroid/widget/Button;Landroid/widget/Button;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V

    return-object v0

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 123
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;
    .locals 2

    const v0, 0x7f0d0110

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
