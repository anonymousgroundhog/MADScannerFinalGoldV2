.class public final Lcom/brakefield/infinitestudio/databinding/ActivityHelpBinding;
.super Ljava/lang/Object;
.source "ActivityHelpBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final pageIndicators:Lcom/google/android/material/tabs/TabLayout;

.field public final root:Landroid/widget/FrameLayout;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final viewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/google/android/material/tabs/TabLayout;Landroid/widget/FrameLayout;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/brakefield/infinitestudio/databinding/ActivityHelpBinding;->rootView:Landroid/widget/FrameLayout;

    .line 35
    iput-object p2, p0, Lcom/brakefield/infinitestudio/databinding/ActivityHelpBinding;->pageIndicators:Lcom/google/android/material/tabs/TabLayout;

    .line 36
    iput-object p3, p0, Lcom/brakefield/infinitestudio/databinding/ActivityHelpBinding;->root:Landroid/widget/FrameLayout;

    .line 37
    iput-object p4, p0, Lcom/brakefield/infinitestudio/databinding/ActivityHelpBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/ActivityHelpBinding;
    .locals 4

    .line 67
    sget v0, Lcom/brakefield/infinitestudio/R$id;->page_indicators:I

    .line 68
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    if-eqz v1, :cond_1

    .line 73
    move-object v0, p0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 75
    sget v2, Lcom/brakefield/infinitestudio/R$id;->viewPager:I

    .line 76
    invoke-static {p0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v3, :cond_0

    .line 81
    new-instance p0, Lcom/brakefield/infinitestudio/databinding/ActivityHelpBinding;

    invoke-direct {p0, v0, v1, v0, v3}, Lcom/brakefield/infinitestudio/databinding/ActivityHelpBinding;-><init>(Landroid/widget/FrameLayout;Lcom/google/android/material/tabs/TabLayout;Landroid/widget/FrameLayout;Landroidx/viewpager2/widget/ViewPager2;)V

    return-object p0

    :cond_0
    move v0, v2

    .line 83
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/infinitestudio/databinding/ActivityHelpBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-static {p0, v0, v1}, Lcom/brakefield/infinitestudio/databinding/ActivityHelpBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/ActivityHelpBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/ActivityHelpBinding;
    .locals 2

    .line 54
    sget v0, Lcom/brakefield/infinitestudio/R$layout;->activity_help:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/brakefield/infinitestudio/databinding/ActivityHelpBinding;->bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/ActivityHelpBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/databinding/ActivityHelpBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/brakefield/infinitestudio/databinding/ActivityHelpBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
