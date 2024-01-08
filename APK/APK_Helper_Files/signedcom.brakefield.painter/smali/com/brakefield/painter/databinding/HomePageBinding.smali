.class public final Lcom/brakefield/painter/databinding/HomePageBinding;
.super Ljava/lang/Object;
.source "HomePageBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final collection:Landroidx/recyclerview/widget/RecyclerView;

.field public final collectionGestures:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

.field private final rootView:Lcom/brakefield/infinitestudio/gestures/GestureLayout;


# direct methods
.method private constructor <init>(Lcom/brakefield/infinitestudio/gestures/GestureLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/gestures/GestureLayout;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/brakefield/painter/databinding/HomePageBinding;->rootView:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    .line 31
    iput-object p2, p0, Lcom/brakefield/painter/databinding/HomePageBinding;->collection:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    iput-object p3, p0, Lcom/brakefield/painter/databinding/HomePageBinding;->collectionGestures:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/HomePageBinding;
    .locals 2

    const v0, 0x7f0a0124

    .line 63
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 68
    check-cast p0, Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    .line 70
    new-instance v0, Lcom/brakefield/painter/databinding/HomePageBinding;

    invoke-direct {v0, p0, v1, p0}, Lcom/brakefield/painter/databinding/HomePageBinding;-><init>(Lcom/brakefield/infinitestudio/gestures/GestureLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/gestures/GestureLayout;)V

    return-object v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/HomePageBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/HomePageBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/HomePageBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/HomePageBinding;
    .locals 2

    const v0, 0x7f0d009f

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/HomePageBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/HomePageBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/HomePageBinding;->getRoot()Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/brakefield/infinitestudio/gestures/GestureLayout;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/brakefield/painter/databinding/HomePageBinding;->rootView:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    return-object v0
.end method
