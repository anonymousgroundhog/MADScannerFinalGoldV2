.class public final Lcom/brakefield/painter/databinding/ActivityResourcesBinding;
.super Ljava/lang/Object;
.source "ActivityResourcesBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final emptyText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/brakefield/painter/databinding/ActivityResourcesBinding;->rootView:Landroid/view/View;

    .line 30
    iput-object p2, p0, Lcom/brakefield/painter/databinding/ActivityResourcesBinding;->emptyText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 31
    iput-object p3, p0, Lcom/brakefield/painter/databinding/ActivityResourcesBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ActivityResourcesBinding;
    .locals 3

    const v0, 0x7f0a01e3

    .line 57
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v1, :cond_0

    const v0, 0x7f0a0496

    .line 63
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 68
    new-instance v0, Lcom/brakefield/painter/databinding/ActivityResourcesBinding;

    invoke-direct {v0, p0, v1, v2}, Lcom/brakefield/painter/databinding/ActivityResourcesBinding;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object v0

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 71
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/brakefield/painter/databinding/ActivityResourcesBinding;
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0d0029

    .line 46
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    invoke-static {p1}, Lcom/brakefield/painter/databinding/ActivityResourcesBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ActivityResourcesBinding;

    move-result-object p0

    return-object p0

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "parent"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/brakefield/painter/databinding/ActivityResourcesBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
