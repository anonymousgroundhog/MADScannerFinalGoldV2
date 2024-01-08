.class public Lcom/brakefield/painter/fragments/HomeProjectsFragment;
.super Lcom/brakefield/painter/fragments/HomeTabFragment;
.source "HomeProjectsFragment.java"


# instance fields
.field binding:Lcom/brakefield/painter/databinding/HomePageBinding;

.field controller:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/brakefield/painter/fragments/HomeTabFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 16
    new-instance p1, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    invoke-direct {p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->controller:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    return-void
.end method

.method private updateGridTopPadding()V
    .locals 5

    .line 48
    iget-object v0, p0, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->binding:Lcom/brakefield/painter/databinding/HomePageBinding;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, v0, Lcom/brakefield/painter/databinding/HomePageBinding;->collection:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 50
    iget-object v0, p0, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->binding:Lcom/brakefield/painter/databinding/HomePageBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/HomePageBinding;->collection:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->sidePadding:I

    iget v2, p0, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->topPadding:I

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->sidePadding:I

    iget-object v4, p0, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->binding:Lcom/brakefield/painter/databinding/HomePageBinding;

    iget-object v4, v4, Lcom/brakefield/painter/databinding/HomePageBinding;->collection:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public animateFromEditor()V
    .locals 4

    .line 63
    invoke-virtual {p0}, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->controller:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    iget-object v2, p0, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v3, p0, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->binding:Lcom/brakefield/painter/databinding/HomePageBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/HomePageBinding;->collection:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0, v2, v3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->animateFromEditor(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public createNewFolder()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->controller:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    invoke-virtual {p0}, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->createNewFolder(Landroid/app/Activity;)V

    return-void
.end method

.method public createNewProject(Landroid/view/View;)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->controller:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    invoke-virtual {p0}, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0, v1, v2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->createNewProject(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V

    return-void
.end method

.method public getIcon()I
    .locals 1

    const v0, 0x7f0804a4

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->controller:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 6

    .line 34
    invoke-static {p1}, Lcom/brakefield/painter/databinding/HomePageBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/HomePageBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->binding:Lcom/brakefield/painter/databinding/HomePageBinding;

    .line 35
    iget-object v0, p0, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->controller:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    invoke-virtual {p0}, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object p1, p0, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->binding:Lcom/brakefield/painter/databinding/HomePageBinding;

    iget-object v3, p1, Lcom/brakefield/painter/databinding/HomePageBinding;->collection:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->binding:Lcom/brakefield/painter/databinding/HomePageBinding;

    iget-object v4, p1, Lcom/brakefield/painter/databinding/HomePageBinding;->collectionGestures:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    iget-object v5, p0, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->intentLaunchers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->setup(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/gestures/GestureLayout;Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)V

    .line 36
    invoke-direct {p0}, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->updateGridTopPadding()V

    .line 37
    iget-object p1, p0, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->binding:Lcom/brakefield/painter/databinding/HomePageBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/HomePageBinding;->getRoot()Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    move-result-object p1

    return-object p1
.end method

.method public refresh()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->controller:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->refresh()V

    return-void
.end method

.method public updatePadding(II)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->topPadding:I

    .line 43
    iput p2, p0, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->sidePadding:I

    .line 44
    invoke-direct {p0}, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->updateGridTopPadding()V

    return-void
.end method
