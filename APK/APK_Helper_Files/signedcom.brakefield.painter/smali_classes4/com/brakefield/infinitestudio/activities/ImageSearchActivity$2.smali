.class Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$2;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.source "ImageSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->getCollectionViewControllerDelegate()Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
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
.field final synthetic this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$2;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public addSections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;)V
    .locals 3

    .line 199
    new-instance v0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$ImagesSection;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$2;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$2;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-static {v2}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->access$000(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$ImagesSection;-><init>(Landroid/content/res/Resources;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    return-void
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/image/ImageBean;)V
    .locals 1

    .line 203
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$2;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->access$100(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$2;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->access$102(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;Z)Z

    .line 206
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$2;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->access$200(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$2;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->imageBean:Lcom/brakefield/infinitestudio/image/ImageBean;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$2;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->access$200(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$2;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->imageBean:Lcom/brakefield/infinitestudio/image/ImageBean;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 207
    :cond_1
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$2;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->access$200(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$2;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->imageBean:Lcom/brakefield/infinitestudio/image/ImageBean;

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 209
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$2;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->save()V

    .line 211
    new-instance p1, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$RetrieveImageTask;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$2;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-direct {p1, p2, p3}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$RetrieveImageTask;-><init>(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;Lcom/brakefield/infinitestudio/image/ImageBean;)V

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p3, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p2, p3}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$RetrieveImageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public bridge synthetic onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 196
    check-cast p3, Lcom/brakefield/infinitestudio/image/ImageBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$2;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/image/ImageBean;)V

    return-void
.end method

.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/image/ImageBean;)Z
    .locals 0

    .line 215
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$2;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->access$200(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 196
    check-cast p3, Lcom/brakefield/infinitestudio/image/ImageBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$2;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/image/ImageBean;)Z

    move-result p1

    return p1
.end method
