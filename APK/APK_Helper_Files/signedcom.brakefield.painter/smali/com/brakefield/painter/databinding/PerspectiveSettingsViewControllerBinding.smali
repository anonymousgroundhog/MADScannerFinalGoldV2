.class public final Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;
.super Ljava/lang/Object;
.source "PerspectiveSettingsViewControllerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final gridButton:Landroid/widget/FrameLayout;

.field public final gridImage:Landroid/widget/ImageView;

.field public final lockButton:Landroid/widget/FrameLayout;

.field public final lockImage:Landroid/widget/ImageView;

.field public final resetButton:Landroid/widget/FrameLayout;

.field public final resetImage:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final snapButton:Landroid/widget/FrameLayout;

.field public final snapImage:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->rootView:Landroid/widget/LinearLayout;

    .line 53
    iput-object p2, p0, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->gridButton:Landroid/widget/FrameLayout;

    .line 54
    iput-object p3, p0, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->gridImage:Landroid/widget/ImageView;

    .line 55
    iput-object p4, p0, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->lockButton:Landroid/widget/FrameLayout;

    .line 56
    iput-object p5, p0, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->lockImage:Landroid/widget/ImageView;

    .line 57
    iput-object p6, p0, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->resetButton:Landroid/widget/FrameLayout;

    .line 58
    iput-object p7, p0, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->resetImage:Landroid/widget/ImageView;

    .line 59
    iput-object p8, p0, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->snapButton:Landroid/widget/FrameLayout;

    .line 60
    iput-object p9, p0, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->snapImage:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;
    .locals 12

    const v0, 0x7f0a0278

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0279

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0339

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    const v0, 0x7f0a033a

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a04ab

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    const v0, 0x7f0a04ac

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a0584

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0585

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    .line 138
    new-instance v0, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V

    return-object v0

    .line 141
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 142
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;
    .locals 2

    const v0, 0x7f0d010a

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/brakefield/painter/databinding/PerspectiveSettingsViewControllerBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
