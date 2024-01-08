.class Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$2;
.super Lcom/brakefield/painter/brushes/BrushPackManager$BrushPackCollectionViewDelegate;
.source "BrushesViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->setupBrushCollection(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/painter/brushes/BrushPackManager$BrushPackCollectionViewDelegate<",
        "Lcom/brakefield/painter/brushes/brushfolders/Brush;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

.field final synthetic val$res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Landroid/content/res/Resources;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$2;->val$res:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/brakefield/painter/brushes/BrushPackManager$BrushPackCollectionViewDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public addSections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;)V
    .locals 3

    .line 239
    new-instance v0, Lcom/brakefield/painter/brushes/BrushPackManager$BrushesSection;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$2;->val$res:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-static {v2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/brakefield/painter/brushes/BrushPackManager;->getSelectedFolder()Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    move-result-object v2

    iget-object v2, v2, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->brushes:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/brakefield/painter/brushes/BrushPackManager$BrushesSection;-><init>(Landroid/content/res/Resources;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    return-void
.end method

.method public getCurrentBrushFolder()Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/brushes/BrushPackManager;->getSelectedFolder()Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/brushes/brushfolders/Brush;)V
    .locals 0

    .line 243
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-static {p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/brakefield/painter/brushes/BrushPackManager;->getCurrentBrush()Lcom/brakefield/painter/brushes/brushfolders/Brush;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$100(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopups()V

    goto :goto_0

    .line 245
    :cond_0
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-static {p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/brakefield/painter/brushes/BrushPackManager;->selectBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    .line 246
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->updatePreview()V

    .line 247
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 248
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$100(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-static {p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$200(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 232
    check-cast p3, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$2;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    return-void
.end method

.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/brushes/brushfolders/Brush;)Z
    .locals 1

    .line 253
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-static {p1, p3, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$300(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/painter/brushes/brushfolders/Brush;Landroid/view/View;)V

    .line 254
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$400(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushCollectionGestures:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 255
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushDragView;

    invoke-direct {v0, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushDragView;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->access$502(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 232
    check-cast p3, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$2;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/brushes/brushfolders/Brush;)Z

    move-result p1

    return p1
.end method
