.class public abstract Lcom/brakefield/infinitestudio/activities/CollectionActivity;
.super Lcom/brakefield/infinitestudio/activities/MasterActivity;
.source "CollectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/brakefield/infinitestudio/activities/MasterActivity;"
    }
.end annotation


# instance fields
.field private binding:Lcom/brakefield/infinitestudio/databinding/CollectionActivityBinding;

.field private viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/MasterActivity;-><init>()V

    .line 18
    new-instance v0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/activities/CollectionActivity;->viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    return-void
.end method


# virtual methods
.method protected bindMainContent(Landroid/view/ViewGroup;)V
    .locals 2

    .line 22
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/CollectionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/databinding/CollectionActivityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/brakefield/infinitestudio/databinding/CollectionActivityBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/CollectionActivity;->binding:Lcom/brakefield/infinitestudio/databinding/CollectionActivityBinding;

    .line 23
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/CollectionActivity;->viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/databinding/CollectionActivityBinding;->collectionView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/CollectionActivity;->getCollectionViewControllerDelegate()Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->setup(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    return-void
.end method

.method protected getCollectionAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/CollectionActivity;->binding:Lcom/brakefield/infinitestudio/databinding/CollectionActivityBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/CollectionActivityBinding;->collectionView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method protected getCollectionViewController()Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController<",
            "TT;>;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/CollectionActivity;->viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    return-object v0
.end method

.method protected abstract getCollectionViewControllerDelegate()Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected getVisibleItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/CollectionActivity;->viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->getVisibleItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected refreshCollection()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/CollectionActivity;->viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    return-void
.end method

.method protected setScrollPageLoader(Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/CollectionActivity;->viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->setScrollPageLoader(Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;)V

    return-void
.end method
