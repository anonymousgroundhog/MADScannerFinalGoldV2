.class public abstract Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;
.super Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;
.source "CollectionSection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionEmptyViewHolder;,
        Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionTitleViewHolder;,
        Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionNoTitleViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;"
    }
.end annotation


# instance fields
.field protected final delegate:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "TT;>;"
        }
    .end annotation
.end field

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final margin:Lcom/brakefield/infinitestudio/ui/layout/Margin;

.field protected final res:Landroid/content/res/Resources;

.field private final span:Lcom/brakefield/infinitestudio/ui/layout/Span;

.field protected title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "TT;>;",
            "Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;-><init>(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;)V

    const/4 p3, 0x0

    .line 25
    iput-object p3, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->title:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->res:Landroid/content/res/Resources;

    .line 34
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->delegate:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;

    .line 35
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->getDefaultSpan()Lcom/brakefield/infinitestudio/ui/layout/Span;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->span:Lcom/brakefield/infinitestudio/ui/layout/Span;

    .line 36
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->getDefaultMargin()Lcom/brakefield/infinitestudio/ui/layout/Margin;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->margin:Lcom/brakefield/infinitestudio/ui/layout/Margin;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "TT;>;",
            "Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;-><init>(Landroid/content/res/Resources;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;)V

    .line 44
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "TT;>;",
            "Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p3, p4}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;-><init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;)V

    .line 40
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 47
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getContentItemsTotal()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected abstract getDefaultMargin()Lcom/brakefield/infinitestudio/ui/layout/Margin;
.end method

.method protected abstract getDefaultSpan()Lcom/brakefield/infinitestudio/ui/layout/Span;
.end method

.method public getMargin()Lcom/brakefield/infinitestudio/ui/layout/Margin;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->margin:Lcom/brakefield/infinitestudio/ui/layout/Margin;

    return-object v0
.end method

.method public getSpan()Lcom/brakefield/infinitestudio/ui/layout/Span;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->span:Lcom/brakefield/infinitestudio/ui/layout/Span;

    return-object v0
.end method

.method public getSpanCount(I)I
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->getSpan()Lcom/brakefield/infinitestudio/ui/layout/Span;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/layout/Span;->totalSpan(I)I

    move-result p1

    return p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public onBindEmptyViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 71
    check-cast p1, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewHolder;

    .line 72
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewHolder;->update()V

    return-void
.end method

.method public onBindFailedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 81
    check-cast p1, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewHolder;

    .line 82
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewHolder;->update()V

    return-void
.end method

.method public onBindFooterViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 66
    check-cast p1, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewHolder;

    .line 67
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewHolder;->update()V

    return-void
.end method

.method public onBindHeaderViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 61
    check-cast p1, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewHolder;

    .line 62
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewHolder;->update()V

    return-void
.end method

.method public onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 56
    check-cast p1, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;

    .line 57
    invoke-virtual {p0, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->update(Ljava/lang/Object;)V

    return-void
.end method

.method public onBindLoadingViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 76
    check-cast p1, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewHolder;

    .line 77
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewHolder;->update()V

    return-void
.end method

.method public replaceItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
