.class public Lcom/brakefield/painter/fragments/HomeDiscoverFragment;
.super Lcom/brakefield/painter/fragments/HomeTabFragment;
.source "HomeDiscoverFragment.java"


# instance fields
.field binding:Lcom/brakefield/painter/databinding/HomePageBinding;

.field controller:Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/brakefield/painter/fragments/HomeTabFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 15
    new-instance p1, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;

    invoke-direct {p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/fragments/HomeDiscoverFragment;->controller:Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;

    return-void
.end method

.method private updateGridTopPadding()V
    .locals 5

    .line 47
    iget-object v0, p0, Lcom/brakefield/painter/fragments/HomeDiscoverFragment;->binding:Lcom/brakefield/painter/databinding/HomePageBinding;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, v0, Lcom/brakefield/painter/databinding/HomePageBinding;->collection:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 49
    iget-object v0, p0, Lcom/brakefield/painter/fragments/HomeDiscoverFragment;->binding:Lcom/brakefield/painter/databinding/HomePageBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/HomePageBinding;->collection:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/brakefield/painter/fragments/HomeDiscoverFragment;->sidePadding:I

    iget v2, p0, Lcom/brakefield/painter/fragments/HomeDiscoverFragment;->topPadding:I

    iget v3, p0, Lcom/brakefield/painter/fragments/HomeDiscoverFragment;->sidePadding:I

    iget-object v4, p0, Lcom/brakefield/painter/fragments/HomeDiscoverFragment;->binding:Lcom/brakefield/painter/databinding/HomePageBinding;

    iget-object v4, v4, Lcom/brakefield/painter/databinding/HomePageBinding;->collection:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    const v0, 0x7f08049f

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f120113

    .line 23
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    .line 33
    invoke-static {p1}, Lcom/brakefield/painter/databinding/HomePageBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/HomePageBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/fragments/HomeDiscoverFragment;->binding:Lcom/brakefield/painter/databinding/HomePageBinding;

    .line 34
    iget-object p1, p0, Lcom/brakefield/painter/fragments/HomeDiscoverFragment;->controller:Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;

    invoke-virtual {p0}, Lcom/brakefield/painter/fragments/HomeDiscoverFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/fragments/HomeDiscoverFragment;->binding:Lcom/brakefield/painter/databinding/HomePageBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/HomePageBinding;->collection:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;->setup(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 35
    invoke-direct {p0}, Lcom/brakefield/painter/fragments/HomeDiscoverFragment;->updateGridTopPadding()V

    .line 36
    iget-object p1, p0, Lcom/brakefield/painter/fragments/HomeDiscoverFragment;->binding:Lcom/brakefield/painter/databinding/HomePageBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/HomePageBinding;->getRoot()Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    move-result-object p1

    return-object p1
.end method

.method public updatePadding(II)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/brakefield/painter/fragments/HomeDiscoverFragment;->topPadding:I

    .line 42
    iput p2, p0, Lcom/brakefield/painter/fragments/HomeDiscoverFragment;->sidePadding:I

    .line 43
    invoke-direct {p0}, Lcom/brakefield/painter/fragments/HomeDiscoverFragment;->updateGridTopPadding()V

    return-void
.end method
