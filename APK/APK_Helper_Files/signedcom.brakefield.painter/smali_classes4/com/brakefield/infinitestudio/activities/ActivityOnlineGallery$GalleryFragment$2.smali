.class Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment$2;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.source "ActivityOnlineGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
        "Lcom/brakefield/infinitestudio/image/ImageBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;

.field final synthetic val$res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;Landroid/content/res/Resources;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment$2;->this$0:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment$2;->val$res:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public addSections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;)V
    .locals 3

    .line 172
    new-instance v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment$ImagesSection;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment$2;->val$res:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment$2;->this$0:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;

    iget-object v2, v2, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->list:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment$ImagesSection;-><init>(Landroid/content/res/Resources;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    return-void
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/image/ImageBean;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 169
    check-cast p3, Lcom/brakefield/infinitestudio/image/ImageBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment$2;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/image/ImageBean;)V

    return-void
.end method

.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/image/ImageBean;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 169
    check-cast p3, Lcom/brakefield/infinitestudio/image/ImageBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment$2;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/image/ImageBean;)Z

    move-result p1

    return p1
.end method
