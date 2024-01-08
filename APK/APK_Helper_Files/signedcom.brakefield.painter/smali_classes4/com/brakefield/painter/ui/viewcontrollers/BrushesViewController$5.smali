.class Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$5;
.super Lcom/brakefield/painter/brushes/BrushPackManager$BrushPackCollectionViewDelegate;
.source "BrushesViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->setupFolderCollection(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/painter/brushes/BrushPackManager$BrushPackCollectionViewDelegate<",
        "Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

.field final synthetic val$res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Landroid/content/res/Resources;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$5;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$5;->val$res:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/brakefield/painter/brushes/BrushPackManager$BrushPackCollectionViewDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public addSections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;)V
    .locals 3

    .line 423
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFoldersSection;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$5;->val$res:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$5;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-static {v2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/brakefield/painter/brushes/BrushPackManager;->getFolders()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFoldersSection;-><init>(Landroid/content/res/Resources;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    return-void
.end method

.method public getCurrentBrushFolder()Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$5;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/brushes/BrushPackManager;->getSelectedFolder()Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V
    .locals 0

    .line 427
    instance-of p1, p3, Lcom/brakefield/painter/brushes/brushfolders/CreateNewFolder;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$5;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$200(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$600(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Landroid/content/Context;)V

    goto :goto_0

    .line 428
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$5;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/brakefield/painter/brushes/BrushPackManager;->isSelectedFolder(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 429
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$5;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/brakefield/painter/brushes/BrushPackManager;->selectFolder(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V

    .line 430
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$5;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$700(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 416
    check-cast p3, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$5;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V

    return-void
.end method

.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)Z
    .locals 1

    .line 435
    instance-of p1, p3, Lcom/brakefield/painter/brushes/brushfolders/CreateNewFolder;

    if-nez p1, :cond_0

    .line 436
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$5;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-static {p1, p3, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$800(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;Landroid/view/View;)V

    .line 437
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$5;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderDragView;

    invoke-direct {v0, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderDragView;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$502(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 416
    check-cast p3, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$5;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)Z

    move-result p1

    return p1
.end method
