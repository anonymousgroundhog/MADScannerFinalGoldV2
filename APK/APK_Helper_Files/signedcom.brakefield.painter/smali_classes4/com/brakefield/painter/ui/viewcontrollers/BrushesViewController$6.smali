.class Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$6;
.super Ljava/lang/Object;
.source "BrushesViewController.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DropHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->setupFolderCollection(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

.field final synthetic val$adapter:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 443
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$6;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$6;->val$adapter:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemDropped(Ljava/lang/Object;I)V
    .locals 3

    .line 450
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$6;->val$adapter:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;

    invoke-virtual {v0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;->getSectionForPosition(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;

    .line 451
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$6;->val$adapter:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;

    invoke-virtual {v1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;->getSectionItemViewType(I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$6;->val$adapter:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;

    invoke-virtual {v1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;->getPositionInSection(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 454
    invoke-virtual {v0}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->canDropInBrushes()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$6;->val$adapter:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;->onItemDropped(Ljava/lang/Object;I)V

    .line 457
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$6;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-static {p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$400(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushPresets:Landroidx/recyclerview/widget/RecyclerView;

    .line 458
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    check-cast p2, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushSectionedRecyclerViewAdapter;

    .line 459
    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushSectionedRecyclerViewAdapter;->onItemRemoved(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public shouldDrop(Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;Landroid/view/View;)Z
    .locals 0

    .line 446
    instance-of p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushDragView;

    return p1
.end method
