.class Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;
.super Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;
.source "BrushesViewController.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;
.implements Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterDropContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BrushFolderSectionedRecyclerViewAdapter"
.end annotation


# instance fields
.field private saveChanges:Z

.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;-><init>()V

    const/4 p1, 0x0

    .line 352
    iput-boolean p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;->saveChanges:Z

    return-void
.end method


# virtual methods
.method public onItemDragEnded(Ljava/lang/Object;Landroid/graphics/Rect;II)V
    .locals 0

    .line 360
    iget-boolean p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;->saveChanges:Z

    if-eqz p1, :cond_0

    .line 361
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/BrushPackManager;->save()V

    :cond_0
    return-void
.end method

.method public onItemDragStarted()V
    .locals 1

    const/4 v0, 0x0

    .line 356
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;->saveChanges:Z

    return-void
.end method

.method public onItemDropped(Ljava/lang/Object;I)V
    .locals 1

    .line 392
    instance-of v0, p1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    if-nez v0, :cond_0

    return-void

    .line 393
    :cond_0
    invoke-virtual {p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;->getPositionInSection(I)I

    move-result p2

    .line 394
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/brushes/BrushPackManager;->getFolders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 395
    check-cast p1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->insert(Lcom/brakefield/painter/brushes/brushfolders/Brush;I)V

    .line 396
    invoke-virtual {p2}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->save()V

    return-void
.end method

.method public onItemInserted(Ljava/lang/Object;I)Z
    .locals 3

    .line 381
    instance-of v0, p1, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/brushes/BrushPackManager;->getFolders()Ljava/util/List;

    move-result-object v0

    .line 383
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    if-gez p2, :cond_2

    move p2, v1

    .line 385
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le p2, v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    .line 386
    :cond_3
    check-cast p1, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 387
    invoke-virtual {p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;->notifyItemInserted(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onItemMoved(II)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/brushes/BrushPackManager;->getFolders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 368
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onItemRemoved(Ljava/lang/Object;)V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/brushes/BrushPackManager;->getFolders()Ljava/util/List;

    move-result-object v0

    .line 373
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 375
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 376
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method
