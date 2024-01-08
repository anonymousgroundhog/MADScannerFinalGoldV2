.class public Lcom/brakefield/painter/fragments/HomeMainFragment;
.super Lcom/brakefield/painter/fragments/HomeTabFragment;
.source "HomeMainFragment.java"


# instance fields
.field binding:Lcom/brakefield/painter/databinding/HomePageBinding;

.field controller:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/brakefield/painter/fragments/HomeTabFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 16
    new-instance p1, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;

    invoke-direct {p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/fragments/HomeMainFragment;->controller:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;

    return-void
.end method

.method private updateGridTopPadding()V
    .locals 6

    .line 48
    iget-object v0, p0, Lcom/brakefield/painter/fragments/HomeMainFragment;->binding:Lcom/brakefield/painter/databinding/HomePageBinding;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, v0, Lcom/brakefield/painter/databinding/HomePageBinding;->collection:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 50
    iget-object v0, p0, Lcom/brakefield/painter/fragments/HomeMainFragment;->binding:Lcom/brakefield/painter/databinding/HomePageBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/HomePageBinding;->collection:Landroidx/recyclerview/widget/RecyclerView;

    iget v2, p0, Lcom/brakefield/painter/fragments/HomeMainFragment;->sidePadding:I

    iget v3, p0, Lcom/brakefield/painter/fragments/HomeMainFragment;->topPadding:I

    iget v4, p0, Lcom/brakefield/painter/fragments/HomeMainFragment;->sidePadding:I

    iget-object v5, p0, Lcom/brakefield/painter/fragments/HomeMainFragment;->binding:Lcom/brakefield/painter/databinding/HomePageBinding;

    iget-object v5, v5, Lcom/brakefield/painter/databinding/HomePageBinding;->collection:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 51
    iget-object v0, p0, Lcom/brakefield/painter/fragments/HomeMainFragment;->binding:Lcom/brakefield/painter/databinding/HomePageBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/HomePageBinding;->collection:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public animateFromEditor()V
    .locals 4

    .line 56
    invoke-virtual {p0}, Lcom/brakefield/painter/fragments/HomeMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/brakefield/painter/fragments/HomeMainFragment;->controller:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;

    iget-object v2, p0, Lcom/brakefield/painter/fragments/HomeMainFragment;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v3, p0, Lcom/brakefield/painter/fragments/HomeMainFragment;->binding:Lcom/brakefield/painter/databinding/HomePageBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/HomePageBinding;->collection:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0, v2, v3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->animateFromEditor(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public getIcon()I
    .locals 1

    const v0, 0x7f0804a1

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1200ea

    .line 24
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 6

    .line 34
    invoke-static {p1}, Lcom/brakefield/painter/databinding/HomePageBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/HomePageBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/fragments/HomeMainFragment;->binding:Lcom/brakefield/painter/databinding/HomePageBinding;

    .line 35
    iget-object v0, p0, Lcom/brakefield/painter/fragments/HomeMainFragment;->controller:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;

    invoke-virtual {p0}, Lcom/brakefield/painter/fragments/HomeMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/painter/fragments/HomeMainFragment;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object p1, p0, Lcom/brakefield/painter/fragments/HomeMainFragment;->binding:Lcom/brakefield/painter/databinding/HomePageBinding;

    iget-object v3, p1, Lcom/brakefield/painter/databinding/HomePageBinding;->collection:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Lcom/brakefield/painter/fragments/HomeMainFragment;->binding:Lcom/brakefield/painter/databinding/HomePageBinding;

    iget-object v4, p1, Lcom/brakefield/painter/databinding/HomePageBinding;->collectionGestures:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    iget-object v5, p0, Lcom/brakefield/painter/fragments/HomeMainFragment;->intentLaunchers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->setup(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/gestures/GestureLayout;Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)V

    .line 36
    invoke-direct {p0}, Lcom/brakefield/painter/fragments/HomeMainFragment;->updateGridTopPadding()V

    .line 37
    iget-object p1, p0, Lcom/brakefield/painter/fragments/HomeMainFragment;->binding:Lcom/brakefield/painter/databinding/HomePageBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/HomePageBinding;->getRoot()Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    move-result-object p1

    return-object p1
.end method

.method public refresh()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/brakefield/painter/fragments/HomeMainFragment;->controller:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->refresh()V

    return-void
.end method

.method public updatePadding(II)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/brakefield/painter/fragments/HomeMainFragment;->topPadding:I

    .line 43
    iput p2, p0, Lcom/brakefield/painter/fragments/HomeMainFragment;->sidePadding:I

    .line 44
    invoke-direct {p0}, Lcom/brakefield/painter/fragments/HomeMainFragment;->updateGridTopPadding()V

    return-void
.end method
