.class Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushSectionedRecyclerViewAdapter;
.super Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;
.source "BrushesViewController.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BrushSectionedRecyclerViewAdapter"
.end annotation


# instance fields
.field private saveChanges:Z

.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushSectionedRecyclerViewAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;-><init>()V

    const/4 p1, 0x0

    .line 305
    iput-boolean p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushSectionedRecyclerViewAdapter;->saveChanges:Z

    return-void
.end method


# virtual methods
.method public onItemDragEnded(Ljava/lang/Object;Landroid/graphics/Rect;II)V
    .locals 0

    .line 310
    iget-boolean p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushSectionedRecyclerViewAdapter;->saveChanges:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushSectionedRecyclerViewAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/BrushPackManager;->getSelectedFolder()Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->save()V

    :cond_0
    return-void
.end method

.method public onItemDragStarted()V
    .locals 1

    const/4 v0, 0x0

    .line 308
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushSectionedRecyclerViewAdapter;->saveChanges:Z

    return-void
.end method

.method public onItemInserted(Ljava/lang/Object;I)Z
    .locals 3

    .line 338
    instance-of v0, p1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushSectionedRecyclerViewAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/brushes/BrushPackManager;->getSelectedFolder()Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->brushes:Ljava/util/List;

    .line 340
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    if-gez p2, :cond_2

    move p2, v1

    .line 342
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le p2, v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    .line 343
    :cond_3
    check-cast p1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 344
    invoke-virtual {p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushSectionedRecyclerViewAdapter;->notifyItemInserted(I)V

    const/4 p1, 0x1

    .line 345
    iput-boolean p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushSectionedRecyclerViewAdapter;->saveChanges:Z

    return p1
.end method

.method public onItemMoved(II)V
    .locals 4

    .line 314
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushSectionedRecyclerViewAdapter;->getSectionForPosition(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    move-result-object v0

    .line 315
    new-instance v1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapterListUpdateCallback;

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushSectionedRecyclerViewAdapter;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapterListUpdateCallback;-><init>(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;)V

    .line 316
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushSectionedRecyclerViewAdapter;->getPositionInSection(I)I

    move-result v0

    .line 317
    invoke-virtual {p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushSectionedRecyclerViewAdapter;->getPositionInSection(I)I

    move-result v2

    .line 319
    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushSectionedRecyclerViewAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-static {v3}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/brakefield/painter/brushes/BrushPackManager;->getSelectedFolder()Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    move-result-object v3

    iget-object v3, v3, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->brushes:Ljava/util/List;

    .line 320
    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    .line 321
    invoke-interface {v3, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 323
    invoke-virtual {v1, v0, v2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapterListUpdateCallback;->onMoved(II)V

    const/4 p1, 0x1

    .line 324
    iput-boolean p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushSectionedRecyclerViewAdapter;->saveChanges:Z

    return-void
.end method

.method public onItemRemoved(Ljava/lang/Object;)V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushSectionedRecyclerViewAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/brushes/BrushPackManager;->getSelectedFolder()Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->brushes:Ljava/util/List;

    .line 329
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 331
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 332
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushSectionedRecyclerViewAdapter;->notifyItemRemoved(I)V

    const/4 p1, 0x1

    .line 333
    iput-boolean p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushSectionedRecyclerViewAdapter;->saveChanges:Z

    :cond_0
    return-void
.end method
