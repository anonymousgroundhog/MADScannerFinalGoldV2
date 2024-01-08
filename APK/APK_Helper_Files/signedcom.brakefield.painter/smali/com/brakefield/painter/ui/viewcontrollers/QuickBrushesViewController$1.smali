.class Lcom/brakefield/painter/ui/viewcontrollers/QuickBrushesViewController$1;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.source "QuickBrushesViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/QuickBrushesViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
        "Lcom/brakefield/painter/brushes/brushfolders/Brush;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/QuickBrushesViewController;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$folder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

.field final synthetic val$res:Landroid/content/res/Resources;

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/QuickBrushesViewController;Landroid/content/res/Resources;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/QuickBrushesViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/QuickBrushesViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/QuickBrushesViewController$1;->val$res:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/QuickBrushesViewController$1;->val$folder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    iput-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/QuickBrushesViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p5, p0, Lcom/brakefield/painter/ui/viewcontrollers/QuickBrushesViewController$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public addSections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;)V
    .locals 3

    .line 45
    new-instance v0, Lcom/brakefield/painter/brushes/BrushPackManager$BrushesSection;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/QuickBrushesViewController$1;->val$res:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/QuickBrushesViewController$1;->val$folder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    iget-object v2, v2, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->brushes:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/brakefield/painter/brushes/BrushPackManager$BrushesSection;-><init>(Landroid/content/res/Resources;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    return-void
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/brushes/brushfolders/Brush;)V
    .locals 0

    .line 49
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/QuickBrushesViewController$1;->val$folder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-virtual {p2, p3}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->select(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    .line 50
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 51
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/QuickBrushesViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/QuickBrushesViewController$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method public bridge synthetic onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p3, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/QuickBrushesViewController$1;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    return-void
.end method

.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/brushes/brushfolders/Brush;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p3, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/QuickBrushesViewController$1;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/brushes/brushfolders/Brush;)Z

    move-result p1

    return p1
.end method
