.class public final Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;
.super Ljava/lang/Object;
.source "BrushesViewControllerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final brushAdd:Landroid/widget/ImageView;

.field public final brushCard:Lcom/brakefield/painter/databinding/BrushCardBinding;

.field public final brushCollectionGestures:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

.field public final brushFavorite:Landroid/widget/ImageView;

.field public final brushFolders:Landroidx/recyclerview/widget/RecyclerView;

.field public final brushOptions:Landroid/widget/ImageView;

.field public final brushPresets:Landroidx/recyclerview/widget/RecyclerView;

.field public final brushSettings:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final showBrushFolders:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/brakefield/painter/databinding/BrushCardBinding;Lcom/brakefield/infinitestudio/gestures/GestureLayout;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->rootView:Landroid/widget/FrameLayout;

    .line 57
    iput-object p2, p0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushAdd:Landroid/widget/ImageView;

    .line 58
    iput-object p3, p0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushCard:Lcom/brakefield/painter/databinding/BrushCardBinding;

    .line 59
    iput-object p4, p0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushCollectionGestures:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    .line 60
    iput-object p5, p0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushFavorite:Landroid/widget/ImageView;

    .line 61
    iput-object p6, p0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushFolders:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    iput-object p7, p0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushOptions:Landroid/widget/ImageView;

    .line 63
    iput-object p8, p0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushPresets:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    iput-object p9, p0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushSettings:Landroid/widget/ImageView;

    .line 65
    iput-object p10, p0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->showBrushFolders:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;
    .locals 13

    const v0, 0x7f0a00cc

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a00cd

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    invoke-static {v1}, Lcom/brakefield/painter/databinding/BrushCardBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/BrushCardBinding;

    move-result-object v5

    const v0, 0x7f0a00ce

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    if-eqz v6, :cond_0

    const v0, 0x7f0a00cf

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a00d3

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a00d9

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a00da

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a00dc

    .line 139
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a0562

    .line 145
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    .line 150
    new-instance v0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/brakefield/painter/databinding/BrushCardBinding;Lcom/brakefield/infinitestudio/gestures/GestureLayout;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v0

    .line 154
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 155
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;
    .locals 2

    const v0, 0x7f0d0042

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
