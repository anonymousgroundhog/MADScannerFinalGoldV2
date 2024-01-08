.class public Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;
.super Ljava/lang/Object;
.source "CollectionViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

.field private collectionView:Landroidx/recyclerview/widget/RecyclerView;

.field private delegate:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "TT;>;"
        }
    .end annotation
.end field

.field private layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private scrollPageLoader:Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method private getTotalSpan(I)I
    .locals 6

    .line 123
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->adapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getSectionCount()I

    move-result v0

    new-array v1, v0, [Landroidx/core/util/Pair;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 125
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->adapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {v3, v2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getSection(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;

    .line 126
    new-instance v4, Landroidx/core/util/Pair;

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->getSpan()Lcom/brakefield/infinitestudio/ui/layout/Span;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Lcom/brakefield/infinitestudio/ui/layout/MultiSpan;

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/layout/MultiSpan;-><init>([Landroidx/core/util/Pair;)V

    .line 129
    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/layout/MultiSpan;->totalSpan(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->collectionView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public getDelegate()Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "TT;>;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->delegate:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;

    return-object v0
.end method

.method public getItemView(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 106
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getMarginAt(II)F
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->adapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {v0, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getSectionForPosition(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    move-result-object p2

    check-cast p2, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;

    .line 138
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->getDefaultMargin()Lcom/brakefield/infinitestudio/ui/layout/Margin;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/layout/Margin;->get(I)F

    move-result p1

    return p1
.end method

.method public getVisibleItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->collectionView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 114
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->collectionView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public hideEmptySections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;)V
    .locals 5

    .line 76
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getSectionCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 78
    invoke-virtual {p1, v2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getSection(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    move-result-object v3

    .line 79
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getContentItemsTotal()I

    move-result v4

    if-lez v4, :cond_0

    .line 80
    sget-object v4, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->LOADED:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->setState(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;)V

    const/4 v4, 0x1

    .line 81
    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->setVisible(Z)V

    goto :goto_1

    .line 83
    :cond_0
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->isEmptyViewWillBeProvided()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->EMPTY:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->setState(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;)V

    goto :goto_1

    .line 84
    :cond_1
    invoke-virtual {v3, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->setVisible(Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->adapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getSectionCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-ge v1, v0, :cond_3

    .line 93
    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->adapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {v4, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getSection(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    move-result-object v4

    .line 94
    move-object v5, v4

    check-cast v5, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;

    .line 95
    invoke-virtual {v5, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-le v5, v3, :cond_1

    .line 97
    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->hasHeader()Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/2addr v5, v2

    return v5

    .line 100
    :cond_1
    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getSectionItemsTotal()I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method synthetic lambda$setup$0$com-brakefield-infinitestudio-ui-collections-CollectionViewController(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 3

    .line 52
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    .line 53
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->getTotalSpan(I)I

    move-result v1

    .line 54
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 55
    :cond_0
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;->getSidePadding()Lcom/brakefield/infinitestudio/ui/layout/Padding;

    move-result-object p2

    .line 56
    invoke-virtual {p2, v0}, Lcom/brakefield/infinitestudio/ui/layout/Padding;->get(I)I

    move-result p2

    .line 57
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    if-eq p2, v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    invoke-virtual {p1, p2, v0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public refreshCollection()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->adapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->hideEmptySections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;)V

    .line 72
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->adapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setScrollPageLoader(Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->collectionView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->scrollPageLoader:Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 65
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->scrollPageLoader:Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;

    .line 66
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->collectionView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public setup(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "TT;>;)V"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->setup(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    return-void
.end method

.method public setup(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "TT;>;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->collectionView:Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    iput-object p3, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->delegate:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;

    .line 35
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->adapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    .line 36
    invoke-virtual {p3, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;->addSections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;)V

    .line 37
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 38
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 39
    new-instance v0, Lcom/brakefield/infinitestudio/ui/collections/MarginItemDecoration;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/collections/MarginItemDecoration;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 40
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v1, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$1;-><init>(Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 51
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p3}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 59
    invoke-virtual {p0, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->hideEmptySections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;)V

    .line 60
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
