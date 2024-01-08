.class Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$1;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.source "ActivityBrushes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
        "Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;

.field final synthetic val$res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;Landroid/content/res/Resources;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$1;->this$0:Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;

    iput-object p2, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$1;->val$res:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemLongClick$0(Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 148
    new-instance p2, Lcom/brakefield/infinitestudio/account/UserFunctions$AdminDeleteBrush;

    iget-object p3, p1, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;->id:Ljava/lang/String;

    invoke-direct {p2, p3}, Lcom/brakefield/infinitestudio/account/UserFunctions$AdminDeleteBrush;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/brakefield/infinitestudio/account/UserFunctions;->callAsync(Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;)V

    .line 149
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$1;->this$0:Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;

    iget-object p2, p2, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;->brushes:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 150
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$1;->this$0:Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;

    iget-object p1, p1, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;->viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    return-void
.end method


# virtual methods
.method public addSections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;)V
    .locals 3

    .line 133
    new-instance v0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushesSection;

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$1;->val$res:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$1;->this$0:Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;

    iget-object v2, v2, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;->brushes:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushesSection;-><init>(Landroid/content/res/Resources;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    return-void
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;)V
    .locals 1

    .line 137
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ".json"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 138
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getDownloadBrushesPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/brakefield/infinitestudio/FileManager;->fileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 139
    new-instance p2, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$DownloadBrushTask;

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$1;->this$0:Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;

    invoke-direct {p2, v0, p3, p1}, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$DownloadBrushTask;-><init>(Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Void;

    invoke-virtual {p2, p1, p3}, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$DownloadBrushTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public bridge synthetic onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 130
    check-cast p3, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$1;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;)V

    return-void
.end method

.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 130
    check-cast p3, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$1;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;)Z

    move-result p1

    return p1
.end method
