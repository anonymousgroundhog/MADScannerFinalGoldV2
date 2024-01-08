.class public Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;
.super Lcom/brakefield/infinitestudio/ui/TabFragment;
.source "ActivityOnlineGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GalleryFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment$ImagesSection;,
        Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment$ImageViewHolder;
    }
.end annotation


# instance fields
.field private binding:Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;

.field protected list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/ImageBean;",
            ">;"
        }
    .end annotation
.end field

.field protected scrollPageLoader:Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;

.field private viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController<",
            "Lcom/brakefield/infinitestudio/image/ImageBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 147
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/TabFragment;-><init>()V

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->list:Ljava/util/List;

    .line 144
    new-instance v0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    .line 148
    new-instance v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment$1;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment$1;-><init>(Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->scrollPageLoader:Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/ImageBean;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->list:Ljava/util/List;

    return-object v0
.end method

.method public getQueryURL(I)Ljava/lang/String;
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->scrollPageLoader:Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->getPageSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->getAppName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v2, v1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getArtworkURL(IIIZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected getUserIdForQuery()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hideProgress()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->binding:Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;->progress:Lcom/brakefield/infinitestudio/ui/CircleProgress;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/CircleProgress;->setVisibility(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 161
    invoke-static {p1}, Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->binding:Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;

    .line 163
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 166
    iget-object p3, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->binding:Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;

    iget-object p3, p3, Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;->grid:Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/brakefield/infinitestudio/R$dimen;->title_cover_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 167
    iget-object p3, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->binding:Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;

    iget-object p3, p3, Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 169
    iget-object p3, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->binding:Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment$2;

    invoke-direct {v2, p0, p2}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment$2;-><init>(Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;Landroid/content/res/Resources;)V

    invoke-virtual {p3, v0, v2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->setup(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 184
    iget-object p2, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    iget-object p3, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->scrollPageLoader:Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;

    invoke-virtual {p2, p3}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->setScrollPageLoader(Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;)V

    .line 186
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->populateGallery()V

    .line 188
    iget-object p2, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->list:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 189
    iget-object p2, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->scrollPageLoader:Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;

    invoke-virtual {p2, v1}, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->loadFirstPage(I)V

    :cond_0
    return-object p1
.end method

.method public populateGallery()V
    .locals 0

    return-void
.end method

.method protected refreshCollection()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    return-void
.end method

.method public showProgress()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->binding:Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;->progress:Lcom/brakefield/infinitestudio/ui/CircleProgress;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/CircleProgress;->setVisibility(I)V

    return-void
.end method
