.class Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "CollectionViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->setup(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

.field final synthetic val$adapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

.field final synthetic val$collectionView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$1;->this$0:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$1;->val$adapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    iput-object p3, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$1;->val$collectionView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$1;->this$0:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->access$000(Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    .line 44
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$1;->val$adapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {v1, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getSectionItemViewType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 45
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$1;->val$adapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {v1, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getSectionForPosition(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;

    .line 46
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->getSpan()Lcom/brakefield/infinitestudio/ui/layout/Span;

    move-result-object p1

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$1;->val$collectionView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ui/layout/Span;->totalSpan(I)I

    move-result p1

    .line 47
    div-int/2addr v0, p1

    :cond_0
    return v0
.end method
